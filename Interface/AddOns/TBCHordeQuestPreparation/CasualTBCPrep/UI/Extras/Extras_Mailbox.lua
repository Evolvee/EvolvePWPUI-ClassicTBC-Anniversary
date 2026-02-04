CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.Extras_Mailbox = CasualTBCPrep.Extras_Mailbox or {}
--CasualTBCPrep.Extras_Mailbox.MAIL_PREFIX = "TBCPrepMail"

local turninSteps = {
    [CasualTBCPrep.Routing.RouteCodeMain] = {
        { id=1, text="Items in bags", header="Bags", targetMailID=1, targetBankID=1, section=nil, mapID=nil, zone=nil, subZone=nil, reached=true, interactedWithMail=false, interactedWithBank=false },
        { id=2, text="Cenarion Hold", header="Mail", targetMailID=2, targetBankID=nil, section="SilithusHold", mapID=1451, zone="Silithus", subZone="Cenarion Hold", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=3, text="Gadgetzan", header="Mail & Bank", targetMailID=3, targetBankID=2, section="TanarisTown", mapID=1446, zone="Tanaris", subZone="Gadgetzan", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=4, text="Bloodvenom Post", header="Mail", targetMailID=4, targetBankID=nil, section="felwoodTown", mapID=1448, zone="Felwood", subZone="Bloodvenom Post ", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=5, text="Orgrimmar 1/2", header="Mail", targetMailID=5, targetBankID=nil, section="OrgrimmarDrag", mapID=1454, zone="Orgrimmar", subZone="The Drag", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=6, text="Orgrimmar 2/2", header="Bank", targetMailID=nil, targetBankID=3, section="OrgrimmarBank", mapID=1454, zone="Orgrimmar", subZone="Valley of Strength", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=7, text="Light's Hope Chapel", header="Mail", targetMailID=6, targetBankID=nil, section="EPLTown", mapID=1423, zone="Eastern Plaguelands", subZone="Light's Hope Chapel", shortZoneText="EPL, Light's Hope Chapel", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=8, text="Tarren Mill", header="Mail", targetMailID=7, targetBankID=nil, section="AV", mapID=1424, zone="Hillsbrad Foothills", subZone="Tarren Mill", shortZoneText="Hillsbrad, Tarren Mill", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=9, text="Stonard", header="Mail", targetMailID=8, targetBankID=nil, section="Stonard", mapID=1435, zone="Swamp of Sorrows", subZone="Stonard", shortZoneText="Swamp of Sorrows, Stonard", reached=false, interactedWithMail=false, interactedWithBank=false },
    },
    [CasualTBCPrep.Routing.RouteCodeStrat] = {
        { id=1, text="Items in bags", header="Bags", targetMailID=1, targetBankID=1, section=nil, mapID=nil, zone=nil, subZone=nil, reached=true, interactedWithMail=false, interactedWithBank=false },
        { id=2, text="Cenarion Hold", header="Mail", targetMailID=2, targetBankID=nil, section="SilithusHold", mapID=1451, zone="Silithus", subZone="Cenarion Hold", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=3, text="Gadgetzan", header="Mail & Bank", targetMailID=3, targetBankID=2, section="TanarisTown", mapID=1446, zone="Tanaris", subZone="Gadgetzan", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=4, text="Bloodvenom Post", header="Mail", targetMailID=4, targetBankID=nil, section="felwoodTown", mapID=1448, zone="Felwood", subZone="Bloodvenom Post ", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=5, text="Orgrimmar 1/2", header="Mail", targetMailID=5, targetBankID=nil, section="OrgrimmarDrag", mapID=1454, zone="Orgrimmar", subZone="The Drag", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=6, text="Orgrimmar 2/2", header="Bank", targetMailID=nil, targetBankID=3, section="OrgrimmarBank", mapID=1454, zone="Orgrimmar", subZone="Valley of Strength", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=7, text="Light's Hope Chapel", header="Mail", targetMailID=6, targetBankID=nil, section="EPLTown", mapID=1423, zone="Eastern Plaguelands", subZone="Light's Hope Chapel", shortZoneText="EPL, Light's Hope Chapel", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=8, text="Tarren Mill", header="Mail", targetMailID=7, targetBankID=nil, section="AV", mapID=1424, zone="Hillsbrad Foothills", subZone="Tarren Mill", shortZoneText="Hillsbrad, Tarren Mill", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=9, text="Stonard", header="Mail", targetMailID=8, targetBankID=nil, section="Stonard", mapID=1435, zone="Swamp of Sorrows", subZone="Stonard", shortZoneText="Swamp of Sorrows, Stonard", reached=false, interactedWithMail=false, interactedWithBank=false },
    },
    [CasualTBCPrep.Routing.RouteCodeSolo] = {
        { id=1, text="Items in bags", header="Bags", targetMailID=1, targetBankID=1, section=nil, mapID=nil, zone=nil, subZone=nil, reached=true, interactedWithMail=false, interactedWithBank=false },
        { id=2, text="Cenarion Hold", header="Mail", targetMailID=2, targetBankID=nil, section="SilithusHold", mapID=1451, zone="Silithus", subZone="Cenarion Hold", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=3, text="Gadgetzan", header="Mail & Bank", targetMailID=3, targetBankID=2, section="TanarisTown", mapID=1446, zone="Tanaris", subZone="Gadgetzan", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=4, text="Bloodvenom Post", header="Mail", targetMailID=4, targetBankID=nil, section="felwoodTown", mapID=1448, zone="Felwood", subZone="Bloodvenom Post ", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=5, text="Orgrimmar 1/2", header="Mail", targetMailID=5, targetBankID=nil, section="OrgrimmarDrag", mapID=1454, zone="Orgrimmar", subZone="The Drag", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=6, text="Orgrimmar 2/2", header="Bank", targetMailID=nil, targetBankID=3, section="OrgrimmarBank", mapID=1454, zone="Orgrimmar", subZone="Valley of Strength", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=7, text="Undercity", header="Mail & Bank", targetMailID=6, targetBankID=4, section="Undercity2", mapID=1458, zone="Undercity", subZone="Trade Quarter", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=8, text="Light's Hope Chapel", header="Mail", targetMailID=7, targetBankID=nil, section="EPLTown", mapID=1423, zone="Eastern Plaguelands", subZone="Light's Hope Chapel", shortZoneText="EPL, Light's Hope Chapel", reached=false, interactedWithMail=false, interactedWithBank=false },
        { id=9, text="Stonard", header="Mail", targetMailID=8, targetBankID=nil, section="Stonard", mapID=1435, zone="Swamp of Sorrows", subZone="Stonard", shortZoneText="Swamp of Sorrows, Stonard", reached=false, interactedWithMail=false, interactedWithBank=false },
    }
}

