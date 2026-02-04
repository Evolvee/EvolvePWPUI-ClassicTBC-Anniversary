CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.W_Companion = CasualTBCPrep.W_Companion or {}

--[Variables]
local w_window_name = "CasualTBCPrep_W_Companion"
local msgZoneChangedID,msgBankID,msgMailID,msgRouteChanged = 0,0,0,0

local lastZoneChangedEventData = {}
local dataMail,dataBank = {},{}
local minWidth,minHeight = 150,200

local isInteractingWithMail, isInteractingWithBank = false,false
local stepCurrent,stepMax = 1,1

--[Forward Declarations]
local IncrementStep
local DecrementStep
local SetStep

---@class Frame|nil
local wCompanion = nil;

local function CleanupElements()
	if wCompanion.texts then
		for _, fontString in ipairs(wCompanion.texts) do
			fontString:Hide()
			fontString:SetText("")
			fontString:SetSize(0, 0)
		end
	end
	if wCompanion.content then
		for _, borderFrame in ipairs(wCompanion.content) do
			borderFrame:Hide()
		end
	end
	wCompanion.texts = {}
	wCompanion.content = {}
end

local function GetTurninData()
    dataMail,dataBank = CasualTBCPrep.Extras_Mailbox.GetTurninData()
end

---@param currentStep table
---@return table,table,integer,integer
local function GetStepDetails_ItemsNeeded(currentStep)
    GetTurninData()
    return CasualTBCPrep.Extras_Mailbox.GetStepDetails_ItemsNeeded(dataMail, dataBank, currentStep)
end

