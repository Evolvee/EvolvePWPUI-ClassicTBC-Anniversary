-- Ініціалізація аддона AutoRepair
local AutoRepair = CreateFrame("Frame")
AutoRepair:RegisterEvent("ADDON_LOADED")
AutoRepair:RegisterEvent("MERCHANT_SHOW")

-- SavedVariables для збереження налаштувань
AutoRepairSettings = AutoRepairSettings or {
    enabled = true,
    repairEquippedOnly = true,
    firstRun = false,
}

-- Локалізація (англійська мова)
local L = {
    REPAIR_GUILD = "Repair completed using guild funds: ",
    REPAIR_PERSONAL = "Repair completed using personal funds: ",
    NO_REPAIR_NEEDED = "Your equipment does not need repairs.",
    NOT_ENOUGH_MONEY = "Not enough money to repair equipment!",
    REPAIR_OPTION_EQUIPPED = "Repair equipped only",
    REPAIR_OPTION_ALL = "Repair all",
    ENABLED_TEXT = "Enable Auto Repair",
    FIRST_RUN_MESSAGE = "Welcome to AutoRepair! Please configure settings in the AddOns menu: choose whether to repair equipped items only or all items including bags.",
}

-- Функція для відправлення повідомлень у чат
local function SendChatMessage(text, r, g, b)
    if DEFAULT_CHAT_FRAME then
        DEFAULT_CHAT_FRAME:AddMessage(text, r, g, b)
    else
        print(text)
    end
end

-- Функція для ремонту екіпірованого спорядження
local function RepairEquippedItems()
    if CanMerchantRepair() then
        local repairCost, canRepair = GetRepairAllCost()
        if repairCost == 0 then
            SendChatMessage(L.NO_REPAIR_NEEDED, 1.0, 1.0, 0.0)
            return
        end
        if canRepair and repairCost > 0 then
            if IsInGuild() and CanGuildBankRepair() and GetGuildBankWithdrawMoney() >= repairCost then
                RepairAllItems(1)
                SendChatMessage(L.REPAIR_GUILD .. GetCoinTextureString(repairCost), 0.0, 1.0, 0.0)
            else
                RepairAllItems()
                SendChatMessage(L.REPAIR_PERSONAL .. GetCoinTextureString(repairCost), 0.0, 1.0, 0.0)
            end
        else
            SendChatMessage(L.NOT_ENOUGH_MONEY, 1.0, 0.0, 0.0)
        end
    end
end

-- Функція для ремонту всього спорядження
local function RepairAllItemsIncludingBags()
    if CanMerchantRepair() then
        local repairCost, canRepair = GetRepairAllCost()
        if repairCost == 0 then
            SendChatMessage(L.NO_REPAIR_NEEDED, 1.0, 1.0, 0.0)
            return
        end
        if canRepair and repairCost > 0 then
            RepairAllItems()
            if IsInGuild() and CanGuildBankRepair() and GetGuildBankWithdrawMoney() >= repairCost then
                SendChatMessage(L.REPAIR_GUILD .. GetCoinTextureString(repairCost), 0.0, 1.0, 0.0)
            else
                SendChatMessage(L.REPAIR_PERSONAL .. GetCoinTextureString(repairCost), 0.0, 1.0, 0.0)
            end
        else
            SendChatMessage(L.NOT_ENOUGH_MONEY, 1.0, 0.0, 0.0)
        end
    end
end

-- Створення панелі налаштувань
local function CreateOptionsPanel()
    local panel = CreateFrame("Frame", "AutoRepairOptionsPanel", UIParent)
    panel.name = "AutoRepair"

    local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText("AutoRepair Settings")

    -- Checkbox для автоматичного ремонту
    local autoRepairCheckbox = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    autoRepairCheckbox:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -10)
    autoRepairCheckbox.Text:SetText(L.ENABLED_TEXT)
    autoRepairCheckbox:SetChecked(AutoRepairSettings.enabled)
    autoRepairCheckbox:SetScript("OnClick", function(self)
        AutoRepairSettings.enabled = self:GetChecked()
    end)

    -- Режим ремонту
    local repairModeDropdown = CreateFrame("Frame", "RepairModeDropdown", panel, "UIDropDownMenuTemplate")
    repairModeDropdown:SetPoint("TOPLEFT", autoRepairCheckbox, "BOTTOMLEFT", -15, -20)
    local repairModes = {
        { text = L.REPAIR_OPTION_EQUIPPED, value = true },
        { text = L.REPAIR_OPTION_ALL, value = false },
    }
    UIDropDownMenu_SetWidth(repairModeDropdown, 150)
    UIDropDownMenu_Initialize(repairModeDropdown, function(self, level, menuList)
        for _, mode in ipairs(repairModes) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = mode.text
            info.checked = (AutoRepairSettings.repairEquippedOnly == mode.value)
            info.func = function()
                AutoRepairSettings.repairEquippedOnly = mode.value
                UIDropDownMenu_SetText(repairModeDropdown, mode.text)
            end
            UIDropDownMenu_AddButton(info)
        end
    end)

    -- Реєстрація панелі налаштувань
    local category = Settings.RegisterCanvasLayoutCategory(panel, "AutoRepair")
    Settings.RegisterAddOnCategory(category)
end

-- Показ вітального повідомлення при першому запуску
local function ShowWelcomeMessage()
    if not AutoRepairSettings.firstRun then
        SendChatMessage(L.FIRST_RUN_MESSAGE, 1.0, 1.0, 0.0)
        AutoRepairSettings.firstRun = true
    end
end

-- Основна логіка аддона
AutoRepair:SetScript("OnEvent", function(self, event, addonName)
    if event == "ADDON_LOADED" and addonName == "AutoRepair" then
        CreateOptionsPanel()
        ShowWelcomeMessage()
    elseif event == "MERCHANT_SHOW" then
        if AutoRepairSettings.enabled then
            if AutoRepairSettings.repairEquippedOnly then
                RepairEquippedItems()
            else
                RepairAllItemsIncludingBags()
            end
        end
    end
end)
