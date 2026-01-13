CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.WM_QuestLogPrep = CasualTBCPrep.WM_QuestLogPrep or {}

--[Variables]
---@class Frame|nil
local fQuestLogPrep = nil


---@param parent any
---@param questID number
local function CreateClickableFunctionality(parent, questID)
	parent:EnableMouse(true)
	parent:SetScript("OnMouseUp", function(self, btn)
		if "LeftButton" == btn then
			--
		elseif "RightButton" == btn then
			CasualTBCPrep.W_QuestManagement.Show("qlog", questID)
		end
	end)
end

local function CreateListQuestTooltip(wMain, quest, btnClickableQuest, questText, nextPreQuest, itemDisplayList, reqAnyItem, allowManagement)
	if wMain == nil then
		return
	end

	local ttLines = {}
	if quest.data then
		if quest.prioChanged == true then
			table.insert(ttLines, CasualTBCPrep.Themes.SelectedTheme.colors.bad.hex.."You changed the type of the quest!")
			table.insert(ttLines, " ")
		end

		local q = quest.data
		if q.areaType ~= nil and q.area ~= nil  and q.areaType ~= "" then
			table.insert(ttLines, CasualTBCPrep.CreateZoneText(q.areaType .. ": ", q.area))
		end

		if q.exp then
			table.insert(ttLines, CasualTBCPrep.CreateExpText("Experience: ", q.exp))
		end

		if q.reqRep ~= nil and q.reqRep > 0 and q.reqRepRank ~= nil and q.reqRepRank > 0 then
			table.insert(ttLines, CasualTBCPrep.CreateRepRankText(q.reqRep, q.reqRepRank))
		end

		if q.reqProf ~= nil and q.reqProf > 0 and q.reqProfSkill ~= nil and q.reqProfSkill > 0 then
			table.insert(ttLines, CasualTBCPrep.CreateProfRankText(q.reqProf, q.reqProfSkill))
		end

		local dataName = "Unknown"
		if q.name then
			dataName = q.name
		end

		if q.comments ~= nil and q.comments ~= "" then
			table.insert(ttLines, " ")
			table.insert(ttLines, CasualTBCPrep.CreateZoneText("Comments",""))

			local parts = {}
			for part in (q.comments .. ". "):gmatch("(.-%. )") do
				table.insert(parts, part:match("^%s*(.-)%s*$"))
			end
			for _, part in ipairs(parts) do
				if part ~= "" then
					table.insert(ttLines, CasualTBCPrep.CreateZoneText("", part))
				end
			end
		end

		local tooltip = CasualTBCPrep.UI.UpdateAdvancedQuestTooltip(btnClickableQuest, "TOPLEFT", questText:GetStringWidth(), questText:GetStringHeight(), 0,0, dataName, ttLines, nextPreQuest, itemDisplayList, reqAnyItem)
		if allowManagement == true then
			CreateClickableFunctionality(tooltip, quest.data.id)
		end
		table.insert(fQuestLogPrep.tooltips, tooltip)
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_QuestLogPrep.Create(wMain)
	if wMain == nil or fQuestLogPrep ~= nil then
		return
	end
	fQuestLogPrep = CreateFrame("Frame", nil, wMain)
	fQuestLogPrep:SetAllPoints(wMain)

	fQuestLogPrep.scrollFrame, fQuestLogPrep.scrollChild = CasualTBCPrep.UI.CreateTBCPrepScrollFrame(fQuestLogPrep)

	fQuestLogPrep:Hide()
end

