CasualTBCPrep.Settings = CasualTBCPrep.Settings or {}

-- Keys
local settingsKeyPrefix = "CasualPrepTBC_"
CasualTBCPrep.Settings.CurrentMajorVersion = settingsKeyPrefix .. "CurrentMajorVersion"
CasualTBCPrep.Settings.Warning_QLOG = settingsKeyPrefix .. "PreventAcceptQuestlog"
CasualTBCPrep.Settings.Warning_OPTIONAL = settingsKeyPrefix .. "PreventAcceptOptional"
CasualTBCPrep.Settings.Warning_TURNIN = settingsKeyPrefix .. "PreventAcceptTurnin"
CasualTBCPrep.Settings.Warning_COMPLETING = settingsKeyPrefix .. "PreventCompletingQuest"
CasualTBCPrep.Settings.EnabledItemTooltips = settingsKeyPrefix .. "ItemTooltips"
CasualTBCPrep.Settings.EnabledSounds = settingsKeyPrefix .. "SoundState"
CasualTBCPrep.Settings.SelectedTheme = settingsKeyPrefix .. "SelectedTheme"

CasualTBCPrep.Settings.DebugDetails = settingsKeyPrefix .. "DebugDetails"
CasualTBCPrep.Settings.SelectedRoute = settingsKeyPrefix .. "SelectedRoute"
CasualTBCPrep.Settings.IgnoredQuests = settingsKeyPrefix .. "IgnoredQuests"
CasualTBCPrep.Settings.IgnoredRouteSections = settingsKeyPrefix .. "IgnoredRouteSections"
CasualTBCPrep.Settings.ItemStates = settingsKeyPrefix .. "ItemStates"
CasualTBCPrep.Settings.QuestStates = settingsKeyPrefix .. "QuestStates"
CasualTBCPrep.Settings.TaxiState = settingsKeyPrefix .. "TaxiState"
CasualTBCPrep.Settings.ExtraTBCPrepSelections = settingsKeyPrefix .. "ExtraTBCPrepSelections"
CasualTBCPrep.Settings.ShowRouteQuestPickups = settingsKeyPrefix .. "ShowRouteQuestPickups"
CasualTBCPrep.Settings.CompanionSettings = settingsKeyPrefix .. "CompanionSettings"

