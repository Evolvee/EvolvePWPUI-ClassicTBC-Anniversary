CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.UI = CasualTBCPrep.UI or {}

--[Settings]
if not CasualTBCPrepSettingChar then CasualTBCPrepSettingChar = {} end
if not CasualTBCPrepSettingGlobal then CasualTBCPrepSettingGlobal = {} end
local trace = false
local traceUI = false

-- [Frames]
---@class Frame|nil
local ttQuestAdvanced = nil;

--[World of Warcraft]
CasualTBCPrep.ReputationRanks = {
	[1] = "Hated",
	[2] = "Hostile", 
	[3] = "Unfriendly",
	[4] = "Neutral",
	[5] = "Friendly",
	[6] = "Honored",
	[7] = "Revered",
	[8] = "Exalted"
}
CasualTBCPrep.ProfessionNames = {
	[185] = "Cooking",
	[129] = "First Aid",
	[356] = "Fishing",

	[171] = "Alchemy",
	[164] = "Blacksmithing",
	[333] = "Enchanting",
	[202] = "Engineering",
	[773] = "Inscription", -- wotlk
	[755] = "Jewelcrafting", -- tbc
	[165] = "Leatherworking",
	[197] = "Tailoring",
	[182] = "Herbalism",
	[186] = "Mining",
	[393] = "Skinning"
}

CasualTBCPrep.CachedRarityColors = { }

function CasualTBCPrep.GetRarityColor(rarity)
	local r,g,b,hex

	if rarity and rarity >= 1 then
		if CasualTBCPrep.CachedRarityColors[rarity] then
			local cachedColor = CasualTBCPrep.CachedRarityColors[rarity]
			r,g,b,hex = cachedColor.r, cachedColor.g, cachedColor.b, cachedColor.textColor
		else
			r, g, b = C_Item.GetItemQualityColor(rarity)
			hex = string.format("|cFF%02x%02x%02x", r * 255, g * 255, b * 255)
			CasualTBCPrep.CachedRarityColors[rarity] = { textColor=hex, r=r, g=g, b=b }
		end
	end

	return r,g,b,hex
end

function CasualTBCPrep.GhettoHearth()
    LeaveParty()
    InviteUnit("abcd")
    C_Timer.After(1, function()
        LeaveParty()
    end)
end

--[Info/Error Handling]
function CasualTBCPrep.Print(message)
	if message then
		print(tostring(message));
	end
end
---@param message string|nil
function CasualTBCPrep.NotifyUser(message)
	print(CasualTBCPrep.Themes.SelectedTheme.colors.notifyInfoStart.hex .. "[" .. CasualTBCPrep.AddonName .. "]: " .. CasualTBCPrep.Themes.SelectedTheme.colors.notifyInfoText.hex .. (message or "???"));
end
---@param message string|nil
function CasualTBCPrep.NotifyUserWarning(message)
	print(CasualTBCPrep.Themes.SelectedTheme.colors.notifyErrorStart.hex .. "[" .. CasualTBCPrep.AddonName .. "]: " .. CasualTBCPrep.Themes.SelectedTheme.colors.warn.hex .. (message or "Unknown Error"));
	CasualTBCPrep.Sounds.PlaySound_WhisperPing()
end
---@param message string|nil
function CasualTBCPrep.NotifyUserError(message)
	print(CasualTBCPrep.Themes.SelectedTheme.colors.notifyErrorStart.hex .. "[" .. CasualTBCPrep.AddonName .. "]: " .. CasualTBCPrep.Themes.SelectedTheme.colors.notifyErrorText.hex .. (message or "Unknown Error"));
	CasualTBCPrep.Sounds.PlaySound_WhisperPing()
end
---@param message string|nil
function CasualTBCPrep.NotifyUserCompanion(message)
	print(CasualTBCPrep.Themes.SelectedTheme.colors.notifyInfoStart.hex .. "[" .. CasualTBCPrep.AddonName .. " Companion]: " .. CasualTBCPrep.Themes.SelectedTheme.colors.notifyInfoText.hex .. (message or "???"));
end
---@param message string|nil
function CasualTBCPrep.NotifyUserCompanionWarning(message)
	print(CasualTBCPrep.Themes.SelectedTheme.colors.notifyErrorStart.hex .. "[" .. CasualTBCPrep.AddonName .. " Companion]: " .. CasualTBCPrep.Themes.SelectedTheme.colors.warn.hex .. (message or "Unknown Error"));
	CasualTBCPrep.Sounds.PlaySound_WhisperPing()
