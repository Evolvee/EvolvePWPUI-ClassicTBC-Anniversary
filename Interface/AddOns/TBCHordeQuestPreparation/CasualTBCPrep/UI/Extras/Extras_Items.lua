CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.Extras_Items = CasualTBCPrep.Extras_Items or {}

local items = {
    { id=2820, name="Nifty Stopwatch", amount=1, reqQuest=778, unique=true, comments={ "Useful trinket for speedrunning dungeons/raids.", "Once used, swap to a 'real' trinket." } },
    { id=8529, name="Noggenfogger Elixir", amount=1, reqQuest=2662, unique=false, comments={ "Has several useful effects:", " ", "Skeleton: 10min morph and gives you underwater breathing! Also hides druid forms in PvP", " ", "Slow fall: 2min slow fall for big drops", " ", "Tiny: Makes you smaller and harder to see & target in PvP from afar" } },
    { id=4984, name="Skull of Impending Doom", amount=1, reqQuest=737, unique=true, comments={ "Useful offhand. It damages you so you can break certain CC, and makes you run fast.", "You can macro or unequip the item to remove it early."} },
    { id=11122, name="Carrot on a Stick", amount=1, reqQuest=2770, unique=true, comments={ "BiS for running around (and for turning in tbcprep quests!)", "Replaced by 'Riding Crop' (level 69) in TBC"} },
    { id=20558, name="Warsong Gulch Mark of Honor", amount=20, unique=false, removeInPrepatch=true, howToCollect="Participate in Warsong Gulch", comments={"When pre-patch hits, these are used to buy PvP gear without ranking up.", "The cap is increased from 20, but you can prepare 20 now."} },
    { id=20559, name="Arathi Basin Mark of Honor", amount=20, unique=false, removeInPrepatch=true, howToCollect="Participate in Arathi Basin", comments={"When pre-patch hits, these are used to buy PvP gear without ranking up.", "The cap is increased from 20, but you can prepare 20 now."} },
    { id=20560, name="Alterac Valley Mark of Honor", amount=20, unique=false, removeInPrepatch=true, howToCollect="Participate in Alterac Valley", comments={"When pre-patch hits, these are used to buy PvP gear without ranking up.", "The cap is increased from 20, but you can prepare 20 now."} },

    { id=7391, name="Swift Boots", amount=1, unique=false, reqClasses=CasualTBCPrep.Classes.GetClassesUsingArmorType(1), howToCollect="Leatherworking(200) or the Auction House", comments={ "Same as Nifty Stopwatch. Use the speed, then swap to another trinket.", "Is probably not used in speedruns" } }
}
local content, texts = {},{}

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
		end
	end)
end

---@param frame Frame
function CasualTBCPrep.Extras_Items.Clean(frame)
    if not frame then return end

    if #texts > 0 then
        for _, fontString in ipairs(texts) do
            fontString:Hide()
            fontString:SetText("")
            fontString:SetSize(0, 0)
            fontString:SetParent(nil)
        end
    end

    if #content > 0 then
        for _, c in ipairs(content) do
            c:Hide()
            c:SetSize(0, 0)
            c:SetParent(nil)
        end
    end

    content = {}
    texts = {}
end

