--- @link https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0
--- @link https://www.wowace.com/projects/ace3/pages/api/ace-event-3-0

function EMC:OnInitialize()
    -- Slashcommands
    self:RegisterChatCommand("emc", "CLIHandler");
    --EMC:Print(CharacterFrame:GetSize())
end

function EMC:OnEnable()
    self:RegisterEvent("EQUIPMENT_SWAP_FINISHED", "OnEquipmentSwapFinished")
    self:RegisterEvent("EQUIPMENT_SETS_CHANGED", "OnEquipmentSetsChanged")
    self:RegisterEvent("PLAYER_ENTERING_WORLD", "OnPlayerEnteringWorld")
end

function EMC:OnDisable()
    self:UnregisterEvent("EQUIPMENT_SWAP_FINISHED")
    self:UnregisterEvent("EQUIPMENT_SETS_CHANGED")
    self:UnregisterEvent("PLAYER_ENTERING_WORLD")
end


-- EVENTS
function EMC:OnEquipmentSetsChanged(event)
    if event ~= "EQUIPMENT_SETS_CHANGED" then return end
    self:Print("An EquipmentSet was changed")
    self.Flag.hasEquipmentSetsChanged = true
end


function EMC:OnEquipmentSwapFinished(event, result, setID)
    if event ~= "EQUIPMENT_SWAP_FINISHED" then return end
    local name = C_EquipmentSet.GetEquipmentSetInfo(setID)
    --[===[@debug@
    if EMC.debugMode then
        if result then
        self:Print("Swapped to \"" .. tostring(name) .. "\" (" .. setID .. ")");
        else
        self:Print("Failed Swap to \"" .. tostring(name).. "\" (".. setID .. ")");
        end
    end
    --@end-debug@]===]
end

function EMC:OnPlayerEnteringWorld(event, isLogin, isReload)
    --- TODO implement own handling of ignored slots for tooltip
    --- until player has relogged.
    if event ~= "PLAYER_ENTERING_WORLD" then return end
    if isLogin then
        self:Print("use /emc to open window")
        -- Clear global string for addon
    elseif isReload then
        self:Print("use /emc to open window (relog is needed for ignored slots to be updated properly)")
        -- Load global string for addon
    end
end
