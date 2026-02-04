CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.WM_ItemPrep = CasualTBCPrep.WM_ItemPrep or {}

--[Variables]
---@class Frame|nil
local frameItemPrep = nil;
local _headerY = -31
local _preparedQuestsOnly = true
local clrHeaderText = { r=0.40, g=0.35, b=0.72 }
local clrHeaderQuestAnyText = { r=0.75, g=0.31, b=0.41 }

--[Forward Declarations]
local RefreshItemList

---@param wMain Frame|nil
local function CreateItemTooltip(wMain, parent, item, ttLines)
	if wMain == nil then
		return
	end

	if ttLines == nil then
		ttLines = {}
		if item then
			local debugger = CasualTBCPrep.Settings.GetGlobalSetting(CasualTBCPrep.Settings.DebugDetails) or -1
			if debugger == 1 then
				table.insert(ttLines, CasualTBCPrep.CreateDebugText("ItemID: ", tostring(item.id)))
			end

			if item.questText ~= nil and item.questText ~= "" then
				table.insert(ttLines, item.questText)
			end

			if item.sources ~= nil and item.sources ~= "" then
				table.insert(ttLines, CasualTBCPrep.CreateZoneText("Sources: ", item.sources))
			end

			if item.auctionHouse == true then
				table.insert(ttLines, " ")
				table.insert(ttLines, CasualTBCPrep.Themes.SelectedTheme.colors.tooltipLeftExp.hex.."Can be bought on the|r "..CasualTBCPrep.Themes.SelectedTheme.colors.auctionhouse.hex.."Auction House|r")
			end
		end
	end

	local r,g,b,cHex = CasualTBCPrep.GetRarityColor(item.rarity)
	local headerText = cHex.. item.name .."|r"

	local tooltip = CasualTBCPrep.UI.HookTooltip(parent, headerText, ttLines, nil,nil,nil)
	table.insert(frameItemPrep.tooltips, tooltip)
	return ttLines
end


---@param wMain Frame|nil
function CasualTBCPrep.WM_ItemPrep.Create(wMain)
	if wMain == nil then
		return
	end

	frameItemPrep = CreateFrame("Frame", nil, wMain)
	frameItemPrep:SetAllPoints(wMain)

	frameItemPrep.scrollFrame, frameItemPrep.scrollChild = CasualTBCPrep.UI.CreateTBCPrepScrollFrame(frameItemPrep)

    frameItemPrep:SetClipsChildren(true)
	frameItemPrep:Hide()

	-- Search
	local searchX,searchY = 60,_headerY
	local baseImagePath = "Interface\\AddOns\\" .. CasualTBCPrep.AddonNameInternal .. "\\Resources\\Images\\"
	local imgW,imgH = 12,12

	local iconSearch = frameItemPrep:CreateTexture(nil, "BORDER")

	iconSearch:SetPoint("TOPLEFT", frameItemPrep, "TOPLEFT", searchX, searchY)
	iconSearch:SetWidth(imgW)
	iconSearch:SetHeight(imgH)
	iconSearch:SetTexture(baseImagePath .. "search")

	local iconSearchClickable, searchInput, searchWatermark = CasualTBCPrep.UI.CreateSearchFunctionality(frameItemPrep, iconSearch, 85, 18, 50, 0.25, "Search...", function(src)
		RefreshItemList(wMain, src)
	end)

	frameItemPrep.searchIcon = iconSearch
	frameItemPrep.searchClickable = iconSearchClickable
	frameItemPrep.searchInput = searchInput
	frameItemPrep.searchWatermark = searchWatermark
	CasualTBCPrep.UI.HookTooltip(iconSearchClickable, "Search", {"Click to search through items", "It searches as you type"}, nil,nil,nil)
end

