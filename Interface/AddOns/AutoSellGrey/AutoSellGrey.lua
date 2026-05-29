-- Ініціалізація аддона AutoSellGrey
local AutoSellGrey = CreateFrame("Frame")
AutoSellGrey:RegisterEvent("MERCHANT_SHOW")
AutoSellGrey:RegisterEvent("MERCHANT_CLOSED")
AutoSellGrey:RegisterEvent("ADDON_LOADED")
AutoSellGrey:RegisterEvent("PLAYER_LOGIN")

-- Ліміт предметів за один візит до торговця (buyback).
local DEFAULT_MAX_ITEMS_PER_SESSION = 12
local MAX_ITEMS_PER_SESSION_CAP = 48

-- Значення за замовчуванням
local defaults = {
    enabled = true,
    limitSell = true,
    silentMode = false,
    showSummary = true,
    minimapButton = true,
    minimapPos = 45,
    language = "",  -- "" = мова гри
    maxItemsPerSession = DEFAULT_MAX_ITEMS_PER_SESSION,
}

local function GetClampedMaxItemsPerSession()
    if not AutoSellGreySettings then return DEFAULT_MAX_ITEMS_PER_SESSION end
    return math.max(1, math.min(MAX_ITEMS_PER_SESSION_CAP, tonumber(AutoSellGreySettings.maxItemsPerSession) or DEFAULT_MAX_ITEMS_PER_SESSION))
end

-- Нормалізує збережені налаштування після міграцій/пошкоджених SV (ідемпотентно).
local function SanitizeSavedSettings()
    if not AutoSellGreySettings then return end
    local s = AutoSellGreySettings
    local m = tonumber(s.maxItemsPerSession)
    if m then
        s.maxItemsPerSession = math.max(1, math.min(MAX_ITEMS_PER_SESSION_CAP, math.floor(m)))
    end
    if s.language ~= nil and type(s.language) ~= "string" then
        s.language = ""
    elseif s.language and s.language ~= "" and not AutoSellGrey_Locales[s.language] then
        s.language = ""
    end
    for _, key in ipairs({ "enabled", "limitSell", "silentMode", "showSummary", "minimapButton" }) do
        local v = s[key]
        if v ~= nil and type(v) ~= "boolean" then
            s[key] = not not v
        end
    end
end

-- Локалізація (буде встановлена після ADDON_LOADED)
local L

local function PrintChat(msg, r, g, b)
    DEFAULT_CHAT_FRAME:AddMessage(msg, r == nil and 1 or r, g == nil and 1 or g, b == nil and 1 or b)
end

local function PrintChatUnlessSilent(msg, r, g, b)
    if AutoSellGreySettings and AutoSellGreySettings.silentMode then
        return
    end
    PrintChat(msg, r, g, b)
end

local function PrintStatusLines()
    if not AutoSellGreySettings then
        return
    end
    L = AutoSellGrey_GetLocale(AutoSellGreySettings.language)
    local s = AutoSellGreySettings
    local maxN = GetClampedMaxItemsPerSession()
    PrintChat(L.STATUS_TITLE, 0, 1, 0)
    PrintChat(string.format(L.STATUS_LINE_AUTOSELL, s.enabled and L.WORD_ON or L.WORD_OFF), 1, 1, 1)
    PrintChat(string.format(L.STATUS_LINE_LIMIT, s.limitSell and L.WORD_YES or L.WORD_NO, maxN), 1, 1, 1)
    PrintChat(string.format(L.STATUS_LINE_MINIMAP, s.minimapButton and L.WORD_YES or L.WORD_NO), 1, 1, 1)
    PrintChat(string.format(L.STATUS_LINE_SUMMARY, s.showSummary and L.WORD_YES or L.WORD_NO), 1, 1, 1)
    PrintChat(string.format(L.STATUS_LINE_SILENT, s.silentMode and L.WORD_YES or L.WORD_NO), 1, 1, 1)
end

-- Категорія налаштувань (для Settings.OpenToCategory потрібен numeric ID)
local AutoSellGreySettingsCategory

