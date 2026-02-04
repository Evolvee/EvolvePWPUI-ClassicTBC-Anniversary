CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.BankInteraction = CasualTBCPrep.BankInteraction or {}

function PutItemInBags(bagContents)
    if not CursorHasItem() then return end
    for bag = 0, NUM_BAG_SLOTS do
        if not bagContents[bag] then bagContents[bag] = {} end
        local freeSlots, bType = C_Container.GetContainerNumFreeSlots(bag)
        if bType == 0 and freeSlots > 0 then
            for slot = 1, C_Container.GetContainerNumSlots(bag) do
                if not (C_Container.GetContainerItemInfo(bag, slot) or bagContents[bag][slot]) then
                    C_Container.PickupContainerItem(bag, slot)
                    bagContents[bag][slot] = true
                    return
                end
            end
        end
    end
    ClearCursor()
end

---@param itemsNeeded table
---@param funcOnNotify function|nil
---@param funcOnComplete function|nil
function CasualTBCPrep.BankInteraction.TryGetItemsFromBank(itemsNeeded, funcOnNotify, funcOnComplete)
    if not itemsNeeded or #itemsNeeded == 0 then
        if funcOnComplete then funcOnComplete(0, 0) end
        return
    end

    local itemsCollected,itemsMissing = 0,0
    local remaining = {}
    for _,item in ipairs(itemsNeeded) do
        table.insert(remaining, {itemID = item.itemID, count = item.count})
    end

    if funcOnNotify then
        local totalNeeded = 0
        for _,item in ipairs(remaining) do
            totalNeeded = totalNeeded + item.count
        end
        funcOnNotify("Trying to withdraw " .. totalNeeded .. " items from bank...")
    end

    local bank = {BANK_CONTAINER or -1}
    for i = (NUM_BAG_SLOTS or 4) + 1, (NUM_BAG_SLOTS or 4) + (NUM_BANKBAGSLOTS or 6) do
        table.insert(bank, i)
    end

    local bagContents = {}
    for _, bag in pairs(bank) do
        local slotCount = C_Container.GetContainerNumSlots(bag) or 0
        for slot = 1, slotCount do
            local itemLink = C_Container.GetContainerItemLink(bag, slot)
            if itemLink then
                local itemID = tonumber(string.match(itemLink, "item:(%d+)"))

                for _, needed in ipairs(remaining) do
                    if itemID == needed.itemID and needed.count > 0 then
                        local itemInfo = C_Container.GetContainerItemInfo(bag, slot)
                        local stackCount = itemInfo.stackCount or 1
                        local toTake = math.min(needed.count, stackCount)

                        C_Container.PickupContainerItem(bag, slot)
                        PutItemInBags(bagContents)

                        needed.count = needed.count - toTake
                        itemsCollected = itemsCollected + toTake

                        if funcOnNotify then funcOnNotify("Collected " .. toTake .. "x " .. itemLink) end
                        break
                    end
                end
            end
        end
    end

    for _, needed in ipairs(remaining) do
        if needed.count > 0 then
            itemsMissing = itemsMissing + needed.count

            local itemName = CasualTBCPrep.Items.GetCachedItemName(needed.itemID)
            CasualTBCPrep.NotifyUserCompanion("Missing from bank: "..needed.count.."x "..(itemName or ("Item "..needed.itemID)))
        end
    end

    if funcOnComplete then
        funcOnComplete(itemsCollected, itemsMissing)
    end
end