
function EMC.Func:SaveSet(setName)
    if not EMC.Temp.Ignores then return end

    local iconFileID = EMC.Temp.iconFileID
    C_EquipmentSet.ClearIgnoredSlotsForSave()
    local id = C_EquipmentSet.GetEquipmentSetID(setName)
    
    for slot = 1, 19 do
        if EMC.Temp.Ignores[slot] then
            C_EquipmentSet.IgnoreSlotForSave(slot)
        end
    end
    if id ~= nil then
        C_Timer.After(1.00, function() C_EquipmentSet.SaveEquipmentSet(id, tostring(iconFileID)) end)
    else
        C_EquipmentSet.CreateEquipmentSet(setName, tostring(iconFileID))
    end
end