local function LoadStepDetailsItems(startY)
    local currentStep = CasualTBCPrep.Extras_Mailbox.GetTurninStep(stepCurrent)
    if currentStep == nil then return end

    local mailsToOpen, itemsFromBank, mailItemStackCount, bankItemStackCount = GetStepDetails_ItemsNeeded(currentStep)

    local itemsNeededInBags = {}
    local mailItemGrouping = {} -- Since multiple mailslots may have the same itemstack, group them first to get one final count (fx Runecloth 20/300)
    for _,mail in ipairs(mailsToOpen) do
        if mail ~= nil and mail.id ~= nil and mail.id > 0 then
           for _,item in ipairs(mail.items) do
                if mailItemGrouping[item.itemID] ~= nil then
                    mailItemGrouping[item.itemID].count = mailItemGrouping[item.itemID].count + item.count
                else
                    mailItemGrouping[item.itemID] = item
                end
            end
        end
    end

    for _, mailItem in pairs(mailItemGrouping) do
        local playerInvCount = CasualTBCPrep.Items.GetPlayerItemCount(mailItem.itemID, false)
        mailItem.totalNeeded = mailItem.count + playerInvCount
        table.insert(itemsNeededInBags, mailItem)
    end

    for _,item in ipairs(itemsFromBank) do
        if item ~= nil and item.itemID ~= nil and item.itemID > 0 then
            item.totalNeeded = item.count
            table.insert(itemsNeededInBags, item)
        end
    end

    local missing = {}
    local playerItemCountTracker = {}
    for _, item in ipairs(itemsNeededInBags) do
        local inventoryCount,bankCount = 0,0

        local playerTrack = {}
        if playerItemCountTracker[item.itemID] ~= nil then
            playerTrack = playerItemCountTracker[item.itemID]
            inventoryCount,bankCount = playerTrack.inv,playerTrack.bank
        else
            inventoryCount,bankCount,_= CasualTBCPrep.Items.GetPlayerItemCount(item.itemID, false)
            playerTrack = { invOrig = inventoryCount, inv = inventoryCount, bankOrig=bankCount, bank=bankCount}
        end

        if item.totalNeeded <= inventoryCount then
            inventoryCount = inventoryCount - item.totalNeeded
        else
            if item.totalNeeded <= (inventoryCount+bankCount) then
                -- Not enough but has in bank, go get em
                item.invCount = inventoryCount
                item.bankCount = bankCount
                table.insert(missing, item)
            else
                -- Not enough in inventory or bank
                item.invCount = inventoryCount
                item.bankCount = bankCount
                table.insert(missing, item)
            end
        end

        playerTrack.inv = inventoryCount
        playerTrack.bank = bankCount
        playerItemCountTracker[item.itemID] = playerTrack
    end

    if #missing == 0 then
        return
    end

    local clrBad = CasualTBCPrep.Themes.SelectedTheme.colors.bad
    local clrBanked = CasualTBCPrep.Themes.SelectedTheme.colors.questReadyBanked
    local clrMissing = CasualTBCPrep.Themes.SelectedTheme.colors.questCompleted

    local parent = wCompanion.scrollChild

    local stackSlotsNeeded = 0
    if currentStep.targetMailID and currentStep.targetMailID > 0 then stackSlotsNeeded = stackSlotsNeeded+(mailItemStackCount or 0) end
    if currentStep.targetBankID and currentStep.targetBankID > 0 then stackSlotsNeeded = stackSlotsNeeded+(bankItemStackCount or 0) end

    local missingStr = ""
    if stackSlotsNeeded > 0 then
        missingStr = tostring(stackSlotsNeeded).." Items Missing"
    else
        missingStr = tostring(#missing).." Items Missing"
    end

    local yPos = startY
    local txtBagHeader = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    txtBagHeader:SetPoint("TOP", parent, "TOP", 0, yPos)
    txtBagHeader:SetText(missingStr)
    txtBagHeader:SetTextColor(clrBad.r, clrBad.g, clrBad.b)
    table.insert(wCompanion.texts, txtBagHeader)

    yPos = yPos - 21
    local iconSize = 24
    local spacing = iconSize + 4
    if #missing > 0 then
        local alreadyShownItems = {}
        for _, item in ipairs(missing) do
            if alreadyShownItems[item.itemID] == nil then
                local playerTrackedCount = playerItemCountTracker[item.itemID]

                local icon, border, textRarityColor, imgItem = CasualTBCPrep.UI.CreateItemImage(parent, iconSize, item.itemID, "TOPLEFT", "TOPLEFT", 0, yPos)
                local itemName = ""
                if imgItem then
                    local r,g,b,cHex = CasualTBCPrep.GetRarityColor(imgItem.rarity)
                    local displayName = imgItem.name
                    itemName = cHex..displayName.."|r"
                end

                table.insert(wCompanion.content, icon)
                table.insert(wCompanion.content, border)

                local itemNameText = textRarityColor .. (itemName or ("Item " .. imgItem.id))
                local txtItemName = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
                txtItemName:SetPoint("TOPLEFT", icon, "TOPRIGHT", 1, -1)
                txtItemName:SetText(itemNameText)
                table.insert(wCompanion.texts, txtItemName)

                local progressText = tostring(playerTrackedCount.invOrig).."/"..(item.totalNeeded or item.count)
                if playerTrackedCount.bankOrig > 0 then
                    progressText = clrBanked.hex..progressText.." ("..tostring(playerTrackedCount.bankOrig).." in bank)|r"
                else
                    progressText = clrMissing.hex..progressText.."|r"
                end
                local txtItemProg = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
                txtItemProg:SetPoint("BOTTOMLEFT", icon, "BOTTOMRIGHT", 1, 1)
                txtItemProg:SetText(progressText)
                table.insert(wCompanion.texts, txtItemProg)

                yPos = yPos - spacing
                alreadyShownItems[item.itemID] = {}
            end
        end
    end

    -- Fake space at bottom of the list
    local txtBottomSpace = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    txtBottomSpace:SetPoint("TOP", parent, "TOP", 0, yPos+(spacing/3))
    txtBottomSpace:SetText(" ")
    table.insert(wCompanion.texts, txtBottomSpace)
end

local function LoadStepDetails()
    local currentStep = CasualTBCPrep.Extras_Mailbox.GetTurninStep(stepCurrent)
    if currentStep == nil then return end

    local clrBad = CasualTBCPrep.Themes.SelectedTheme.colors.bad
    local clrWarn = CasualTBCPrep.Themes.SelectedTheme.colors.warn
    local clrGood = CasualTBCPrep.Themes.SelectedTheme.colors.good

    local clrDebugMsg = CasualTBCPrep.Themes.SelectedTheme.colors.standoutText.hex
    local clrWaitingForZone = { r=0.7, g=0.7, b=0.7 }

    local parent = wCompanion.scrollChild
    local yPos = -5

    local showButton = true
    if currentStep.reached == false and currentStep.id ~= 1 then
        local txtReachStatic = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
        txtReachStatic:SetPoint("TOP", parent, "BOTTOM", 0, yPos)
        txtReachStatic:SetText("Waiting For")
        txtReachStatic:SetTextColor(clrWarn.r, clrWarn.g, clrWarn.b)
        table.insert(wCompanion.texts, txtReachStatic)

        local txtReach = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        txtReach:SetPoint("TOP", txtReachStatic, "BOTTOM", 0, -2)

        if currentStep.shortZoneText ~= nil and currentStep.shortZoneText ~= "" then
            txtReach:SetText(currentStep.shortZoneText)
        else
            txtReach:SetText(currentStep.zone..", "..currentStep.subZone)
        end
        txtReach:SetTextColor(clrWaitingForZone.r, clrWaitingForZone.g, clrWaitingForZone.b)
        table.insert(wCompanion.texts, txtReach)
        yPos = yPos - 35
    end

    local mailID,bankID = currentStep.targetMailID or 0, currentStep.targetBankID or 0

    local isFirstStep = (currentStep.id == 1) or false
    if (mailID+bankID) > 0 and showButton == true then
        if not isFirstStep then -- Don't show interact texts on Bagstep
            local txtInteractHeader = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
            txtInteractHeader:SetPoint("TOP", parent, "BOTTOM", 0, yPos)
            txtInteractHeader:SetText("Interact With")
            txtInteractHeader:SetTextColor(clrWarn.r, clrWarn.g, clrWarn.b)
            table.insert(wCompanion.texts, txtInteractHeader)
            yPos = yPos - 16

            if mailID > 0 then
                local txtInteractMail = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
                txtInteractMail:SetPoint("TOP", parent, "BOTTOM", 0, yPos)
                txtInteractMail:SetText("Mailbox")

                if currentStep.interactedWithMail == true then
                    txtInteractMail:SetTextColor(clrGood.r, clrGood.g, clrGood.b)
                else
                    txtInteractMail:SetTextColor(clrBad.r, clrBad.g, clrBad.b)
                end
                table.insert(wCompanion.texts, txtInteractMail)
                yPos = yPos - 15
            end

            if bankID > 0 then
                local txtInteractBank = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
                txtInteractBank:SetPoint("TOP", parent, "BOTTOM", 0, yPos)
                txtInteractBank:SetText("Bank")

                if currentStep.interactedWithBank == true then
                    txtInteractBank:SetTextColor(clrGood.r, clrGood.g, clrGood.b)
                else
                    txtInteractBank:SetTextColor(clrBad.r, clrBad.g, clrBad.b)
                end
                table.insert(wCompanion.texts, txtInteractBank)
                yPos = yPos - 13
            end
            yPos = yPos - 2
        end

        if (mailID > 0 or bankID > 0) then
            local funcNotify = function(text) CasualTBCPrep.NotifyUserCompanion(text) end
            local funcNotifyWarn = function(text) CasualTBCPrep.NotifyUserCompanionWarning(text) end
            local funcNotifyErr = function(text) CasualTBCPrep.NotifyUserCompanionError(text) end

            local btnCollect = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
            btnCollect:SetSize(90, 25)
            btnCollect:SetPoint("TOP", parent, "BOTTOM", 0, yPos)
            btnCollect:SetNormalFontObject("GameFontNormal")
            btnCollect:SetText("Collect")

            btnCollect.isCollecting = false
            btnCollect:SetScript("OnClick", function(self)
                if self.isCollecting == true then return end
                GetTurninData()
                btnCollect.mailsToOpen, btnCollect.itemsFromBank, btnCollect.mailItemStackCount, btnCollect.bankItemStackCount = GetStepDetails_ItemsNeeded(currentStep)

                if mailID > 0 and isInteractingWithMail == true and self.mailsToOpen ~= nil then
                    local itemsToCollect = {} -- [itemID] = {itemID=X, count=Y}
                    for _, mail in ipairs(self.mailsToOpen) do
                        if mail ~= nil and mail.id ~= nil and mail.id > 0 then
                            for _, item in ipairs(mail.items) do
                                if itemsToCollect[item.itemID] ~= nil then
                                    itemsToCollect[item.itemID].count = itemsToCollect[item.itemID].count + item.count
                                else
                                    itemsToCollect[item.itemID] = {itemID = item.itemID, count = item.count}
                                end
                            end
                        end
                    end

                    local playerFreeBagSlots = CasualTBCPrep.GetPlayerFreeBagSlots()
                    local toGrab = btnCollect.mailItemStackCount

                    if playerFreeBagSlots < toGrab then
                        funcNotifyWarn("You may not have enough bagspace if you prepped everything ("..tostring(playerFreeBagSlots).."/"..toGrab.."), opening as many as possible")
                        toGrab = playerFreeBagSlots
                    end
                    self.isCollecting = true
                    self:Disable()

                    funcNotify("Trying to collect "..tostring(toGrab).." stacks from the mailbox...")
                    local funcComplete = function(collectedItems, remainingNeeds)
                        local totalCollected = 0
                        for itemID, count in pairs(collectedItems) do
                            totalCollected = totalCollected + count
                        end

                        if totalCollected == 0 then
                            funcNotifyErr("Found no relevant items in mailbox")
                        else
                            funcNotify("Collected "..tostring(totalCollected).." items")
                            if #remainingNeeds > 0 then
                                funcNotifyWarn("ToDO: Some items still needed - check mailbox")
                            end
                        end

                        self.isCollecting = false
                        self:Enable()
                        C_Timer.After(0.5, function()
                            CleanupElements()
                            LoadStepDetails()
                        end)
                    end

                    CasualTBCPrep.MailboxInteraction.TryGetItemsFromMailbox(itemsToCollect, funcComplete)
                elseif bankID > 0 and isInteractingWithBank == true and self.itemsFromBank ~= nil then
                    local playerFreeBagSlots = CasualTBCPrep.GetPlayerFreeBagSlots()

                    local toGrab = btnCollect.bankItemStackCount

                    if playerFreeBagSlots < toGrab then
                        funcNotifyWarn("You may not have enough bagspace if you prepped everything ("..tostring(playerFreeBagSlots).."/"..toGrab.."), opening as many as possible")
                        toGrab = playerFreeBagSlots
                    end
                    self.isCollecting = true
                    self:Disable()

                    funcNotify("Trying to collect "..tostring(toGrab).." stacks from the bank...")

                    local funcComplete = function(collectedCount, missingCount)
                        if collectedCount == 0 then
                            funcNotifyWarn("Found no relevant items in bank")
                        else
                            local msg = "Collected "..tostring(collectedCount).."/"..tostring((collectedCount+missingCount)).." items"
                            if missingCount > 0 then
                                 msg = msg.."|r"..clrWarn.hex.." ("..tostring(missingCount).." missing)|r"
                            end
                            funcNotify(msg)
                        end
                        self.isCollecting = false
                        self:Enable()
                        C_Timer.After(1, function()
                            CleanupElements()
                            LoadStepDetails()
                        end)
                    end
                    CasualTBCPrep.BankInteraction.TryGetItemsFromBank(self.itemsFromBank, funcNotify, funcComplete)
                end
            end)

            CasualTBCPrep.UI.HookTooltip(btnCollect, "Collect Items", { "Click on this button to collect items from the Mailbox or the Bank" }, nil,nil,nil)
            table.insert(wCompanion.content, btnCollect)
        end
    end

    LoadStepDetailsItems(yPos-30)
end

local function LoadStepHeader()
    local currentStep = CasualTBCPrep.Extras_Mailbox.GetTurninStep(stepCurrent)
    if currentStep == nil then return end

    local progressText = tostring(stepCurrent).." / "..tostring(stepMax).." ("..currentStep.header..")"
	wCompanion.txtHeaderProgress:SetText(progressText)
	wCompanion.txtHeaderText:SetText(currentStep.text)
end

local function StepReached()
    local currentStep = CasualTBCPrep.Extras_Mailbox.GetTurninStep(stepCurrent)
    if currentStep == nil then return end

    if currentStep.reached == false then
        currentStep.reached = true

        CleanupElements()
        LoadStepDetails()
    end
end

local function IsStepReached(stepID)
    local targetStep = CasualTBCPrep.Extras_Mailbox.GetTurninStep(stepID)
    if targetStep == nil then return false end

    if lastZoneChangedEventData == nil or lastZoneChangedEventData.mapID == nil or lastZoneChangedEventData.mapID <= 0 then
        local mapID, zone, subZone = CasualTBCPrep.GetMapAndZoneInfo()
        lastZoneChangedEventData = { mapID= mapID, zoneName = zone, subzoneName = subZone }
    end

    if targetStep ~= nil and lastZoneChangedEventData.mapID == targetStep.mapID then
        if targetStep.zone == nil or targetStep.zone == lastZoneChangedEventData.zoneName then
            if targetStep.subZone == nil or targetStep.subZone == lastZoneChangedEventData.subzoneName then
                return true
            end
        end
    end
    return false
end

local function IsCurrentStepReached()
    return IsStepReached(stepCurrent)
end

---@param data table
local function OnMessageZoneChanged(data, skipCheckingAllSteps)
    local currentStep = CasualTBCPrep.Extras_Mailbox.GetTurninStep(stepCurrent)
    if currentStep == nil then return end

    lastZoneChangedEventData = data

    if IsCurrentStepReached() == true then
        StepReached()
    else
        local foundID = nil
        if skipCheckingAllSteps ~= true then
            for _,stepData in ipairs(CasualTBCPrep.Extras_Mailbox.GetTurninSteps()) do
                if foundID == nil and stepCurrent ~= stepData.id then -- Already checked currentID
                    if IsStepReached(stepData.id) == true then
                        foundID = stepData.id
                    end
                end
            end
        end

        if foundID ~= nil and foundID > 0 then
            CasualTBCPrep.Extras_Mailbox.SetTurninReached(stepCurrent, false)
            CasualTBCPrep.NotifyUserCompanion("Entered zone for Step "..tostring(foundID)..", updating window with new step.")
            SetStep(foundID, false)
        else
            CasualTBCPrep.Extras_Mailbox.SetTurninReached(stepCurrent, false)
            CleanupElements()
            LoadStepDetails()
        end
    end
end

---@param isOpen boolean
local function HandleBankOpen(isOpen)
    isInteractingWithBank = isOpen or false
    local currentStep = CasualTBCPrep.Extras_Mailbox.GetTurninStep(stepCurrent)
    if currentStep == nil or currentStep.targetBankID == nil then return end

    if isOpen == false then
        CasualTBCPrep.Extras_Mailbox.SetTurninInteractedWithBank(stepCurrent, false)
        CleanupElements()
        LoadStepDetails()
    elseif isOpen == true and currentStep.reached == true then
        CasualTBCPrep.Extras_Mailbox.SetTurninInteractedWithBank(stepCurrent, true)
        CleanupElements()
        LoadStepDetails()
    end
end
---@param isOpen boolean
local function HandleMailOpen(isOpen)
    isInteractingWithMail = isOpen or false
    local currentStep = CasualTBCPrep.Extras_Mailbox.GetTurninStep(stepCurrent)
    if currentStep == nil or currentStep.targetMailID == nil then return end

    if isOpen == false then
        CasualTBCPrep.Extras_Mailbox.SetTurninInteractedWithMail(stepCurrent, false)
        CleanupElements()
        LoadStepDetails()
    elseif isOpen == true and currentStep.reached == true then
        CasualTBCPrep.Extras_Mailbox.SetTurninInteractedWithMail(stepCurrent, true)
        CleanupElements()
        LoadStepDetails()
    end
end
---@param data table
local function OnBankInteraction(data)
    HandleBankOpen(data.open or false)
end

---@param data table
local function OnMailInteraction(data)
    HandleMailOpen(data.open or false)
end

local function ResetCurrentStep()
    local currentStep = CasualTBCPrep.Extras_Mailbox.GetTurninStep(stepCurrent)
    if currentStep ~= nil then
        currentStep.reached = IsCurrentStepReached()
        currentStep.interactedWithMail = false
        currentStep.interactedWithBank = false
    end
end
SetStep = function(value, skipCheckingAllSteps)
    ResetCurrentStep()
    stepCurrent = value
    CleanupElements()
    OnMessageZoneChanged(lastZoneChangedEventData, skipCheckingAllSteps)
    LoadStepHeader()
    LoadStepDetails()
end
IncrementStep = function()
    local newValue = stepCurrent + 1
    if newValue > stepMax then newValue = 1 end
    SetStep(newValue, true)
end
DecrementStep = function()
    local newValue = stepCurrent - 1
    if newValue <= 0 then newValue = stepMax end
    SetStep(newValue, true)
end

local function UpdateStepCounts()
    stepCurrent,stepMax =stepCurrent,CasualTBCPrep.Extras_Mailbox.GetTurninStepCount()
    if stepCurrent > stepMax or stepCurrent < 1 then stepCurrent = 1 end
end

local function Display()
    CleanupElements()

    local mapID, zoneName, subzoneName = CasualTBCPrep.GetLastZoneUpdate()
    UpdateStepCounts()
    GetTurninData()

    OnMessageZoneChanged({ mapID = mapID, zoneName = zoneName, subzoneName = subzoneName }, false)
    LoadStepHeader()
    LoadStepDetails()

	wCompanion.scrollChild:SetSize(wCompanion.scrollFrame:GetWidth(), 1)
    C_Timer.After(0.5, function()
        HandleBankOpen(BankFrame and BankFrame:IsShown())
        HandleMailOpen(MailFrame and MailFrame:IsShown())
    end)
end

local function OnRouteChanged(data)
    GetTurninData()
    UpdateStepCounts()
    stepCurrent = 1
    LoadStepHeader()
end

--@param type string|nil
local function Create()
    local windowOffsetX, windowOffsetY = 0,0
    local wPoint, wRelativeTo, wRelativePoint = "CENTER", UIParent, "CENTER"

    local companionSettings = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.CompanionSettings)
    if companionSettings ~= nil then
        windowOffsetX = companionSettings.x or 0
        windowOffsetY = companionSettings.y or 0
        wPoint = companionSettings.point or "CENTER"
        wRelativeTo = companionSettings.relativeTo or UIParent
        wRelativePoint = companionSettings.relativePoint or "CENTER"
    end

	wCompanion = CreateFrame("Frame", w_window_name, UIParent, "BackdropTemplate")
	wCompanion:SetPoint(wPoint, wRelativeTo, wRelativePoint, windowOffsetX, windowOffsetY)
	wCompanion:EnableMouse(true)
	wCompanion:SetMovable(true)
	wCompanion:SetResizable(true)
	wCompanion:RegisterForDrag("LeftButton")
	wCompanion:SetScript("OnDragStart", function(self) self:StartMoving() end)
	wCompanion:SetScript("OnDragStop", function(self)
            self:StopMovingOrSizing()
            local point,relativeTo,relativePoint, xOffset, yOffset = self:GetPoint()

            local companionSettings = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.CompanionSettings)
            if companionSettings == nil then companionSettings = {} end
            companionSettings.point = point
            companionSettings.relativeTo = relativeTo
            companionSettings.relativePoint = relativePoint
            companionSettings.x = xOffset
            companionSettings.y = yOffset
            CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.CompanionSettings, companionSettings)
        end)

	wCompanion:SetBackdrop({
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		tileSize = 32,
		edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 }
	})
	wCompanion:SetBackdropColor(0, 0, 0, 0.7)  -- Black with 70% opacity
	wCompanion:SetBackdropBorderColor(0.4, 0.4, 0.4, 1)  -- Gray border

    --[Resize]
    local resizeButton = CreateFrame("Button", nil, wCompanion)
    resizeButton:SetSize(16, 16)
    resizeButton:SetPoint("BOTTOMRIGHT", wCompanion, "BOTTOMRIGHT", -2, 2)
    resizeButton:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
    resizeButton:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
    resizeButton:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")

    local isResizing = false
    local startWidth, startHeight, startX, startY

    resizeButton:SetScript("OnMouseDown", function(self, button)
        isResizing = true
        startWidth = wCompanion:GetWidth()
        startHeight = wCompanion:GetHeight()
        startX, startY = GetCursorPosition()
        local scaleOuter = wCompanion:GetEffectiveScale()
        startX = startX / scaleOuter
        startY = startY / scaleOuter

        wCompanion:SetScript("OnUpdate", function(self)
            if not isResizing then
                self:SetScript("OnUpdate", nil)
                return
            end

            local cursorX,cursorY = GetCursorPosition()
            local scaleInner = self:GetEffectiveScale()
            local deltaX = (cursorX / scaleInner) - startX
            local deltaY = startY - (cursorY / scaleInner)

            local newWidth = math.max(minWidth, startWidth + deltaX)
            local newHeight = math.max(minHeight, startHeight + deltaY)

            self:SetSize(newWidth, newHeight)
        end)
    end)

    resizeButton:SetScript("OnMouseUp", function(self)
        isResizing = false
        wCompanion:SetScript("OnUpdate", nil)

        local width = wCompanion:GetWidth()
        local height = wCompanion:GetHeight()

        width = math.max(minWidth, width)
        height = math.max(minHeight, height)

        local companionSettings = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.CompanionSettings)
        if companionSettings == nil then companionSettings = {} end
        companionSettings.width = width
        companionSettings.height = height
        CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.CompanionSettings, companionSettings)

        wCompanion:SetSize(width, height)
        Display()
    end)

	wCompanion.scrollFrame, wCompanion.scrollChild = CasualTBCPrep.UI.CreateTBCPrepScrollFrame(wCompanion, 11, -30, -26, 10)
	wCompanion:SetFrameStrata("FULLSCREEN_DIALOG")
	wCompanion:SetFrameLevel(1001)

    --[Header Objects]
    local clrTextHeader = CasualTBCPrep.Themes.SelectedTheme.colors.standoutText
    local clrTextArea = CasualTBCPrep.Themes.SelectedTheme.colors.currentStepArea

	local txtProgress = wCompanion:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	txtProgress:SetPoint("TOP", wCompanion, "TOP", 0, -5)
	txtProgress:SetText("")
	txtProgress:SetTextColor(clrTextHeader.r, clrTextHeader.g, clrTextHeader.b)

	local txtProgressText = wCompanion:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	txtProgressText:SetPoint("TOP", txtProgress, "BOTTOM", 0, -1)
	txtProgressText:SetText("")
	txtProgressText:SetTextColor(clrTextArea.r, clrTextArea.g, clrTextArea.b)

    wCompanion.txtHeaderProgress = txtProgress
    wCompanion.txtHeaderText = txtProgressText

    --[Step Navigation Buttons]
    local btnGoLeft = CreateFrame("Button", nil, wCompanion)
    btnGoLeft:SetSize(22, 22)
    btnGoLeft:SetPoint("TOPLEFT", wCompanion, "TOPLEFT", 3, -2)
    btnGoLeft:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up")
    btnGoLeft:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down")
    btnGoLeft:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight")
    btnGoLeft:SetScript("OnClick", function()
        DecrementStep()
    end)

    local btnGoRight = CreateFrame("Button", nil, wCompanion)
    btnGoRight:SetSize(22, 22)
    btnGoRight:SetPoint("TOPRIGHT", wCompanion, "TOPRIGHT", -3, -2)
    btnGoRight:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up")
    btnGoRight:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down")
    btnGoRight:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight")
    btnGoRight:SetScript("OnClick", function()
        IncrementStep()
    end)

    local btnClose = CasualTBCPrep.UI.CreateTextButton(wCompanion, "X", GameFontNormalLarge, "LEFT", "MIDDLE")
    btnClose:SetText("|cFFFF0000X|r")
    btnClose:SetPoint("TOPLEFT", wCompanion, "TOPRIGHT", 1, -3)
    btnClose:SetScript("OnClick", function()
        CasualTBCPrep.W_Companion.Hide()
    end)
    btnClose:SetScript("OnEnter", function()
        btnClose:SetText("|cFF992137X|r")
    end)
    btnClose:SetScript("OnLeave", function()
        btnClose:SetText("|cFFFF0000X|r")
    end)

	--[QoL]
	wCompanion:SetScript("OnShow", function() CasualTBCPrep.Sounds.PlaySound_Click() end)
	wCompanion:SetScript("OnHide", function() CasualTBCPrep.Sounds.PlaySound_Click() end)
	wCompanion:Hide();