function CasualTBCPrep.WM_QuestLogPrep.Hide()
	if fQuestLogPrep ~= nil then
		fQuestLogPrep:Hide()
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_QuestLogPrep.Show(wMain)
	if fQuestLogPrep == nil then
		CasualTBCPrep.WM_QuestLogPrep.Create(wMain)
	end

	if fQuestLogPrep ~= nil then
		fQuestLogPrep:Show()
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_QuestLogPrep.Load(wMain)
	if wMain == nil or fQuestLogPrep == nil then
		return
	end
	local selectedRoute = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.SelectedRoute)
	if selectedRoute == nil or selectedRoute == "" then
		CasualTBCPrep.UI.CreateRouteSelection(wMain, fQuestLogPrep)
		fQuestLogPrep.scrollFrame:Hide()
		return
	end
	CasualTBCPrep.UI.ClearRouteSelectionUI(fQuestLogPrep)
	fQuestLogPrep.scrollFrame:Show()

	local availableQuests, completedQuests, optAvailableQuests, optCompletedQuests = CasualTBCPrep.QuestData.GetCharacterQuestLogStates_Main()
	local aCount = #availableQuests
	local cCount = #completedQuests
	local yOffset = -31
	local yActualStart = 0
	local yOffsetFinalMax = 0;

	-- Clear questTexts
	if fQuestLogPrep.questTexts then
		for _, fontString in ipairs(fQuestLogPrep.questTexts) do
			fontString:Hide()
			fontString:SetText("")
			fontString:SetParent(nil)
		end
	end
	if fQuestLogPrep.tooltips then
		for _, ttFrame in ipairs(fQuestLogPrep.tooltips) do
			ttFrame:Hide()
			ttFrame:SetSize(0, 0)
			ttFrame:SetParent(nil)
		end
	end
	if fQuestLogPrep.content then
		for _, ttFrame in ipairs(fQuestLogPrep.content) do
			ttFrame:Hide()
			ttFrame:SetParent(nil)
		end
	end
	fQuestLogPrep.questTexts = {}
	fQuestLogPrep.tooltips = {}
	fQuestLogPrep.content = {}


	-- Main Header Text
	if not fQuestLogPrep.headerText then
		fQuestLogPrep.headerText = fQuestLogPrep:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		fQuestLogPrep.headerText:SetPoint("TOP", fQuestLogPrep, "TOP", 0, yOffset)
	end

	fQuestLogPrep.headerText:SetText("You have " .. aCount .. " / 25 quests available")
	yOffset = yActualStart

	-- Completed Quests
	if cCount > 0 then
		if not fQuestLogPrep.completedHeader then
			fQuestLogPrep.completedHeader = fQuestLogPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
			fQuestLogPrep.completedHeader:SetText("Completed Quests")
			fQuestLogPrep.completedHeader:SetTextColor(1, 0, 0)
		end
		fQuestLogPrep.completedHeader:SetPoint("TOPLEFT", fQuestLogPrep.scrollChild, "TOPLEFT", 0, yOffset)

		yOffset = yOffset - 20

		for _, quest in ipairs(completedQuests) do
			local questName = quest.data.name
			if quest.prioChanged == true then questName = "*"..questName.."*" end

			local questText = fQuestLogPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
			questText:SetPoint("TOPLEFT", fQuestLogPrep.scrollChild, "TOPLEFT", 10, yOffset)
			questText:SetText(questName)
			questText:SetTextColor(1, 0, 0)

			local btnClickableQuest = CreateFrame("Button", nil, fQuestLogPrep.scrollChild)
			btnClickableQuest:SetAllPoints(questText, true)
			CreateListQuestTooltip(wMain, quest, btnClickableQuest, questText, nil, nil, quest.reqAnyItem, false)

			table.insert(fQuestLogPrep.questTexts, questText)
			table.insert(fQuestLogPrep.content, btnClickableQuest)

			yOffset = yOffset - 15
		end

		yOffset = yOffset - 10
	else
		if fQuestLogPrep.completedHeader then
			fQuestLogPrep.completedHeader:Hide()
		end
	end

	local questsReadyCount = 0

	-- Available Quests
	if aCount > 0 then
		if not fQuestLogPrep.availableHeader then
			fQuestLogPrep.availableHeader = fQuestLogPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
			fQuestLogPrep.availableHeader:SetText("Available Quests")
			fQuestLogPrep.availableHeader:SetTextColor(0, 1, 0)
		end
		fQuestLogPrep.availableHeader:SetPoint("TOPLEFT", fQuestLogPrep.scrollChild, "TOPLEFT", 1, yOffset)

		yOffset = yOffset - 20

		for _, quest in ipairs(availableQuests) do
			local questName = quest.data.name
			if quest.prioChanged == true then questName = "*"..questName.."*" end

			local hasFullyPreparedQuest, itemDisplayList, nextPreQuest, questTextColorRGB = CasualTBCPrep.QuestData.GetQuestProgressionDetails(quest.data)

			if hasFullyPreparedQuest then
				questsReadyCount = questsReadyCount + 1
			end

			local questText = fQuestLogPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
			questText:SetPoint("TOPLEFT", fQuestLogPrep.scrollChild, "TOPLEFT", 6, yOffset)
			questText:SetText(questName)
			questText:SetTextColor(questTextColorRGB.r, questTextColorRGB.g, questTextColorRGB.b)

			local btnClickableQuest = CreateFrame("Button", nil, fQuestLogPrep.scrollChild)
			btnClickableQuest:SetAllPoints(questText, true)
			CreateListQuestTooltip(wMain, quest, btnClickableQuest, questText, nextPreQuest, itemDisplayList, quest.reqAnyItem, true)

			table.insert(fQuestLogPrep.questTexts, questText)
			table.insert(fQuestLogPrep.content, btnClickableQuest)

			yOffset = yOffset - 15
		end
	else
		if fQuestLogPrep.availableHeader then
			fQuestLogPrep.availableHeader:Hide()
		end
	end

	yOffsetFinalMax = math.abs(yOffset) + 20

	-- OptionalAvailable Quests
	yOffset = yActualStart
	if not fQuestLogPrep.optionalQuestHeader then
		fQuestLogPrep.optionalQuestHeader = fQuestLogPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		fQuestLogPrep.optionalQuestHeader:SetText("Optional Quests")
		fQuestLogPrep.optionalQuestHeader:SetTextColor(0, 1, 0)
	else
		fQuestLogPrep.optionalQuestHeader:Show()
	end
	fQuestLogPrep.optionalQuestHeader:SetPoint("TOPRIGHT", fQuestLogPrep.scrollChild, "TOPRIGHT", 0, yOffset)

	yOffset = yOffset - 20

	for i, quest in ipairs(optAvailableQuests) do
		local questName = quest.data.name
		if quest.prioChanged == true then questName = "*"..questName.."*" end

		local hasFullyPreparedQuest, itemDisplayList, nextPreQuest, questTextColorRGB = CasualTBCPrep.QuestData.GetQuestProgressionDetails(quest.data)

		if hasFullyPreparedQuest then
			questsReadyCount = questsReadyCount + 1
		end

		local questText = fQuestLogPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
		questText:SetPoint("TOPRIGHT", fQuestLogPrep.scrollChild, "TOPRIGHT", 0, yOffset)
		questText:SetText(questName)
		questText:SetTextColor(questTextColorRGB.r, questTextColorRGB.g, questTextColorRGB.b)

		local btnClickableQuest = CreateFrame("Button", nil, fQuestLogPrep.scrollChild)
		btnClickableQuest:SetAllPoints(questText, true)
		CreateListQuestTooltip(wMain, quest, btnClickableQuest, questText, nextPreQuest, itemDisplayList, quest.reqAnyItem, true)

		table.insert(fQuestLogPrep.questTexts, questText)
		table.insert(fQuestLogPrep.content, btnClickableQuest)

		yOffset = yOffset - 15
	end

	for i, quest in ipairs(optCompletedQuests) do
		local questName = quest.data.name
		if quest.prioChanged == true then questName = "*"..questName.."*" end

		local questText = fQuestLogPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
		questText:SetPoint("TOPRIGHT", fQuestLogPrep.scrollChild, "TOPRIGHT", 0, yOffset)
		questText:SetText(questName)
		questText:SetTextColor(1, 0, 0)

		local btnClickableQuest = CreateFrame("Button", nil, fQuestLogPrep.scrollChild)
		btnClickableQuest:SetAllPoints(questText, true)
		CreateListQuestTooltip(wMain, quest, btnClickableQuest, questText, nil, nil, quest.reqAnyItem, false)

		table.insert(fQuestLogPrep.questTexts, questText)
		table.insert(fQuestLogPrep.content, btnClickableQuest)

		yOffset = yOffset - 15
	end

	-- Use the bigger values from left or right side
	yOffset = math.abs(yOffset) + 20
	if yOffset> yOffsetFinalMax then
		yOffsetFinalMax = yOffset
	end

	fQuestLogPrep.scrollChild:SetHeight(yOffsetFinalMax)
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_QuestLogPrep.Selected(wMain)
	if fQuestLogPrep == nil then
    	CasualTBCPrep.WM_QuestLogPrep.Create(wMain)
	end

    CasualTBCPrep.WM_QuestLogPrep.Load(wMain)
    CasualTBCPrep.WM_QuestLogPrep.Show(wMain)
end