-- Черга для предметів, які потрібно продати
local sellQueue = {}
local isSelling = false
-- Пауза між UseContainerItem і перевіркою слота (кеш предметів / відповідь клієнта); менше — вищий ризик хибних підрахунків.
local SELL_QUEUE_DELAY_SEC = 0.2

-- Якість і ціна: GetItemInfoInstant за itemID (надійно в retail), далі GetItemInfo за посиланням.
-- Не викликати C_Item.GetItemInfo(ItemLocation) — у поточному клієнті дає "bad argument #1" для слотів сумки.
local function GetGreyItemQualityAndSellPrice(_bag, _slot, itemLink, containerItem)
    local stackCount = (containerItem and containerItem.stackCount) or 1

    if containerItem and containerItem.itemID and C_Item and C_Item.GetItemInfoInstant then
        local _, _, q, _, _, _, _, _, _, _, p = C_Item.GetItemInfoInstant(containerItem.itemID)
        if q ~= nil and p ~= nil then
            return q, p, stackCount
        end
    end

    local _, _, q, _, _, _, _, _, _, _, p = GetItemInfo(itemLink)
    return q, p, stackCount
end

-- Збір сірих предметів для продажу (спільна логіка для черги та підрахунків).
local function GatherGreyItems()
    local list = {}
    local numBags = NUM_TOTAL_EQUIPPED_BAG_SLOTS or NUM_BAG_SLOTS or 4
    for bag = 0, numBags do
        local numSlots = C_Container.GetContainerNumSlots(bag)
        if numSlots and numSlots > 0 then
            for slot = 1, numSlots do
                local itemLink = C_Container.GetContainerItemLink(bag, slot)
                if itemLink then
                    local itemInfo = C_Container.GetContainerItemInfo(bag, slot)
                    if itemInfo and not itemInfo.isQuestItem then
                        local itemRarity, itemSellPrice, stackCount = GetGreyItemQualityAndSellPrice(bag, slot, itemLink, itemInfo)
                        if itemRarity == 0 and itemSellPrice and itemSellPrice > 0 then
                            list[#list + 1] = {
                                bag = bag,
                                slot = slot,
                                price = itemSellPrice * stackCount,
                                itemLink = itemLink,
                            }
                        end
                    end
                end
            end
        end
    end
    table.sort(list, function(a, b)
        if a.bag ~= b.bag then
            return a.bag < b.bag
        end
        return a.slot < b.slot
    end)
    return list
end

local function GetGreyBagCountAndValue()
    local list = GatherGreyItems()
    local count = #list
    local total = 0
    for i = 1, count do
        total = total + list[i].price
    end
    return count, total
end

-- Функція для додавання предметів у чергу
local function AddGreyItemsToQueue()
    wipe(sellQueue)
    local list = GatherGreyItems()
    for i = 1, #list do
        sellQueue[i] = list[i]
    end
end

-- Функція для продажу предметів із черги
local function ProcessSellQueue()
    if not AutoSellGreySettings or not L then
        return
    end
    if #sellQueue == 0 then
        PrintChatUnlessSilent(L.NO_ITEMS, 1.0, 1.0, 0.0)
        return
    end

    local totalValue = 0
    local itemsSold = 0
    local sellIndex = 0
    local limitSellEnabled = AutoSellGreySettings.limitSell
    local maxPerSession = GetClampedMaxItemsPerSession()
    isSelling = true

    local function SellNextItem()
        -- Зупиняємо, якщо вікно торговця закрито
        if not isSelling then
            wipe(sellQueue)
            return
        end

        sellIndex = sellIndex + 1

        if sellIndex > #sellQueue then
            isSelling = false
            if AutoSellGreySettings.showSummary then
                PrintChat(string.format(L.SELL_SUMMARY, itemsSold) .. GetCoinTextureString(totalValue), 0.0, 1.0, 0.0)
            end
            return
        end

        if limitSellEnabled and itemsSold >= maxPerSession then
            isSelling = false
            PrintChatUnlessSilent(string.format(L.SELL_LIMIT_REACHED, maxPerSession), 1.0, 1.0, 0.0)
            if AutoSellGreySettings.showSummary then
                PrintChat(string.format(L.SELL_SUMMARY, itemsSold) .. GetCoinTextureString(totalValue), 0.0, 1.0, 0.0)
            end
            return
        end

        local item = sellQueue[sellIndex]
        C_Container.UseContainerItem(item.bag, item.slot)

        C_Timer.After(SELL_QUEUE_DELAY_SEC, function()
            if not isSelling then
                return
            end
            local linkAfter = C_Container.GetContainerItemLink(item.bag, item.slot)
            local sold
            if not linkAfter then
                sold = true
            elseif item.itemLink then
                sold = linkAfter ~= item.itemLink
            else
                sold = false
            end
            if sold then
                totalValue = totalValue + item.price
                itemsSold = itemsSold + 1
            end
            SellNextItem()
        end)
    end

    SellNextItem()