end
---@param message string|nil
function CasualTBCPrep.NotifyUserCompanionError(message)
	print(CasualTBCPrep.Themes.SelectedTheme.colors.notifyErrorStart.hex .. "[" .. CasualTBCPrep.AddonName .. " Companion]: " .. CasualTBCPrep.Themes.SelectedTheme.colors.notifyErrorText.hex .. (message or "Unknown Error"));
	CasualTBCPrep.Sounds.PlaySound_WhisperPing()
end

---@param message string|nil
function CasualTBCPrep.Trace(message)
	if not trace or message == nil or message == "" then
		return
	end
	print(CasualTBCPrep.Themes.SelectedTheme.colors.notifyInfoStart.hex .. "[" .. CasualTBCPrep.AddonName .. "] Trace: " .. CasualTBCPrep.Themes.SelectedTheme.colors.notifyInfoText.hex .. tostring(message));
end
---@param message string|nil
function CasualTBCPrep.TraceUI(message)
	if not traceUI or message == nil or message == "" then
		return
	end
	print(CasualTBCPrep.Themes.SelectedTheme.colors.notifyInfoStart.hex .. "[" .. CasualTBCPrep.AddonName .. "] Trace: " .. CasualTBCPrep.Themes.SelectedTheme.colors.notifyInfoText.hex .. tostring(message));
end

--[Text Helpers]
---@param left string
---@param right string
---@param clrLeft string
---@param clrRight string
function CasualTBCPrep.CreateDuoText(left, right, clrLeft, clrRight)
	return clrLeft .. left .. clrRight .. right
end

---@param left string
---@param right string
function CasualTBCPrep.CreateZoneText(left, right)
	return CasualTBCPrep.CreateDuoText(left, right, CasualTBCPrep.Themes.SelectedTheme.colors.tooltipLeftZone.hex, CasualTBCPrep.Themes.SelectedTheme.colors.standoutText.hex)
end

---@param left string
---@param right string
function CasualTBCPrep.CreateExpText(left, right)
	return CasualTBCPrep.CreateDuoText(left, right, CasualTBCPrep.Themes.SelectedTheme.colors.tooltipLeftExp.hex, CasualTBCPrep.Themes.SelectedTheme.colors.standoutText.hex)
end

---@param left string
---@param right string
function CasualTBCPrep.CreateDebugText(left, right)
	return CasualTBCPrep.CreateDuoText(left, right, CasualTBCPrep.Themes.SelectedTheme.colors.headerSpecialHover.hex, CasualTBCPrep.Themes.SelectedTheme.colors.standoutText.hex)
end

---@param repID number
---@param repRank number
function CasualTBCPrep.CreateRepRankText(repID, repRank)
	local repName, _, standingID = GetFactionInfoByID(repID)
	local repRankTxt = CasualTBCPrep.ReputationRanks[repRank] or "Unknown"

	local clrRepToUse = CasualTBCPrep.Themes.SelectedTheme.colors.bad.hex
	if standingID >= repRank then
		clrRepToUse = CasualTBCPrep.Themes.SelectedTheme.colors.good.hex
	end
	return clrRepToUse .. "Requires " .. CasualTBCPrep.Themes.SelectedTheme.colors.standoutText.hex .. repName .. " " .. clrRepToUse .. repRankTxt
end

---@param profID number
---@param reqProfLevel number
function CasualTBCPrep.CreateProfRankText(profID, reqProfLevel)
	local professionName = CasualTBCPrep.ProfessionNames[profID] or "Unknown Profession"

	local playerProfessionSkill = 0

	for i = 1, GetNumSkillLines() do
		local skillName, _, _ , skillRank, _, _, maxSkill = GetSkillLineInfo(i)

		if professionName == skillName then
			playerProfessionSkill = skillRank
			break
		end
	end

	local clrProfToUse = CasualTBCPrep.Themes.SelectedTheme.colors.bad.hex
	if playerProfessionSkill >= reqProfLevel then
		clrProfToUse = CasualTBCPrep.Themes.SelectedTheme.colors.good.hex
	end
	return clrProfToUse .. "Requires " .. CasualTBCPrep.Themes.SelectedTheme.colors.standoutText.hex .. reqProfLevel .. " " .. clrProfToUse .. professionName
end

---@return integer,string,string
function CasualTBCPrep.GetMapAndZoneInfo()
    local mapID = C_Map.GetBestMapForUnit("player")
    local zoneName = GetZoneText() or ""
    local subzoneName = GetSubZoneText() or ""
	return mapID, zoneName, subzoneName