function CasualTBCPrep.WM_ItemPrep.Hide()
	if frameItemPrep ~= nil then
		frameItemPrep:Hide()
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_ItemPrep.Show(wMain)
	if frameItemPrep == nil then
		CasualTBCPrep.WM_ItemPrep.Create(wMain)
	end

	if frameItemPrep ~= nil then
		frameItemPrep:Show()
		local src = strtrim(frameItemPrep.searchInput:GetText())
		if src == "" then
			if frameItemPrep.searchIcon ~= nil then frameItemPrep.searchIcon:Show() end
			if frameItemPrep.searchClickable ~= nil then frameItemPrep.searchClickable:Show() end
			if frameItemPrep.searchInput ~= nil then frameItemPrep.searchInput:Hide() end
			if frameItemPrep.searchWatermark ~= nil then frameItemPrep.searchWatermark:Hide() end
		end
	end
end

---@param wMain Frame|nil
local function CreateClickableHeader(wMain, headerFrame, collapseKey)
	if not headerFrame.clickFrame then
		headerFrame.clickFrame = CreateFrame("Button", nil, frameItemPrep.scrollChild)
		headerFrame.clickFrame:SetAllPoints(headerFrame)
		headerFrame.clickFrame:RegisterForClicks("LeftButtonUp")
		headerFrame.clickFrame:SetScript("OnClick", function()
			frameItemPrep.collapsedSections[collapseKey] = not frameItemPrep.collapsedSections[collapseKey]
			if RefreshItemList then
				RefreshItemList(wMain, frameItemPrep.searchText)
			end
		end)
		headerFrame.clickFrame:SetScript("OnEnter", function()
			headerFrame:SetTextColor(0.60, 0.55, 0.92)
		end)
		headerFrame.clickFrame:SetScript("OnLeave", function()
			headerFrame:SetTextColor(clrHeaderText.r, clrHeaderText.g, clrHeaderText.b)
		end)
	end
end

---@param parent any
---@param itemID number
local function CreateClickableItemFunctionality(parent, itemID)
	parent:EnableMouse(true)
	parent:SetScript("OnMouseUp", function(self, btn)
		if "LeftButton" == btn then
			local itemLink = CasualTBCPrep.Items.TryGetItemLink(itemID)
			if itemLink then
				if IsShiftKeyDown() then
					HandleModifiedItemClick(itemLink)
				elseif IsControlKeyDown() then
					DressUpItemLink(itemLink)
				end
			end
		elseif "RightButton" == btn then
			CasualTBCPrep.W_ItemManagement.Show(itemID)
		end
	end)
end

---@param item any
---@param src string|nil
local function DoesSearchMatchItem(item, src)
	if not item then return false end
	if src == nil or src == "" then return true end

	local found = (item.id and item.id > 0 and tostring(item.id):lower():find(src,1,true))
		or (item.name and item.name:lower():find(src,1,true))

	if found then
		return true
	end
	if item.quests ~= nil then
		for _, qWrap in ipairs(item.quests) do
			local q = qWrap.quest
			if q then
				found = (q.id and q.id > 0 and tostring(q.id):lower():find(src,1,true))
					or (q.name and q.name:lower():find(src,1,true))
					or (q.type and q.type:lower():find(src,1,true))
					or (q.routeSection and q.routeSection:lower():find(src,1,true))
					or (q.areaType and q.areaType:lower():find(src,1,true))
					or (q.area and q.area:lower():find(src,1,true))

				if found then
					return true
				end
			end
		end
	end

	return false
end

local function ItemHasNonIgnoredQuest(item)
    if not item or not item.quests then
        return false
    end

    local routeCode = CasualTBCPrep.Routing.CurrentRouteCode
    for _, qWrap in ipairs(item.quests) do
        if qWrap.quest and not CasualTBCPrep.Settings.GetQuestIgnoredState(routeCode, qWrap.quest.id) then
            return true
        end
    end

    return false
end