end

-- Функція для обробки події MERCHANT_SHOW
local function OnMerchantShow()
    if not AutoSellGreySettings or not AutoSellGreySettings.enabled then
        return
    end

    AddGreyItemsToQueue()
    ProcessSellQueue()
end

-- Функція для обробки події MERCHANT_CLOSED
local function OnMerchantClosed()
    isSelling = false
    wipe(sellQueue)
end

-- Оновлення панелі налаштувань (викликається при OnShow і при ПКМ на мінімапі)
local refreshOptionsPanel
local function RefreshOptionsPanelIfReady()
    if refreshOptionsPanel then
        refreshOptionsPanel()
    end
end

local function CreateOptionsPanel()
    if AutoSellGreySettingsCategory then
        return
    end
    local panel = CreateFrame("Frame", "AutoSellGreyOptionsPanel", UIParent)
    panel.name = "AutoSellGrey"

    local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText(L.TITLE)
    panel.title = title

    -- Checkbox для автоматичного продажу
    local enableCheckbox = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    enableCheckbox:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -10)
    enableCheckbox.Text:SetText(L.ENABLED_TEXT)
    enableCheckbox:SetChecked(AutoSellGreySettings.enabled)
    enableCheckbox:SetScript("OnClick", function(self)
        AutoSellGreySettings.enabled = self:GetChecked()
        if self:GetChecked() then
            PrintChat(L.ENABLED_TEXT, 0.0, 1.0, 0.0)
        else
            PrintChat(L.DISABLED_TEXT, 1.0, 1.0, 0.0)
        end
    end)

    -- Checkbox для обмеження продажу
    local limitCheckbox = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    limitCheckbox:SetPoint("TOPLEFT", enableCheckbox, "BOTTOMLEFT", 0, -10)
    limitCheckbox.Text:SetText(string.format(L.LIMIT_SELL_TEXT, GetClampedMaxItemsPerSession()))
    limitCheckbox:SetChecked(AutoSellGreySettings.limitSell)
    limitCheckbox:SetScript("OnClick", function(self)
        AutoSellGreySettings.limitSell = self:GetChecked()
        local message = self:GetChecked() and L.LIMIT_ENABLED or L.LIMIT_DISABLED
        PrintChatUnlessSilent(message, 0.0, 1.0, 0.0)
    end)

    local maxLabel = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    maxLabel:SetPoint("TOPLEFT", limitCheckbox, "BOTTOMLEFT", 24, -4)
    maxLabel:SetText(L.MAX_ITEMS_LABEL)

    local maxEdit = CreateFrame("EditBox", "AutoSellGreyMaxItemsEdit", panel, "InputBoxTemplate")
    maxEdit:SetSize(36, 20)
    maxEdit:SetPoint("LEFT", maxLabel, "RIGHT", 8, 0)
    maxEdit:SetAutoFocus(false)
    maxEdit:SetMaxLetters(2)
    maxEdit:SetNumeric(true)
    maxEdit:SetText(tostring(GetClampedMaxItemsPerSession()))
    maxEdit:HookScript("OnEditFocusLost", function()
        local raw = tonumber(maxEdit:GetText())
        if not raw then
            maxEdit:SetText(tostring(GetClampedMaxItemsPerSession()))
            return
        end
        local v = math.max(1, math.min(MAX_ITEMS_PER_SESSION_CAP, math.floor(raw)))
        AutoSellGreySettings.maxItemsPerSession = v
        maxEdit:SetText(tostring(v))
        limitCheckbox.Text:SetText(string.format(L.LIMIT_SELL_TEXT, v))
    end)
    maxEdit:SetScript("OnEnterPressed", function(self) self:ClearFocus() end)

    -- Checkbox для беззвучного режиму
    local silentCheckbox = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    silentCheckbox:SetPoint("TOPLEFT", maxLabel, "BOTTOMLEFT", -24, -10)
    silentCheckbox.Text:SetText(L.SILENT_MODE_TEXT)
    silentCheckbox:SetChecked(AutoSellGreySettings.silentMode)
    silentCheckbox:SetScript("OnClick", function(self)
        AutoSellGreySettings.silentMode = self:GetChecked()
    end)

    -- Checkbox для підсумку
    local summaryCheckbox = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    summaryCheckbox:SetPoint("TOPLEFT", silentCheckbox, "BOTTOMLEFT", 0, -10)
    summaryCheckbox.Text:SetText(L.SHOW_SUMMARY_TEXT)
    summaryCheckbox:SetChecked(AutoSellGreySettings.showSummary)
    summaryCheckbox:SetScript("OnClick", function(self)
        AutoSellGreySettings.showSummary = self:GetChecked()
    end)

    -- Checkbox для кнопки на мінімапі
    local minimapCheckbox = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    minimapCheckbox:SetPoint("TOPLEFT", summaryCheckbox, "BOTTOMLEFT", 0, -10)
    minimapCheckbox.Text:SetText(L.MINIMAP_BUTTON_TEXT)
    minimapCheckbox:SetChecked(AutoSellGreySettings.minimapButton)
    minimapCheckbox:SetScript("OnClick", function(self)
        AutoSellGreySettings.minimapButton = self:GetChecked()
        if self:GetChecked() then
            AutoSellGreyMinimapButton:Show()
        else
            AutoSellGreyMinimapButton:Hide()
        end
    end)

    -- Вибір мови
    local langLabel = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    langLabel:SetPoint("TOPLEFT", minimapCheckbox, "BOTTOMLEFT", 0, -20)
    langLabel:SetText(L.LANGUAGE_TEXT)

    local langDropdown = CreateFrame("Frame", "AutoSellGreyLanguageDropdown", panel, "UIDropDownMenuTemplate")
    langDropdown:SetPoint("TOPLEFT", langLabel, "BOTTOMLEFT", 0, -5)
    UIDropDownMenu_SetWidth(langDropdown, 200)
    UIDropDownMenu_JustifyText(langDropdown, "LEFT")

    local function RefreshPanelLabels()
        L = AutoSellGrey_GetLocale(AutoSellGreySettings.language)
        title:SetText(L.TITLE)
        enableCheckbox.Text:SetText(L.ENABLED_TEXT)
        local m = GetClampedMaxItemsPerSession()
        limitCheckbox.Text:SetText(string.format(L.LIMIT_SELL_TEXT, m))
        maxLabel:SetText(L.MAX_ITEMS_LABEL)
        maxEdit:SetText(tostring(m))
        silentCheckbox.Text:SetText(L.SILENT_MODE_TEXT)
        summaryCheckbox.Text:SetText(L.SHOW_SUMMARY_TEXT)
        minimapCheckbox.Text:SetText(L.MINIMAP_BUTTON_TEXT)
        langLabel:SetText(L.LANGUAGE_TEXT)
    end

    local function SetLanguageDropdownValue(val)
        val = val or ""
        UIDropDownMenu_SetSelectedValue(langDropdown, val)
        local label
        for _, opt in ipairs(AutoSellGrey_LocaleList) do
            if opt.value == val then
                label = (val == "") and L.DEFAULT_LANGUAGE_OPTION or opt.label
                break
            end
        end
        UIDropDownMenu_SetText(langDropdown, label or L.DEFAULT_LANGUAGE_OPTION)
    end

    UIDropDownMenu_Initialize(langDropdown, function(self, level, menuList)
        local info = UIDropDownMenu_CreateInfo()
        for _, opt in ipairs(AutoSellGrey_LocaleList) do
            info.text = (opt.value == "") and L.DEFAULT_LANGUAGE_OPTION or opt.label
            info.value = opt.value
            info.arg1 = opt.value
            info.checked = (AutoSellGreySettings.language or "") == opt.value
            info.func = function(_, val)
                AutoSellGreySettings.language = val
                SetLanguageDropdownValue(val)
                RefreshPanelLabels()
            end
            UIDropDownMenu_AddButton(info, level)
        end
    end)
    SetLanguageDropdownValue(AutoSellGreySettings.language or "")

    refreshOptionsPanel = function()
        enableCheckbox:SetChecked(AutoSellGreySettings.enabled)
        limitCheckbox:SetChecked(AutoSellGreySettings.limitSell)
        local m = GetClampedMaxItemsPerSession()
        limitCheckbox.Text:SetText(string.format(L.LIMIT_SELL_TEXT, m))
        maxEdit:SetText(tostring(m))
        silentCheckbox:SetChecked(AutoSellGreySettings.silentMode)
        summaryCheckbox:SetChecked(AutoSellGreySettings.showSummary)
        minimapCheckbox:SetChecked(AutoSellGreySettings.minimapButton)
        SetLanguageDropdownValue(AutoSellGreySettings.language or "")
    end
    panel:SetScript("OnShow", refreshOptionsPanel)

    -- Реєстрація панелі налаштувань
    AutoSellGreySettingsCategory = Settings.RegisterCanvasLayoutCategory(panel, "AutoSellGrey")
    Settings.RegisterAddOnCategory(AutoSellGreySettingsCategory)