---@param frame Frame
function CasualTBCPrep.Extras_Items.Load(frame)
    if not frame then return end

    CasualTBCPrep.Extras_Flights.Clean(frame)
	local parent = frame.scrollChild
	local yPos = -5
    local xPos = 3

	local iconSize = 32

    local clrWarn = CasualTBCPrep.Themes.SelectedTheme.colors.questReadyBanked.hex
    for _, item in ipairs(items) do
        local canPlayerUseItem = true
        if item.reqClasses ~= nil and #item.reqClasses > 0 then
            canPlayerUseItem = false
            local myClassID = CasualTBCPrep.Classes.GetPlayerClassID()

            for _,cID in ipairs(item.reqClasses) do
                if myClassID == cID then
                    canPlayerUseItem = true
                    break
                end
            end
        end
        local skipItem = item.removeInPrepatch == true and CasualTBCPrep.GameState ~= "VANILLA"

        if canPlayerUseItem and not skipItem then
            local playerInvCount,playerBankCount,playerTotalCount,equipCount = CasualTBCPrep.Items.GetPlayerItemCount(item.id, true)
            local isBankAlted, bankAltName = CasualTBCPrep.Settings.IsItemMarkedAsStoredOnBankAlt(item.id)
            local fullyPrepared,foundAnyItem,needsItemsFromBank = false,false,false

            local invOrEquipCount = playerInvCount + equipCount
            local itemNameText,itemProgText,itemReadyText = "","",""

            if item.amount ~= nil and item.amount > 1 then
                itemNameText = tostring(item.amount).."x "
            end
            itemNameText = itemNameText..item.name

            if isBankAlted == true then
                fullyPrepared = true
                foundAnyItem = true
                needsItemsFromBank = false
                itemProgText = tostring(item.amount).."/"..tostring(item.amount).."("..bankAltName..")"
            elseif playerTotalCount < item.amount then
                fullyPrepared = false
                itemProgText = tostring(playerTotalCount).."/"..tostring(item.amount)
                if playerBankCount > 0 then
                    itemProgText = itemProgText..clrWarn.." ("..tostring(playerBankCount).." in bank)"
                end
            else
                fullyPrepared = true
                needsItemsFromBank = invOrEquipCount < item.amount and playerTotalCount >= item.amount
                itemProgText = tostring(playerTotalCount).."/"..tostring(item.amount)
                if needsItemsFromBank then
                    itemProgText =  itemProgText..clrWarn.."("..tostring(playerBankCount).." in bank)"
                end
            end

            local itemReadyTextFont = "GameFontNormalSmall"
            if item.reqQuest ~= nil and item.reqQuest > 0 then
                if CasualTBCPrep.QuestData.HasCharacterCompletedQuest(item.reqQuest) then
                    if not item.unique then
                        if invOrEquipCount > 0 then
                            itemReadyText = CasualTBCPrep.Themes.SelectedTheme.colors.good.hex.."x"..tostring(invOrEquipCount)
                            if playerBankCount > 0 then
                                itemReadyText = itemReadyText..clrWarn.." ("..tostring(playerBankCount).." in bank)"
                            end
                        elseif playerBankCount > 0 then
                            itemReadyText = clrWarn..tostring(playerBankCount).." in bank"
                        end
                    else
                        if equipCount > 0 then
                            itemReadyText = "Equipped"
                        elseif playerInvCount > 0 then
                            itemReadyText = "In inventory"
                        elseif playerBankCount > 0 then
                            itemReadyText = "In bank"
                        else
                            itemReadyText = CasualTBCPrep.Themes.SelectedTheme.colors.questCompleted.hex.."You have prepared this, but deleted it? :(|r"
                        end
                    end
                else
                    local questData = CasualTBCPrep.QuestData.GetExtraQuestDetails(item.reqQuest)
                    if questData == nil then
                        CasualTBCPrep.NotifyUserError("Couldn't find quest data for QuestID '"..tostring(item.reqQuest).."' which is needed for item '"..item.name.."'")
                    elseif questData.nextPreQuest ~= nil then
                        itemReadyText = CasualTBCPrep.UI.CreateNextPrequestText(questData.completedPreQuestCount, questData.preQuestCount, questData.nextPreQuest.name, questData.nextPreQuest.startZone)
                        itemReadyTextFont = "GameFontNormalSmall"
                    else
                        CasualTBCPrep.NotifyUserError("idk help")
                        CasualTBCPrep.NotifyUserError(tostring(questData))
                    end
                end
            else
                if invOrEquipCount > 0 then
                    itemReadyText = CasualTBCPrep.Themes.SelectedTheme.colors.good.hex.."x"..tostring(invOrEquipCount)
                    if playerBankCount > 0 then
                        itemReadyText = itemReadyText..clrWarn.." ("..tostring(playerBankCount).." in bank)"
                    end
                elseif playerBankCount > 0 then
                    itemReadyText = clrWarn..tostring(playerBankCount).." in bank"
                elseif item.howToCollect ~= nil and item.howToCollect ~= "" then
                    itemReadyText = itemReadyText..CasualTBCPrep.CreateExpText(item.howToCollect, "")
                end
            end

            if fullyPrepared == true then
                itemNameText = CasualTBCPrep.Themes.SelectedTheme.colors.questReady.hex..itemNameText.."|r"
            else
                itemNameText = CasualTBCPrep.Themes.SelectedTheme.colors.questAvailable.hex..itemNameText.."|r"
            end

            local icon, border, textRarityColor, itemData = CasualTBCPrep.UI.CreateItemImage(parent, iconSize, item.id, "TOPLEFT", "TOPLEFT", xPos, yPos)
            local txtItemName = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            txtItemName:SetPoint("TOPLEFT", icon, "TOPRIGHT", 2, -3)
            txtItemName:SetText(itemNameText)
            table.insert(texts, txtItemName)

            local txtItemReady = parent:CreateFontString(nil, "OVERLAY", itemReadyTextFont)
            txtItemReady:SetPoint("BOTTOMLEFT", icon, "BOTTOMRIGHT", 2, 2)
            txtItemReady:SetText(itemReadyText)
            table.insert(texts, txtItemReady)

            table.insert(content, icon)
            table.insert(content, border)
            yPos = yPos - iconSize - 5

            CreateClickableItemFunctionality(icon, item.id)
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

            local ttLines = {}
            if item.comments ~= nil and #item.comments > 0 then
                table.insert(ttLines, " ")
                table.insert(ttLines, CasualTBCPrep.CreateZoneText("Comments",""))
                for _,comment in ipairs(item.comments) do
                    table.insert(ttLines, CasualTBCPrep.CreateZoneText("", comment))
                end
            end

            if #ttLines > 0 then
                CasualTBCPrep.UI.HookTooltip(txtItemName, item.name, ttLines, nil, nil, nil)
                CasualTBCPrep.UI.HookTooltip(txtItemReady, item.name, ttLines, nil, nil, nil)
            end
        end
    end
end