local content, texts = {},{}

local function CleanElements()
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
function CasualTBCPrep.Extras_Mailbox.Clean(frame)
    if not frame then return end
    CleanElements()
end

local function QuickText(parent, text, font, anchorPoint, relativeTo, relativePoint, xOffset, yOffset, clrRGB)
	local txt = parent:CreateFontString(nil, "OVERLAY", font)
	txt:SetPoint(anchorPoint, relativeTo, relativePoint, xOffset, yOffset)
	txt:SetWidth(455)
	txt:SetText(text)
    txt:SetTextColor(clrRGB.r, clrRGB.g, clrRGB.b)
	txt:SetJustifyH("LEFT")
	txt:SetJustifyV("TOP")
	table.insert(texts, txt)
	return txt
end

---@param index integer
function CasualTBCPrep.Extras_Mailbox.GetTurninStep(index) return turninSteps[CasualTBCPrep.Routing.CurrentRouteCode][index] end
function CasualTBCPrep.Extras_Mailbox.GetTurninSteps() return turninSteps[CasualTBCPrep.Routing.CurrentRouteCode] end
function CasualTBCPrep.Extras_Mailbox.GetTurninStepCount() return #turninSteps[CasualTBCPrep.Routing.CurrentRouteCode] end
---@param index integer
---@param value boolean
function CasualTBCPrep.Extras_Mailbox.SetTurninInteractedWithMail(index,value) turninSteps[CasualTBCPrep.Routing.CurrentRouteCode][index].interactedWithMail = value end
---@param index integer
---@param value boolean
function CasualTBCPrep.Extras_Mailbox.SetTurninInteractedWithBank(index,value) turninSteps[CasualTBCPrep.Routing.CurrentRouteCode][index].interactedWithBank = value end
---@param index integer
---@param value boolean
function CasualTBCPrep.Extras_Mailbox.SetTurninReached(index,value) turninSteps[CasualTBCPrep.Routing.CurrentRouteCode][index].reached = value end

