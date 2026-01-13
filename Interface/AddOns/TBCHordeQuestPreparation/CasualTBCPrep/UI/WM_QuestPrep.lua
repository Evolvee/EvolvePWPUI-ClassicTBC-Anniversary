CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.WM_QuestPrep = CasualTBCPrep.WM_QuestPrep or {}

--[Variables]
---@class Frame|nil
local frameQuestPrep = nil;
local _headerY = -31

--Sorting Variables
local areaTypePriority = {
	["Raid"] = 1,
	["Dungeon"] = 2,
	["Zone"] = 3,
	["Battleground"] = 3,
	["City"] = 5
}

local _compactView = true

--[Forward Declarations]
local RefreshQuestList
local CreateExperienceBar

---@param btn Button
---@param questID number
local function CreateClickableFunctionality(btn, questID)
	btn:EnableMouse(true)
	btn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	btn:SetScript("OnClick", function(self, button)
		if "LeftButton" == button then
			--
		elseif "RightButton" == button then
			CasualTBCPrep.W_QuestManagement.Show("q", questID)
		end
	end)
end

---@param wMain Frame|nil
local function CreateListQuestTooltip(wMain, point, quest, questText, width, height, nextPreQuest, itemDisplayList, reqAnyItem, createClickable)
	if wMain == nil then
		return
	end

	local ttLines = {}
	if quest then
		local debugger = CasualTBCPrep.Settings.GetGlobalSetting(CasualTBCPrep.Settings.DebugDetails) or -1
		if debugger == 1 then
			if quest.isSplitQuest == true then
				local qIds = ""
				for _, qID in ipairs(quest.splitQuests) do
					if qIds == "" then
						qIds = tostring(qID)
					else
						qIds = qIds .. "," .. tostring(qID)
					end
				end
				table.insert(ttLines, CasualTBCPrep.CreateDebugText("SplitQuestIDs: ", qIds))
			else
				table.insert(ttLines, CasualTBCPrep.CreateDebugText("QuestID: ", tostring(quest.id)))
			end

			table.insert(ttLines, CasualTBCPrep.CreateDebugText("Type: ", tostring(quest.type)))
			table.insert(ttLines, "")
		end

		if quest.areaType ~= nil and quest.area ~= nil  and quest.areaType ~= "" then
			table.insert(ttLines, CasualTBCPrep.CreateZoneText(quest.areaType .. ": ", quest.area))
		end
		if quest.exp then
			table.insert(ttLines, CasualTBCPrep.CreateExpText("Experience: ", quest.exp))
		end

		if quest.reqRep ~= nil and quest.reqRep > 0 and quest.reqRepRank ~= nil and quest.reqRepRank > 0 then
			table.insert(ttLines, CasualTBCPrep.CreateRepRankText(quest.reqRep, quest.reqRepRank))
		end

		if quest.reqProf ~= nil and quest.reqProf > 0 and quest.reqProfSkill ~= nil and quest.reqProfSkill > 0 then
			table.insert(ttLines, CasualTBCPrep.CreateProfRankText(quest.reqProf, quest.reqProfSkill))
		end

		local dataName = "Unknown"
		if quest.name then
			dataName = quest.name
		end

		if quest.comments ~= nil and quest.comments ~= "" then
			table.insert(ttLines, " ")
			table.insert(ttLines, CasualTBCPrep.CreateZoneText("Comments",""))
			table.insert(ttLines, CasualTBCPrep.CreateZoneText("",string.gsub(quest.comments, "%. ", ".\r")))

			local dotCount = select(2, quest.comments:gsub("%.", ""))
			for i = 1, dotCount do
				table.insert(ttLines, " ")
			end
		end

		local tooltipObj = CasualTBCPrep.UI.UpdateAdvancedQuestTooltip(questText, point, width, height, 0,0, dataName, ttLines, nextPreQuest, itemDisplayList, reqAnyItem)
		if createClickable == true then
			CreateClickableFunctionality(tooltipObj, quest.id)
		end
		--tooltipObj = CasualTBCPrep.UI.UpdateAdvancedQuestTooltip(f, point, questText:GetFontString():GetStringWidth(), questText:GetFontString():GetStringHeight(), 0, 0, dataName, ttLines, nextPreQuest, itemDisplayList, reqAnyItem)
		table.insert(frameQuestPrep.content, tooltipObj)
	end
end


