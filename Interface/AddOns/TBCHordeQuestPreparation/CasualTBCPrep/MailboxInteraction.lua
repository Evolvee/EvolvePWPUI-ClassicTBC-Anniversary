CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.MailboxInteraction = CasualTBCPrep.MailboxInteraction or {}

---@param mailName string
---@param sender string|nil
---@param onNotify function|nil
---@return boolean success
function CasualTBCPrep.MailboxInteraction.TryGetMailFromName(mailName, sender, onNotify)
    if mailName == nil or mailName == "" then return false end

    CheckInbox()
    local inboxMailCount = GetInboxNumItems()
    for i=1, inboxMailCount do
        local _,_,mailSender,mailSubject,money,_,_,_,_,_,_,_,isGM = GetInboxHeaderInfo(i)

        if sender == nil or sender == "" or sender == mailSender then
            if mailSubject and mailSubject == mailName then
                if onNotify then onNotify("Found mail "..mailSubject..", trying to collect...") end
                TakeInboxItem(i)

                if money and money > 0 then
                    TakeInboxMoney(i)
                end

                if onNotify then onNotify("Collected "..mailSubject) end
                return true
            end
        end
    end
    return false
end

---@param mailName string
---@param sender string|nil
---@param funcOnComplete function|nil
function CasualTBCPrep.MailboxInteraction.TryGetAllMailsFromName(mailName, sender, maxItems, funcOnComplete)
    if mailName == nil or mailName == "" then
        if funcOnComplete then funcOnComplete(0) end
        return
    end

    local delayInitial,delayBetween = 0.1,0.4
    local totalCollected = 0
    local isProcessing,isCancelled = false,false

    local registryID = 0
    local funcCleanupRegistry = function()
        if registryID > 0 then
            CasualTBCPrep.MessageBroker.Unregister(CasualTBCPrep.MessageBroker.TYPE.MAILBOX_INTERACT, registryID)
        end
    end
    registryID = CasualTBCPrep.MessageBroker.Register(CasualTBCPrep.MessageBroker.TYPE.MAILBOX_INTERACT, function(data)
        if not data.open then
            isCancelled = true
            if funcOnComplete then funcOnComplete(totalCollected) end
            funcCleanupRegistry()
        end
    end)
    local function ProcessNextMail()
        if isProcessing or isCancelled then return end

        if maxItems and totalCollected >= maxItems then
            if funcOnComplete then funcOnComplete(totalCollected) end
            funcCleanupRegistry()
            return
        end

        isProcessing = true
        CheckInbox()
        C_Timer.After(delayInitial, function()
            if isCancelled then
                isProcessing = false
                return
            end
            local inboxMailCount = GetInboxNumItems()
            local foundMail = false
            for i = 1, inboxMailCount do
                local _, _, mailSender, mailSubject, money = GetInboxHeaderInfo(i)

                if sender == nil or sender == "" or sender == mailSender then
                    if mailSubject and mailSubject == mailName then
                        foundMail = true

                        TakeInboxItem(i)
                        if money and money > 0 then
                            TakeInboxMoney(i)
                        end

                        totalCollected = totalCollected + 1
                        C_Timer.After(delayBetween, function()
                            isProcessing = false
                            if isCancelled then return end
                            ProcessNextMail()
                        end)
                        return
                    end
                end
            end

            if not foundMail then
                isProcessing = false
                if funcOnComplete then funcOnComplete(totalCollected) end
                funcCleanupRegistry()
            end
        end)
    end
    ProcessNextMail()
end