end

---@return integer
function CasualTBCPrep.GetPlayerFreeBagSlots()
    local freeBagSlots = 0
    for bag = 0, NUM_BAG_SLOTS do
        local numFreeSlots, bagType = C_Container.GetContainerNumFreeSlots(bag)
        if numFreeSlots then
            freeBagSlots = freeBagSlots + numFreeSlots
        end
    end
    return freeBagSlots or 0
end

function CasualTBCPrep.TableInsertUnique(list, value)
	for _, v in ipairs(list) do
		if v == value then
			return
		end
	end
	table.insert(list, value)
end


local function GetOrCreateCustomTooltip()
	if ttQuestAdvanced then
		return ttQuestAdvanced
	end

	ttQuestAdvanced = CreateFrame("Frame", "CasualTBCPrepCustomTooltip", UIParent, "BackdropTemplate")
	ttQuestAdvanced:SetSize(250, 100)
	ttQuestAdvanced:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8X8",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 }
	})
	ttQuestAdvanced:SetBackdropColor(0, 0, 0, 0.85)
	ttQuestAdvanced:SetFrameStrata("TOOLTIP")
	ttQuestAdvanced:Hide()

	ttQuestAdvanced.content = {}

	return ttQuestAdvanced
end

---@param index number
function OnRouteSelection(index)
	local targetRouteCode = nil
	local routeSelectedMessage = ""
	if index == 1 then -- Strat
		routeSelectedMessage = "Route Selected: 'Full Stratholme Route'. You can change it in the 'Route' tab."
		targetRouteCode = CasualTBCPrep.Routing.RouteCodeStrat
	elseif index == 2 then -- Main
		routeSelectedMessage = "Route Selected: 'Main Route'. You can change it in the 'Route' tab."
		targetRouteCode = CasualTBCPrep.Routing.RouteCodeMain
	elseif index == 3 then -- Solo
		routeSelectedMessage = "Route Selected: 'Solo Route'. You can change it in the 'Route' tab."
		targetRouteCode = CasualTBCPrep.Routing.RouteCodeSolo
	end

	if targetRouteCode ~= nil then
		CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.SelectedRoute, targetRouteCode)
		CasualTBCPrep.Routing.ChangeCurrentRoute(targetRouteCode)

		CasualTBCPrep.NotifyUser(routeSelectedMessage)
		CasualTBCPrep.W_Main.ReloadActiveTab()
	end
end


local frameRouteSelection
local routeSelectionElements = { }
---@param index number
function ShowRouteText(index)
	if frameRouteSelection == nil then
		return
	end

	local routeSelectionDetails = nil
	if index == 1 then -- Strat
		routeSelectionDetails = CasualTBCPrep.Routing.Routes[CasualTBCPrep.Routing.RouteCodeStrat].selectionData
	elseif index == 2 then -- Main
		routeSelectionDetails = CasualTBCPrep.Routing.Routes[CasualTBCPrep.Routing.RouteCodeMain].selectionData
	elseif index == 3 then -- Solo
		routeSelectionDetails = CasualTBCPrep.Routing.Routes[CasualTBCPrep.Routing.RouteCodeSolo].selectionData
	end

	if routeSelectionDetails ~= nil then
		frameRouteSelection.textRouteHeader:SetText(routeSelectionDetails.header)
		frameRouteSelection.textLine1:SetText(routeSelectionDetails.warning)
		frameRouteSelection.textLine2:SetText(routeSelectionDetails.info1)
		frameRouteSelection.textLine3:SetText(routeSelectionDetails.info2)
		frameRouteSelection.textLine4:SetText(routeSelectionDetails.info3)
		frameRouteSelection.textLine5:SetText(routeSelectionDetails.possibleLevelText)
		frameRouteSelection.textLine6:SetText(routeSelectionDetails.estimatedTimeText)
	end
end

---@param headerText string|nil
function ClearRouteText(headerText)
	frameRouteSelection.textRouteHeader:SetText(headerText or "")
	frameRouteSelection.textLine1:SetText("")
	frameRouteSelection.textLine2:SetText("")
	frameRouteSelection.textLine3:SetText("")
	frameRouteSelection.textLine4:SetText("")
	frameRouteSelection.textLine5:SetText("")
	frameRouteSelection.textLine6:SetText("")
end


function CasualTBCPrep.UI.ClearRouteSelectionUI(parentFrame)
	if routeSelectionElements ~= nil then
		for _, obj in ipairs(routeSelectionElements) do
			obj:Hide()
		end
	end

	if frameRouteSelection ~= nil then
		frameRouteSelection:Hide()
		frameRouteSelection = nil
	end

	if parentFrame.scrollFrame ~= nil then
		parentFrame.scrollFrame:Show()
	end
