CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.WM_Route = CasualTBCPrep.WM_Route or {}

--[Variables]
---@class Frame|nil
local frameRoute = nil
local selectedRouteCode = CasualTBCPrep.Routing.RouteCodeMain

---@param wMain Frame|nil
function CasualTBCPrep.WM_Route.Create(wMain)
    if wMain == nil then
        return
    end

    frameRoute = CreateFrame("Frame", nil, wMain)
    frameRoute:SetAllPoints(wMain)

    frameRoute:Hide()
end

---@param parent Frame|nil
---@param thickness number
local function CreateRouteBorder(parent, thickness)
	if parent == nil then
		return
	end

	local basePath = "Interface\\AddOns\\" .. CasualTBCPrep.AddonNameInternal .. "\\Resources\\Images\\RouteBorder\\"

	local borderTL = parent:CreateTexture(nil, "BORDER")
	borderTL:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, 0)
	borderTL:SetHeight(thickness)
	borderTL:SetWidth(thickness)
	borderTL:SetTexture(basePath .. "route_border_corner_tl")

	local borderTR = parent:CreateTexture(nil, "BORDER")
	borderTR:SetPoint("TOPRIGHT", parent, "TOPRIGHT", 0, 0)
	borderTR:SetHeight(thickness)
	borderTR:SetWidth(thickness)
	borderTR:SetTexture(basePath .. "route_border_corner_tr")

	local borderBL = parent:CreateTexture(nil, "BORDER")
	borderBL:SetPoint("BOTTOMLEFT", parent, "BOTTOMLEFT", 0, 0)
	borderBL:SetHeight(thickness)
	borderBL:SetWidth(thickness)
	borderBL:SetTexture(basePath .. "route_border_corner_bl")

	local borderBR = parent:CreateTexture(nil, "BORDER")
	borderBR:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT", 0, 0)
	borderBR:SetHeight(thickness)
	borderBR:SetWidth(thickness)
	borderBR:SetTexture(basePath .. "route_border_corner_br")

	local borderTop = parent:CreateTexture(nil, "BORDER")
	borderTop:SetPoint("TOPLEFT", borderTL, "TOPRIGHT", 0, 0)
	borderTop:SetPoint("TOPRIGHT", borderTR, "TOPLEFT", 0, 0)
	borderTop:SetHeight(thickness)
	borderTop:SetTexture(basePath .. "route_border_line_ht")

	local borderBot = parent:CreateTexture(nil, "BORDER")
	borderBot:SetPoint("BOTTOMLEFT", borderBL, "BOTTOMRIGHT", 0, 0)
	borderBot:SetPoint("BOTTOMRIGHT", borderBR, "BOTTOMLEFT", 0, 0)
	borderBot:SetHeight(thickness)
	borderBot:SetTexture(basePath .. "route_border_line_hb")

	local borderLeft = parent:CreateTexture(nil, "BORDER")
	borderLeft:SetPoint("TOPLEFT", borderTL, "BOTTOMLEFT", 0, 0)
	borderLeft:SetPoint("BOTTOMLEFT", borderBL, "TOPLEFT", 0, 0)
	borderLeft:SetWidth(thickness)
	borderLeft:SetTexture(basePath .. "route_border_line_vl")

	local borderRight = parent:CreateTexture(nil, "BORDER")
	borderRight:SetPoint("TOPRIGHT", borderTR, "BOTTOMRIGHT", 0, 0)
	borderRight:SetPoint("BOTTOMRIGHT", borderBR, "TOPRIGHT", 0, 0)
	borderRight:SetWidth(thickness)
	borderRight:SetTexture(basePath .. "route_border_line_vr")

	table.insert(frameRoute.elements, borderTL)
	table.insert(frameRoute.elements, borderTR)
	table.insert(frameRoute.elements, borderBL)
	table.insert(frameRoute.elements, borderBR)
	table.insert(frameRoute.elements, borderTop)
	table.insert(frameRoute.elements, borderBot)
	table.insert(frameRoute.elements, borderLeft)
	table.insert(frameRoute.elements, borderRight)
end