---@return table,table
function CasualTBCPrep.Extras_Mailbox.GetTurninData()
    local mailboxItems, bankItems = CasualTBCPrep.Routing.GetTurninItemsForCurrentRoute()
    local mailsNeeded = {}

    for _,data in ipairs(mailboxItems) do
        local mails = { }
        local mailItemSlots = {}

        local mailCount = 1
        local slotCount = 0

        for _, item in ipairs(data.items) do
            local itemObj = CasualTBCPrep.Items.GetItemDetails(item.itemID);
            if itemObj == nil then
                CasualTBCPrep.NotifyUserError("Companion couldn't find ItemDetails for Mail-ItemID="..tostring(item.itemID))
            else
                if item.count <= itemObj.stackSize then
                    slotCount = slotCount + 1
                    table.insert(mailItemSlots, { itemID=item.itemID, count=item.count})

                    if slotCount >= 12 then
                        table.insert(mails, { id=mailCount, items=mailItemSlots})
                        mailCount = mailCount + 1
                        mailItemSlots = {}
                        slotCount = 0
                    end
                else
                    local needed = item.count
                    while needed > 0 do
                        local stackCount = math.min(needed, itemObj.stackSize)
                        slotCount = slotCount + 1
                        table.insert(mailItemSlots, { itemID=item.itemID, count=stackCount})
                        needed = needed - stackCount

                        if slotCount >= 12 then
                            table.insert(mails, { id=mailCount, items=mailItemSlots})
                            mailCount = mailCount + 1
                            mailItemSlots = {}
                            slotCount = 0
                        end
                    end
                end
            end
        end
        if #mailItemSlots > 0 then
            table.insert(mails, { id=mailCount, items=mailItemSlots})
        end

        table.insert(mailsNeeded, { id=data.id, mails=mails })
    end

    return mailsNeeded, bankItems