---@param recipient string
---@param subject string
---@param items table {itemID=number, count=number}
---@param funcOnComplete function|nil
function CasualTBCPrep.MailboxInteraction.PrepareOutgoingMail(recipient, subject, items, funcOnComplete)
    if not recipient or recipient == "" then
        if funcOnComplete then funcOnComplete(0, 0) end
        return
    end

    if not items or #items == 0 then
        if funcOnComplete then funcOnComplete(0, 0) end
        return
    end

    if not MailFrame:IsVisible() then
        if funcOnComplete then funcOnComplete(0, #items) end
        return
    end

    if not SendMailFrame:IsVisible() then
        MailFrameTab_OnClick(MailFrameTab2)
    end
    SendMailNameEditBox:SetText(recipient)
    SendMailSubjectEditBox:SetText(subject)

    for i = 1, ATTACHMENTS_MAX_SEND do
        if HasSendMailItem(i) then
            ClickSendMailItemButton(i, true) -- Remove Attachments (Postal yoink)
        end
    end

    local itemsAttached,itemsMissing = 0,0
    local usedSlots = {} -- Attaching makes items "locked", we need to exclude them or we try to re-attach the same stack again and again and again

    for _, needed in ipairs(items) do
        if itemsAttached >= ATTACHMENTS_MAX_SEND then
            itemsMissing = itemsMissing + 1
            break
        end

        local foundStack = false
        for bag = 0, (NUM_BAG_SLOTS or 4) do
            local slotCount = C_Container.GetContainerNumSlots(bag) or 0
            for slot = 1, slotCount do
                local slotKey = bag .. "-" .. slot

                if not usedSlots[slotKey] then
                    local itemLink = C_Container.GetContainerItemLink(bag, slot)
                    if itemLink then
                        local itemID = tonumber(string.match(itemLink, "item:(%d+)"))

                        if itemID == needed.itemID then
                            local itemInfo = C_Container.GetContainerItemInfo(bag, slot)
                            local stackCount = itemInfo.stackCount or 0

                            if stackCount == needed.count then
                                C_Container.PickupContainerItem(bag, slot)
                                ClickSendMailItemButton()

                                local itemInfo2 = C_Container.GetContainerItemInfo(bag, slot)
                                if itemInfo2 and itemInfo2.isLocked then
                                    itemsAttached = itemsAttached + 1
                                    usedSlots[slotKey] = true
                                    foundStack = true
                                    break
                                else
                                    ClearCursor()
                                end
                            end
                        end
                    end
                end
            end
            if foundStack then break end
        end

        if not foundStack then
            itemsMissing = itemsMissing + 1
        end
    end

    if funcOnComplete then
        funcOnComplete(itemsAttached, itemsMissing)
    end
end

---@param subjectStartsWith string
---@param funcOnComplete function|nil
---@return boolean success
function CasualTBCPrep.MailboxInteraction.ReturnMailsWhereSubjectStartsWith(subjectStartsWith, funcOnComplete)
    if not subjectStartsWith or subjectStartsWith == "" then
        if funcOnComplete then funcOnComplete(0) end
        return false
    end
    if not MailFrame:IsVisible() then
        if funcOnComplete then funcOnComplete(0) end
        return false
    end

    local delayInitial, delayBetween = 0.1, 0.4
    local mailsReturned = 0
    local isProcessing, isCancelled = false,false

    local registryID = 0
    local funcCleanupRegistry = function()
        if registryID > 0 then
            CasualTBCPrep.MessageBroker.Unregister(CasualTBCPrep.MessageBroker.TYPE.MAILBOX_INTERACT, registryID)
        end
    end

    registryID = CasualTBCPrep.MessageBroker.Register(CasualTBCPrep.MessageBroker.TYPE.MAILBOX_INTERACT, function(data)
        if not data.open then
            isCancelled = true
            if funcOnComplete then funcOnComplete(mailsReturned) end
            funcCleanupRegistry()
        end
    end)

    local function ProcessNextMail()
        if isProcessing or isCancelled then return end
        isProcessing = true

        CheckInbox()
        C_Timer.After(delayInitial, function()
            if isCancelled then
                isProcessing = false
                return
            end

            local inboxMailCount = GetInboxNumItems()
            local foundMail = false
            for i = 1, inboxMailCount do
                local _, _, mailSender, mailSubject = GetInboxHeaderInfo(i)

                if mailSubject then
                    if string.sub(mailSubject, 1, string.len(subjectStartsWith)) == subjectStartsWith then
                        foundMail = true
                        ReturnInboxItem(i)
                        mailsReturned = mailsReturned + 1

                        C_Timer.After(delayBetween, function()
                            isProcessing = false
                            if isCancelled then return end
                            ProcessNextMail()
                        end)
                        return
                    end
                end
            end

            if not foundMail then
                isProcessing = false
                if funcOnComplete then funcOnComplete(mailsReturned) end
                funcCleanupRegistry()
            end
        end)
    end
    ProcessNextMail()
    return true
end










---@param itemsNeeded table {[itemID] = {itemID=number, count=number}}
---@param funcOnComplete function|nil
function CasualTBCPrep.MailboxInteraction.TryGetItemsFromMailbox(itemsNeeded, funcOnComplete)
    if itemsNeeded == nil or next(itemsNeeded) == nil then
        if funcOnComplete then funcOnComplete({}, {}) end
        return
    end

    local remainingNeeds, collectedItems = {},{}
    for itemID, item in pairs(itemsNeeded) do
        remainingNeeds[itemID] = item.count
    end

    local mailIndex, lastItemCount = 1,0
    local isCancelled,waitingForUpdate = false, false

    local registryID = 0
    local funcCleanupRegistry = function()
        if registryID > 0 then
            CasualTBCPrep.MessageBroker.Unregister(CasualTBCPrep.MessageBroker.TYPE.MAILBOX_INTERACT, registryID)
        end
    end

    registryID = CasualTBCPrep.MessageBroker.Register(CasualTBCPrep.MessageBroker.TYPE.MAILBOX_INTERACT, function(data)
        if not data.open then
            isCancelled = true
            if funcOnComplete then funcOnComplete(collectedItems, remainingNeeds) end
            funcCleanupRegistry()
        end
    end)

    local function CountRelevantItems()
        local count = 0
        for itemID, need in pairs(remainingNeeds) do
            if need > 0 then
                local playerCount = CasualTBCPrep.Items.GetPlayerItemCount(itemID, false)
                count = count + playerCount
            end
        end
        return count
    end

    local function ProcessNext()
        if isCancelled then return end

        local allDone = true
        for _, need in pairs(remainingNeeds) do
            if need > 0 then
                allDone = false
                break
            end
        end
        if allDone then
            if funcOnComplete then funcOnComplete(collectedItems, remainingNeeds) end
            funcCleanupRegistry()
            return
        end

        if waitingForUpdate then
            local currentCount = CountRelevantItems()
            if currentCount ~= lastItemCount then
                waitingForUpdate = false
                lastItemCount = currentCount
            else
                C_Timer.After(0.1, ProcessNext)
                return
            end
        end

        CheckInbox()
        local inboxCount = GetInboxNumItems()
        if mailIndex > inboxCount then
            if funcOnComplete then funcOnComplete(collectedItems, remainingNeeds) end
            funcCleanupRegistry()
            return
        end

        local _, _, _, _, money, moneyCOD, _, _, _, _, _, _, isGM = GetInboxHeaderInfo(mailIndex)
        if isGM or (moneyCOD and moneyCOD > 0) then
            mailIndex = mailIndex + 1
            C_Timer.After(0.1, ProcessNext)
            return
        end

        local tookSomething = false
        for attachIndex = 1, 12 do
            local itemName, itemID, texture, count = GetInboxItem(mailIndex, attachIndex)
            if itemName then
                local itemLink = GetInboxItemLink(mailIndex, attachIndex)
                if itemLink then
                    local itemID = tonumber(string.match(itemLink, "item:(%d+)"))
                    if itemID and remainingNeeds[itemID] and remainingNeeds[itemID] > 0 then
                        TakeInboxItem(mailIndex, attachIndex)

                        remainingNeeds[itemID] = remainingNeeds[itemID] - count
                        collectedItems[itemID] = (collectedItems[itemID] or 0) + count

                        tookSomething = true
                        waitingForUpdate = true

                        if money and money > 0 then TakeInboxMoney(mailIndex) end

                        C_Timer.After(0.3, ProcessNext)
                        return
                    end
                end
            end
        end

        if not tookSomething then
            mailIndex = mailIndex + 1
            C_Timer.After(0.1, ProcessNext)
        end
    end
    ProcessNext()
end