end

-- Відкрити панель налаштувань (retail потребує category:GetID(), не рядок)
local function OpenSettings()
    if AutoSellGreySettingsCategory and Settings and Settings.OpenToCategory then
        Settings.OpenToCategory(AutoSellGreySettingsCategory:GetID())
    elseif InterfaceOptionsFrame_OpenToCategory then
        InterfaceOptionsFrame_OpenToCategory("AutoSellGrey")
        InterfaceOptionsFrame_OpenToCategory("AutoSellGrey")
    end
end

-- Позиціонування кнопки на мінімапі (динамічний радіус для retail/classic)
local MINIMAP_BUTTON_RADIUS = 5  -- відступ від краю мінімапи
local function UpdateMinimapButtonPosition(btn, angle)
    local rad = math.rad(angle or 225)
    local cos, sin = math.cos(rad), math.sin(rad)
    local w = (Minimap:GetWidth() / 2) + MINIMAP_BUTTON_RADIUS
    local h = (Minimap:GetHeight() / 2) + MINIMAP_BUTTON_RADIUS
    local x, y = cos * w, sin * h
    btn:ClearAllPoints()
    btn:SetPoint("CENTER", Minimap, "CENTER", x, y)
end

-- Створення кнопки на мінімапі
local function CreateMinimapButton()
    local button = CreateFrame("Button", "AutoSellGreyMinimapButton", Minimap)
    button:SetSize(31, 31)
    button:SetFrameLevel(8)
    button:SetToplevel(true)
    button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")
    
    local background = button:CreateTexture(nil, "BACKGROUND")
    background:SetSize(20, 20)
    background:SetPoint("CENTER")
    background:SetTexture("Interface\\Icons\\INV_Misc_Coin_01")
    
    local border = button:CreateTexture(nil, "OVERLAY")
    border:SetSize(53, 53)
    border:SetPoint("TOPLEFT")
    border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
    
    button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    button:RegisterForDrag("LeftButton")
    button:SetScript("OnDragStart", function(self)
        self:SetScript("OnUpdate", function()
            if not (Minimap:IsMouseOver() or self:IsMouseOver()) then
                return
            end
            local mx, my = Minimap:GetCenter()
            local px, py = GetCursorPosition()
            local scale = Minimap:GetEffectiveScale()
            px, py = px / scale, py / scale
            local angle = math.deg(math.atan2(py - my, px - mx)) % 360
            AutoSellGreySettings.minimapPos = angle
            UpdateMinimapButtonPosition(self, angle)
        end)
    end)
    button:SetScript("OnDragStop", function(self)
        self:SetScript("OnUpdate", nil)
    end)
    
    button:SetScript("OnClick", function(self, buttonClick)
        if buttonClick == "LeftButton" then
            OpenSettings()
        else
            AutoSellGreySettings.enabled = not AutoSellGreySettings.enabled
            local message = AutoSellGreySettings.enabled and L.ENABLED_TEXT or L.DISABLED_TEXT
            PrintChat(message, 0.0, 1.0, 0.0)
            if refreshOptionsPanel then
                refreshOptionsPanel()
            end
        end
    end)
    
    button:SetScript("OnEnter", function(self)
        L = AutoSellGrey_GetLocale(AutoSellGreySettings and AutoSellGreySettings.language)
        GameTooltip:SetOwner(self, "ANCHOR_LEFT")
        GameTooltip:AddLine(L.TITLE)
        GameTooltip:AddLine(string.format(L.TOOLTIP_AUTOSELL, AutoSellGreySettings.enabled and L.WORD_ON or L.WORD_OFF), 1, 1, 1)
        local gn, gv = GetGreyBagCountAndValue()
        if gn > 0 then
            GameTooltip:AddLine(string.format(L.TOOLTIP_GREY_IN_BAGS, gn) .. GetCoinTextureString(gv), 0.75, 0.75, 0.75)
        else
            GameTooltip:AddLine(L.TOOLTIP_GREY_IN_BAGS_EMPTY, 0.55, 0.55, 0.55)
        end
        GameTooltip:AddLine("|cff00ff00" .. L.TOOLTIP_LEFT_CLICK .. "|r", 1, 1, 1)
        GameTooltip:AddLine("|cff00ff00" .. L.TOOLTIP_RIGHT_CLICK .. "|r", 1, 1, 1)
        GameTooltip:AddLine(L.TOOLTIP_DRAG, 0.7, 0.7, 0.7)
        GameTooltip:Show()
    end)
    button:SetScript("OnLeave", function(self) GameTooltip:Hide() end)
    
    local angle = AutoSellGreySettings.minimapPos or 45
    UpdateMinimapButtonPosition(button, angle)
    
    if AutoSellGreySettings.minimapButton then
        button:Show()
    else
        button:Hide()
    end