---@param wMain Frame|nil
function CasualTBCPrep.WM_QuestPrep.Create(wMain)
	if wMain == nil then
		return
	end

	frameQuestPrep = CreateFrame("Frame", nil, wMain)
	frameQuestPrep:SetAllPoints(wMain)

	frameQuestPrep.scrollFrame, frameQuestPrep.scrollChild = CasualTBCPrep.UI.CreateTBCPrepScrollFrame(frameQuestPrep, nil, -70, nil, nil)

	frameQuestPrep.content = { }

	frameQuestPrep:Hide()

	-- Search
	local searchX,searchY = 60,_headerY
	local baseImagePath = "Interface\\AddOns\\" .. CasualTBCPrep.AddonNameInternal .. "\\Resources\\Images\\"
	local imgW,imgH = 12,12

	local iconSearch = frameQuestPrep:CreateTexture(nil, "BORDER")

	iconSearch:SetPoint("TOPLEFT", frameQuestPrep, "TOPLEFT", searchX, searchY)
	iconSearch:SetWidth(imgW)
	iconSearch:SetHeight(imgH)
	iconSearch:SetTexture(baseImagePath .. "search")

	local iconSearchClickable, searchInput, searchWatermark = CasualTBCPrep.UI.CreateSearchFunctionality(frameQuestPrep, iconSearch, 75, 18, 50, 0.25, "Search...", function(src)
		RefreshQuestList(wMain, src)
	end)

	frameQuestPrep.searchIcon = iconSearch
	frameQuestPrep.searchClickable = iconSearchClickable
	frameQuestPrep.searchInput = searchInput
	frameQuestPrep.searchWatermark = searchWatermark
	CasualTBCPrep.UI.HookTooltip(iconSearchClickable, "Search", {"Click to search through quests", "It searches as you type"}, nil,nil,nil)
end

function CasualTBCPrep.WM_QuestPrep.Hide()
	if frameQuestPrep ~= nil then
		frameQuestPrep:Hide()
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_QuestPrep.Show(wMain)
	if frameQuestPrep == nil then
		CasualTBCPrep.WM_QuestPrep.Create(wMain)
	end

	if frameQuestPrep ~= nil then
		frameQuestPrep:Show()
		local src = strtrim(frameQuestPrep.searchInput:GetText())
		if src == "" then
			if frameQuestPrep.searchIcon ~= nil then frameQuestPrep.searchIcon:Show() end
			if frameQuestPrep.searchClickable ~= nil then frameQuestPrep.searchClickable:Show() end
			if frameQuestPrep.searchInput ~= nil then frameQuestPrep.searchInput:Hide() end
			if frameQuestPrep.searchWatermark ~= nil then frameQuestPrep.searchWatermark:Hide() end
		end
	end
end

local function SortQuestList(questList)
	table.sort(questList, function(aWrap, bWrap)
		local a = aWrap.wrap.quest;
		local b = bWrap.wrap.quest;

		local aIgnored = CasualTBCPrep.Settings.GetQuestIgnoredState(CasualTBCPrep.Routing.CurrentRouteCode, a.id) == true
		local bIgnored = CasualTBCPrep.Settings.GetQuestIgnoredState(CasualTBCPrep.Routing.CurrentRouteCode, b.id) == true

		-- Completed quests go to the very bottom
		if aWrap.completed ~= bWrap.completed then
			return not aWrap.completed
		end

		-- For non-completed quests, ignored ones go above completed but below active
		if not aWrap.completed and not bWrap.completed then
			if aIgnored ~= bIgnored then
				return not aIgnored  -- Non-ignored quests come first
			end
		end

		-- Rest of the original sorting logic
		local aHasRep = a.reqRep ~= nil
		local bHasRep = b.reqRep ~= nil

		if aHasRep and bHasRep then
			local aFacName = GetFactionInfoByID(a.reqRep) or ""
			local bFacName = GetFactionInfoByID(b.reqRep) or ""

			if aFacName ~= bFacName then
				return aFacName < bFacName
			end
			if a.reqRepRank ~= b.reqRepRank then
				return a.reqRepRank < b.reqRepRank
			end
		elseif not _compactView and (aHasRep or bHasRep) then
			return aHasRep -- Return reps at the top for non-compact view
		end

		if not _compactView then
			local aPrio = areaTypePriority[a.areaType] or 5
			local bPrio = areaTypePriority[b.areaType] or 5

			if aPrio ~= bPrio then
				return aPrio < bPrio
			end

			if a.area ~= b.area then
				return a.area < b.area
			end
		end

		if a.exp == b.exp then
			return a.name < b.name
		end
		return a.exp > b.exp
	end)
