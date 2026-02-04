CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.W_QuestManagement = CasualTBCPrep.W_QuestManagement or {}

--[Variables]
local w_window_name = "CasualTBCPrep_W_QuestManagement"
local _bankAltCheckValue = false

---@class Frame|nil
local wQuestManagement = nil;


local function CreateIgnoreQuestButton(selectedRoute, questID, qType, isQuestCompleted, yPosition)
    local isQuestIgnored = CasualTBCPrep.Settings.GetQuestIgnoredState(selectedRoute, questID)

    local btn = CreateFrame("Button", nil, wQuestManagement, "UIPanelButtonTemplate")
    btn:SetSize(170, 25)
    btn:SetPoint("TOP", wQuestManagement, "TOP", 0, yPosition)
    btn:SetNormalFontObject("GameFontNormal")

    local function funcUpdateButton(isQuestIgnoredInner)
        if isQuestIgnoredInner == true then
            btn:SetText("Unignore Quest")
        else
            btn:SetText("Ignore Quest")
        end
    end

    btn:SetScript("OnClick", function()
        local isQuestIgnoredInner = not CasualTBCPrep.Settings.GetQuestIgnoredState(selectedRoute, questID)
        CasualTBCPrep.Settings.SetQuestIgnoredState(selectedRoute, questID, isQuestIgnoredInner)

        funcUpdateButton(isQuestIgnoredInner)
        CasualTBCPrep.W_Main.ReloadActiveTab()
    end)

    local btnTooltip = ""
    if isQuestIgnored == true then
        btnTooltip = "Click to unignore the current quest from the current route ("..selectedRoute..")"
    else
        btnTooltip = "Click to ignore the current quest from the current route ("..selectedRoute..")"
    end
    CasualTBCPrep.UI.HookTooltip(btn, "Quest State", { btnTooltip }, nil,nil,nil)
    funcUpdateButton(isQuestIgnored)
    table.insert(wQuestManagement.content, btn)
    return btn
end

---@param selectedRoute string
---@param questID number
---@param qType string
---@param isQuestCompleted boolean
---@param yPosition number
local function DisplayQuestLog(selectedRoute, questID, qType, isQuestCompleted, yPosition)
    if isQuestCompleted == false and (qType == "qlog" or qType == "opt" or qType == "optional") then
        local currentPriorityChanged = CasualTBCPrep.Settings.GetQuestPriority(selectedRoute, questID)
        local qTypText = ""
        if "qlog" == qType then
            qTypText = "Questlog Quest"
        elseif "opt" == qType or "optional" == qType then
            qTypText = "Optional Quest"
        end
        local btn = CreateFrame("Button", nil, wQuestManagement, "UIPanelButtonTemplate")
        btn:SetSize(170, 25)
        btn:SetPoint("TOP", wQuestManagement, "TOP", 0, yPosition)
        btn:SetNormalFontObject("GameFontNormal")

        local function funcUpdateButton()
            if qType == "qlog" then
                if currentPriorityChanged == true then
                    btn:SetText("Set Questlog Again")
                else
                    btn:SetText("Remove from Questlog")
                end
            else
                if currentPriorityChanged == true then
                    btn:SetText("Set Optional Again")
                else
                    btn:SetText("Set as Questlog Quest")
                end
            end
        end
        btn:SetScript("OnClick", function()
            if currentPriorityChanged == true then
                currentPriorityChanged = nil
            else
                currentPriorityChanged = true
            end

            CasualTBCPrep.Settings.SetQuestPriority(selectedRoute, questID, currentPriorityChanged)

            funcUpdateButton()
            CasualTBCPrep.W_Main.ReloadActiveTab()
        end)

        local btnTooltip = ""
        if "qlog" == qType then
            btnTooltip =  "Click to toggle questlog priority for this character"
        else
            btnTooltip =  "Click to toggle optional quest priority for this character"
        end

        CasualTBCPrep.UI.HookTooltip(btn, "Quest State", { btnTooltip }, nil,nil,nil)

        funcUpdateButton()
        table.insert(wQuestManagement.content, btn)

        yPosition = yPosition - 32
        local ignoreButton = CreateIgnoreQuestButton(selectedRoute, questID, qType, isQuestCompleted, yPosition)

        local txtQuestType = wQuestManagement:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        txtQuestType:SetPoint("TOP", ignoreButton, "BOTTOM", 0, -5)
        txtQuestType:SetText(CasualTBCPrep.Themes.SelectedTheme.colors.standoutText.hex..qTypText)
        table.insert(wQuestManagement.texts, txtQuestType)
        CasualTBCPrep.UI.HookTooltip(txtQuestType, "Quest Type", { "This is the default type for this quest, on your current route" }, nil,nil,nil)
    end