end

---@param wMain Frame
---@param parentFrame Frame
function CasualTBCPrep.UI.CreateRouteSelection(wMain, parentFrame)
	if frameRouteSelection ~= nil then
		return
	end

	local imgPath = "Interface\\AddOns\\" .. CasualTBCPrep.AddonNameInternal .. "\\Resources\\Images\\Backgrounds\\darkportal"
	local buttonIconPath = "Interface\\AddOns\\" .. CasualTBCPrep.AddonNameInternal .. "\\Resources\\Images\\RouteSelect\\"

    frameRouteSelection = CreateFrame("Frame", nil, wMain)
    frameRouteSelection:SetClipsChildren(true)
	frameRouteSelection:SetAllPoints(wMain)
	table.insert(routeSelectionElements, frameRouteSelection)

    local bg = frameRouteSelection:CreateTexture(nil, "BACKGROUND")
    bg:SetSize(540, 360)
    bg:SetPoint("BOTTOM", frameRouteSelection, "BOTTOM", 7, -1)
    bg:SetTexture(imgPath)
    bg:SetTexCoord(0, 1, 0, 1)
    bg:SetAlpha(0.50)
	table.insert(routeSelectionElements, bg)

	local iconSize = 52
	local iconSpacing = 18
    local frameButtons = CreateFrame("Frame", nil, wMain)
	frameButtons:SetPoint("BOTTOM", wMain, "BOTTOM", 0, (iconSize * 3) + (iconSpacing * 2) - 5)
	frameButtons:SetPoint("LEFT", wMain, "LEFT")
	frameButtons:SetPoint("RIGHT", wMain, "RIGHT")
	frameButtons.buttons = {}
	table.insert(routeSelectionElements, frameButtons)

	local hoverTextStr = "Hover a route for details"
	local iconPaths = {
		buttonIconPath.."routeStrat",
		buttonIconPath.."routeMain",
		buttonIconPath.."routeSolo"
	}

	for i, path in ipairs(iconPaths) do
		local btn = CreateFrame("Button", nil, frameButtons)
		btn:SetSize(iconSize, iconSize)
		btn:SetPoint("CENTER", frameButtons, "BOTTOM", 0, -(i-1)*(iconSize + iconSpacing))

		local tex = btn:CreateTexture(nil, "BACKGROUND")
		tex:SetAllPoints()
		tex:SetTexture(path)
		tex:SetAlpha(1)
		btn.Texture = tex
		btn.ButtonIndex = i

		btn:SetScript("OnEnter", function(self)
			self.Texture:ClearAllPoints()
			self.Texture:SetPoint("TOPLEFT", -16, 16)
			self.Texture:SetPoint("BOTTOMRIGHT", 16, -16)
			self.Texture:SetAlpha(0.95)
			ShowRouteText(self.ButtonIndex)
		end)
		btn:SetScript("OnLeave", function(self)
			self.Texture:ClearAllPoints()
			self.Texture:SetAllPoints()
			self.Texture:SetAlpha(1)
			ClearRouteText(hoverTextStr)
		end)

		btn:SetScript("OnClick", function()
			OnRouteSelection(i)
		end)

		table.insert(routeSelectionElements, btn)
	end

	-- Create Texts
	local routeHeader = frameRouteSelection:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge")
	routeHeader:SetPoint("TOP", frameRouteSelection, "TOP", 0, -30)
	routeHeader:SetText(hoverTextStr)
	routeHeader:SetTextColor(0.94, 0.86, 0.5)
	table.insert(routeSelectionElements, routeHeader)
	frameRouteSelection.textRouteHeader = routeHeader

	local routeLine1 = frameRouteSelection:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	routeLine1:SetPoint("TOP", routeHeader, "TOP", 0, -30)
	routeLine1:SetText("")
	routeLine1:SetTextColor(1, 0.35, 0.22)
	table.insert(routeSelectionElements, routeLine1)
	frameRouteSelection.textLine1 = routeLine1
	local routeLine2 = frameRouteSelection:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	routeLine2:SetPoint("TOP", routeLine1, "TOP", 0, -22)
	routeLine2:SetText("")
	routeLine2:SetTextColor(0.9, 0.88, 0.78)
	table.insert(routeSelectionElements, routeLine2)
	frameRouteSelection.textLine2 = routeLine2
	local routeLine3 = frameRouteSelection:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	routeLine3:SetPoint("TOP", routeLine2, "TOP", 0, -13)
	routeLine3:SetText("")
	routeLine3:SetTextColor(0.9, 0.88, 0.78)
	table.insert(routeSelectionElements, routeLine3)
	frameRouteSelection.textLine3 = routeLine3
	local routeLine4 = frameRouteSelection:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	routeLine4:SetPoint("TOP", routeLine3, "TOP", 0, -13)
	routeLine4:SetText("")
	routeLine4:SetTextColor(0.9, 0.88, 0.78)
	table.insert(routeSelectionElements, routeLine4)
	frameRouteSelection.textLine4 = routeLine4
	local routeLine5 = frameRouteSelection:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	routeLine5:SetPoint("TOP", routeLine4, "TOP", 0, -24)
	routeLine5:SetText("")
	routeLine5:SetTextColor(0.745, 0.9, 0.88)
	table.insert(routeSelectionElements, routeLine5)
	frameRouteSelection.textLine5 = routeLine5
	local routeLine6 = frameRouteSelection:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	routeLine6:SetPoint("TOP", routeLine5, "TOP", 0, -13)
	routeLine6:SetText("")
	routeLine6:SetTextColor(0.745, 0.9, 0.88)
	table.insert(routeSelectionElements, routeLine6)
	frameRouteSelection.textLine6 = routeLine6