end
---@param currentStep table
---@return table,table,integer,integer
function CasualTBCPrep.Extras_Mailbox.GetStepDetails_ItemsNeeded(dataMail, dataBank, currentStep)
    local mailsToOpen, itemsFromBank = {},{}
    local mailItemStackCount, bankItemStackCount = 0,0
    local targetMailID,targetBankID = currentStep.targetMailID or 0, currentStep.targetBankID or 0

    if targetMailID > 0 then
        local mails = dataMail[targetMailID]
        if mails == nil then
            CasualTBCPrep.NotifyUserCompanionError("GetStepDetails_ItemsNeeded has nil 'mails' from dataMail["..tostring(targetMailID.."]"))
        else
            for _,mail in pairs(mails.mails) do
                local filteredItems = {}
                local playerInvCountRemaining = {}

                for _,item in ipairs(mail.items) do
                    local playerInvCount = playerInvCountRemaining[item.itemID]
                    if playerInvCount == nil then
                        playerInvCount = CasualTBCPrep.Items.GetPlayerItemCount(item.itemID, false)
                        playerInvCountRemaining[item.itemID] = playerInvCount
                    end
                    if playerInvCount < item.count then
                        local needed = item.count - playerInvCount
                        table.insert(filteredItems, {
                            itemID = item.itemID,
                            count = needed
                        })
                        mailItemStackCount = mailItemStackCount + 1
                        playerInvCountRemaining[item.itemID] = 0
                    else
                        playerInvCountRemaining[item.itemID] = playerInvCount - item.count
                    end
                end

                if #filteredItems > 0 then
                    table.insert(mailsToOpen, {id = mail.id, items = filteredItems})
                end
            end
        end
    end

    if targetBankID > 0 then
        local bank = dataBank[targetBankID]
        if bank == nil then
            CasualTBCPrep.NotifyUserCompanionError("GetStepDetails_ItemsNeeded has nil 'bank' from dataBank["..tostring(targetBankID).."]")
        else
            for _,item in ipairs(bank.items) do
                local playerInvCount = CasualTBCPrep.Items.GetPlayerItemCount(item.itemID, false)
                if playerInvCount < item.count then
                    table.insert(itemsFromBank, {
                        itemID = item.itemID,
                        count = item.count - playerInvCount
                    })
                    bankItemStackCount = bankItemStackCount + 1
                end
            end
        end
    end

    if targetBankID == 1 and targetMailID == 1 then
        for _,mail in ipairs(mailsToOpen) do
            for _,item in ipairs(mail.items) do
                table.insert(itemsFromBank, item)
            end
        end
    end
    return mailsToOpen, itemsFromBank, mailItemStackCount, bankItemStackCount
end

