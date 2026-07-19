local frame = CreateFrame("Frame")
local myName = UnitName("player")

local units = {
    target = true,
    focus = true,
}

for i = 1, 5 do
    units["arena"..i] = true
    units["arenapet"..i] = true
end

-- 1. Whitelist the specific spells and map them to their event suffixes
local trackedSpells = {
    ["Polymorph"] = "POLYMORPH",
    ["Fear"]        = "FEAR",
    ["Cyclone"]     = "CYCLONE",
    ["Mana Burn"]   = "MANA_BURN"
}

-- 2. Track what spell is currently being cast by a unit to fire the correct hide event later
local activeCasts = {}

frame:RegisterEvent("UNIT_SPELLCAST_START")
frame:RegisterEvent("UNIT_SPELLCAST_STOP")
frame:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED")
frame:RegisterEvent("UNIT_SPELLCAST_FAILED")
frame:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START")
frame:RegisterEvent("UNIT_SPELLCAST_CHANNEL_STOP")

frame:SetScript("OnEvent", function(self, event, unit)

    if not units[unit] then
        return
    end

    --------------------------------------------------
    -- Hide events
    --------------------------------------------------

    if event == "UNIT_SPELLCAST_STOP"
    or event == "UNIT_SPELLCAST_INTERRUPTED"
    or event == "UNIT_SPELLCAST_FAILED"
    or event == "UNIT_SPELLCAST_CHANNEL_STOP" then

        -- Check if this unit was casting one of our tracked spells
        local spellSuffix = activeCasts[unit]
        if spellSuffix then
            -- Send the specific hide event (e.g., EVOLVE_ALERT_HIDE_POLYMORPH)
            WeakAuras.ScanEvents("EVOLVE_ALERT_HIDE_" .. spellSuffix, unit)
            -- Clear the tracker for this unit
            activeCasts[unit] = nil
        end
        return
    end

    --------------------------------------------------
    -- Start events
    --------------------------------------------------

    local targetName = UnitSpellTargetName(unit)

    if targetName ~= myName then
        return
    end

    local spellName, _, icon, startMS, endMS, _, _, notInterruptible = UnitCastingInfo(unit)

    if not spellName then
        spellName, _, icon, startMS, endMS, _, notInterruptible = UnitChannelInfo(unit)

        if not spellName then
            return
        end
    end

    -- Look up the spell in our whitelist
    local spellSuffix = trackedSpells[spellName]

    -- If it's one of the 4 spells, fire the start event and track it
    if spellSuffix then
        activeCasts[unit] = spellSuffix

        WeakAuras.ScanEvents(
            "EVOLVE_ALERT_" .. spellSuffix,
            unit,
            spellName,
            icon,
            startMS,
            endMS,
            notInterruptible
        )
    end

end)