end
---@param q any
---@param src string|nil
local function DoesSearchMatchQuest(q, src)
	if not q then return false end
	if src == nil or src == "" then return true end

	return (q.id and q.id > 0 and tostring(q.id):lower():find(src,1,true))
		or (q.name and q.name:lower():find(src,1,true))
		or (q.routeSection and q.routeSection:lower():find(src,1,true))
		or (q.areaType and q.areaType:lower():find(src,1,true))
		or (q.area and q.area:lower():find(src,1,true))
		or (q.exp and q.exp > 0 and tostring(q.exp):lower():find(src,1,true))
end

---@param wMain Frame|nil
---@param xOffset number
---@param yOffset number
---@param headerText string
---@param headerFrame FontString
---@param availableQuests table
---@param completedQuests table
---@param point string
---@param relativePoint string
---@param isReputationList boolean
---@param createClickable boolean
---@return number, number, number, number, number
local function LoadSpecificQuestList(wMain, xOffset, yOffset, headerText, headerFrame, availableQuests, completedQuests, point, relativePoint, isReputationList, createClickable)
	local src = strtrim(frameQuestPrep.searchText or ""):lower()
	if src ~= "" then
		local searchedAvailable, searchedCompleted = {}, {}
        for _, q in ipairs(availableQuests) do
            if DoesSearchMatchQuest(q.quest, src) then
                table.insert(searchedAvailable, q)
            end
        end
        for _, q in ipairs(completedQuests) do
            if DoesSearchMatchQuest(q.quest, src) then
                table.insert(searchedCompleted, q)
            end
        end
		availableQuests = searchedAvailable
		completedQuests = searchedCompleted
	end

	local readyQuestCount = 0
	local totalCountNonIgnored = 0
	local totalCount = #availableQuests + #completedQuests

	if not frameQuestPrep.collapsedSections then
		frameQuestPrep.collapsedSections = {}
	end
	local isCollapsed = frameQuestPrep.collapsedSections[headerText] or false
	local collapseIndicator = isCollapsed and "> " or "v "
	local headerColor = CasualTBCPrep.Themes.SelectedTheme.colors.headerSpecial
	headerFrame:SetText(collapseIndicator .. tostring(totalCount) .. " " .. headerText .. " Quest" .. (tostring(totalCount) == 1 and "" or "s"))
	headerFrame:SetTextColor(headerColor.r, headerColor.g, headerColor.b)
	headerFrame:SetPoint(point, frameQuestPrep.scrollChild, relativePoint, xOffset, yOffset)

	if not headerFrame.clickFrame then
		headerFrame.clickFrame = CreateFrame("Button", nil, frameQuestPrep.scrollChild)
		headerFrame.clickFrame:SetAllPoints(headerFrame)
		headerFrame.clickFrame:RegisterForClicks("LeftButtonUp")
		headerFrame.clickFrame:SetScript("OnClick", function()
			frameQuestPrep.collapsedSections[headerText] = not frameQuestPrep.collapsedSections[headerText]
			if RefreshQuestList then
				RefreshQuestList(wMain, frameQuestPrep.searchText)
			end
		end)
		headerFrame.clickFrame:SetScript("OnEnter", function()
			local hdrClr = CasualTBCPrep.Themes.SelectedTheme.colors.headerSpecialHover
			headerFrame:SetTextColor(hdrClr.r, hdrClr.g, hdrClr.b)
		end)
		headerFrame.clickFrame:SetScript("OnLeave", function()
			headerFrame:SetTextColor(headerColor.r, headerColor.g, headerColor.b)
		end)
	end

	if totalCount > 0 then
		yOffset = yOffset - 20

		local xOffsetQuestText = xOffset >= 0 and xOffset + 4 or xOffset - 4
		local newList = {}

		-- Process available quests
		for i, quest in ipairs(availableQuests) do
			local isIgnored = CasualTBCPrep.Settings.GetQuestIgnoredState(CasualTBCPrep.Routing.CurrentRouteCode, quest.quest.id) == true
			if not isIgnored then
				totalCountNonIgnored = totalCountNonIgnored + 1
				frameQuestPrep.totalExpPossible = frameQuestPrep.totalExpPossible + quest.quest.exp
			end

			table.insert(newList, { wrap=quest, completed=false })
		end

		-- Process completed quests
		for i, quest in ipairs(completedQuests) do
			local isIgnored = CasualTBCPrep.Settings.GetQuestIgnoredState(CasualTBCPrep.Routing.CurrentRouteCode, quest.quest.id) == true
			if not isIgnored then
				totalCountNonIgnored = totalCountNonIgnored + 1
			end

			table.insert(newList, { wrap=quest, completed=true })
		end

		if not isCollapsed then
			SortQuestList(newList)

			local currentFactionName = ""
			local currentSeparator = nil
			for i, questWrap in ipairs(newList) do
				local quest = questWrap.wrap.quest
				local isIgnored = CasualTBCPrep.Settings.GetQuestIgnoredState(CasualTBCPrep.Routing.CurrentRouteCode, quest.id) == true

				if not _compactView then
					if isReputationList then
						if currentSeparator ~= quest.reqRep then
							if currentSeparator == nil then
								yOffset = yOffset - 5
							else
								yOffset = yOffset - 2
							end
							currentFactionName = GetFactionInfoByID(quest.reqRep) or ""
							currentSeparator = quest.reqRep

							local repHeaderText = frameQuestPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormal")
							repHeaderText:SetPoint(point, frameQuestPrep.scrollChild, relativePoint, xOffset, yOffset)
							repHeaderText:SetText(currentFactionName or currentSeparator)
							repHeaderText:SetTextColor(0.59, 0.39, 0.77)
							table.insert(frameQuestPrep.questTexts, repHeaderText)
							yOffset = yOffset - 15
						end
					else
						if currentSeparator ~= quest.area then
							if currentSeparator == nil then
								yOffset = yOffset - 5
							else
								yOffset = yOffset - 2
							end

							currentSeparator = quest.area

							local zoneHeaderText = frameQuestPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormal")
							zoneHeaderText:SetPoint(point, frameQuestPrep.scrollChild, relativePoint, xOffset, yOffset)
							zoneHeaderText:SetText(currentSeparator)
							zoneHeaderText:SetTextColor(0.59, 0.39, 0.77)
							table.insert(frameQuestPrep.questTexts, zoneHeaderText)
							yOffset = yOffset - 15
						end
					end
				end

				local hasFullyPreparedQuest, itemDisplayList, nextPreQuest, questTextColorRGB = CasualTBCPrep.QuestData.GetQuestProgressionDetails(quest)

				if hasFullyPreparedQuest and not isIgnored then
					readyQuestCount = readyQuestCount + 1
					frameQuestPrep.expectedExperienceTotal = frameQuestPrep.expectedExperienceTotal + quest.exp
					frameQuestPrep.expectedQuestCompletion = frameQuestPrep.expectedQuestCompletion + 1
				end

				local questNameText,overrideTooltip = "",nil
				if questWrap.wrap.notice ~= nil and questWrap.wrap.header ~= nil then
					questNameText = questWrap.wrap.header
				else
					questNameText = quest.name or "Unknown Quest"
				end

				local questText = frameQuestPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
				questText:SetPoint(point, frameQuestPrep.scrollChild, relativePoint, xOffsetQuestText, yOffset)
				questText:SetText(questNameText)
				questText:SetTextColor(questTextColorRGB.r, questTextColorRGB.g, questTextColorRGB.b)

				local btnClickableQuest = CreateFrame("Button", nil, frameQuestPrep.scrollChild)
				btnClickableQuest:SetAllPoints(questText, true)
				CreateListQuestTooltip(wMain, point, quest, btnClickableQuest, questText:GetStringWidth(), questText:GetStringHeight(), nextPreQuest, itemDisplayList, quest.reqAnyItem, createClickable)

				table.insert(frameQuestPrep.questTexts, questText)
				table.insert(frameQuestPrep.content, btnClickableQuest)
				yOffset = yOffset - 15
			end
		else -- Collapsed
			for i, questWrap in ipairs(newList) do
				local quest = questWrap.wrap
				local isIgnored = CasualTBCPrep.Settings.GetQuestIgnoredState(CasualTBCPrep.Routing.CurrentRouteCode, quest.quest.id) == true
				local hasFullyPreparedQuest = CasualTBCPrep.QuestData.GetQuestProgressionDetails(quest)

				if hasFullyPreparedQuest and not isIgnored then
					frameQuestPrep.expectedExperienceTotal = frameQuestPrep.expectedExperienceTotal + quest.exp
					frameQuestPrep.expectedQuestCompletion = frameQuestPrep.expectedQuestCompletion + 1
					readyQuestCount = readyQuestCount + 1
				end
			end
		end
		yOffset = yOffset - 10
	else
		if headerFrame then
			headerFrame:Hide()
		end
	end

	return yOffset, #availableQuests, #completedQuests, readyQuestCount, totalCountNonIgnored