---@param uniqueSectionKey string
---@param value boolean
---@param reloadRoute boolean
local function ToggleIgnoreSection(uniqueSectionKey, value, reloadRoute)
	local ignoredRouteSections = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.IgnoredRouteSections) or { }
	ignoredRouteSections[uniqueSectionKey] = value
	CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.IgnoredRouteSections, ignoredRouteSections)

	if reloadRoute == true then
		CasualTBCPrep.Routing.ChangeCurrentRoute(selectedRouteCode)
	end
	CasualTBCPrep.Routing.OnSectionIgnoreToggled()
end

local function WipeElements()
	if frameRoute.texts then
		for _, fString in ipairs(frameRoute.texts) do
			fString:Hide()
			fString:SetSize(0, 0)
			fString:SetText("")
			fString:SetParent(nil)
		end
	end
	if frameRoute.elements then
		for _, frame in ipairs(frameRoute.elements) do
			frame:Hide()
			frame:SetSize(0, 0)
			frame:SetParent(nil)
		end
	end
	frameRoute.texts = {}
	frameRoute.elements = {}
end

function CasualTBCPrep.WM_Route.RefreshRoute()
	if not frameRoute or not frameRoute.scrollChild or not frameRoute.scrollFrame then
		return
	end

	WipeElements()

	local route = CasualTBCPrep.Routing.Routes[selectedRouteCode]
	if not route then
		return
	end

	local showDebugData = CasualTBCPrep.Settings.GetGlobalSetting(CasualTBCPrep.Settings.DebugDetails) or -1
	local shouldShowSectionPickupsOnTooltip = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.ShowRouteQuestPickups) or -1

	local yOffset = -15
	local totalEnabled = 0
	local totalDisabled = 0
	local totalTime = 0

	local metroLineStartOffset = yOffset - 5
	local metroLineEndOffset = 55

	local basePath = "Interface\\AddOns\\" .. CasualTBCPrep.AddonNameInternal .. "\\Resources\\Images\\"
	local basePathRouteLine = basePath .. "RouteLine\\"
	local basePathRouteTravel = basePath .. "RouteTravel\\"

	local metroLineThickness = 9
	local metroX = 8

	local metroTopCap = frameRoute.scrollChild:CreateTexture(nil, "BACKGROUND")
	metroTopCap:SetPoint("TOPLEFT", frameRoute.scrollChild, "TOPLEFT", metroX, metroLineStartOffset)
	metroTopCap:SetHeight(metroLineThickness)
	metroTopCap:SetWidth(metroLineThickness)
	metroTopCap:SetTexture(basePathRouteLine .. "rl_top")
	table.insert(frameRoute.elements, metroTopCap)

	local metroBotCap = frameRoute.scrollChild:CreateTexture(nil, "BACKGROUND")
	metroBotCap:SetPoint("BOTTOMLEFT", frameRoute.scrollChild, "BOTTOMLEFT", metroX, metroLineEndOffset)
	metroBotCap:SetHeight(metroLineThickness)
	metroBotCap:SetWidth(metroLineThickness)
	metroBotCap:SetTexture(basePathRouteLine .. "rl_bot")
	table.insert(frameRoute.elements, metroBotCap)

	local metroLine = frameRoute.scrollChild:CreateTexture(nil, "BACKGROUND")
	metroLine:SetPoint("TOPLEFT", metroTopCap, "BOTTOMLEFT", 0, 0)
	metroLine:SetPoint("BOTTOMLEFT", metroBotCap, "TOPLEFT", 0, 0)
	metroLine:SetWidth(metroLineThickness)
	metroLine:SetTexture(basePathRouteLine .. "rl_vert")
	table.insert(frameRoute.elements, metroLine)

	yOffset = yOffset + 10

	local isFirstTravelNode = true
	local sectionFrame = nil
	local lastSectionEnabled = true

	for i, sectionKey in ipairs(route.sectionOrder) do
		local section = route.sections[sectionKey]

		if section == nil then
			CasualTBCPrep.NotifyUserError("Section " .. sectionKey .. "is in sectionOrder, but there's no section with that key, for route " .. route.key)
			return
		end

		local isLastStep = i == #route.sectionOrder
		if section.visible ~= false then
			local uniqueSectionKey = selectedRouteCode .. "_" .. section.key

			local ignoredRouteSections = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.IgnoredRouteSections) or { }
			local isEnabled = ignoredRouteSections[uniqueSectionKey] ~= true
			if isLastStep == true then isEnabled = true end

			if isEnabled then
				totalEnabled = totalEnabled + 1
				totalTime = totalTime + (section.estTime or 0)
			else
				totalDisabled = totalDisabled + 1
			end

			local sectionHeight = isEnabled and 45 or 24
			local sectionOffsetX = 35
			local sectionX = frameRoute.scrollFrame:GetWidth() - sectionOffsetX - 5

			local travelSpacing = 30

			if isEnabled and section.travelType ~= nil then
				local ttObj = CasualTBCPrep.Routing.TravelTypes[section.travelType]

				if ttObj.travelType == 0 then
					isFirstTravelNode = false
				end

				if ttObj.icon ~= nil and isFirstTravelNode == false and sectionFrame ~= nil then
					local travelNodeTextParent = nil
					local travelNodeTextSizeStr = "GameFontNormal"
					local travelNodeTextStr = ""

					if ttObj.internal == true then
						travelSpacing = 20

						local internalTravelLine = frameRoute.scrollChild:CreateTexture(nil, "BACKGROUND")
						internalTravelLine:SetPoint("TOPLEFT", sectionFrame, "BOTTOMLEFT", 17, 2)
						internalTravelLine:SetWidth(metroLineThickness)
						internalTravelLine:SetHeight(travelSpacing + 4)
						internalTravelLine:SetTexture(basePathRouteLine .. "rl_vert")
						table.insert(frameRoute.elements, metroLine)

						travelNodeTextParent = internalTravelLine
						travelNodeTextSizeStr = "GameFontNormalSmall"
						travelNodeTextStr = "|c" .. ttObj.color .. ttObj.text .. "|r "
						if section.travelText ~= nil then
							travelNodeTextStr = travelNodeTextStr .. tostring(section.travelText)
						else
							travelNodeTextStr = travelNodeTextStr .. "to " .. tostring(section.target)
						end
					else
						local iconW = ttObj.iconW or 18
						local iconH = ttObj.iconH or 18

						local metroLineCenterX = metroX + (metroLineThickness / 2)
						local sectionLeftX = sectionOffsetX

						local travelOffsetX = -(sectionLeftX - metroLineCenterX)
						local travelOffsetY = (travelSpacing / 2) + (sectionHeight / 2)
						if lastSectionEnabled == false then
							travelOffsetY = travelOffsetY - 12
						end

						local sectionMetroTravelNode = frameRoute.scrollChild:CreateTexture(nil, "OVERLAY")
						sectionMetroTravelNode:SetPoint("CENTER", sectionFrame, "LEFT", travelOffsetX, -travelOffsetY)
						sectionMetroTravelNode:SetWidth(iconW)
						sectionMetroTravelNode:SetHeight(iconH)
						sectionMetroTravelNode:SetTexture(basePathRouteTravel .. ttObj.icon)

						travelNodeTextParent = sectionMetroTravelNode
						travelNodeTextSizeStr = "GameFontNormal"
						travelNodeTextStr = "|c" .. ttObj.color .. ttObj.text .. "|r "
						if section.travelText ~= nil then
							travelNodeTextStr = travelNodeTextStr .. tostring(section.travelText)
						else
							travelNodeTextStr = travelNodeTextStr .. "to " .. tostring(section.target)
						end
					end

					if travelNodeTextParent ~= nil then
						local travelNodeText = sectionFrame:CreateFontString(nil, "OVERLAY", travelNodeTextSizeStr)
						travelNodeText:SetPoint("LEFT", travelNodeTextParent, "RIGHT", 5, 0)
						travelNodeText:SetText(travelNodeTextStr)
						travelNodeText:SetTextColor(0.8, 0.8, 0.8)
						table.insert(frameRoute.texts, travelNodeText)
					end

					isFirstTravelNode = false

					yOffset = yOffset - travelSpacing
				else
					isFirstTravelNode = false
					yOffset = yOffset - 0
				end
			else
				yOffset = yOffset - 0
			end

			sectionFrame = CreateFrame("Frame", nil, frameRoute.scrollChild)
			sectionFrame:SetPoint("TOPLEFT", sectionOffsetX, yOffset)
			sectionFrame:SetSize(sectionX, sectionHeight)
			table.insert(frameRoute.elements, sectionFrame)

			local borderThickness = 10
			if isEnabled then
				CreateRouteBorder(sectionFrame, borderThickness)
			else
				borderThickness = 0
			end

			local bg = sectionFrame:CreateTexture(nil, "BACKGROUND")
			bg:SetPoint("TOPLEFT", borderThickness, -borderThickness)
			bg:SetPoint("BOTTOMRIGHT", -borderThickness, borderThickness)
			bg:SetColorTexture(0.1, 0.1, 0.1, 0.5)
			table.insert(frameRoute.elements, bg)

			local checkbox = CreateFrame("CheckButton", nil, sectionFrame, "UICheckButtonTemplate")
			checkbox:SetPoint("LEFT", 10, 0)
			checkbox:SetSize(24, 24)
			checkbox:SetChecked(isEnabled)
			checkbox:SetScript("OnClick", function(self)
				ToggleIgnoreSection(uniqueSectionKey, not self:GetChecked(), true)
			end)

			if isLastStep == true then
				checkbox:SetChecked(true)
				checkbox:Disable()
			end
			table.insert(frameRoute.elements, checkbox)

			local stepNum = sectionFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
			stepNum:SetPoint("LEFT", checkbox, "RIGHT", 5, 0)
			stepNum:SetText(i .. ".")
			stepNum:SetJustifyH("CENTER")
			stepNum:SetJustifyV("MIDDLE")
			stepNum:SetTextColor(0.8, 0.8, 0.8)
			table.insert(frameRoute.texts, stepNum)

			local target = sectionFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
			target:SetPoint("LEFT", stepNum, "RIGHT", 5, 0)
			if section.isDungeon then
				target:SetText("|cFFF07151Dungeon: |r|cFFF5AC9A" .. tostring(section.target) .. "|r")
			else
				target:SetText(tostring(section.target))
			end
			target:SetJustifyH("CENTER")
			target:SetJustifyV("MIDDLE")
			target:SetTextColor(1, 1, 1)
			table.insert(frameRoute.texts, target)

			local questCount = nil
			local timeText = nil
			if isEnabled then
				if section.travelType then
					local ttObj = CasualTBCPrep.Routing.TravelTypes[section.travelType]

					if ttObj ~= nil then
						if ttObj.icon ~= nil and ttObj.internal == true then
						else
							local sectionMetroStop = frameRoute.scrollChild:CreateTexture(nil, "OVERLAY")
							sectionMetroStop:SetPoint("LEFT", frameRoute.scrollChild, "TOPLEFT", metroX + (metroLineThickness / 2) - metroLineThickness, yOffset - (sectionHeight / 2))
							sectionMetroStop:SetWidth(18)
							sectionMetroStop:SetHeight(18)
							sectionMetroStop:SetTexture(basePathRouteLine .. "rl_node")
							table.insert(frameRoute.elements, sectionMetroStop)

							local sectionMetroLink = frameRoute.scrollChild:CreateTexture(nil, "BACKGROUND")
							sectionMetroLink:SetPoint("LEFT", sectionMetroStop, "RIGHT", -2, 0)
							sectionMetroLink:SetPoint("RIGHT", sectionFrame, "LEFT", 1, 0)
							sectionMetroLink:SetHeight(7)
							sectionMetroLink:SetTexture(basePathRouteLine .. "rl_ext")
							table.insert(frameRoute.elements, sectionMetroLink)
						end
					end
				end

				local listValidQuests = { }
				local questCountNr = 0
				local completedCount = 0
				local sectionExp = 0
				local possibleExp = 0
				if section.quests ~= nil then
					for _, questID in ipairs(section.quests) do
						local quest = CasualTBCPrep.QuestData.GetQuest(questID)
						if quest ~= nil then
							local fullyCompleted, _, _, _ = CasualTBCPrep.QuestData.GetQuestProgressionDetails(quest)

							if CasualTBCPrep.QuestData.IsQuestValidForUser(quest) then
								questCountNr = questCountNr + 1
								local qCompleted = CasualTBCPrep.QuestData.HasCharacterCompletedQuest(quest.id)
								table.insert(listValidQuests, { quest=quest, isPrepared=(fullyCompleted == true), isCompleted=qCompleted })

								if not qCompleted then
									possibleExp = possibleExp + quest.exp
								end
							end

							if fullyCompleted == true then -- fullyCompleted can't be true if quest is invalid for the player
								completedCount = completedCount+ 1
								sectionExp = sectionExp + quest.exp
							end
						end
					end
				end

				if questCountNr > 0 then
					questCount = sectionFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
					questCount:SetPoint("TOPRIGHT", -10, -10)
					if completedCount < questCountNr and completedCount == 0 then
						questCount:SetTextColor(1.0, 0.4, 0.37)
						questCount:SetText(questCountNr .. " quest" .. (questCountNr ~= 1 and "s" or ""))
					elseif completedCount == questCountNr then
						questCount:SetTextColor(0.6, 0.96, 0.58)
						questCount:SetText(completedCount .. "/" .. questCountNr .. " quest" .. (questCountNr ~= 1 and "s" or ""))
					else
						questCount:SetTextColor(0.98, 0.97, 0.5)
						questCount:SetText(completedCount .. "/" .. questCountNr .. " quest" .. (questCountNr ~= 1 and "s" or ""))
					end
					table.insert(frameRoute.texts, questCount)
				end

				local minutesTime = math.ceil(section.estTime / 60.0)
				timeText = sectionFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
				timeText:SetPoint("BOTTOMRIGHT", -10, 10)
				timeText:SetText(tostring(minutesTime) .. " min")
				timeText:SetTextColor(1, 0.82, 0)
				table.insert(frameRoute.texts, timeText)

				local ttLines = { }
				if showDebugData == 1 then
					table.insert(ttLines, CasualTBCPrep.CreateDebugText("SectionID: ", section.key))
				end

				if questCountNr > 0 then
					local ttExpText = CasualTBCPrep.Themes.SelectedTheme.colors.tooltipLeftExp.hex.."Possible XP: |r"..CasualTBCPrep.Themes.SelectedTheme.colors.standoutText.hex..sectionExp.." / "..possibleExp.."|r"
					table.insert(ttLines, ttExpText)
					table.insert(ttLines, " ")
				end

				if section.pickups ~= nil and #section.pickups > 0 and shouldShowSectionPickupsOnTooltip == 1 then
					for _, questIDStr in ipairs(section.pickups) do
						if questIDStr ~= nil and questIDStr ~= "" then
							local questID = tonumber(questIDStr)

							if CasualTBCPrep.QuestData.IsQuestIDValidForUser(questID) and CasualTBCPrep.Routing.IsQuestInCurrentRoute(questID) then
								local questName = CasualTBCPrep.QuestData.GetQuestName(questID)
								table.insert(ttLines, CasualTBCPrep.Themes.SelectedTheme.colors.questPickup.hex..questName.." (pickup)")
							end
						end
					end
				end
				if questCountNr > 0 then
					table.sort(listValidQuests, function(aWrap, bWrap)
						local a = aWrap.quest;
						local b = bWrap.quest;

						return a.name < b.name
					end)

					for _, questWrap in ipairs(listValidQuests) do
						local questID = tonumber(questWrap.quest.id)

						if questID > 0 and CasualTBCPrep.Settings.GetQuestIgnoredState(CasualTBCPrep.Routing.CurrentRouteCode, questID) ~= true then
							local qNameText = ""
							if "qlog" == questWrap.quest.type then
								qNameText = questWrap.quest.name.." (qlog)"
							elseif "optional" == questWrap.quest.type then
								qNameText = questWrap.quest.name.." (opt)"
							elseif "turnin" == questWrap.quest.type then
								qNameText = questWrap.quest.name.." (turnin)"
							else
								qNameText = questWrap.quest.name
							end
							if questWrap.isCompleted == true then
								table.insert(ttLines, CasualTBCPrep.Themes.SelectedTheme.colors.questCompleted.hex..qNameText)
							else
								if questWrap.isPrepared then
									table.insert(ttLines, CasualTBCPrep.Themes.SelectedTheme.colors.questReady.hex..qNameText)
								else
									table.insert(ttLines, CasualTBCPrep.Themes.SelectedTheme.colors.questAvailable.hex..qNameText)
								end
							end
						end
					end
				end

				CasualTBCPrep.UI.HookTooltip(sectionFrame, target:GetText(), ttLines, nil,nil,nil)

				listValidQuests = nil
			end

			if not isEnabled then
				bg:SetColorTexture(0.05, 0.05, 0.05, 0.3)
				target:SetTextColor(0.5, 0.5, 0.5)

				if questCount ~= nil then
					questCount:SetTextColor(0.3, 0.3, 0.3)
				end
				if timeText ~= nil then
					timeText:SetTextColor(0.5, 0.5, 0.5)
				end
			end

			yOffset = yOffset - sectionHeight
			lastSectionEnabled = isEnabled
		end
	end

	local totalTimeInInMinutes = math.ceil(totalTime / 60.0)
	yOffset = yOffset - 15
	local summary = frameRoute.scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	summary:SetPoint("CENTER", frameRoute.scrollChild, "BOTTOM", 0, 10)
	summary:SetText(string.format("Enabled: %d | Disabled: %d | Est. Time: %d min", totalEnabled, totalDisabled, totalTimeInInMinutes))
	summary:SetTextColor(1, 0.82, 0)
	table.insert(frameRoute.texts, summary)

	frameRoute.scrollChild:SetHeight(math.abs(yOffset) + 10)
