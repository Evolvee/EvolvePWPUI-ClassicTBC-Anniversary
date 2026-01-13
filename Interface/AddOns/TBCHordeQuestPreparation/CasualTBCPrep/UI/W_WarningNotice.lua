CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.W_WarningNotice = CasualTBCPrep.W_WarningNotice or {}

--[Variables]
local mainText_qlog = "This quest is used for TBC Quest Preparation!\nBe careful not to turn it in, it should be in your questlog on release.\n\nTo turn off this warning, disable \"Questlog Warnings\"\nin the /tbcprep settings."
local mainText_optional = "This quest can be used for TBC Quest Preparation as an optional questlog quest!\n\nBe sure to check with /tbcprep that you don't need it before turning it in.\n\nTo turn off this warning, disable \"Optional Warnings\"\nin the /tbcprep settings."
local mainText_turnin = "This quest is turned in during TBC Release, this quest should NOT be in your questlog until release.\n\nTo turn off this warning, disable \"Quest Turnin Warnings\"\nin the /tbcprep settings."
local mainText_completing  = "You just tried to complete a quest used on TBC Release for EXP!\nThis is currently being blocked!\n\nTo turn off this warning, disable \"Quest Completion Warnings\"\nin the /tbcprep settings."
local mainText_itemdelete = "You just tried to delete an Item needed for TBC Prep Quests.\nThis item won't be blocked again for this sesson.\n\nIf you really want to delete it, do it again"
local mainText_warn_qlog_overhaul = "WARNING. In the 3.15 update (2026-01-12) we realized questlog quests didn't calculate the correct exp based on your level.\r"
	.."Please check that your questlog quests are still good, it depends on how much you prepared!\r\rIf any of your questlog quests now give low exp, you may need to replace it!\r\r"
	.."For example, we noticed that 'Summoning Shadra' will most likely be turned in at 61 or later, meaning it ONLY gives 9800 exp, not 12250.\r\r"
	.."We have removed it as a questlog quest, but since it still gives a free followup on release, you need to TURN IT IN if you already prepared it, not abandon it!\r\r"
	.."We're sorry about this, this was 100% our fault"

--		CasualTBCPrep.NotifyUserCompanionError("If 'Summoning Shadra' gives you <= 9800 exp, you need to turn it in, not abandon it, since it gives another turnin quest on release.")

local warningSpecificQuestOverrides = {
	[4023] = {message = "This quest is turned in during TBC Release.\nMake sure that you abandon it after you gathered the\nBlack Dragonflight Molt\nTo turn off this warning, disable \"Questlog Warnings\"\nin the /tbcprep settings."},
}


local w_window_name = "CasualTBCPrep_W_WarningNotice"

---@class Frame|nil
local wAcceptQuestWarning = nil;

--@param type string|nil
local function Create(type)
	wAcceptQuestWarning = CreateFrame("Frame", w_window_name, UIParent, "BasicFrameTemplateWithInset")
	wAcceptQuestWarning:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	wAcceptQuestWarning:EnableMouse(true)
	wAcceptQuestWarning:SetMovable(true)
	wAcceptQuestWarning:RegisterForDrag("LeftButton")
	wAcceptQuestWarning:SetScript("OnDragStart", function(self) self:StartMoving() end)
	wAcceptQuestWarning:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)

	-- Place in the front above other UI/addons
	wAcceptQuestWarning:SetFrameStrata("FULLSCREEN_DIALOG")
	wAcceptQuestWarning:SetFrameLevel(1000)
	table.insert(UISpecialFrames, w_window_name)

	--[Title]
	wAcceptQuestWarning.TitleBg:SetHeight(30);
	wAcceptQuestWarning.title = wAcceptQuestWarning:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	wAcceptQuestWarning.title:SetPoint("LEFT", wAcceptQuestWarning.TitleBg, "LEFT", 8, 6)

	--[Warning]
	wAcceptQuestWarning.warningText = wAcceptQuestWarning:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge")
	wAcceptQuestWarning.warningText:SetPoint("TOP", wAcceptQuestWarning, "TOP", 0, -40)
	wAcceptQuestWarning.warningText:SetWidth(450)

	wAcceptQuestWarning.warningText:SetJustifyH("CENTER")
	wAcceptQuestWarning.warningText:SetWordWrap(true)

	wAcceptQuestWarning.questNameText = wAcceptQuestWarning:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	wAcceptQuestWarning.questNameText:SetPoint("TOP", wAcceptQuestWarning.warningText, "BOTTOM", 0, -20)
	wAcceptQuestWarning.questNameText:SetWidth(450)
	wAcceptQuestWarning.questNameText:SetTextColor(1, 0.82, 0)
	wAcceptQuestWarning.questNameText:SetJustifyH("CENTER")
	wAcceptQuestWarning.questNameText:SetWordWrap(true)

	wAcceptQuestWarning.detailText = wAcceptQuestWarning:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	wAcceptQuestWarning.detailText:SetPoint("TOP", wAcceptQuestWarning.questNameText, "BOTTOM", 0, -20)
	wAcceptQuestWarning.detailText:SetWidth(450)
	wAcceptQuestWarning.detailText:SetTextColor(1, 1, 1)
	wAcceptQuestWarning.detailText:SetJustifyH("CENTER")
	wAcceptQuestWarning.detailText:SetWordWrap(true)

	--[Abandon Button]
	wAcceptQuestWarning.abandonButton = CreateFrame("Button", nil, wAcceptQuestWarning, "UIPanelButtonTemplate")
	wAcceptQuestWarning.abandonButton:SetSize(120, 30)
	wAcceptQuestWarning.abandonButton:SetPoint("BOTTOM", wAcceptQuestWarning, "BOTTOM", 0, 20)
	wAcceptQuestWarning.abandonButton:SetText("Abandon")

	wAcceptQuestWarning.abandonButton:SetScript("OnClick", function()
		if wAcceptQuestWarning.currentQuestLogEntryID ~= nil and  wAcceptQuestWarning.currentQuestLogEntryID > 0 then
			SelectQuestLogEntry(wAcceptQuestWarning.currentQuestLogEntryID)
			SetAbandonQuest()
			AbandonQuest()
			CasualTBCPrep.NotifyUser("Abandoned quest: " .. wAcceptQuestWarning.currentHeaderTextString)
		end
		wAcceptQuestWarning:Hide()
	end)

	wAcceptQuestWarning.abandonButton:Hide()

	--[QoL]
	wAcceptQuestWarning:SetScript("OnShow", function() CasualTBCPrep.Sounds.PlaySound_RaidWarning() end)
	wAcceptQuestWarning:SetScript("OnHide", function() CasualTBCPrep.Sounds.PlaySound_Click() end)
	wAcceptQuestWarning:Hide();
	wAcceptQuestWarning:Show();
