CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.W_ItemManagement = CasualTBCPrep.W_ItemManagement or {}

--[Variables]
local w_window_name = "CasualTBCPrep_W_ItemManagement"
local _bankAltCheckValue = false

---@class Frame|nil
local wItemManagement = nil;

local function Display()
	if wItemManagement.texts then
		for _, fontString in ipairs(wItemManagement.texts) do
			fontString:Hide()
			fontString:SetText("")
			fontString:SetSize(0, 0)
		end
	end
	if wItemManagement.content then
		for _, borderFrame in ipairs(wItemManagement.content) do
			borderFrame:Hide()
		end
	end
	wItemManagement.texts = {}
	wItemManagement.content = {}

    local curItem = wItemManagement.currentItem;
    if not curItem or curItem.id <= 0 then return end
    local itemID = curItem.id

	local itemStates = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.ItemStates)
    local itemState = itemStates[itemID]

    local isBankAlted,bankAltName = false,""
    if itemState then
        isBankAlted = itemState.isBankAlted or false
        bankAltName = itemState.bankAltName
    end
    _bankAltCheckValue = isBankAlted

    -- UI elements
    local yPosition = -52

	local iconSize = 38
    local icon, border, textRarityColor, imgItem = CasualTBCPrep.UI.CreateItemImage(wItemManagement, iconSize, itemID, "TOP", "TOP", 0, yPosition)
    local itemName = ""
    if imgItem then
        local r,g,b,cHex = CasualTBCPrep.GetRarityColor(imgItem.rarity)
        itemName = cHex..imgItem.name.."|r"
    end

    table.insert(wItemManagement.content, icon)
    table.insert(wItemManagement.content, border)

    local itemNameText = textRarityColor .. (itemName or ("Item " .. imgItem.id))
    local textItemName = wItemManagement:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    textItemName:SetPoint("BOTTOM", icon, "TOP", 0, 7)
    textItemName:SetText(itemNameText)
    table.insert(wItemManagement.texts, textItemName)

    yPosition = yPosition - iconSize - 2 - 3
    local checkBoxTooltipWidth = 24
    local checkbox = CreateFrame("CheckButton", nil, wItemManagement, "UICheckButtonTemplate")
    local chbLabel = CreateFrame("Button", nil, wItemManagement)
    local bankAltHeader = wItemManagement:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    local bankAltInput = CreateFrame("EditBox", nil, wItemManagement, "InputBoxTemplate")
    local btnSaveBankAlt = CreateFrame("Button", nil, wItemManagement, "UIPanelButtonTemplate")
    local outputText = wItemManagement:CreateFontString(nil, "OVERLAY", "GameFontNormal")

    checkbox:SetPoint("TOPLEFT", wItemManagement, "TOPLEFT", 8, yPosition)
    checkbox:SetSize(checkBoxTooltipWidth, checkBoxTooltipWidth)

    chbLabel:SetNormalFontObject(GameTooltipTextSmall)
    chbLabel:SetHighlightFontObject(GameFontHighlightSmall)
    chbLabel:SetPoint("LEFT", checkbox, "RIGHT", 0, 1)
    chbLabel:SetText("Mark item as collected on an alt or mailbox")
    chbLabel:SetSize(chbLabel:GetFontString():GetStringWidth(), chbLabel:GetFontString():GetStringHeight())

    checkbox:SetChecked(_bankAltCheckValue)
    checkbox:SetScript("OnClick", function()
        _bankAltCheckValue = checkbox:GetChecked()
        local newAltName = bankAltInput:GetText() or ""

        CasualTBCPrep.Settings.SetItemMarkedAsStoredOnBankAlt(itemID, _bankAltCheckValue, newAltName)
        CasualTBCPrep.W_Main.ReloadActiveTab()
    end)
    chbLabel:SetScript("OnClick", function()
        checkbox:Click()
    end)

    local funcSaveName = function()
        local newAltName = bankAltInput:GetText() or ""
        CasualTBCPrep.Settings.SetItemMarkedAsStoredOnBankAlt(itemID, checkbox:GetChecked() or false, newAltName)

        if newAltName == "" then newAltName = "an alt" end
        outputText:SetText("Marked Item as stored on "..newAltName)
        bankAltInput:ClearFocus()
        btnSaveBankAlt:Hide()
        CasualTBCPrep.W_Main.ReloadActiveTab()
    end

    bankAltHeader:SetPoint("TOPLEFT", checkbox, "BOTTOMLEFT", 4, -5)
    bankAltHeader:SetText("Location: ")

    bankAltInput:SetSize(100, 20)
    bankAltInput:SetPoint("LEFT", bankAltHeader, "RIGHT", 6, 0)
    bankAltInput:SetAutoFocus(false)
    bankAltInput:SetText(bankAltName or "")
    bankAltInput:SetMaxLetters(12)
    bankAltInput:SetScript("OnEnterPressed", funcSaveName)
    bankAltInput:SetScript("OnEscapePressed", function(self)
        local _,altName = CasualTBCPrep.Items.IsItemMarkedAsStoredOnBankAlt(itemID)
        self:ClearFocus()
        self:SetText(altName)
        btnSaveBankAlt:Hide()
    end)

    btnSaveBankAlt:SetSize(50,20)
    btnSaveBankAlt:SetPoint("LEFT", bankAltInput, "RIGHT", 3, 0)
    btnSaveBankAlt:SetText("Save")
    btnSaveBankAlt:Hide()
    btnSaveBankAlt:SetScript("OnClick", funcSaveName)

    bankAltInput:SetScript("OnTextChanged", function(self, userInput) if userInput then btnSaveBankAlt:Show() end end)
    bankAltInput:SetScript("OnEditFocusLost", function(self) btnSaveBankAlt:Hide() end)

    outputText:SetPoint("TOP", wItemManagement, "TOP", 0, yPosition - 64)
    outputText:SetText("")
    outputText:SetTextColor(0.08, 0.90, 0.08)

    local editLinesTT = { "Enter the name of the bank-alt character you send these items to, then click Save" }
    CasualTBCPrep.UI.HookTooltip(bankAltHeader, "Bankalt Name", editLinesTT , nil,nil,nil)
    CasualTBCPrep.UI.HookTooltip(bankAltInput, "Bankalt Name", editLinesTT , nil,nil,nil)
    CasualTBCPrep.UI.HookTooltip(btnSaveBankAlt, "Bankalt Name", editLinesTT , nil,nil,nil)

    local checkLinesTT = { "When checked, this item will always be considered collected for this specific character." }
    CasualTBCPrep.UI.HookTooltip(checkbox, "Alt Storage", checkLinesTT , nil,nil,nil)
    CasualTBCPrep.UI.HookTooltip(chbLabel, "Alt Storage", checkLinesTT , nil,nil,nil)

    table.insert(wItemManagement.texts, chbLabel)
    table.insert(wItemManagement.texts, bankAltHeader)
    table.insert(wItemManagement.texts, outputText)
    table.insert(wItemManagement.content, checkbox)
    table.insert(wItemManagement.content, bankAltInput)
    table.insert(wItemManagement.content, btnSaveBankAlt)
