CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.WM_Settings = CasualTBCPrep.WM_Settings or {}

--[Variables]
---@class Frame|nil
local frameSettings = nil;

--Colors
local clrHeaderText = { r=0.40, g=0.35, b=0.72 }
local clrSettingHeaderText = { r=0.65, g=0.49, b=0.82 }

---@param parent Frame
---@param anchorPoint string
---@param relativeTo string
---@param cmbWidth number
---@param xCenter number
---@param yOffset number
---@param isGlobal boolean
local function CreateDropdown(parent, anchorPoint, relativeTo, settingsObj, cmbWidth, xCenter, yOffset, isGlobal)
	local defaultValue = nil

	local labelText = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	labelText:SetText(settingsObj.name)
	labelText:SetTextColor(clrSettingHeaderText.r, clrSettingHeaderText.g, clrSettingHeaderText.b)

	labelText:SetPoint(anchorPoint, parent, relativeTo, xCenter - (labelText:GetStringWidth() / 2), yOffset)

	local cmbUniqueName = "CasualTBCPrep_SettingsDropdown_" .. settingsObj.key
	if isGlobal == true then
		defaultValue = settingsObj.defaultValueGlobal
		cmbUniqueName = cmbUniqueName .. "_global"
	else
		defaultValue = settingsObj.defaultValueChar
		cmbUniqueName = cmbUniqueName .. "_char"
	end

	local cmbChar = CreateFrame("Frame", cmbUniqueName, parent, "UIDropDownMenuTemplate")
	cmbChar:SetPoint("TOP", labelText, "BOTTOM", 0, -2)

	UIDropDownMenu_SetWidth(cmbChar, cmbWidth)

	CasualTBCPrep.UI.HookTooltip(cmbChar, settingsObj.name, settingsObj.description, nil,nil,nil)

	local function OnClick(self)
		local selValue = self.value

		if isGlobal == true then
			CasualTBCPrep.Settings.SetGlobalSetting(settingsObj.key, selValue)
		else
			CasualTBCPrep.Settings.SetCharSetting(settingsObj.key, selValue)
		end

		CasualTBCPrep.Settings.OnChange(settingsObj.key, selValue, isGlobal)
		UIDropDownMenu_SetSelectedValue(cmbChar, selValue)
		UIDropDownMenu_SetText(cmbChar, self:GetText())
	end

    local function Initialize(self, level)
		local dbValue = nil
		if isGlobal == true then
			dbValue = CasualTBCPrep.Settings.GetGlobalSetting(settingsObj.key)
		else
			dbValue = CasualTBCPrep.Settings.GetCharSetting(settingsObj.key)
		end

		for _, valueObj in ipairs(settingsObj.values) do
			if not isGlobal or valueObj.value ~= -1 then
				local info = UIDropDownMenu_CreateInfo()
				info.text = valueObj.text
				info.value = valueObj.value
				info.func = OnClick
				info.checked = (dbValue == valueObj.value)
				UIDropDownMenu_AddButton(info)
			end
		end

		local dbValue
		if isGlobal then
			dbValue = CasualTBCPrep.Settings.GetGlobalSetting(settingsObj.key)
		else
			dbValue = CasualTBCPrep.Settings.GetCharSetting(settingsObj.key)
		end

		if dbValue == nil then
			dbValue = defaultValue
		end

		local displayText = nil
		for _, valueObj in ipairs(settingsObj.values) do
			if valueObj.value == dbValue then
				displayText = valueObj.text
				break
			end
		end

		if displayText == "" then
			displayText = defaultValue
		end

		UIDropDownMenu_SetText(cmbChar, displayText)
		UIDropDownMenu_SetSelectedValue(cmbChar, dbValue)
	end

	UIDropDownMenu_Initialize(cmbChar, Initialize)

	table.insert(frameSettings.settingsObjects, cmbChar)
	table.insert(frameSettings.texts, labelText)
end


---@param wMain Frame|nil
function CasualTBCPrep.WM_Settings.Create(wMain)
	if wMain == nil then
		return
	end

	frameSettings = CreateFrame("Frame", nil, wMain)
	frameSettings:SetAllPoints(wMain)
	frameSettings:Hide()
end

function CasualTBCPrep.WM_Settings.Hide()
	if frameSettings ~= nil then
		frameSettings:Hide()
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_Settings.Show(wMain)
	if frameSettings == nil then
		CasualTBCPrep.WM_Settings.Create(wMain)
	end

	if frameSettings ~= nil then
		frameSettings:Show()
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_Settings.Load(wMain)
	if wMain == nil then
		return
	end
	local selectedRoute = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.SelectedRoute)
	if selectedRoute == nil or selectedRoute == "" then
		CasualTBCPrep.UI.CreateRouteSelection(wMain, frameSettings)
		return
	end
	CasualTBCPrep.UI.ClearRouteSelectionUI(frameSettings)
	
	if frameSettings.settingsObjects then
		for _, frame in ipairs(frameSettings.settingsObjects) do
			frame:Hide()
		end
	end
	if frameSettings.texts then
		for _, fontStr in ipairs(frameSettings.texts) do
			fontStr:Hide()
			fontStr:SetText("")
			fontStr:SetSize(0, 0)
		end
	end
	frameSettings.settingsObjects = {}
	frameSettings.texts = {}

	if not frameSettings.headerText then
		frameSettings.headerText = frameSettings:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		frameSettings.headerText:SetPoint("TOP", frameSettings, "TOP", 0, -31)
		frameSettings.headerText:SetText("Settings")
	end

	local yChange = 45
	local yOffset = -62

	local wWidth = wMain.GetSizeWidth()
	local wHalf = wWidth / 2
	local wQtr = wHalf / 2

	local globalHeader = frameSettings:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge2")
	globalHeader:SetText("Global Settings")
	globalHeader:SetTextColor(clrHeaderText.r, clrHeaderText.g, clrHeaderText.b)
	globalHeader:SetPoint("TOPLEFT", wQtr - (globalHeader:GetStringWidth() / 2) + wHalf, yOffset)
	table.insert(frameSettings.texts, globalHeader)

	local charHeader = frameSettings:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge2")
	charHeader:SetText("Character Settings")
	charHeader:SetTextColor(clrHeaderText.r, clrHeaderText.g, clrHeaderText.b)
	charHeader:SetPoint("TOPLEFT", wQtr - (charHeader:GetStringWidth() / 2), yOffset)
	table.insert(frameSettings.texts, charHeader)

	yOffset = yOffset+14 -- First setting should be a bit higher

	local settingWidth = 100
	for _, setting in ipairs(CasualTBCPrep.Settings.AllSettings) do

		if setting.type == "cmb" then
			yOffset = yOffset - yChange
			settingWidth = 120

			CreateDropdown(frameSettings, "TOPLEFT", "TOPLEFT", setting, settingWidth, wQtr, yOffset, false)
			CreateDropdown(frameSettings, "TOPLEFT", "TOPLEFT", setting, settingWidth, wHalf + wQtr, yOffset, true)
		elseif setting.type == "list" then
			--N/A
		end
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_Settings.Selected(wMain)
	if frameSettings == nil then
    	CasualTBCPrep.WM_Settings.Create(wMain)
	end

    CasualTBCPrep.WM_Settings.Load(wMain)
    CasualTBCPrep.WM_Settings.Show(wMain)
end