end

---@param parentFrame Frame
---@param iconSize number
---@param itemID number
---@param anchorPoint string
---@param anchorRelativeTo string
---@param xOffset number
---@param yOffset number
---@return Texture|nil, Texture|nil, string, any|nil
function CasualTBCPrep.UI.CreateItemImage(parentFrame, iconSize, itemID, anchorPoint, anchorRelativeTo, xOffset, yOffset)
	if itemID == nil or itemID <= 0 then
		return nil,nil,"",nil
	end
	local itemData = CasualTBCPrep.Items.GetItemDetails(itemID)
	if not itemData then
		return nil,nil,"",nil
	end

	-- Icon
	local icon = parentFrame:CreateTexture(nil, "OVERLAY")
	icon:SetTexture(itemData.texture)
	icon:SetSize(iconSize, iconSize)
	icon:SetPoint(anchorPoint, parentFrame, anchorRelativeTo, xOffset, yOffset)

	local brd = parentFrame:CreateTexture(nil, "OVERLAY", nil, 1)
	brd:SetTexture("Interface\\Common\\WhiteIconFrame")
	--brd:SetBlendMode("ADD")
	brd:SetPoint("CENTER",icon,"CENTER",0,0)
	brd:SetSize(iconSize, iconSize)
	brd:SetDrawLayer("OVERLAY", 1)

	local textRarityColor = "|cFFFFFFFF"

	if itemData.rarity and itemData.rarity > 1 then
		local r,g,b,cHex = CasualTBCPrep.GetRarityColor(itemData.rarity)
		textRarityColor = cHex
		brd:SetVertexColor(r, g, b, 1)
	else
		brd:Hide()
	end

	return icon, brd, textRarityColor, itemData
end

---@param step number
---@param stepCount number
---@param questName string
---@param startZoneText string|nil
---@return string
function CasualTBCPrep.UI.CreateNextPrequestText(step, stepCount, questName, startZoneText)
	local value = CasualTBCPrep.Themes.SelectedTheme.colors.tooltipLeftCurrentStep.hex .. "Next Prequest: |r" .. CasualTBCPrep.Themes.SelectedTheme.colors.currentStepProgress.hex
	value = value..step.."/"..stepCount.." |r"..CasualTBCPrep.Themes.SelectedTheme.colors.standoutText.hex..questName

	if startZoneText and startZoneText ~= "" then
		value = value..CasualTBCPrep.Themes.SelectedTheme.colors.currentStepArea.hex.." ("..startZoneText..")|r"
	else
		value = value.."|r"
	end
	return value
end

---@param frame Frame
---@param topleftX number|nil
---@param topleftY number|nil
---@param botRightX number|nil
---@param botRightY number|nil
---@return Frame,Frame
function CasualTBCPrep.UI.CreateTBCPrepScrollFrame(frame, topleftX, topleftY, botRightX, botRightY)
	local scrollFrame = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
	scrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", topleftX or 11, topleftY or -60)
	scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", botRightX or -31, botRightY or 8)

	local scrollChild = CreateFrame("Frame", nil, scrollFrame)
	scrollChild:SetSize(scrollFrame:GetWidth(), 1)
	scrollFrame:SetScrollChild(scrollChild)

	return scrollFrame,scrollChild