end

function CasualTBCPrep.W_Companion.Show()
	if wCompanion == nil then

		Create()
		if wCompanion == nil then
			return
		end
	end

    local companionSettings = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.CompanionSettings)
    if companionSettings == nil then companionSettings = {} end
    companionSettings.open = true

    local width,height = companionSettings.width, companionSettings.height
    if width == nil or width < minWidth then width = minWidth end
    if height == nil or height < minHeight then height = minHeight end

	wCompanion:SetSize(width,height)

	Display()
	if not wCompanion:IsShown() then
        if msgZoneChangedID <= 0 then
	        msgZoneChangedID = CasualTBCPrep.MessageBroker.Register(CasualTBCPrep.MessageBroker.TYPE.ZONE_CHANGED, OnMessageZoneChanged)
        end
        if msgBankID <= 0 then
	        msgBankID = CasualTBCPrep.MessageBroker.Register(CasualTBCPrep.MessageBroker.TYPE.BANK_INTERACT, OnBankInteraction)
        end
        if msgMailID <= 0 then
	        msgMailID = CasualTBCPrep.MessageBroker.Register(CasualTBCPrep.MessageBroker.TYPE.MAILBOX_INTERACT, OnMailInteraction)
        end
        if msgRouteChanged <= 0 then
	        msgRouteChanged = CasualTBCPrep.MessageBroker.Register(CasualTBCPrep.MessageBroker.TYPE.ROUTE_CHANGED, OnRouteChanged)
        end
		wCompanion:Show()
	end

    CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.CompanionSettings, companionSettings)