end

---@param selectedRoute string
---@param questID number
---@param qType string
---@param isQuestCompleted boolean
---@param yPosition number
local function DisplayQuest(selectedRoute, questID, qType, isQuestCompleted, yPosition)
    if qType == "qlog" or qType == "opt" or qType == "optional" then
        DisplayQuestLog(selectedRoute, questID, qType, isQuestCompleted, yPosition)
        return;
    end

    CreateIgnoreQuestButton(selectedRoute, questID, qType, isQuestCompleted, yPosition)
end


local function Display()
	if wQuestManagement.texts then
		for _, fontString in ipairs(wQuestManagement.texts) do
			fontString:Hide()
			fontString:SetText("")
			fontString:SetSize(0, 0)
		end
	end
	if wQuestManagement.content then
		for _, borderFrame in ipairs(wQuestManagement.content) do
			borderFrame:Hide()
		end
	end
	wQuestManagement.texts = {}
	wQuestManagement.content = {}

    local selectedRoute = CasualTBCPrep.Routing.CurrentRouteCode
    local questID = wQuestManagement.currentQuestID;
    if not questID or questID <= 0 then return end
    if not selectedRoute or selectedRoute == '' then return end

    local quest = CasualTBCPrep.QuestData.GetQuest(questID)
    local isQuestCompleted = CasualTBCPrep.QuestData.HasCharacterCompletedQuest(quest.id)
	local _, _, _, questTextColorRGB = CasualTBCPrep.QuestData.GetQuestProgressionDetails(quest)

    local qType = string.lower(quest.type)
    local yPosition = -34

    local txtQuestName = wQuestManagement:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    txtQuestName:SetPoint("TOP", wQuestManagement, "TOP", 0, yPosition)
    txtQuestName:SetText(quest.name)
    table.insert(wQuestManagement.texts, txtQuestName)
    yPosition = yPosition - 21
    CasualTBCPrep.UI.SetQuestTextColor(txtQuestName, quest, questTextColorRGB.r,questTextColorRGB.g,questTextColorRGB.b)

    if wQuestManagement.currentQuestType == "qlog" then
        DisplayQuestLog(selectedRoute, questID, qType, isQuestCompleted, yPosition)
    elseif wQuestManagement.currentQuestType == "q" then
        DisplayQuest(selectedRoute, questID, qType, isQuestCompleted, yPosition)
    end
end

local function Create()
	wQuestManagement = CreateFrame("Frame", w_window_name, UIParent, "BasicFrameTemplateWithInset")
	wQuestManagement:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	wQuestManagement:EnableMouse(true)
	wQuestManagement:SetMovable(true)
	wQuestManagement:RegisterForDrag("LeftButton")
	wQuestManagement:SetScript("OnDragStart", function(self) self:StartMoving() end)
	wQuestManagement:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)

	wQuestManagement:SetFrameStrata("FULLSCREEN_DIALOG")
	wQuestManagement:SetFrameLevel(1001)
	table.insert(UISpecialFrames, w_window_name)

	wQuestManagement.TitleBg:SetHeight(30);
	wQuestManagement.title = wQuestManagement:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	wQuestManagement.title:SetPoint("LEFT", wQuestManagement.TitleBg, "LEFT", 8, 6)

	wQuestManagement:SetScript("OnShow", function() CasualTBCPrep.Sounds.PlaySound_Click() end)
	wQuestManagement:SetScript("OnHide", function() CasualTBCPrep.Sounds.PlaySound_Click() end)
	wQuestManagement:Hide();
	wQuestManagement:Show();
end

function CasualTBCPrep.W_QuestManagement.Show(type, questID)
	if wQuestManagement == nil then

		Create()
		if wQuestManagement == nil then
			return
		end
	end

    if type ~= "q" and type ~= "qlog" then return end

    wQuestManagement.currentQuestID = questID
    wQuestManagement.currentQuestType = type
	wQuestManagement:SetSize(355, 160)
	wQuestManagement.title:SetText("TBCPrep - Quest Settings")

    Display()
	if not wQuestManagement:IsShown() then
		wQuestManagement:Show()
	end
end