end

-- Slash-команди
local function RegisterSlashCommands()
    SLASH_AUTOSELLGREY1 = "/asg"
    SLASH_AUTOSELLGREY2 = "/autosellgrey"
    SlashCmdList["AUTOSELLGREY"] = function(msg)
        if AutoSellGreySettings then
            L = AutoSellGrey_GetLocale(AutoSellGreySettings.language)
        end
        if not L then
            return
        end
        msg = strlower(strtrim(msg or ""))
        if msg == "on" then
            AutoSellGreySettings.enabled = true
            PrintChat(L.ENABLED_TEXT, 0.0, 1.0, 0.0)
            RefreshOptionsPanelIfReady()
        elseif msg == "off" then
            AutoSellGreySettings.enabled = false
            PrintChat(L.DISABLED_TEXT, 1.0, 1.0, 0.0)
            RefreshOptionsPanelIfReady()
        elseif msg == "limit" then
            AutoSellGreySettings.limitSell = not AutoSellGreySettings.limitSell
            local message = AutoSellGreySettings.limitSell and L.LIMIT_ENABLED or L.LIMIT_DISABLED
            PrintChat(message, 0.0, 1.0, 0.0)
            RefreshOptionsPanelIfReady()
        elseif msg == "status" then
            PrintStatusLines()
        elseif msg == "minimap" then
            AutoSellGreySettings.minimapButton = not AutoSellGreySettings.minimapButton
            if AutoSellGreySettings.minimapButton then
                AutoSellGreyMinimapButton:Show()
            else
                AutoSellGreyMinimapButton:Hide()
            end
            RefreshOptionsPanelIfReady()
        elseif msg == "settings" then
            OpenSettings()
        elseif msg == "silent" then
            AutoSellGreySettings.silentMode = not AutoSellGreySettings.silentMode
            PrintChat(AutoSellGreySettings.silentMode and L.SILENT_ENABLED_MSG or L.SILENT_DISABLED_MSG, 0.0, 1.0, 0.0)
            RefreshOptionsPanelIfReady()
        elseif msg == "summary" then
            AutoSellGreySettings.showSummary = not AutoSellGreySettings.showSummary
            PrintChat(AutoSellGreySettings.showSummary and L.SUMMARY_ENABLED_MSG or L.SUMMARY_DISABLED_MSG, 0.0, 1.0, 0.0)
            RefreshOptionsPanelIfReady()
        elseif msg == "bags" then
            local n, v = GetGreyBagCountAndValue()
            if n == 0 then
                PrintChatUnlessSilent(L.BAGS_GREY_NONE, 1.0, 1.0, 0.0)
            else
                PrintChatUnlessSilent(string.format(L.BAGS_GREY_HEADER, n) .. GetCoinTextureString(v), 0.8, 1.0, 0.8)
            end
        else
            PrintChat(L.SLASH_HELP_HEADER, 0.0, 1.0, 0.0)
            PrintChat(L.SLASH_HELP_ON, 1.0, 1.0, 1.0)
            PrintChat(L.SLASH_HELP_OFF, 1.0, 1.0, 1.0)
            PrintChat(L.SLASH_HELP_LIMIT, 1.0, 1.0, 1.0)
            PrintChat(L.SLASH_HELP_SILENT, 1.0, 1.0, 1.0)
            PrintChat(L.SLASH_HELP_SUMMARY, 1.0, 1.0, 1.0)
            PrintChat(L.SLASH_HELP_BAGS, 1.0, 1.0, 1.0)
            PrintChat(L.SLASH_HELP_STATUS, 1.0, 1.0, 1.0)
            PrintChat(L.SLASH_HELP_MINIMAP, 1.0, 1.0, 1.0)
            PrintChat(L.SLASH_HELP_SETTINGS, 1.0, 1.0, 1.0)
        end
    end
