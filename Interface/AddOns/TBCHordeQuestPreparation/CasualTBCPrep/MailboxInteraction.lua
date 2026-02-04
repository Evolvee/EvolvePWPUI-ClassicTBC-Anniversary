CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.MailboxInteraction = CasualTBCPrep.MailboxInteraction or {}

function CasualTBCPrep.MailboxInteraction.TryGetItemsFromMailbox(itemsNeeded, funcOnComplete)
    if itemsNeeded == nil or next(itemsNeeded) == nil then
        if funcOnComplete then funcOnComplete({}, {}) end
        return
    end

    local remainingNeeds, collectedItems = {},{}
    for itemID, item in pairs(itemsNeeded) do
        remainingNeeds[itemID] = item.count
    end

    local isCancelled = false
    local isProcessing = false
    local emptyScansInARow = 0

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

    local function ProcessNext()
        if isCancelled or isProcessing then return end

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

        if emptyScansInARow >= 5 then
            if funcOnComplete then funcOnComplete(collectedItems, remainingNeeds) end
            funcCleanupRegistry()
            return
        end

        isProcessing = true
        CheckInbox()
        
        C_Timer.After(0.3, function()
            if isCancelled then
                isProcessing = false
                return 
            end
            
            local inboxCount = GetInboxNumItems()
            
            if inboxCount == 0 then
                isProcessing = false
                if funcOnComplete then funcOnComplete(collectedItems, remainingNeeds) end
                funcCleanupRegistry()
                return
            end
            local foundAndTookItem = false
            for mailIdx = 1, inboxCount do
                if foundAndTookItem then break end
                
                local _, _, _, _, money, moneyCOD, _, _, _, _, _, _, isGM = GetInboxHeaderInfo(mailIdx)
                
                if not isGM and (not moneyCOD or moneyCOD == 0) then
                    for attachIdx = 1, 12 do
                        local itemName, _, _, count = GetInboxItem(mailIdx, attachIdx)
                        if itemName then
                            local itemLink = GetInboxItemLink(mailIdx, attachIdx)
                            if itemLink then
                                local itemID = tonumber(string.match(itemLink, "item:(%d+)"))
                                
                                if itemID and remainingNeeds[itemID] and remainingNeeds[itemID] > 0 then
                                    TakeInboxItem(mailIdx, attachIdx)
                                    
                                    remainingNeeds[itemID] = remainingNeeds[itemID] - count
                                    collectedItems[itemID] = (collectedItems[itemID] or 0) + count
                                    
                                    if money and money > 0 then 
                                        TakeInboxMoney(mailIdx)
                                    end
                                    
                                    foundAndTookItem = true
                                    emptyScansInARow = 0
                                    break
                                end
                            end
                        end
                    end
                end
            end

            if foundAndTookItem then
                C_Timer.After(0.6, function()
                    isProcessing = false
                    ProcessNext()
                end)
            else
                emptyScansInARow = emptyScansInARow + 1
                C_Timer.After(0.5, function()
                    isProcessing = false
                    ProcessNext()
                end)
            end
        end)
    end
    ProcessNext()
end