end
function CasualTBCPrep.W_Companion.Hide()
	if wCompanion ~= nil and wCompanion:IsShown() then
		wCompanion:Hide()

        if msgZoneChangedID > 0 then
            CasualTBCPrep.MessageBroker.Unregister(CasualTBCPrep.MessageBroker.TYPE.ZONE_CHANGED, msgZoneChangedID)
            msgZoneChangedID = 0
        end
        if msgBankID > 0 then
            CasualTBCPrep.MessageBroker.Unregister(CasualTBCPrep.MessageBroker.TYPE.BANK_INTERACT, msgBankID)
            msgBankID = 0
        end
        if msgMailID > 0 then
            CasualTBCPrep.MessageBroker.Unregister(CasualTBCPrep.MessageBroker.TYPE.MAILBOX_INTERACT, msgMailID)
            msgMailID = 0
        end
        if msgRouteChanged > 0 then
            CasualTBCPrep.MessageBroker.Unregister(CasualTBCPrep.MessageBroker.TYPE.ROUTE_CHANGED, msgRouteChanged)
            msgRouteChanged = 0
        end
	end

    local companionSettings = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.CompanionSettings)
    if companionSettings == nil then companionSettings = {} end
    companionSettings.open = false
    CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.CompanionSettings, companionSettings)
end

function CasualTBCPrep.W_Companion.Toggle()
	if wCompanion == nil then
        CasualTBCPrep.W_Companion.Show()
        return
    end

    if wCompanion:IsShown() then
        CasualTBCPrep.W_Companion.Hide()
    else
        CasualTBCPrep.W_Companion.Show()
    end
end