end

-- Ініціалізація аддона
AutoSellGrey:SetScript("OnEvent", function(self, event, addonName)
    if event == "MERCHANT_SHOW" then
        OnMerchantShow()
    elseif event == "MERCHANT_CLOSED" then
        OnMerchantClosed()
    elseif event == "ADDON_LOADED" and addonName == "AutoSellGrey" then
        -- Ініціалізація SavedVariables після завантаження
        if not AutoSellGreySettings then
            AutoSellGreySettings = {}
        end
        for k, v in pairs(defaults) do
            if AutoSellGreySettings[k] == nil then
                AutoSellGreySettings[k] = v
            end
        end
        SanitizeSavedSettings()

        L = AutoSellGrey_GetLocale(AutoSellGreySettings.language)
        CreateOptionsPanel()
        CreateMinimapButton()
        RegisterSlashCommands()
        self:UnregisterEvent("ADDON_LOADED")
    elseif event == "PLAYER_LOGIN" then
        -- Оновлення позиції кнопки після готовності мінімапи (retail має інші розміри)
        if AutoSellGreyMinimapButton and AutoSellGreyMinimapButton:IsShown() and AutoSellGreySettings then
            UpdateMinimapButtonPosition(AutoSellGreyMinimapButton, AutoSellGreySettings.minimapPos or 45)
        end
        self:UnregisterEvent("PLAYER_LOGIN")
    end
end)