CasualTBCPrep.Settings.AllSettings = {
	{ key=CasualTBCPrep.Settings.Warning_QLOG, 			dataType="bit", 	type="cmb", defaultValueGlobal=0,	defaultValueChar=-1,	values={ { text="Use Global", value=-1}, { text="On", value=1 }, { text="Off", value=0}},	name="Questlog Warnings", 	description={ "This will |cFFD47400WARN|r you when you pick up a quest that should be in your questlog.", "This can be used while leveling to avoid doing anything by mistake.", " ", "Default: Off" }},
	{ key=CasualTBCPrep.Settings.Warning_OPTIONAL, 		dataType="bit", 	type="cmb", defaultValueGlobal=0,	defaultValueChar=-1,	values={ { text="Use Global", value=-1}, { text="On", value=1 }, { text="Off", value=0}},	name="Optional Warnings", 	description={ "This will |cFFD47400WARN|r you when you pick up a quest that can be used as an optional questlog quest.", "This can be used if you completed questlog quests already and are looking for alternatives on the way.", " ", "Default: Off" }},
	{ key=CasualTBCPrep.Settings.Warning_TURNIN, 		dataType="bit",		type="cmb", defaultValueGlobal=1,	defaultValueChar=-1,	values={ { text="Use Global", value=-1}, { text="On", value=1 }, { text="Off", value=0}},	name="Turnin Warnings",		description={ "This will |cFFD47400WARN|r you when you pick up a quest that is turned in on TBC Release for exp.", " ", "Turn this off if you're only doing the questlog", " ", "Default: On" } },
	{ key=CasualTBCPrep.Settings.Warning_COMPLETING, 	dataType="bit",		type="cmb",	defaultValueGlobal=1,	defaultValueChar=-1,	values={ { text="Use Global", value=-1}, { text="On", value=1 }, { text="Off", value=0}},	name="Completion Warnings",	description={ "This will |cFFFF1111PREVENT|r you from completing any quests used for TBC Exp.", " ", "Default: On" } },
	{ key=CasualTBCPrep.Settings.EnabledItemTooltips, 	dataType="bit",		type="cmb",	defaultValueGlobal=1,	defaultValueChar=-1,	values={ { text="Use Global", value=-1}, { text="On", value=1 }, { text="Off", value=0}},	name="Item Tooltips",		description={ "Item tooltips will show if they are used in any TBCPrep routes\nIt will show if your current route needs it.", " ", "Default: On" } },

	{ key=CasualTBCPrep.Settings.EnabledSounds, 		dataType="text",	type="cmb",	defaultValueGlobal=1,	defaultValueChar=-1,	values={ { text="Use Global", value=-1}, { text="All", value=2 }, { text="SFX Only", value=1}, { text="None", value=0}},		name="Enabled Sounds",	description={ "All: SFX & Raid Warning sound when a popup shows", " ", "SFX: Small sound effects, like opening the window.", " ", "Default: All" } },
	{ key=CasualTBCPrep.Settings.SelectedTheme, 		dataType="text",	type="cmb",	defaultValueGlobal=2,	defaultValueChar=-1,	values={ { text="Use Global", value=-1}, { text="Default", value="DEFAULT" }, { text="Distinct", value="DISTINCT"}, { text="Deuteranopia", value="CB_DEUTE"}, { text="DeuteranopiaGPT", value="CB_DEUTE_GPT"}, { text="Tritanopia", value="CB_TRITAN"}, { text="TritanopiaGPT", value="CB_TRITAN_GPT"}},	name="Selected Theme", description={ "Which theme to use for the UI.", " ", "This changes the colors in the UI, but does not affect the RXP guides" } },
}

CasualTBCPrep.Settings.CurrentMajorVersionValue = 3.15
CasualTBCPrep.Settings.VersionCheck_RouteSelection = 3.0
CasualTBCPrep.Settings.VersionCheck_QuestlogOverhaul1 = 3.15

--[Settings Getter/Setter]
---@param key string
local function ParseSettingsValue(key, value)
	if value == nil then
		return nil
	end

	local settingsObj = CasualTBCPrep.Settings.AllSettings[key]
	if settingsObj ~= nil then
		if settingsObj.dataType == "bit" then
			if value == 1 or value == "1" then
				value = true
			elseif value == 0 or value == "0" then
				value = false
			else
				value = nil
			end
		elseif settingsObj == "text" then
			if value == -1 or value == "-1" then
				value = nil
			end
		end
	end

	return value
end

---@param key string
---@return any|nil
function CasualTBCPrep.Settings.GetCharSetting(key)
	return ParseSettingsValue(key, CasualTBCPrepSettingChar[key])
end
---@param key string
function CasualTBCPrep.Settings.SetCharSetting(key, value)
	CasualTBCPrepSettingChar[key] = value
end

---@param key string
---@return any|nil
function CasualTBCPrep.Settings.GetGlobalSetting(key)
	return ParseSettingsValue(key, CasualTBCPrepSettingGlobal[key])
end
---@param key string
function CasualTBCPrep.Settings.SetGlobalSetting(key, value)
	CasualTBCPrepSettingGlobal[key] = value
end

---@param key string
---@return any|nil
function CasualTBCPrep.Settings.GetIsFeatureDisabledGlobalOrChar(key)
	local storedGlobalValue = CasualTBCPrep.Settings.GetGlobalSetting(key)
	local storedCharValue = CasualTBCPrep.Settings.GetCharSetting(key)

	if storedCharValue ~= -1 then
		return storedCharValue ~= 1
	end

	if storedGlobalValue ~= -1 then
		return storedGlobalValue ~= 1
	end

	return false