end

function CasualTBCPrep.WM_Route.Hide()
	if frameRoute ~= nil then
		frameRoute:Hide()
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_Route.Show(wMain)
	if frameRoute == nil then
		CasualTBCPrep.WM_Route.Create(wMain)
	end

	if frameRoute ~= nil then
		frameRoute:Show()
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_Route.Load(wMain)
	if wMain == nil then
		return
	end
	local selectedRoute = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.SelectedRoute)
	if selectedRoute == nil or selectedRoute == "" then
		CasualTBCPrep.UI.CreateRouteSelection(wMain, frameRoute)
		return
	end
	CasualTBCPrep.UI.ClearRouteSelectionUI(frameRoute)

	if frameRoute.dropdown == nil then
		local route = CasualTBCPrep.Routing.GetCurrentRoute()
		selectedRouteCode = route.key

		local dropdown = CreateFrame("Frame", nil, frameRoute, "UIDropDownMenuTemplate")
		dropdown:SetPoint("TOPRIGHT", frameRoute, "TOPRIGHT", 6, -26)
		UIDropDownMenu_SetWidth(dropdown, 90)
		UIDropDownMenu_SetText(dropdown, route.name)

		UIDropDownMenu_Initialize(dropdown, function(self, level)
			for routeKey, routeObj in pairs(CasualTBCPrep.Routing.Routes) do
				local info = UIDropDownMenu_CreateInfo()
				info.text = routeObj.name
				info.checked = (routeKey == selectedRouteCode)
				info.func = function()
					selectedRouteCode = routeKey
					CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.SelectedRoute, selectedRouteCode)
					CasualTBCPrep.Routing.ChangeCurrentRoute(routeKey)
					UIDropDownMenu_SetText(dropdown, routeObj.name)
					CasualTBCPrep.WM_Route.RefreshRoute()
				end
				UIDropDownMenu_AddButton(info)
			end
		end)
		frameRoute.scrollFrame, frameRoute.scrollChild = CasualTBCPrep.UI.CreateTBCPrepScrollFrame(frameRoute)

		frameRoute.dropdown = dropdown
	end

	if frameRoute.chbPickups == nil then
		local chbPickups = CreateFrame("CheckButton", nil, frameRoute, "UICheckButtonTemplate")
		chbPickups:SetPoint("RIGHT", frameRoute.dropdown, "LEFT", 13, 0)
		chbPickups:SetSize(26, 26)
		chbPickups:SetChecked(CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.ShowRouteQuestPickups) == 1)
		chbPickups:SetScript("OnClick", function(self)
			local isSelected = self:GetChecked()
			CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.ShowRouteQuestPickups, isSelected and 1 or -1)
			CasualTBCPrep.WM_Route.RefreshRoute()
		end)
		CasualTBCPrep.UI.HookTooltip(chbPickups, "Section Quest-Pickups", { "If checked, quests picked up at each section is shown in the tooltip", "This is NOT in order!!" }, nil,nil,nil)
		frameRoute.chbPickups = chbPickups
	end

	CasualTBCPrep.WM_Route.RefreshRoute()
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_Route.Selected(wMain)
	if frameRoute == nil then
		CasualTBCPrep.WM_Route.Create(wMain)
	end

	CasualTBCPrep.WM_Route.Load(wMain)
	CasualTBCPrep.WM_Route.Show(wMain)
end