end


---@param yOffset number
---@param point string
---@param relativePoint string
---@return number, number, number, number
local function LoadQuestlogQuests(wMain, xOffset, yOffset, point, relativePoint)
	if not frameQuestPrep.qloglist_header then
		frameQuestPrep.qloglist_header = frameQuestPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	end
	frameQuestPrep.qloglist_header:Show()

	local availableQuests, completedQuests = CasualTBCPrep.QuestData.GetAllQuestsGroup_Questlog()
	return LoadSpecificQuestList(wMain, xOffset, yOffset, "Questlog", frameQuestPrep.qloglist_header, availableQuests, { }, point, relativePoint, false, true)
end

---@param yOffset number
---@param point string
---@param relativePoint string
---@return number, number, number, number
local function LoadQuestlogOptionalQuests(wMain, xOffset, yOffset, point, relativePoint)
	if not frameQuestPrep.qlogoptlist_header then
		frameQuestPrep.qlogoptlist_header = frameQuestPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	end
	frameQuestPrep.qlogoptlist_header:Show()

	local questList = CasualTBCPrep.QuestData.GetAllQuestsGroup_Questlog_Optional()

	return LoadSpecificQuestList(wMain, xOffset, yOffset, "Optional", frameQuestPrep.qlogoptlist_header, questList, { }, point, relativePoint, false, true)