end

---@param parent Frame
---@param text string|nil
---@param font Font
---@param textJustifyH string|nil
---@param textJustifyV string|nil
---@return Button
function CasualTBCPrep.UI.CreateTextButton(parent, text, font, textJustifyH, textJustifyV)
	local button = CreateFrame("Button", nil, parent)
	button:SetText(text or "")
	button:SetNormalFontObject(font)
	local txtFontStr = button:GetFontString()
	if textJustifyH and textJustifyH ~= "" then txtFontStr:SetJustifyH(textJustifyH) end
	if textJustifyV and textJustifyV ~= "" then txtFontStr:SetJustifyV(textJustifyV) end
	button:SetSize(txtFontStr:GetStringWidth(), txtFontStr:GetStringHeight())
	return button
end
--[Shared UI Functions]
---@param parent Frame
---@param point string
---@param width number
---@param height number
---@param header string
function CasualTBCPrep.UI.UpdateAdvancedQuestTooltip(parent, point, width, height, x, y, header, lines, nextPreQuest, itemDisplayList, reqAnyItem)
	local tooltip = CreateFrame("Button", nil, parent)
	tooltip:SetPoint(point, parent, point, x, y)
	tooltip:SetSize(width, height)
	tooltip:SetScript("OnEnter", function(self)
		local clrWarn = CasualTBCPrep.Themes.SelectedTheme.colors.warn.hex
		local clrBad = CasualTBCPrep.Themes.SelectedTheme.colors.bad.hex
		local clrGood = CasualTBCPrep.Themes.SelectedTheme.colors.good.hex

		local ttFrame = GetOrCreateCustomTooltip()

		for _, contentObj in ipairs(ttFrame.content) do
			if contentObj then
			contentObj:Hide()
			end
		end

		local wideElementWidth = 0

		ttFrame.content = {}
		ttFrame:ClearAllPoints()
		ttFrame:SetPoint("LEFT", self, "RIGHT", 5, 0)

		local marginLeft = 10
		local marginRight = 10
		local marginTop = -10
		local marginBot = -4;

		local yPosition = marginTop

		if not ttFrame.headerText then
			ttFrame.headerText = ttFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
			ttFrame.headerText:SetTextColor(1, 1, 1)
		end

		ttFrame.headerText:SetPoint("TOPLEFT", ttFrame, "TOPLEFT", marginLeft, yPosition)
		ttFrame.headerText:SetText(header)
		ttFrame.headerText:Show()
		table.insert(ttFrame.content, ttFrame.headerText)
		yPosition = yPosition - 18
		wideElementWidth = math.max(wideElementWidth, ttFrame.headerText:GetStringWidth() )

		if lines then
			for _, text in ipairs(lines) do
				local line = ttFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
				line:SetPoint("TOPLEFT", ttFrame, "TOPLEFT", marginLeft, yPosition)
				line:SetText(text)
				line:SetJustifyH("LEFT")
				table.insert(ttFrame.content, line)
				yPosition = yPosition - 15

				wideElementWidth = math.max(wideElementWidth, line:GetStringWidth())
			end
		end

		-- Prequests
		if nextPreQuest ~= nil then
			local preQuestLine = ttFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
			preQuestLine:SetPoint("TOPLEFT", ttFrame, "TOPLEFT", marginLeft, yPosition)

			local stepText = CasualTBCPrep.UI.CreateNextPrequestText(nextPreQuest.step, nextPreQuest.questCount, nextPreQuest.questName, nextPreQuest.startZone)

			preQuestLine:SetText(stepText)
			preQuestLine:SetJustifyH("LEFT")
			table.insert(ttFrame.content, preQuestLine)
			yPosition = yPosition - 15

			wideElementWidth = math.max(wideElementWidth, preQuestLine:GetStringWidth())

			yPosition = yPosition - 5
		end

		-- Items
		if itemDisplayList then
			local iconSize = 28
			local iconPaddingX = 3
			local iconPaddingY = 5
			local textLineHeight = 12

			yPosition = yPosition - iconPaddingY

			local itemsToDisplay = {}
			if reqAnyItem then
				local foundItem = nil

				for _, item in ipairs(itemDisplayList) do
					if item.playerTotalAmount >= item.requiredAmount then
						foundItem = item
						break
					end
				end

				if foundItem then
					table.insert(itemsToDisplay, foundItem)
				else
					itemsToDisplay = itemDisplayList
				end
			else
				itemsToDisplay = itemDisplayList
			end

			for _, item in ipairs(itemsToDisplay) do
				local isBankAlted, bankAltName = CasualTBCPrep.Settings.IsItemMarkedAsStoredOnBankAlt(item.itemID)
				if isBankAlted == true then
					item.playerInvAmount = item.requiredAmount
					item.playerBankAmount = item.requiredAmount
					item.playerTotalAmount = item.requiredAmount
				end
				local icon, border, textRarityColor, itemDetails = CasualTBCPrep.UI.CreateItemImage(ttFrame, iconSize, item.itemID, "TOPLEFT", "TOPLEFT", marginLeft, yPosition)
				local itemName = itemDetails.name or "Unknown Item"

				table.insert(ttFrame.content, icon)
				table.insert(ttFrame.content, border)

				local itemNameText = textRarityColor .. (itemName or ("Item " .. item.itemID))

				local progressText = ""
				local needsBank = false
				local bankTextColor = clrWarn
				if item.playerInvAmount < item.requiredAmount then
					if item.playerBankAmount > 0 then
						needsBank = true
					end
				end

				if isBankAlted == true then
					progressText = item.requiredAmount.."/"..item.requiredAmount..clrBad.." ("
					if bankAltName == nil or bankAltName == "" then
						progressText = progressText.."on alt)|r"
					else
						progressText = progressText..bankAltName..")|r"
					end
				elseif item.playerTotalAmount >= item.requiredAmount then
					progressText = (needsBank and clrWarn or clrGood) .. math.min(item.playerTotalAmount, item.requiredAmount) .. "/" .. item.requiredAmount
				else
					progressText = clrBad .. math.min(item.playerTotalAmount, item.requiredAmount) .. "/" .. item.requiredAmount
					bankTextColor = clrBad
				end

				if not isBankAlted and needsBank then
					progressText = progressText .. "|r " .. bankTextColor .. "(" .. tostring(item.playerBankAmount) .. " in bank)"
				end

				-- Text, Item Name
				local textItemName = ttFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
				textItemName:SetPoint("TOPLEFT", icon, "TOPRIGHT", iconPaddingX, - 1)
				textItemName:SetText(itemNameText)
				table.insert(ttFrame.content, textItemName)

				-- Text, Player Progress
				local textProgress = ttFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
				textProgress:SetPoint("TOPLEFT", icon, "TOPRIGHT", iconPaddingX, -textLineHeight - 3)
				textProgress:SetText(progressText)
				table.insert(ttFrame.content, textProgress)

				yPosition = yPosition - iconSize - iconPaddingY

				local fattestTextWidth = math.max(textItemName:GetStringWidth(), textProgress:GetStringWidth())
				wideElementWidth = math.max(wideElementWidth, iconSize + iconPaddingX + fattestTextWidth)
			end
		end

		ttFrame:SetWidth(marginLeft + wideElementWidth + marginRight)
		ttFrame:SetHeight(math.abs(yPosition + marginBot)) -- marginTop is added to yPosition earlier
		ttFrame:Show()
	end)

	tooltip:SetScript("OnLeave", function(self)
		local ttFrame = GetOrCreateCustomTooltip()
		if ttFrame then
			ttFrame:Hide()
		end
	end)

	return tooltip