end

---@param key string
function CasualTBCPrep.Settings.GetSettingFromCharOrGlobal(key)
	local storedValue = CasualTBCPrep.Settings.GetCharSetting(key)

	local settingsObj = CasualTBCPrep.Settings.AllSettings[key]
	if storedValue == nil or storedValue == -1 or (settingsObj ~= nil and storedValue == settingsObj.defaultValueChar) then
		storedValue = CasualTBCPrep.Settings.GetGlobalSetting(key)
	end

	return storedValue
end


function CasualTBCPrep.Settings.LoadDefaults()
    for _, settingsObj in ipairs(CasualTBCPrep.Settings.AllSettings) do
        if CasualTBCPrepSettingGlobal[settingsObj.key] == nil then
            CasualTBCPrepSettingGlobal[settingsObj.key] = settingsObj.defaultValueGlobal
        end
        if CasualTBCPrepSettingChar[settingsObj.key] == nil then
            CasualTBCPrepSettingChar[settingsObj.key] = settingsObj.defaultValueChar
        end
    end

	local tempCharSetting = nil
	-- Global Defaults
	local debugger = CasualTBCPrep.Settings.GetGlobalSetting(CasualTBCPrep.Settings.DebugDetails)
	if debugger == nil then
		CasualTBCPrep.Settings.SetGlobalSetting(CasualTBCPrep.Settings.DebugDetails, -1)
	end

	tempCharSetting = CasualTBCPrep.Settings.GetGlobalSetting(CasualTBCPrep.Settings.CompanionSettings)
	if tempCharSetting == nil then
		CasualTBCPrep.Settings.SetGlobalSetting(CasualTBCPrep.Settings.CompanionSettings, { })
	end

	-- Character Defaults
	tempCharSetting = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.IgnoredQuests)
	if tempCharSetting == nil then
		CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.IgnoredQuests, { })
	end
	tempCharSetting = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.IgnoredRouteSections)
	if tempCharSetting == nil then
		CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.IgnoredRouteSections, { })
	end
	tempCharSetting = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.ItemStates)
	if tempCharSetting == nil then
		CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.ItemStates, { })
	end
	tempCharSetting = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.QuestStates)
	if tempCharSetting == nil then
		CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.QuestStates, { })
	end
	tempCharSetting = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.TaxiState)
	if tempCharSetting == nil then
		CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.TaxiState, { })
	end
	tempCharSetting = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.ExtraTBCPrepSelections)
	if tempCharSetting == nil then
		CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.ExtraTBCPrepSelections, { })
	end
	tempCharSetting = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.CompanionSettings)
	if tempCharSetting == nil then
		CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.CompanionSettings, { })
	end
	tempCharSetting = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.ShowRouteQuestPickups)
	if tempCharSetting == nil then
		CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.ShowRouteQuestPickups, 1)
	end

	-- Set stuff that depends on settings
	local userThemeCode = CasualTBCPrep.Settings.GetSettingFromCharOrGlobal(CasualTBCPrep.Settings.SelectedTheme)
	if userThemeCode ~= nil and userThemeCode ~= "" then
		CasualTBCPrep.Themes.ChangeTheme(userThemeCode)
	end

	-- Major Version Checks. Use this when we need to force some settings after big changes that could break stuff.
	-- For example, after adding Route Selection, we want users who had the addon before, to also get the new selection window, so we reset their SelectedRoute
	local charMajorVersionVal = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.CurrentMajorVersion)

	-- RouteSelection Version Check
	if charMajorVersionVal == nil or charMajorVersionVal < CasualTBCPrep.Settings.VersionCheck_RouteSelection then
		CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.SelectedRoute, nil)
	end
	if charMajorVersionVal == nil or charMajorVersionVal < CasualTBCPrep.Settings.VersionCheck_QuestlogOverhaul1 then
		CasualTBCPrep.NotifyUserWarning("WARNING. In this update we realized questlog quests didn't calculate the correct exp based on your level.\rPlease check that your questlog quests are still good! If quests now give low exp, you need to fix it!")

		C_Timer.After(10, function()
			CasualTBCPrep.W_WarningNotice.Show("3.15 Update (2026-01-12)", nil, "warn_qlog_overhaul", nil)
		end)
	end


	-- Should probably always be last
	CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.CurrentMajorVersion, CasualTBCPrep.Settings.CurrentMajorVersionValue)
