CasualTBCPrep.Faction = CasualTBCPrep.Faction or {}

CasualTBCPrep.Faction.HORDE = 1
CasualTBCPrep.Faction.HORDENAME = "Horde"
CasualTBCPrep.Faction.ALLIANCE = 2
CasualTBCPrep.Faction.ALLIANCENAME = "Alliance"

---@return number,string,string
function CasualTBCPrep.Faction.GetPlayerFactionID()
    local facID = 0

    local factionTag, localizedFactionName = UnitFactionGroup("player")
    if "Horde" == factionTag then
        facID = 1
    elseif "Alliance" == factionTag then
        facID = 2
    else
        CasualTBCPrep.NotifyUserError("Unknown faction: "..factionTag..", using NEUTRAL(0) instead")
    end
    return facID, factionTag, localizedFactionName
end