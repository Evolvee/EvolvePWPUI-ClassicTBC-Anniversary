--- @link https://warcraft.wiki.gg/wiki/World_of_Warcraft_API/Classic
local Call = EMC.CallAPI
local Utils = EMC.Utils
--local _EquipmentSet = C_EquipmentSet
Call._EquipmentSet = C_EquipmentSet
--local _Item = C_Item
Call._Item = C_Item
Call._GetInventoryItemID = GetInventoryItemID
Call._GetInventoryItemsForSlot = GetInventoryItemsForSlot

--- @return number[] equipmentSetIDs
--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.GetEquipmentSetIDs
function Call.GetEquipmentSetIDs()
    local result = Call._EquipmentSet.GetEquipmentSetIDs()
    if result == nil then return {} end
    return result
end

--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.GetEquipmentSetID
function Call.GetEquipmentSetID(equipmentSetName)
    return Call._EquipmentSet.GetEquipmentSetID(equipmentSetName)
end

--- @param equipmentSetID number
--- @return table equipmentSetInfo
--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.GetEquipmentSetInfo
function Call.GetEquipmentSetInfo(equipmentSetID)
    local info = {}
    info.name, info.iconFileID, info.setID, info.isEquipped, info.numItems, info.numEquipped, info.numInInventory, info.numLost, info.numIgnored = Call._EquipmentSet.GetEquipmentSetInfo(equipmentSetID)
    return info
end

--- @param equipmentSetID number
--- @return table of numbers indexed by inventorySlotID
--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.GetItemIDs
--- Note: Nil means "Empty Slot", '-1' means "Ignored Slot"
function Call.GetItemIDs(equipmentSetID)
    return Call._EquipmentSet.GetItemIDs(equipmentSetID)
end

--- @param itemID number
--- @return multiple values
--- @link https://warcraft.wiki.gg/wiki/API_GetItemInfo
function Call.GetItemInfo(itemID)
    return Call._Item.GetItemInfo(itemID)
end

--- @param itemID number
--- @return itemInfo table
--- @link https://warcraft.wiki.gg/wiki/API_GetItemInfo
function Call.GetItemInfoTable(itemID)
    local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expansionID, setID, isCraftingReagent = Call.GetItemInfo(itemID)
    return {
        itemID = itemID,
        itemName = itemName, 
        itemLink = itemLink, 
        itemQuality = itemQuality, 
        itemLevel = itemLevel, 
        itemMinLevel = itemMinLevel, 
        itemType = itemType, 
        itemSubType = itemSubType, 
        itemStackCount = itemStackCount, 
        itemEquipLoc = itemEquipLoc, 
        itemTexture = itemTexture, 
        sellPrice = sellPrice, 
        classID = classID, 
        subclassID = subclassID, 
        bindType = bindType, 
        expansionID = expansionID, 
        setID = setID, 
        isCraftingReagent = isCraftingReagent,
    }
end

--- @param equipmentSlot
--- @return itemID number
--- @link https://warcraft.wiki.gg/wiki/API_GetInventoryItemID
function Call.GetInventoryItemID(equipmentSlot)
    return Call._GetInventoryItemID("player", equipmentSlot)
end

function Call.GetItemLocations(equipmentSetID)
    return Call._EquipmentSet.GetItemLocations(equipmentSetID)
end

function Call.GetInventoryItemsForSlot(equipmentSlot)
    local returnTable = Call._GetInventoryItemsForSlot(equipmentSlot, {})
    return returnTable
end

--- @param equipmentSetID number
--- @return setWasEquiped bool
--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.UseEquipmentSet
function Call.UseEquipmentSet(equipmentSetID)
    if type(equipmentSetID) == "number" then
        return Call._EquipmentSet.UseEquipmentSet(equipmentSetID)
    else
        return false
    end
end


--- @param equipmentSetID number
--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.PickupEquipmentSet
function Call.PickupEquipmentSet(equipmentSetID)
    if equipmentSetID then
        Call._EquipmentSet.PickupEquipmentSet(equipmentSetID)
    end
end

--- @param equipmentSetName string
--- @param icon string? (iconTexture)
--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.CreateEquipmentSet
function Call.CreateEquipmentSet(equipmentSetName, icon)
    if equipmentSetName then
        Call._EquipmentSet.CreateEquipmentSet(equipmentSetName, icon)
    end
end

--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.ClearIgnoredSlotsForSave
function Call.ClearIgnoredSlotsForSave()
    Call._EquipmentSet.ClearIgnoredSlotsForSave()
end

--- @param slot number
--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.IgnoreSlotForSave
function Call.IgnoreSlotForSave(slot)
    Call._EquipmentSet.IgnoreSlotForSave(slot)
end

--- @param slot number
--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.UnignoreSlotForSave
function Call.UnignoreSlotForSave(slot)
    Call._EquipmentSet.UnignoreSlotForSave(slot)
end

--- @param equipmentSetID number
--- @param icon string?
--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.SaveEquipmentSet
function Call.SaveEquipmentSet(equipmentSetID, icon)
    if equipmentSetID ~= nil then
        Call._EquipmentSet.SaveEquipmentSet(equipmentSetID, icon)
    end
end

--- @param equipmentSetID number
--- @param newName string
--- @param newIcon string?
--- @link https://warcraft.wiki.gg/wiki/API_C_EquipmentSet.ModifyEquipmentSet
function Call.ModifyEquipmentSet(equipmentSetID, newName, newIcon)
    if equipmentSetID ~= nil and newName ~= nil then
        Call._EquipmentSet.ModifyEquipmentSet(equipmentSetID, newName, newIcon)
    end
end

function Call.IsSlotIgnoredForSave(slot)
    return Call._EquipmentSet.IsSlotIgnoredForSave(slot)
end