end



---@param itemID number
---@param value boolean|nil
---@param bankAltName string|nil
function CasualTBCPrep.Settings.SetItemMarkedAsStoredOnBankAlt(itemID, value, bankAltName)
    local eItemStates = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.ItemStates)
    local eState = eItemStates[itemID]
    if not eState then eState={id=itemID} end

    eState.isBankAlted = value
    eState.bankAltName = bankAltName

    eItemStates[itemID] = eState
    CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.ItemStates, eItemStates)
end


---@param itemID number
---@return boolean,string
function CasualTBCPrep.Settings.IsItemMarkedAsStoredOnBankAlt(itemID)
    local bankAlted = false
    local bankAltName = ""

    local eItemStates = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.ItemStates)
    local eState = eItemStates[itemID]
    if eState then
        bankAlted = eState.isBankAlted
        bankAltName = eState.bankAltName
    end

    return bankAlted or false, bankAltName or ""
end

---@param selectedRouteCode string
---@param questID number
---@param priorityChanged boolean|nil
function CasualTBCPrep.Settings.SetQuestPriority(selectedRouteCode, questID, priorityChanged)
    local eQuestStates = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.QuestStates)
    local qState = eQuestStates[questID]
	if qState == nil then
		qState = {}
		qState[selectedRouteCode] = { priorityChanged=nil }
		eQuestStates[questID] = qState
	end
	if qState[selectedRouteCode] == nil then
		qState[selectedRouteCode] = { priorityChanged = priorityChanged }
	else
		qState[selectedRouteCode].priorityChanged = priorityChanged
	end
    eQuestStates[questID] = qState

    CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.QuestStates, eQuestStates)
end

---@param selectedRouteCode string
---@param questID number
---@return boolean|nil
function CasualTBCPrep.Settings.GetQuestPriority(selectedRouteCode, questID)
    local eQuestStates = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.QuestStates)
    local qState = eQuestStates[questID]
	if qState == nil then return nil end
	if qState[selectedRouteCode] == nil then return nil end

	return qState[selectedRouteCode].priorityChanged
end

---@param selectedRouteCode string
---@param questID number
---@return boolean
function CasualTBCPrep.Settings.GetQuestIgnoredState(selectedRouteCode, questID)
	local ignoredState = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.IgnoredQuests)
	if ignoredState[selectedRouteCode] == nil then
		return false
	end
	return ignoredState[selectedRouteCode][questID] == true
end

---@param selectedRouteCode string
---@param questID number
---@param stateValue boolean
function CasualTBCPrep.Settings.SetQuestIgnoredState(selectedRouteCode, questID, stateValue)
	local ignoredState = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.IgnoredQuests)
	if ignoredState == nil then
		ignoredState = {}
	end
	if ignoredState[selectedRouteCode] == nil then
		ignoredState[selectedRouteCode] = {}
	end
	ignoredState[selectedRouteCode][questID] = stateValue
	CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.IgnoredQuests, ignoredState)
end

function CasualTBCPrep.Settings.OnChange(settingsKey, newValue, isGlobal)
	if settingsKey == CasualTBCPrep.Settings.SelectedTheme then
		local storedVal = CasualTBCPrep.Settings.GetSettingFromCharOrGlobal(settingsKey)
		CasualTBCPrep.Themes.ChangeTheme(storedVal)
	end
end