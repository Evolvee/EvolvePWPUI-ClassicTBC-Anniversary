-- Ініціалізація аддона AutoSellGrey
local AutoSellGrey = CreateFrame("Frame")
AutoSellGrey:RegisterEvent("MERCHANT_SHOW")
AutoSellGrey:RegisterEvent("ADDON_LOADED")

-- SavedVariables для збереження налаштувань
AutoSellGreySettings = AutoSellGreySettings or {
    enabled = true, -- Автоматичний продаж увімкнено за замовчуванням
    limitSell = true, -- Обмеження продажу до 12 предметів увімкнено
}

-- Локалізація (англійська мова)
local L = {
    ENABLED_TEXT = "Enable Auto Sell Grey Items",
    DISABLED_TEXT = "Auto Sell Grey Items is disabled.",
    SELL_SUMMARY = "Sold all grey items for: ",
    NO_ITEMS = "No grey items to sell.",
    SELL_LIMIT_REACHED = "Sell limit reached: only 12 items sold to preserve buyback list.",
    SELL_LIMIT_DISABLED = "Sell limit is disabled. Selling all grey items.",
    LIMIT_SELL_TEXT = "Limit selling to 12 items per session",
}

-- Черга для предметів, які потрібно продати
local sellQueue = {}

-- Функція для додавання предметів у чергу
local function AddGreyItemsToQueue()
    wipe(sellQueue) -- Очищуємо чергу
    for bag = 0, NUM_BAG_SLOTS do
        local numSlots = C_Container.GetContainerNumSlots(bag)
        if numSlots and numSlots > 0 then
            for slot = 1, numSlots do
                local itemLink = C_Container.GetContainerItemLink(bag, slot)
                if itemLink then
                    local _, _, itemRarity, _, _, _, _, _, _, _, itemSellPrice = GetItemInfo(itemLink)
                    local itemInfo = C_Container.GetContainerItemInfo(bag, slot)
                    local isQuestItem = itemInfo.isQuestItem -- Перевіряємо, чи є це квестовий предмет
                    if itemRarity == 0 and itemSellPrice > 0 and not isQuestItem then
                        table.insert(sellQueue, { bag = bag, slot = slot, price = itemSellPrice * itemInfo.stackCount })
                    end
                end
            end
        end
    end
end

-- Функція для продажу предметів із черги
local function ProcessSellQueue()
    if #sellQueue == 0 then
        DEFAULT_CHAT_FRAME:AddMessage(L.NO_ITEMS, 1.0, 1.0, 0.0) -- Жовте повідомлення
        return
    end

    local totalValue = 0
    local itemsSold = 0
    local limitSellEnabled = AutoSellGreySettings.limitSell -- Зберігаємо налаштування ліміту

    local function SellNextItem()
        if #sellQueue == 0 then
            DEFAULT_CHAT_FRAME:AddMessage(L.SELL_SUMMARY .. GetCoinTextureString(totalValue), 0.0, 1.0, 0.0) -- Зелене повідомлення
            return
        end

        if limitSellEnabled and itemsSold >= 12 then
            DEFAULT_CHAT_FRAME:AddMessage(L.SELL_LIMIT_REACHED, 1.0, 1.0, 0.0) -- Жовте повідомлення
            DEFAULT_CHAT_FRAME:AddMessage(L.SELL_SUMMARY .. GetCoinTextureString(totalValue), 0.0, 1.0, 0.0) -- Зелене повідомлення
            return
        end

        local item = table.remove(sellQueue, 1) -- Вилучаємо перший елемент із черги
        C_Container.UseContainerItem(item.bag, item.slot) -- Продаємо предмет
        totalValue = totalValue + item.price
        itemsSold = itemsSold + 1

        -- Викликаємо наступний продаж через 0.1 секунди
        C_Timer.After(0.1, SellNextItem)
    end

    SellNextItem()
end

-- Функція для обробки події MERCHANT_SHOW
local function OnMerchantShow()
    if not AutoSellGreySettings.enabled then return end

    if not AutoSellGreySettings.limitSell then
        DEFAULT_CHAT_FRAME:AddMessage(L.SELL_LIMIT_DISABLED, 0.0, 1.0, 0.0) -- Зелене повідомлення
    end

    AddGreyItemsToQueue()
    ProcessSellQueue()
end

-- Створення панелі налаштувань
local function CreateOptionsPanel()
    local panel = CreateFrame("Frame", "AutoSellGreyOptionsPanel", UIParent)
    panel.name = "AutoSellGrey"

    local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText("AutoSellGrey Settings")

    -- Checkbox для автоматичного продажу
    local enableCheckbox = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    enableCheckbox:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -10)
    enableCheckbox.Text:SetText(L.ENABLED_TEXT)
    enableCheckbox:SetChecked(AutoSellGreySettings.enabled)
    enableCheckbox:SetScript("OnClick", function(self)
        AutoSellGreySettings.enabled = self:GetChecked()
        if self:GetChecked() then
            DEFAULT_CHAT_FRAME:AddMessage(L.ENABLED_TEXT, 0.0, 1.0, 0.0) -- Зелене повідомлення
        else
            DEFAULT_CHAT_FRAME:AddMessage(L.DISABLED_TEXT, 1.0, 1.0, 0.0) -- Жовте повідомлення
        end
    end)

    -- Checkbox для обмеження продажу
    local limitCheckbox = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    limitCheckbox:SetPoint("TOPLEFT", enableCheckbox, "BOTTOMLEFT", 0, -10)
    limitCheckbox.Text:SetText(L.LIMIT_SELL_TEXT)
    limitCheckbox:SetChecked(AutoSellGreySettings.limitSell)
    limitCheckbox:SetScript("OnClick", function(self)
        AutoSellGreySettings.limitSell = self:GetChecked()
        local message = self:GetChecked() and "Enabled sell limit." or "Disabled sell limit."
        DEFAULT_CHAT_FRAME:AddMessage(message, 0.0, 1.0, 0.0) -- Зелене повідомлення
    end)

    -- Реєстрація панелі налаштувань
    local category = Settings.RegisterCanvasLayoutCategory(panel, "AutoSellGrey")
    Settings.RegisterAddOnCategory(category)
end

-- Ініціалізація аддона
AutoSellGrey:SetScript("OnEvent", function(self, event, addonName)
    if event == "MERCHANT_SHOW" then
        OnMerchantShow()
    elseif event == "ADDON_LOADED" and addonName == "AutoSellGrey" then
        CreateOptionsPanel()
    end
end)