end

---@param yOffset number
---@param point string
---@param relativePoint string
---@return number, number, number, number
local function LoadTurninQuests(wMain, xOffset, yOffset, point, relativePoint)
	if not frameQuestPrep.turninlist_header then
		frameQuestPrep.turninlist_header = frameQuestPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	end
	frameQuestPrep.turninlist_header:Show()

	local availableQuests, completedQuests = CasualTBCPrep.QuestData.GetAllQuestsGroup_Normal()
	return LoadSpecificQuestList(wMain,xOffset, yOffset, "Turnin", frameQuestPrep.turninlist_header, availableQuests, completedQuests, point, relativePoint, false, true)
end

---@param yOffset number
---@param point string
---@param relativePoint string
---@return number, number, number, number
local function LoadReputationQuests(wMain, xOffset, yOffset, point, relativePoint)
	if not frameQuestPrep.replist_header then
		frameQuestPrep.replist_header = frameQuestPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	end
	frameQuestPrep.replist_header:Show()


	local availableQuests, completedQuests = CasualTBCPrep.QuestData.GetAllQuestsGroup_Reputation()
	return LoadSpecificQuestList(wMain, xOffset, yOffset, "Reputation", frameQuestPrep.replist_header, availableQuests, completedQuests, point, relativePoint, true, true)
end

---@param yOffset number
---@param point string
---@param relativePoint string
---@return number, number, number, number
local function LoadExpensiveQuests(wMain, xOffset, yOffset, point, relativePoint)
	if not frameQuestPrep.explist_header then
		frameQuestPrep.explist_header = frameQuestPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	end
	frameQuestPrep.explist_header:Show()


	local availableQuests, completedQuests = CasualTBCPrep.QuestData.GetAllQuestsGroup_Expensive()
	return LoadSpecificQuestList(wMain, xOffset, yOffset, "Expensive", frameQuestPrep.explist_header, availableQuests, completedQuests, point, relativePoint, false, true)
end