end

---@param parent any
---@param header string
---@param lines any
---@param itemDisplayList any|nil
---@param funcOnEnter function|nil
---@param funcOnLeave function|nil
function CasualTBCPrep.UI.HookTooltip(parent, header, lines, itemDisplayList, funcOnEnter, funcOnLeave)
	parent:SetScript("OnEnter", function(self)
		if funcOnEnter then funcOnEnter(parent) end

		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText(header or "", 1, 1, 1)

		if lines then
			for _, text in ipairs(lines) do
				GameTooltip:AddLine(text, nil, nil, nil, true)
			end
		end

		if itemDisplayList then
			for _, item in ipairs(itemDisplayList) do
				local itemData = CasualTBCPrep.Items.GetItemDetails(item.itemID)

				if itemData then
					local iconTexture = "|T" .. itemData.texture .. ":24:24|t"
					GameTooltip:AddLine(iconTexture .. " " .. item.headerText, nil, nil, nil, true)
				end
			end
		end

		GameTooltip:Show()
	end)
	parent:SetScript("OnLeave", function(self)
		if funcOnLeave then funcOnLeave(parent) end

		GameTooltip:Hide()
	end)
end

---@param fontString FontString:nil
---@param defaultR number
---@param defaultG number
---@param defaultB number
function CasualTBCPrep.UI.SetQuestTextColor(fontString, quest, defaultR, defaultG, defaultB)
	if fontString == nil then
		return
	end

	local r = defaultR or 0
	local g = defaultG or 1
	local b = defaultB or 0

	local q = nil

	if quest ~= nil and quest.data ~= nil then
		q = quest.data
	elseif quest ~= nil then
		q = quest
	end

	if q then
		local targetRepID = q.repReq
		local targetRepStanding = q.repReqRank

		if targetRepID ~= nil and targetRepID > 0 then
			local repName, _, standingID = GetFactionInfoByID(targetRepID)

			if standingID < targetRepStanding then
				r = 1.00
				g = 0.47
				b = 0.04
			else
				r = 0
				b = 0
			end
		end
	end

	fontString:SetTextColor(r,g,b)