end

--@param type string|nil
local function Create()
	wItemManagement = CreateFrame("Frame", w_window_name, UIParent, "BasicFrameTemplateWithInset")
	wItemManagement:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	wItemManagement:EnableMouse(true)
	wItemManagement:SetMovable(true)
	wItemManagement:RegisterForDrag("LeftButton")
	wItemManagement:SetScript("OnDragStart", function(self) self:StartMoving() end)
	wItemManagement:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
	wItemManagement:SetFrameStrata("FULLSCREEN_DIALOG")
	wItemManagement:SetFrameLevel(1001)
	table.insert(UISpecialFrames, w_window_name)

	wItemManagement.TitleBg:SetHeight(30);
	wItemManagement.title = wItemManagement:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	wItemManagement.title:SetPoint("LEFT", wItemManagement.TitleBg, "LEFT", 8, 6)

	wItemManagement:SetScript("OnShow", function() CasualTBCPrep.Sounds.PlaySound_Click() end)
	wItemManagement:SetScript("OnHide", function() CasualTBCPrep.Sounds.PlaySound_Click() end)
	wItemManagement:Hide();
	wItemManagement:Show();
end

function CasualTBCPrep.W_ItemManagement.Show(itemID)
	if wItemManagement == nil then

		Create()
		if wItemManagement == nil then
			return
		end
	end

    wItemManagement.currentItem = CasualTBCPrep.Items.GetItemDetails(itemID)

	wItemManagement:SetSize(310, 200)
	wItemManagement.title:SetText("TBCPrep - Item Settings")

    Display()
	if not wItemManagement:IsShown() then
		wItemManagement:Show()
	end
end