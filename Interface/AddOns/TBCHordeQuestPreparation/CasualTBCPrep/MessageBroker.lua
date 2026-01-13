CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.MessageBroker = CasualTBCPrep.MessageBroker or {}

CasualTBCPrep.MessageBroker.TYPE = {
    ADDON_LOADED = 1,
    QUEST_ACCEPTED = 2,
    QUEST_LOG_UPDATE = 3,
    BAG_OR_INVENTORY_UPDATE = 4,
    ON_TALK_TO_FLIGHT = 5,
    ZONE_CHANGED = 6,
    MAILBOX_INTERACT = 7,
    BANK_INTERACT = 8,
    ROUTE_CHANGED = 9
}
setmetatable(CasualTBCPrep.MessageBroker.TYPE, {
    __newindex = function(table, key, value)
        error("Cannot modify CasualTBCPrep.MessageBroker.TYPE")
    end,
    __metatable = false
})

local _registry = {}
local _nextUniqueID = 1

---@param type integer
---@param func function
function CasualTBCPrep.MessageBroker.Register(type, func)
    if not type or not func then return 0 end

    if not _registry[type] then
        _registry[type] = {}
    end

    local myID = _nextUniqueID
    _nextUniqueID = _nextUniqueID + 1

    _registry[type][myID] = func

    return myID
end

---@param type integer
---@param uniqueRegistryID integer
function CasualTBCPrep.MessageBroker.Unregister(type, uniqueRegistryID)
    if not type or not uniqueRegistryID then return end

    if _registry[type] then
        _registry[type][uniqueRegistryID] = nil
    end
end

---@param type integer
---@param data table|nil
function CasualTBCPrep.MessageBroker.Send(type, data)
    if not type then return end

    if _registry[type] then
        for id, func in pairs(_registry[type]) do
            local success,output = pcall(func, data)
            if success == true then
                -- Output has any returned data here, just ignore
            else
                CasualTBCPrep.NotifyUserError("MessageBroker error for id="..tostring(id)..": "..tostring(output))
            end
        end
    end
end

---@param type integer
function CasualTBCPrep.MessageBroker.Clear(type)
    if type then
        _registry[type] = nil
    end
end

function CasualTBCPrep.MessageBroker.ClearAll()
    _registry = {}
end