---@param wMain Frame|nil
---@return  number, number, number, number, number
local function LoadItemList(wMain)
	local itemList, lstQuestsReqAnyAmount = CasualTBCPrep.QuestData.GetAllRequiredItemsForAvailableQuests(_preparedQuestsOnly)
	if _preparedQuestsOnly then
		local filtered = {}
		for _, item in ipairs(itemList) do
			if ItemHasNonIgnoredQuest(item) then
				table.insert(filtered, item)
			end
		end
		itemList = filtered
	end
	local clrWarn = CasualTBCPrep.Themes.SelectedTheme.colors.warn.hex
	local clrBad = CasualTBCPrep.Themes.SelectedTheme.colors.bad.hex
	local clrGood = CasualTBCPrep.Themes.SelectedTheme.colors.good.hex

	local src = strtrim(frameItemPrep.searchText or ""):lower()
	if src ~= "" then
		local searchedList,searchedListReqAny = {},nil
		for _, item in ipairs(itemList) do
			if DoesSearchMatchItem(item, src) then
				table.insert(searchedList, item)
			end
		end

		if lstQuestsReqAnyAmount ~= nil then
			searchedListReqAny = {}
			for _, itemWrap in ipairs(lstQuestsReqAnyAmount) do
				for _, item in ipairs(itemWrap.items) do
					local searchableObject = { -- ReqAny items have a different structure.
						id = item.id,
						name = item.name,
						quests = itemWrap.quests
					}
					if DoesSearchMatchItem(searchableObject, src) then
						table.insert(searchedListReqAny, itemWrap)
						break --Found, exit
					end
				end
			end
		end

		itemList = searchedList
		lstQuestsReqAnyAmount = searchedListReqAny
	end

	local iconSize = 26
	local iconSidePaddingX = 3
	local iconPaddingY = 2

	local yPosition = 0
	local yPosLeft = yPosition
	local yPosRight = yPosition

	local totalPlayerInventoryCount = 0
	local totalPlayerBankCount = 0
	local totalRunningRequiredAmount = 0
	local itemTypes = 0
	local completedItemTypes = 0

	local xTextOffset = 0
	local xProgOffset = 1
	local anchorPoint = ""
	local anchorPointTextToImg_ItemName_Text = ""
	local anchorPointTextToImg_ItemName_Img = ""
	local anchorPointTextToImg_ItemProg_Text = ""
	local anchorPointTextToImg_ItemProg_Img = ""

	-- Collapse Prep
	if not frameItemPrep.collapsedSections then
		frameItemPrep.collapsedSections = {}
	end
	local isCollapsedMissing = frameItemPrep.collapsedSections["Missing"] or false
	local collapseIndicatorMissing = isCollapsedMissing and "> " or "v "
	local isCollapsedCollected = frameItemPrep.collapsedSections["Collected"] or false
	local collapseIndicatorCollected = isCollapsedCollected and "> " or "v "
	local isCollapsedMultipleQ = frameItemPrep.collapsedSections["MultipleQ"] or false
	local collapseIndicatorMultipleQ = isCollapsedMultipleQ and "> " or "v "

	-- Normal Header Creation
	local frame = frameItemPrep.scrollChild
	if not frame.headerTextLeft then
		frame.headerTextLeft = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	end
	if not frame.headerTextRight then
		frame.headerTextRight = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	end

	frame.headerTextLeft:SetPoint("TOPLEFT", frame, "TOPLEFT", 2, yPosition)
	frame.headerTextLeft:SetText(collapseIndicatorMissing .. "Missing Items")
	frame.headerTextLeft:SetTextColor(clrHeaderText.r, clrHeaderText.g, clrHeaderText.b)
	CreateClickableHeader(wMain, frame.headerTextLeft, "Missing")
	frame.headerTextLeft:Show()

	frame.headerTextRight:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -2, yPosition)
	frame.headerTextRight:SetText(collapseIndicatorCollected .. "Collected Items")
	frame.headerTextRight:SetTextColor(clrHeaderText.r, clrHeaderText.g, clrHeaderText.b)
	CreateClickableHeader(wMain, frame.headerTextRight, "Collected")
	frame.headerTextRight:Show()

	yPosition = yPosition - 22
	yPosLeft = yPosition
	yPosRight = yPosition

	for _, itemDetails in ipairs(itemList) do
		if itemDetails and itemDetails.id > 0 then
			local isBankAlted, bankAltName = CasualTBCPrep.Settings.IsItemMarkedAsStoredOnBankAlt(itemDetails.id)

			local isCompleted = false
			local reqAmount = itemDetails.requiredAmount
			totalRunningRequiredAmount = totalRunningRequiredAmount + reqAmount
			totalPlayerInventoryCount = totalPlayerInventoryCount + itemDetails.playerInvAmount
			totalPlayerBankCount = totalPlayerBankCount + itemDetails.playerBankAmount

			local totalPlayerCount = itemDetails.playerInvAmount + itemDetails.playerBankAmount
			if isBankAlted == true then
				totalPlayerInventoryCount = itemDetails.requiredAmount
				totalPlayerBankCount = itemDetails.requiredAmount
				totalPlayerCount = itemDetails.requiredAmount
			end

			itemTypes = itemTypes + 1
			if totalPlayerCount >= itemDetails.requiredAmount then
				isCompleted = true
				completedItemTypes = completedItemTypes + 1

				anchorPoint = "TOPRIGHT"
				anchorPointTextToImg_ItemName_Text = "TOPRIGHT"
				anchorPointTextToImg_ItemName_Img = "TOPLEFT"
				anchorPointTextToImg_ItemProg_Text = "BOTTOMRIGHT"
				anchorPointTextToImg_ItemProg_Img = "BOTTOMLEFT"

				iconSidePaddingX = -7
				xProgOffset = -1
				xTextOffset = -iconPaddingY
				yPosition = yPosRight
			else
				anchorPoint = "TOPLEFT"
				anchorPointTextToImg_ItemName_Text = "TOPLEFT"
				anchorPointTextToImg_ItemName_Img = "TOPRIGHT"
				anchorPointTextToImg_ItemProg_Text = "BOTTOMLEFT"
				anchorPointTextToImg_ItemProg_Img = "BOTTOMRIGHT"

				iconSidePaddingX = 7
				xProgOffset = 1
				xTextOffset = iconPaddingY
				yPosition = yPosLeft
			end

			local doCreateItem = (isCompleted and not isCollapsedCollected) or (not isCompleted and not isCollapsedMissing)

			if doCreateItem then
				local icon, border, textRarityColor, item = CasualTBCPrep.UI.CreateItemImage(frame, iconSize, itemDetails.id, anchorPoint, anchorPoint, iconSidePaddingX, yPosition)
				local itemName = ""
				if item then
					local r,g,b,cHex = CasualTBCPrep.GetRarityColor(item.rarity)
					itemName = cHex..item.name.."|r"
				end

				table.insert(frameItemPrep.content, icon)
				table.insert(frameItemPrep.content, border)

				local itemNameText = textRarityColor .. (itemName or ("Item " .. itemDetails.id))

				local progressText = ""
				local needsBank = false
				local bankTextColor = clrWarn
				if not isBankAlted and itemDetails.playerInvAmount < reqAmount then
					if itemDetails.playerBankAmount > 0 then
						needsBank = true
					end
				end

				if isBankAlted == true then
					progressText = reqAmount.."/"..reqAmount..clrBad.." ("
					if bankAltName == nil or bankAltName == "" then
						progressText = progressText.."on alt)|r"
					else
						progressText = progressText..bankAltName..")|r"
					end
				elseif itemDetails.playerTotalAmount >= reqAmount then
					progressText = (needsBank and clrWarn or clrGood) .. math.min(itemDetails.playerTotalAmount, reqAmount) .. "/" .. reqAmount
				else
					progressText = clrBad .. math.min(itemDetails.playerTotalAmount, reqAmount) .. "/" .. reqAmount
					bankTextColor = clrBad
				end

				if not isBankAlted and needsBank then
					progressText = progressText .. "|r " .. bankTextColor .. "(" .. tostring(itemDetails.playerBankAmount) .. " in bank)"
				end

				local textItemName = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
				textItemName:SetPoint(anchorPointTextToImg_ItemName_Text, icon, anchorPointTextToImg_ItemName_Img, xTextOffset, -1)
				textItemName:SetText(itemNameText)
				table.insert(frameItemPrep.itemTexts, textItemName)

				local textProgress = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
				textProgress:SetPoint(anchorPointTextToImg_ItemProg_Text, icon, anchorPointTextToImg_ItemProg_Img, xTextOffset + xProgOffset, 1)
				textProgress:SetText(progressText)
				table.insert(frameItemPrep.itemTexts, textProgress)

				yPosition = yPosition - iconSize - iconPaddingY
				if totalPlayerCount >= itemDetails.requiredAmount then
					yPosRight = yPosition
				else
					yPosLeft = yPosition
				end

				local ttLines = CreateItemTooltip(wMain, textItemName, item, nil)
				CreateItemTooltip(wMain, textProgress, item, ttLines)

				if icon then
					icon:EnableMouse(true)
					icon:SetScript("OnEnter", function(self)
						GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
						GameTooltip:SetHyperlink(CasualTBCPrep.Items.TryGetItemLink(item.id))
						GameTooltip:Show()
					end)
					icon:SetScript("OnLeave", function()
						GameTooltip:Hide()
					end)
				end

				CreateClickableItemFunctionality(icon, item.id)
				CreateClickableItemFunctionality(textItemName, item.id)
				CreateClickableItemFunctionality(textProgress, item.id)
			end
		end
	end

	if _preparedQuestsOnly and lstQuestsReqAnyAmount then
		local filteredAny = {}
		local routeCode = CasualTBCPrep.Routing.CurrentRouteCode

		for _, questWrap in ipairs(lstQuestsReqAnyAmount) do
			if not CasualTBCPrep.Settings.GetQuestIgnoredState(routeCode, questWrap.questID) then
				table.insert(filteredAny, questWrap)
			end
		end

		lstQuestsReqAnyAmount = filteredAny
	end

	if #lstQuestsReqAnyAmount > 0 then
		local yPosition = math.min(yPosLeft, yPosRight) - 15

		if not frame.headerTextReqAnyItems then
			frame.headerTextReqAnyItems = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		end

		frame.headerTextReqAnyItems:SetPoint("TOPLEFT", frame, "TOPLEFT", 2, yPosition)
		frame.headerTextReqAnyItems:SetText(collapseIndicatorMultipleQ .. "Quests requiring any of multiple items")
		frame.headerTextReqAnyItems:SetTextColor(clrHeaderText.r, clrHeaderText.g, clrHeaderText.b)
		CreateClickableHeader(wMain, frame.headerTextReqAnyItems, "MultipleQ")
		frame.headerTextReqAnyItems:Show()

		yPosition = yPosition - 25

		local anyqImgSpacing = 8
		local anyqImgSize = 30
		local anyqImgOffsetX = anyqImgSpacing

		if not isCollapsedMultipleQ then
			for _, questWrap in ipairs(lstQuestsReqAnyAmount) do

				if questWrap and questWrap.questID > 0 and questWrap.items and #questWrap.items > 0 then
					local questHeaderText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
					questHeaderText:SetPoint("TOPLEFT", frame, "TOPLEFT", 5, yPosition)
					questHeaderText:SetText(questWrap.quest.name)
					questHeaderText:SetTextColor(clrHeaderQuestAnyText.r, clrHeaderQuestAnyText.g, clrHeaderQuestAnyText.b)
					table.insert(frameItemPrep.itemTexts, questHeaderText)

					yPosition = yPosition - 18

					local reqAnyBankAltedItem
					local isAnyItemBankAlted = false
					local reqAnyBankAltName = ""
					for _, itemData in ipairs(questWrap.items) do
						local isBankAlted, bankAltName = CasualTBCPrep.Settings.IsItemMarkedAsStoredOnBankAlt(itemData.id)

						if isBankAlted == true and isAnyItemBankAlted == false then
							reqAnyBankAltedItem = itemData
							isAnyItemBankAlted = true
							reqAnyBankAltName = bankAltName
							break
						end
					end

					if isAnyItemBankAlted == true and reqAnyBankAltedItem ~= nil then
						local icon,border,textRarityColor,item = CasualTBCPrep.UI.CreateItemImage(frame, anyqImgSize, reqAnyBankAltedItem.id, "TOPLEFT", "BOTTOMLEFT", anyqImgOffsetX, yPosition)

						if icon and border then
							table.insert(frameItemPrep.content, icon)
							table.insert(frameItemPrep.content, border)

							local progressText = reqAnyBankAltedItem.requiredAmount.."/"..reqAnyBankAltedItem.requiredAmount..clrBad.." ("
							if reqAnyBankAltName == nil or reqAnyBankAltName == "" then
								progressText = progressText.."on alt)|r"
							else
								progressText = progressText..reqAnyBankAltName..")|r"
							end

							local itemNameText = textRarityColor..reqAnyBankAltedItem.name.."|r"
							local anyqItemBankedNameFontStr = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
							anyqItemBankedNameFontStr:SetPoint("TOPLEFT", icon, "TOPRIGHT", 2, -1)
							anyqItemBankedNameFontStr:SetText(itemNameText)
							table.insert(frameItemPrep.itemTexts, anyqItemBankedNameFontStr)

							local anyqItemProg = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
							anyqItemProg:SetPoint("BOTTOMLEFT", icon, "BOTTOMRIGHT", 3, 1)
							anyqItemProg:SetText(progressText)
							table.insert(frameItemPrep.itemTexts, anyqItemProg)

							if item ~= nil then
								CreateItemTooltip(wMain, anyqItemProg, item, nil)
							end

							icon:SetScript("OnEnter", function(self)
								local link = CasualTBCPrep.Items.TryGetItemLink(reqAnyBankAltedItem.id)
								if link then
									GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
									GameTooltip:SetHyperlink(link)
									GameTooltip:Show()
								end
							end)
							icon:SetScript("OnLeave", function()
								GameTooltip:Hide()
							end)

							CreateClickableItemFunctionality(icon, reqAnyBankAltedItem.id)
							CreateClickableItemFunctionality(anyqItemProg, reqAnyBankAltedItem.id)
						end
					else
						for _, itemData in ipairs(questWrap.items) do
							local icon,border,_,item = CasualTBCPrep.UI.CreateItemImage(frame, anyqImgSize, itemData.id, "TOPLEFT", "BOTTOMLEFT", anyqImgOffsetX, yPosition)

							if icon and border then
								table.insert(frameItemPrep.content, icon)
								table.insert(frameItemPrep.content, border)

								local anyqItemProgText
								if itemData.playerTotalAmount >= itemData.requiredAmount then
									anyqItemProgText = clrGood..math.min(itemData.playerTotalAmount, itemData.requiredAmount).."/"..itemData.requiredAmount
								else
									anyqItemProgText = clrBad..math.min(itemData.playerTotalAmount, itemData.requiredAmount).."/"..itemData.requiredAmount
								end

								local anyqItemProg = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
								anyqItemProg:SetPoint("TOP", icon, "BOTTOM", 0, -1)
								anyqItemProg:SetText(anyqItemProgText)
								table.insert(frameItemPrep.itemTexts, anyqItemProg)

								if item ~= nil then
									CreateItemTooltip(wMain, anyqItemProg, item, nil)
								end

								icon:SetScript("OnEnter", function(self)
									local link = CasualTBCPrep.Items.TryGetItemLink(itemData.id)
									if link then
										GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
										GameTooltip:SetHyperlink(link)
										GameTooltip:Show()
									end
								end)
								icon:SetScript("OnLeave", function()
									GameTooltip:Hide()
								end)

								CreateClickableItemFunctionality(icon, itemData.id)
								CreateClickableItemFunctionality(anyqItemProg, itemData.id)
							elseif icon then
								table.insert(frameItemPrep.content, icon)
							elseif border then
								table.insert(frameItemPrep.content, border)
							end

							anyqImgOffsetX = anyqImgOffsetX + anyqImgSize + anyqImgSpacing
						end
					end

					anyqImgOffsetX = anyqImgSpacing
					yPosition = yPosition-45
				end
			end
		end
	elseif frame.headerTextReqAnyItems then
		frame.headerTextReqAnyItems:Hide()
	end

	return totalPlayerInventoryCount, totalPlayerBankCount, totalRunningRequiredAmount, itemTypes, completedItemTypes
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_ItemPrep.Load(wMain)
	if wMain == nil then
		return
	end
	local selectedRoute = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.SelectedRoute)
	if selectedRoute == nil or selectedRoute == "" then
		CasualTBCPrep.UI.CreateRouteSelection(wMain, frameItemPrep)
		frameItemPrep.scrollFrame:Hide()
		return
	end
	CasualTBCPrep.UI.ClearRouteSelectionUI(frameItemPrep)
	frameItemPrep.scrollFrame:Show()

	if frameItemPrep.itemTexts then
		for _, fontString in ipairs(frameItemPrep.itemTexts) do
			fontString:Hide()
			fontString:SetText("")
			fontString:SetSize(0, 0)
		end
	end
	if frameItemPrep.content then
		for _, borderFrame in ipairs(frameItemPrep.content) do
			borderFrame:Hide()
		end
	end
	if frameItemPrep.tooltips then
		for _, ttFrame in ipairs(frameItemPrep.tooltips) do
			ttFrame:Hide()
		end
	end
	frameItemPrep.itemTexts,frameItemPrep.content,frameItemPrep.tooltips = {},{},{}
	if frameItemPrep.chbRelevant == nil then
		local checkBoxX = -5
		local checkBoxY = -30
		local checkBoxTooltipWidth = 24

		local checkbox = CreateFrame("CheckButton", nil, frameItemPrep, "UICheckButtonTemplate")
		checkbox:SetPoint("TOPRIGHT", frameItemPrep, "TOPRIGHT", checkBoxX, checkBoxY)
		checkbox:SetSize(checkBoxTooltipWidth, checkBoxTooltipWidth)

		local chbLabel = checkbox:CreateFontString(nil, "OVERLAY", "GameTooltipTextSmall")
		chbLabel:SetPoint("RIGHT", checkbox, "LEFT", -2, 1)
		chbLabel:SetText("Relevant")

		checkbox:SetChecked(_preparedQuestsOnly)

		checkbox:SetScript("OnClick", function(self)
			_preparedQuestsOnly = self:GetChecked()
			if RefreshItemList then
				RefreshItemList(wMain, frameItemPrep.searchText)
			end
		end)

		local ttLines = { "When checked, only shows items from quests where items is all you need.", " ", "If unchecked, shows all items for all possible quests for your character." }
		CasualTBCPrep.UI.HookTooltip(checkbox, "Relevance Filter", ttLines , nil,nil,nil)
		CasualTBCPrep.UI.HookTooltip(chbLabel, "Relevance Filter", ttLines , nil,nil,nil)
		frameItemPrep.chbRelevant = checkbox
	end

	frameItemPrep.scrollChild:SetSize(frameItemPrep.scrollFrame:GetWidth(), 1)

	local totalPlayerInventoryCount, totalPlayerBankCount, totalRunningRequiredAmount, itemTypes, completedItemTypes = LoadItemList(wMain)
	local totalPlayerCount = totalPlayerInventoryCount + totalPlayerBankCount

	if not frameItemPrep.headerText then
		frameItemPrep.headerText = frameItemPrep:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		frameItemPrep.headerText:SetPoint("TOP", frameItemPrep, "TOP", 0, _headerY)
	end

	local itemHeaderText = ""
	if itemTypes == 1 and totalPlayerCount == totalRunningRequiredAmount then
		itemHeaderText = "1/1 item (100%)"
	else
		if totalPlayerCount == totalRunningRequiredAmount then
			itemHeaderText = "You have all " .. itemTypes .. " items!"
		else
			itemHeaderText = completedItemTypes .. " / " .. itemTypes .. " items"

			if itemTypes > 0 then
				local progressPercent = completedItemTypes / itemTypes * 100 or 0
				itemHeaderText = itemHeaderText .. string.format(" (%.1f%%)", progressPercent)
			end

		end
	end

	frameItemPrep.headerText:SetText(itemHeaderText)
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_ItemPrep.Selected(wMain)
	if frameItemPrep == nil then
    	CasualTBCPrep.WM_ItemPrep.Create(wMain)
	end

    CasualTBCPrep.WM_ItemPrep.Load(wMain)
    CasualTBCPrep.WM_ItemPrep.Show(wMain)
end

---@param wMain Frame|nil
RefreshItemList = function(wMain, searchText)
	frameItemPrep.searchText = searchText
	CasualTBCPrep.WM_ItemPrep.Load(wMain)
end
