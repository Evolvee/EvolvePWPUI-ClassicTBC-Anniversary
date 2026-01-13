CasualTBCPrep.Professions = CasualTBCPrep.Professions or {}

CasualTBCPrep.Professions.MAX_PROF_LEVEL = 300
CasualTBCPrep.Professions.PROF = {
    ALCHEMY = 1,
    BLACKSMITHING = 2,
    COOKING = 3,
    ENCHANTING = 4,
    ENGINEERING = 5,
    FIRSTAID = 6,
    FISHING = 7,
    HERBALISM = 8,
    JEWELCRAFTING = 9,
    LEATHERWORKING = 10,
    MINING = 11,
    POISONS = 12,
    SKINNING = 13,
    TAILORING = 14,
    LOCKPICKING = 15,
}

---@param profID number
---@return boolean
function CasualTBCPrep.Professions.IsPrimaryProfession(profID)
    return profID == CasualTBCPrep.Professions.PROF.ALCHEMY or profID == CasualTBCPrep.Professions.PROF.BLACKSMITHING
        or profID == CasualTBCPrep.Professions.PROF.ENCHANTING or profID == CasualTBCPrep.Professions.PROF.ENGINEERING
        or profID == CasualTBCPrep.Professions.PROF.HERBALISM or profID == CasualTBCPrep.Professions.PROF.JEWELCRAFTING
        or profID == CasualTBCPrep.Professions.PROF.LEATHERWORKING or profID == CasualTBCPrep.Professions.PROF.MINING
        or profID == CasualTBCPrep.Professions.PROF.SKINNING or profID == CasualTBCPrep.Professions.PROF.TAILORING
end

---@param profID number
---@return boolean
function CasualTBCPrep.Professions.IsSecondaryProfession(profID)
    return profID == CasualTBCPrep.Professions.PROF.COOKING or profID == CasualTBCPrep.Professions.PROF.FIRSTAID
        or profID == CasualTBCPrep.Professions.PROF.FISHING or profID
end

---@param profID number
---@return boolean
function CasualTBCPrep.Professions.IsTertiaryProfession(profID)
    return profID == CasualTBCPrep.Professions.PROF.POISONS or profID == CasualTBCPrep.Professions.PROF.LOCKPICKING
end

---@return table,table,table
function CasualTBCPrep.Professions.GetPlayerProfessions(includeSecondary, includeTertiary)
    local primary,secondary,tertiary = {},nil,nil
    if includeSecondary == true then secondary = {} end
    if includeTertiary == true then tertiary = {} end

    for i=1,GetNumSkillLines() do
        local skillName,_,_,skillRank,_,_,skillMaxRank,_,_,_,_,_,skillDescription = GetSkillLineInfo(i)

        local profID = CasualTBCPrep.Locale.Professions.GetProfessionID(skillName)
        if profID ~= nil and profID > 0 then
            local profession = {
                id = profID,
                name = skillName,
                level = skillRank,
                maxLevel = skillMaxRank,
                isMaxSkill = skillRank == skillMaxRank,
                description = skillDescription
            }

            if CasualTBCPrep.Professions.IsPrimaryProfession(profID) == true then
                table.insert(primary, profession)
            elseif includeSecondary == true and CasualTBCPrep.Professions.IsSecondaryProfession(profID) == true then
                table.insert(secondary, profession)
            elseif includeTertiary == true and CasualTBCPrep.Professions.IsTertiaryProfession(profID) == true then
                table.insert(tertiary, profession)
            end
        end
    end
    return primary,secondary,tertiary
end