end

local function UpdateElementsFromType(type)
	local title = ""
	local isDangerous = false
	local showAbandonButton = false
	local width = 450
	local height = 240

	local headerText = ""
	local messageText = ""

	if type == "qlog" then
		title = "Questlog Quest Accepted Warning"
		headerText = "WARNING!"
		messageText = mainText_qlog
		width = 440
		height = 205
		isDangerous = false
		showAbandonButton = false
	elseif type == "optional" then
		title = "Optional Questlog Quest Warning"
		headerText = "Warning"
		messageText = mainText_optional
		width = 470
		height = 235
		isDangerous = false
		showAbandonButton = false	
	elseif type == "turnin" then
		title = "Turnin Quest Accepted Warning"
		headerText = "Warning"
		messageText = mainText_turnin
		width = 470
		height = 235
		isDangerous = true
		showAbandonButton = true
	elseif type == "completing" then
		title = "Quest Completion Warning"
		headerText = "STOP!"
		messageText = mainText_completing
		width = 420
		height = 200
		isDangerous = true
		showAbandonButton = false
	elseif type == "itemdelete" then
		title = "Item Delete Warning"
		headerText = "Warning"
		messageText = mainText_itemdelete
		width = 420
		height = 200
		isDangerous = false
		showAbandonButton = false
	elseif type == "warn_qlog_overhaul" then
		title = "TBCPrep: Questlog Update Warning"
		headerText = "Important TBCPrep Update"
		messageText = mainText_warn_qlog_overhaul
		width = 520
		height = 320
		isDangerous = true
		showAbandonButton = false
	end

	wAcceptQuestWarning:SetSize(width, height)
	wAcceptQuestWarning.title:SetText(title)

	if isDangerous then 
		wAcceptQuestWarning.warningText:SetTextColor(1, 0, 0)
	else
		wAcceptQuestWarning.warningText:SetTextColor(0.86, 0.623, 0.1529) -- Orange'ish
	end

	if showAbandonButton and wAcceptQuestWarning.currentQuestLogEntryID ~= nil and  wAcceptQuestWarning.currentQuestLogEntryID > 0 then
		wAcceptQuestWarning.abandonButton:Show()
	else
		wAcceptQuestWarning.abandonButton:Hide()
	end

	wAcceptQuestWarning.warningText:SetText(headerText)
	wAcceptQuestWarning.detailText:SetText(messageText)

	local questID = wAcceptQuestWarning.currentQuestID
	local override = warningSpecificQuestOverrides and questID and warningSpecificQuestOverrides[questID]

	if override then
		if override.title then
			wAcceptQuestWarning.title:SetText(override.title)
		end

		if override.header then
			wAcceptQuestWarning.warningText:SetText(override.header)
		end

		if override.message then
			wAcceptQuestWarning.detailText:SetText(override.message)
		end
	end
end

function CasualTBCPrep.W_WarningNotice.Show(headerText, qLogEntry, type, questID)

	if wAcceptQuestWarning == nil then

		Create(type)
		if wAcceptQuestWarning == nil then
			return
		end
	end

	wAcceptQuestWarning.currentQuestLogEntryID = qLogEntry;
	wAcceptQuestWarning.currentHeaderTextString = headerText;
	wAcceptQuestWarning.currentQuestID = questID;

	wAcceptQuestWarning.questNameText:SetText(headerText)
	UpdateElementsFromType(type)

	if not wAcceptQuestWarning:IsShown() then
		wAcceptQuestWarning:Show()
	end
end

function CasualTBCPrep.W_WarningNotice.GetQuestlogWarningOverhaulText()
	return mainText_warn_qlog_overhaul
end