end

---@param parent Frame
---@param iconSearch Texture
---@param inputW number
---@param inputH number
---@param inputMaxLength number
---@param inputSearchDelay number
---@param watermarkText string|nil
---@param funcOnSearch function
---@return Frame, Frame, Frame|nil
function CasualTBCPrep.UI.CreateSearchFunctionality(parent, iconSearch, inputW, inputH, inputMaxLength, inputSearchDelay, watermarkText, funcOnSearch)
	local iconSearchClickable = CreateFrame("Button", nil, parent)
	local searchInput = CreateFrame("EditBox", nil, parent, "InputBoxTemplate")
	searchInput.ignoreSearchInput = true

	iconSearchClickable:SetAllPoints(iconSearch, true)

    searchInput:SetSize(inputW, inputH)
	searchInput:SetPoint("LEFT", iconSearch, "LEFT", 7, -1)
    searchInput:SetAutoFocus(false)
    searchInput:SetText("")
	searchInput:SetFontObject("GameFontWhiteSmall")
    searchInput:SetMaxLetters(inputMaxLength)
    searchInput:Hide()

	local watermark = nil
	if watermarkText ~= nil and watermarkText ~= "" then
		watermark = parent:CreateFontString(nil, "OVERLAY", "GameTooltipTextSmall")
		watermark:SetPoint("LEFT", searchInput, "LEFT", 2, 0)
		watermark:SetText(watermarkText)
		watermark:SetTextColor(0.7, 0.7, 0.7, 1)
		watermark:SetSize(inputW, inputH)
		watermark:EnableMouse(false)
		watermark:Hide()
	end

	local funcClose = function()
		searchInput:ClearFocus()

		local srcText = strtrim(searchInput:GetText() or "")
		if srcText == "" then
			searchInput:Hide()
			if watermark then watermark:Hide() end
			iconSearch:Show()
			iconSearchClickable:Show()
			funcOnSearch("")
		end
	end

	searchInput:SetScript("OnEnterPressed", function(self)
		funcClose()
	end)
    searchInput:SetScript("OnEscapePressed", function(self)
		searchInput:SetText("")
		funcClose()
    end)

	iconSearchClickable:SetScript("OnEnter", function(self)
		iconSearch:SetVertexColor(0.6, 0.6, 0.6, 1)
	end)
	iconSearchClickable:SetScript("OnLeave", function(self)
		iconSearch:SetVertexColor(1,1,1,1)
	end)
	iconSearchClickable:SetScript("OnClick", function(self)
		self:Hide()
		iconSearch:Hide()
		searchInput:Show()
		if watermark then
			local srcText = strtrim(searchInput:GetText() or "")
			if srcText == "" then
				watermark:Show()
			else
				watermark:Hide()
			end
		end
		searchInput:SetFocus()
	end)

	local lastSearchSrc = ""
	local currentSearchUniqueID = 0
    searchInput:SetScript("OnTextChanged", function(self, userInput)
    	if not userInput or self.ignoreSearchInput == true or not searchInput:IsShown() then return end

		currentSearchUniqueID = currentSearchUniqueID+1
		local myID = currentSearchUniqueID
		local searchText = self:GetText()

		if watermark then
			if searchText == nil or strtrim(searchText) == "" then
				watermark:Show()
			else
				watermark:Hide()
			end
		end

		C_Timer.After(inputSearchDelay, function()
			if myID ~= currentSearchUniqueID then return end
			if lastSearchSrc == searchText then return end
			lastSearchSrc = searchText
			funcOnSearch(searchText)
		end)
    end)

	searchInput.ignoreSearchInput = false
	return iconSearchClickable, searchInput, watermark
end