---@param yOffset number
---@param point string
---@param relativePoint string
---@return number, number, number, number
local function LoadItemQuests(wMain, xOffset, yOffset, point, relativePoint)
	if not frameQuestPrep.itemlist_header then
		frameQuestPrep.itemlist_header = frameQuestPrep.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	end
	frameQuestPrep.itemlist_header:Show()

	local availableQuests, completedQuests = CasualTBCPrep.QuestData.GetAllQuestsGroup_Items()
	return LoadSpecificQuestList(wMain, xOffset, yOffset, "Item", frameQuestPrep.itemlist_header, availableQuests, completedQuests, point, relativePoint, false, true)
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_QuestPrep.Load(wMain)
	if wMain == nil then
		return
	end

	local selectedRoute = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.SelectedRoute)
	if selectedRoute == nil or selectedRoute == "" then
		CasualTBCPrep.UI.CreateRouteSelection(wMain, frameQuestPrep)
		frameQuestPrep.scrollFrame:Hide()
		return
	end

	CasualTBCPrep.UI.ClearRouteSelectionUI(frameQuestPrep)
	frameQuestPrep.scrollFrame:Show()

	frameQuestPrep.totalExpPossible = 0
	local xOffset = 0
	local yOffset = -3

	local runningAvailableCount = 0
	local runningTotalCount = 0
	local runningReadyCount = 0
	local runningTotalNonIgnored = 0

	if frameQuestPrep.questTexts then
		for _, fontString in ipairs(frameQuestPrep.questTexts) do
			fontString:Hide()
			fontString:SetText("")
			fontString:SetSize(0, 0)
			fontString:SetParent(nil)
		end
	end
	if frameQuestPrep.content then
		for _, ttFrame in ipairs(frameQuestPrep.content) do
			ttFrame:Hide()
			ttFrame:SetSize(0, 0)
			ttFrame:SetParent(nil)
		end
	end
	if frameQuestPrep.expBar then
		for _, frame in ipairs(frameQuestPrep.expBar) do
			frame:Hide()
			frame:SetSize(0, 0)
			frame:SetParent(nil)
		end
	end

	frameQuestPrep.questTexts = {}
	frameQuestPrep.content = {}
	frameQuestPrep.expBar = {}
	frameQuestPrep.expectedExperienceTotal = 0
	frameQuestPrep.expectedQuestCompletion = 0

	local routeObj = CasualTBCPrep.Routing.Routes[selectedRoute]
	if routeObj ~= nil then
		frameQuestPrep.expectedExperienceTotal = routeObj.extraExperience or 0
	end

	-- Compact Checkbox
	if frameQuestPrep.chbCompact == nil then
		local checkbox = CreateFrame("CheckButton", nil, frameQuestPrep, "UICheckButtonTemplate")
		checkbox:SetPoint("TOPRIGHT", frameQuestPrep, "TOPRIGHT", -5, -30)
		checkbox:SetSize(24, 24)

		local chbLabel = checkbox:CreateFontString(nil, "OVERLAY", "GameTooltipTextSmall")
		chbLabel:SetPoint("RIGHT", checkbox, "LEFT", -2, 1)
		chbLabel:SetText("Compact")

		checkbox:SetChecked(_compactView)
		checkbox:SetScript("OnClick", function(self)
			_compactView = self:GetChecked()
			if RefreshQuestList then
				RefreshQuestList(wMain, frameQuestPrep.searchText)
			end
		end)

		CasualTBCPrep.UI.HookTooltip(checkbox, "Compact View", { "When unchecked, all quests are grouped per zone or faction." },nil,nil,nil)
		CasualTBCPrep.UI.HookTooltip(chbLabel, "Compact View", { "When unchecked, all quests are grouped per zone or faction." },nil,nil,nil)

		frameQuestPrep.chbCompact = checkbox
	end

	-- Left Side
	xOffset = 2
	local newYOffset, aCount, cCount, readyCount, totalNonIgnored = LoadTurninQuests(wMain, xOffset, yOffset, "TOPLEFT", "TOPLEFT")
	runningAvailableCount = runningAvailableCount + aCount
	runningTotalCount = runningTotalCount + aCount + cCount
	runningReadyCount = runningReadyCount + readyCount
	runningTotalNonIgnored = runningTotalNonIgnored + totalNonIgnored

	newYOffset, aCount, cCount, readyCount, totalNonIgnored = LoadItemQuests(wMain, xOffset, newYOffset, "TOPLEFT", "TOPLEFT")
	runningAvailableCount = runningAvailableCount + aCount
	runningTotalCount = runningTotalCount + aCount + cCount
	runningReadyCount = runningReadyCount + readyCount
	runningTotalNonIgnored = runningTotalNonIgnored + totalNonIgnored

	-- Right Side
	xOffset = -1
	newYOffset, aCount, cCount, readyCount, totalNonIgnored = LoadReputationQuests(wMain, xOffset, yOffset, "TOPRIGHT", "TOPRIGHT")
	runningAvailableCount = runningAvailableCount + aCount
	runningTotalCount = runningTotalCount + aCount + cCount
	runningReadyCount = runningReadyCount + readyCount
	runningTotalNonIgnored = runningTotalNonIgnored + totalNonIgnored

	newYOffset, aCount, cCount, readyCount, totalNonIgnored = LoadExpensiveQuests(wMain, xOffset, newYOffset, "TOPRIGHT", "TOPRIGHT")
	runningAvailableCount = runningAvailableCount + aCount
	runningTotalCount = runningTotalCount + aCount + cCount
	runningReadyCount = runningReadyCount + readyCount
	runningTotalNonIgnored = runningTotalNonIgnored + totalNonIgnored

	newYOffset, aCount, cCount, readyCount, totalNonIgnored = LoadQuestlogQuests(wMain, xOffset, newYOffset, "TOPRIGHT", "TOPRIGHT")
	runningAvailableCount = runningAvailableCount + aCount
	runningTotalCount = runningTotalCount + aCount + cCount
	runningReadyCount = runningReadyCount + readyCount
	runningTotalNonIgnored = runningTotalNonIgnored + totalNonIgnored

	newYOffset, aCount, cCount, readyCount, totalNonIgnored = LoadQuestlogOptionalQuests(wMain, xOffset, newYOffset, "TOPRIGHT", "TOPRIGHT")
	runningAvailableCount = runningAvailableCount + aCount
	runningTotalCount = runningTotalCount + aCount + cCount
	runningReadyCount = runningReadyCount + readyCount
	runningTotalNonIgnored = runningTotalNonIgnored + totalNonIgnored

	-- Experience Bar
	CreateExperienceBar(wMain, frameQuestPrep)

	-- Main Header Text
	if not frameQuestPrep.headerText then
		frameQuestPrep.headerText = frameQuestPrep:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		frameQuestPrep.headerText:SetPoint("TOP", frameQuestPrep, "TOP", 0, _headerY)
	end

	frameQuestPrep.headerText:SetText("Prepared " .. runningReadyCount .. " / " .. runningTotalNonIgnored .. " quests")
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_QuestPrep.Selected(wMain)
	if frameQuestPrep == nil then
    	CasualTBCPrep.WM_QuestPrep.Create(wMain)
	end

    CasualTBCPrep.WM_QuestPrep.Load(wMain)
    CasualTBCPrep.WM_QuestPrep.Show(wMain)