---@param parent Frame
local function Display(parent)
	local yPos = -1

    local clrWarn = CasualTBCPrep.Themes.SelectedTheme.colors.warn
	local clrHeader = CasualTBCPrep.Themes.SelectedTheme.colors.headerSpecialHover
	local clrText = CasualTBCPrep.Themes.SelectedTheme.colors.manualText
	local clrStep = CasualTBCPrep.Themes.SelectedTheme.colors.standoutText
    local companionSettingsGlobal = CasualTBCPrep.Settings.GetGlobalSetting(CasualTBCPrep.Settings.CompanionSettings)
    if companionSettingsGlobal == nil then
        companionSettingsGlobal = { mailCharacterName = "" }
        CasualTBCPrep.Settings.SetGlobalSetting(CasualTBCPrep.Settings.CompanionSettings, companionSettingsGlobal)
    end

    -- Button Shared
    local funcCallHoverEnter = function(btn) if not btn or not btn.textureObj then return end btn.textureObj:SetAlpha(0.6) end
    local funcCallHoverLeave = function(btn) if not btn or not btn.textureObj then return end btn.textureObj:SetAlpha(1) end

    -- Companion Button
	local btnCompanion = CreateFrame("Button", nil, parent)
	btnCompanion:SetPoint("TOPLEFT", parent, "TOPLEFT", -1, yPos)
	btnCompanion:SetSize(28, 28)
	table.insert(content, btnCompanion)
	local btnCompanionTexture = btnCompanion:CreateTexture(nil, "BORDER")
	btnCompanionTexture:SetAllPoints(btnCompanion)
	btnCompanionTexture:SetTexture(132161)
	btnCompanion.textureObj = btnCompanionTexture
	table.insert(content, btnCompanionTexture)

    CasualTBCPrep.UI.HookTooltip(btnCompanion, "Toggle Companion Window", {"Opens or closes the Mail Companion", " ", "Can also be toggled with /tbcprep companion"}, nil, funcCallHoverEnter, funcCallHoverLeave)
    btnCompanion:SetScript("OnClick", function(self)
        CasualTBCPrep.W_Companion.Toggle();
    end)

    -- Explanation Button
	local btnExplanation = CreateFrame("Button", nil, parent)
	btnExplanation:SetPoint("TOPRIGHT", parent, "TOPRIGHT", -1, yPos)
	btnExplanation:SetSize(28, 28)
	table.insert(content, btnExplanation)

	local txtNoticeA = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    txtNoticeA:SetPoint("TOP", parent, "TOP", 0, -1)
	txtNoticeA:SetText("Click the whistle on the left to open the companion")
    txtNoticeA:SetTextColor(clrWarn.r, clrWarn.g, clrWarn.b)
	table.insert(texts, txtNoticeA)

    local yPosStart = -50
    yPos = yPosStart

	local txt = QuickText(parent, "What does this feature do?", "GameFontNormalLarge", "TOPLEFT", parent, "TOPLEFT", 0, yPos, clrHeader)
	txt = QuickText(parent, "The Extras - Mailbox feature is to help you manage all your items on release day.\rIf you prepared a lot of quests, you can't have all the items in your bags from the beginning.\r\r"
		.."The companion helps you withdrawing items when they are needed.\r\rThis feature is OPTIONAL, you can do this yourself as well!\rIf this seems too complicated, or if you don't want to read, please don't use this feature - you might accidentally grief yourself and that's not fun.\r\r"
            .."A simpler way of using this tool, is to only use it to help prepare your mails, and you can then manually loot them on release.\rRefer to the 'Manual Mail Help' topic below for more info on this, it's below the test example.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

	txt = QuickText(parent, "How does it work?", "GameFontNormalLarge", "TOPLEFT", txt, "BOTTOMLEFT", 0, -13, clrHeader)
	txt = QuickText(parent, "Using the whistle button in the topleft, you can open the Companion.\r"
        .."A button with 'The Dark Portal' texture has been added to the Mailbox & Bank, which also toggles the Companion.\r\r"
        .."The companion shows steps depending on you current route. Below it you can see the all the possible items you 'might' need to get out of the mail/bank at this step\r\rThe first step is always your bags, which is the items you should have in your bags on release!\r"
        .."When entering an area with a step, the Companion 'should' change the current step automatically.\rIf it doesn't, or if you want to look ahead, you can use the arrows at the top to manually change the current step.\r\r"
        .."'Waiting For' shows what zone this step is for and disappears when you get there.\r'Interact With' shows where to get items from (Mail and/or bank)\r\r"
        .."Below that, there is a collect button.\rWhen clicking this button, if the mail or bank is open, the companion tries to collect all the items listed even for quests you haven't prepared.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

	txt = QuickText(parent, "Can I try it out?", "GameFontNormalLarge", "TOPLEFT", txt, "BOTTOMLEFT", 0, -13, clrHeader)
	txt = QuickText(parent, "Yep! We would even recommend it :)\r\rYou can find a test example at the bottom of this page.\rUse the guides if you get stuck.\r\r'/tbcprep companion' opens the Companion Window\r'/tbcprep companion help' opens this help window.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

	txt = QuickText(parent, "Bank Preparation Guide", "GameFontNormalLarge", "TOPLEFT", txt, "BOTTOMLEFT", 0, -13, clrHeader)
	txt = QuickText(parent, "Step 1", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrStep)
	txt = QuickText(parent, "Put all bound quest items in the bank, the location doesn't matter.\rYou will take some out again in the 'Bags Preparation Guide' below.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

	txt = QuickText(parent, "Mailbox Preparation Guide", "GameFontNormalLarge", "TOPLEFT", txt, "BOTTOMLEFT", 0, -13, clrHeader)
	txt = QuickText(parent, "Step 1", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrStep)
	txt = QuickText(parent, "You need to send all BoE items needed to your character.\rYou can either send them to an alt and return them, or you can send them from other characters\r"
        .."We initially made a tool to help with sending the mails, but it was very confusing, so we removed it\r\r"
        .."Please keep in mind that 'returned' mails DISAPPEAR after 30 days.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 2", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Make sure you don't have too many mails. If you have more than the limit (100?) they can't be opened.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

	txt = QuickText(parent, "Bags Preparation Guide", "GameFontNormalLarge", "TOPLEFT", txt, "BOTTOMLEFT", 0, -13, clrHeader)
	txt = QuickText(parent, "Step 1", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrStep)
	txt = QuickText(parent, "In the Companion Window, 'Step 1' is always what you need to have in your bags when you log in on release.\rThese items are used before reaching a convenient bank/mailbox.\r\rNow that you have prepared you bank and mailbox, take out items from both the bank and mailbox until you no longer see any items displayed under Step 1 in the Companion Window.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

	txt = QuickText(parent, "Before Release Day", "GameFontNormalLarge", "TOPLEFT", txt, "BOTTOMLEFT", 0, -13, clrHeader)
	txt = QuickText(parent, "Step 1", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrStep)
	txt = QuickText(parent, "Open the Companion.\rMake sure the first step is not showing any items. You should have all the items in your bags by now.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 2", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Head to the start of the route. You can check the RXP turnin guide, or the 'Route' tab in the /tbcprep window.\rLog out or wait here until release.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

	txt = QuickText(parent, "Release Day - Companion Guide", "GameFontNormalLarge", "TOPLEFT", txt, "BOTTOMLEFT", 0, -13, clrHeader)
	txt = QuickText(parent, "Step 1", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrStep)
	txt = QuickText(parent, "Open the Companion. You should already have prepared your bags, so Step 1 in the Companion should show no items.\rYou can manually go to Step 2 if you want to see when you next need to retrieve items.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 2", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "When you enter the correct area for a step, the Companion automatically jumps to that Step.\rIf for some reason it doesn't, you can manually navigate with the topleft/right arrows.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

    txt = QuickText(parent, "Step 3", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Check what you need to do here.\r'Bank' & 'Mailbox' text is shown in red depending on what you need from this area.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 4", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Interact with the bank/mailbox in the area. When you do, the text should turn green.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
    txt = QuickText(parent, "Step 5", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Click the 'Collect' button, it will start collecting the items you need.\rFor the bank, it will write in chat what it found, and what it couldn't find.\r"
        .."It may try to pick up items from quests you didn't do, but you can ignore that.\rThe companion will show what items you're missing, but remember it also includes quests you may not have prepared.\r\r"
        .."The companion 'list of items' updates after closing the bank", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 6", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "You can now continue following the RXP turnin guides.\rIf you want to know the area of the next 'mail/bank' step, use the topright arrow.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

	txt = QuickText(parent, "Test Example", "GameFontNormalLarge", "TOPLEFT", txt, "BOTTOMLEFT", 0, -22, clrHeader)
	txt = QuickText(parent, "This does not explain everything in detail. Check the guides if you need help.", "GameFontNormalSmall", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrWarn)
	txt = QuickText(parent, "This specific example requires having the Main City 'Cloth' turnins available.", "GameFontNormalSmall", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrWarn)
	txt = QuickText(parent, "Step 1", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Make sure you have sent yourself some Silk, Mageweave & Runecloth.\rThe mails should be in your mailbox already.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 2", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Now fly to Gadgetzan, it's the bankstep before Orgrimmar.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 3", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "When you enter Gadgetzan, the Compaion should update.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 4", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Interact with the mailbox, the 'Mailbox' text in the Companion should turn green.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 5", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Click the collect button, it should loot the amount of cloth needed for the Orgrimmar turnins. If you sent more than needed, it should only loot the amount needed.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Further Testing", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "If you leave town, the Companion should update and tell you to go back to town.\r\rIf you leave town, go to any other step than Tanaris and then enter town again, it should automatically select the correct step for you.\r\r"
	    .."You don't have to test at Gadgetzan, you can test any step with any item needed on release.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

	txt = QuickText(parent, "Manual Mail Help", "GameFontNormalLarge", "TOPLEFT", txt, "BOTTOMLEFT", 0, -22, clrHeader)
	txt = QuickText(parent, "Instead of relying on this addon to loot every item from every mail on release, when the servers are known to... struggle...\r"
        .."You can instead use the companion to help organize your mails now, and then manually loot them.\rThis is just for the mailbox, the bank should™ work fine.\r"
        .."This is how we are using the companion ourselves.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrWarn)

	txt = QuickText(parent, "Step 1", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Do /tbc resetmarkeditems, this will reset all items that you have set as 'On an alt'", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 2", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Gather all your boe items on your main. You may not have room for all in one go.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 3", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Go to a mailbox. Attach 12 stacks to the mail but don't send it yet", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Step 4", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Open '/tbc' and go to the Items tab. Mark the items you're sending as on an alt.\rYou can write whatever text you want, I use 'Mailbox'", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

    txt = QuickText(parent, "Step 5", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Send the mail your alt.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
    txt = QuickText(parent, "Step 6", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Repeat Step2-6 until you have all those items on your alt or the alts mailbox.\rMake sure you end up with all items marked as 'On an alt'.\rThe companion needs it to know what items you prepped, and which you didn't, if you don't have them in your bags.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
    
    txt = QuickText(parent, "Step 7", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Log onto your alt.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
    txt = QuickText(parent, "Step 8", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Return all the mails you send back to your main, and send any other items your alt has.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

	txt = QuickText(parent, "Step 9", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Log back onto your main.\rIf you sent any 'new' items from your alt, remember to mark them as collected 'On an alt'.\rMake sure all items you prepared are marked.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

    txt = QuickText(parent, "Step 10", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Type '/tbc companion' to open the companion. Go to step 2.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
    txt = QuickText(parent, "Step 11", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Interact with a mailbox and click collect and wait for it to collect.\rSometimes it doesn't collect everything, either click collect again, or close and re-open the mailbox, then collect.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
    txt = QuickText(parent, "Step 12", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Now you have some items in your bags.\rPrepare to send a mail to your alt again with up to 12 items attached.\r"
        .."Give it a subject you can remember. For strat route it's Silithus, I have 20 items, so i need 2 mails.\rLet's name the first mail 'Silithus1', attach 12 items, then send it.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
    txt = QuickText(parent, "Step 13", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Create more mails with nice subjects untill you sent all the items.\rFor this example, I'd send a 'Silithus2' with 8 items attached", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
    txt = QuickText(parent, "Step 14", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Now that you sent all items, go to the next step (step 3+) and close the mailbox.\rRepeat step 11-14 until you are through all items.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
    txt = QuickText(parent, "Step 15", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "If you have leftover items in the mailbox, maybe you sent too much, or you forgot to mark some items.\rYou should be able to manage on your own from here.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
    txt = QuickText(parent, "Step 16", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Open '/tbc' and verify that the quests tab is happy.\rIt should see all your quests since you marked them as 'On an alt'.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
    txt = QuickText(parent, "Step 17", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -9, clrStep)
	txt = QuickText(parent, "Log onto your alt, and return the mails. If you return the 'last' one first (Stonard), it will be at the back of your mailbox for release.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)

	txt = QuickText(parent, "Feedback", "GameFontNormalLarge", "TOPLEFT", txt, "BOTTOMLEFT", 0, -28, clrHeader)
	txt = QuickText(parent, "If you find something here confusing, or find any errors, please let us know on Discord.", "GameFontNormal", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrText)
	txt = QuickText(parent, "Discord Invite: Click the discord link in the /tbcprep 'About' tab, you can copy it :)\r", "GameFontNormalSmall", "TOPLEFT", txt, "BOTTOMLEFT", 0, -1, clrWarn)

	parent:SetSize(parent:GetWidth(), 1)
end
---@param frame Frame
function CasualTBCPrep.Extras_Mailbox.Load(frame)
    if not frame then return end
    CasualTBCPrep.Extras_Mailbox.Clean(frame)

    Display(frame.scrollChild)
end