end

---@param wMain Frame|nil
RefreshQuestList = function(wMain, searchText)
	frameQuestPrep.searchText = searchText
	CasualTBCPrep.WM_QuestPrep.Load(wMain)
end

CreateExperienceBar = function(wMain, parent)
	local barWidth = wMain.GetSizeWidth() - 14
	local barHeight = 11
	local chunks = 20

	local xOffset = 0
	local yOffset = -57

	local expectedExpTotal = frameQuestPrep.expectedExperienceTotal or 0
	local targetLevel, targetExp, expPercentProgress = CasualTBCPrep.Experience.GetLevelProgress(60, 0, expectedExpTotal)-- Could use player values, but no point rn? UnitLevel("player") and UnitXP("player")
	local thisLevelTotalExp = CasualTBCPrep.Experience.GetRequiredExperienceFor(targetLevel, targetLevel + 1)

	local expBarFrame = CreateFrame("StatusBar", nil, parent)
	expBarFrame:SetSize(barWidth, barHeight)
    expBarFrame:SetPoint("TOP", parent, "TOP", xOffset, yOffset)
	expBarFrame:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
	--expBarFrame:SetStatusBarColor(0.64, 0.68, 0.17) -- Yellow, Energy
	expBarFrame:SetStatusBarColor(0.45, 0.02, 0.42)
	expBarFrame:SetMinMaxValues(0, 100)
	expBarFrame:SetValue(expPercentProgress)
	table.insert(frameQuestPrep.expBar, expBarFrame)

	local bgFrame = expBarFrame:CreateTexture(nil, "BACKGROUND")
	bgFrame:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-Skills-Bar")
	bgFrame:SetAllPoints(expBarFrame)
	bgFrame:SetVertexColor(0.3, 0.3, 0.3, 0.8)
	table.insert(frameQuestPrep.expBar, bgFrame)

	for i = 1, chunks - 1 do
		local segmentFrame = expBarFrame:CreateTexture(nil, "OVERLAY")
		segmentFrame:SetColorTexture(0, 0, 0, 0.2)
		segmentFrame:SetWidth(2)
		segmentFrame:SetHeight(expBarFrame:GetHeight() - 2)
		segmentFrame:SetPoint("LEFT", expBarFrame, "LEFT", i * (expBarFrame:GetWidth() / chunks), 0)
		table.insert(frameQuestPrep.expBar, segmentFrame)
	end

	-- Make it look like the expbar blends in well...
	-- Zoomed in for edge colors, make it seem like it blends in naturally... ish
	local tBrdClrR,tBrdClrG,tBrdClrB = 0.161,0.149,0.137
	local lBrdClrR,lBrdClrG,lBrdClrB = 0.247,0.220,0.188
	local rBrdClrR,rBrdClrG,rBrdClrB = 0.086,0.094,0.086

	local texTopBorder = expBarFrame:CreateTexture(nil, "OVERLAY")
	texTopBorder:SetColorTexture(tBrdClrR, tBrdClrG, tBrdClrB, 0.8)
	texTopBorder:SetHeight(2)
	texTopBorder:SetWidth(expBarFrame:GetWidth())
	texTopBorder:SetPoint("TOP", expBarFrame, "TOP", 0, 1)
	table.insert(frameQuestPrep.expBar, texTopBorder)

	local texLeftBorder = expBarFrame:CreateTexture(nil, "OVERLAY")
	texLeftBorder:SetColorTexture(lBrdClrR, lBrdClrG, lBrdClrB, 0.8)
	texLeftBorder:SetWidth(2)
	texLeftBorder:SetHeight(expBarFrame:GetHeight())
	texLeftBorder:SetPoint("LEFT", expBarFrame, "LEFT", -2, 0)
	table.insert(frameQuestPrep.expBar, texLeftBorder)

	local texRightBorder = expBarFrame:CreateTexture(nil, "OVERLAY")
	texRightBorder:SetColorTexture(rBrdClrR, rBrdClrG, rBrdClrB, 0.8)
	texRightBorder:SetWidth(2)
	texRightBorder:SetHeight(expBarFrame:GetHeight())
	texRightBorder:SetPoint("RIGHT", expBarFrame, "RIGHT", 1, 0)
	table.insert(frameQuestPrep.expBar, texRightBorder)

	-- Sparks
	if expPercentProgress > 1 then
		local sparkStrength = math.ceil(expPercentProgress / 20) * 7 --7/14/21/28 at 20/40/60/80 %

		local texExpSpark = expBarFrame:CreateTexture(nil, "OVERLAY")
		texExpSpark:SetTexture("Interface\\CastingBar\\UI-CastingBar-Spark")
		texExpSpark:SetBlendMode("ADD")
		texExpSpark:SetWidth(sparkStrength)
		texExpSpark:SetHeight(26)
		texExpSpark:SetPoint("CENTER", expBarFrame:GetStatusBarTexture(), "RIGHT", 0, 0)
		table.insert(frameQuestPrep.expBar, texExpSpark)
	end

	local txtClrR,txtClrG,txtClrB = 0.9, 0.9, 0.9

	-- Visuals done, add progression text
	local rawExpText = tostring(targetExp) .. " / " .. tostring(thisLevelTotalExp)
	local expPercentText = tostring(math.floor(expPercentProgress + 0.5)) .. "%"
	local targetLevelText = tostring(targetLevel)
	local nextLevelText = tostring((targetLevel + 1))

	local txtExpValue = expBarFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	txtExpValue:SetPoint("CENTER", expBarFrame, "CENTER", 0, 0)
	txtExpValue:SetText(rawExpText)
	txtExpValue:SetTextColor(txtClrR, txtClrG, txtClrB)
	table.insert(frameQuestPrep.expBar, txtExpValue)

	local txtCurLvl = expBarFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	txtCurLvl:SetPoint("LEFT", expBarFrame, "LEFT", 3, 0)
	txtCurLvl:SetText(targetLevelText)
	txtCurLvl:SetTextColor(txtClrR, txtClrG, txtClrB)
	table.insert(frameQuestPrep.expBar, txtCurLvl)

	local txtNextLvl = expBarFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	txtNextLvl:SetPoint("RIGHT", expBarFrame, "RIGHT", -4, 0)
	txtNextLvl:SetText(nextLevelText)
	txtNextLvl:SetTextColor(txtClrR, txtClrG, txtClrB)
	table.insert(frameQuestPrep.expBar, txtNextLvl)

	local qCount = (frameQuestPrep.expectedQuestCompletion or 0)
	local ttLines = {
		"You will hit level " .. targetLevelText .. " with " .. expPercentText .. " exp",
		"|cFFB4C2B8If you complete your " .. tostring(qCount) .. " quest" .. (qCount == 1 and "" or "s") .. "|r"
	}

	local currentRoute = CasualTBCPrep.Routing.GetCurrentRoute()
	if currentRoute then
		local totalPossibleExp = frameQuestPrep.totalExpPossible + (currentRoute.extraExperience or 0)
		local maxPossLevel, _, maxPossPercent = CasualTBCPrep.Experience.GetLevelProgress(60, 0, totalPossibleExp)
		table.insert(ttLines, " ")
		table.insert(ttLines, "Max Possible: |cFFFFFFFF"..maxPossLevel.." +"..tostring(math.floor(maxPossPercent+0.5)).."%|r")
	end
	CasualTBCPrep.UI.HookTooltip(expBarFrame, "Experience Progress", ttLines, nil,nil,nil)
end