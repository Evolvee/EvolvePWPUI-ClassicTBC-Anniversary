CasualTBCPrep.Skills = CasualTBCPrep.Skills or {}

CasualTBCPrep.Skills.MAX_SKILL_LEVEL = 300
CasualTBCPrep.Skills.SKILL = {
    UNARMED = 1,
    ONE_HANDED_SWORD = 2,
    ONE_HANDED_MACE = 3,
    ONE_HANDED_AXE = 4,
    TWO_HANDED_SWORD = 5,
    TWO_HANDED_MACE = 6,
    TWO_HANDED_AXE = 7,
    FIST = 8,
    DAGGER = 9,
    THROWN = 10,
    BOW = 11,
    CROSSBOW = 12,
    GUN = 13,
    STAFF = 14,
    POLEARM = 15,
    WAND = 16,
    DEFENSE = 17,
}

local weaponSkillTrainers = {
    [CasualTBCPrep.Faction.HORDE] = {
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_SWORD] = "The Undercity & Silvermoon City",
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_MACE] = "Thunder Bluff",
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_AXE] = "Orgrimmar",
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_SWORD] = "The Undercity & Silvermoon City",
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_MACE] = "Thunder Bluff",
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_AXE] = "Orgrimmar",
        [CasualTBCPrep.Skills.SKILL.FIST] = "Orgrimmar",
        [CasualTBCPrep.Skills.SKILL.DAGGER] = "Orgrimmar & The Undercity & Silvermoon City",
        [CasualTBCPrep.Skills.SKILL.THROWN] = "Orgrimmar",
        [CasualTBCPrep.Skills.SKILL.BOW] = "Orgrimmar & Silvermoon City",
        [CasualTBCPrep.Skills.SKILL.CROSSBOW] = "The Undercity & Silvermoon City",
        [CasualTBCPrep.Skills.SKILL.GUN] = "Thunder Bluff",
        [CasualTBCPrep.Skills.SKILL.STAFF] = "Orgrimmar & Thunder Bluff",
        [CasualTBCPrep.Skills.SKILL.POLEARM] = "The Undercity & Silvermoon City"
    },
    [CasualTBCPrep.Faction.ALLIANCE] = {
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_SWORD] = "Stormwind City & The Exordar",
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_MACE] = "Ironforge & The Exordar",
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_AXE] = "Ironforge",
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_SWORD] = "Stormwind City & The Exordar",
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_MACE] = "Ironforge & The Exordar",
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_AXE] = "Ironforge",
        [CasualTBCPrep.Skills.SKILL.FIST] = "Ironforge & Darnassus",
        [CasualTBCPrep.Skills.SKILL.DAGGER] = "Stormwind City & Ironforge & Darnassus & The Exordar",
        [CasualTBCPrep.Skills.SKILL.THROWN] = "Ironforge &Darnassus",
        [CasualTBCPrep.Skills.SKILL.BOW] = "Darnassus",
        [CasualTBCPrep.Skills.SKILL.CROSSBOW] = "Stormwind City & Ironforge & The Exordar",
        [CasualTBCPrep.Skills.SKILL.GUN] = "Ironforge",
        [CasualTBCPrep.Skills.SKILL.STAFF] = "Stormwind City & Darnassus",
        [CasualTBCPrep.Skills.SKILL.POLEARM] = "Stormwind City"
    }
}

local skillsToLearn = {
    [CasualTBCPrep.Classes.MageID] = {
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_SWORD] = true,
        [CasualTBCPrep.Skills.SKILL.DAGGER] = true,
        [CasualTBCPrep.Skills.SKILL.STAFF] = true
     },
    [CasualTBCPrep.Classes.WarriorID] = {
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_SWORD] = true,
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_MACE] = true,
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_AXE] = true,
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_SWORD] = true,
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_MACE] = true,
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_AXE] = true,
        [CasualTBCPrep.Skills.SKILL.FIST] = true,
        [CasualTBCPrep.Skills.SKILL.DAGGER] = true,
        [CasualTBCPrep.Skills.SKILL.THROWN] = true,
        [CasualTBCPrep.Skills.SKILL.BOW] = true,
        [CasualTBCPrep.Skills.SKILL.CROSSBOW] = true,
        [CasualTBCPrep.Skills.SKILL.GUN] = true,
        [CasualTBCPrep.Skills.SKILL.STAFF] = true,
        [CasualTBCPrep.Skills.SKILL.POLEARM] = true,
    },
    [CasualTBCPrep.Classes.PaladinID] = {
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_SWORD] = true,
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_MACE] = true,
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_AXE] = true,
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_SWORD] = true,
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_MACE] = true,
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_AXE] = true,
        [CasualTBCPrep.Skills.SKILL.POLEARM] = true,
    },
    [CasualTBCPrep.Classes.HunterID] = {
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_SWORD] = true,
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_AXE] = true,
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_SWORD] = true,
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_AXE] = true,
        [CasualTBCPrep.Skills.SKILL.DAGGER] = true,
        [CasualTBCPrep.Skills.SKILL.FIST] = true,
        [CasualTBCPrep.Skills.SKILL.BOW] = true,
        [CasualTBCPrep.Skills.SKILL.CROSSBOW] = true,
        [CasualTBCPrep.Skills.SKILL.GUN] = true,
        [CasualTBCPrep.Skills.SKILL.STAFF] = true,
        [CasualTBCPrep.Skills.SKILL.POLEARM] = true
    },
    [CasualTBCPrep.Classes.RogueID] = {
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_SWORD] = true,
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_MACE] = true,
        [CasualTBCPrep.Skills.SKILL.DAGGER] = true,
        [CasualTBCPrep.Skills.SKILL.FIST] = true,
        [CasualTBCPrep.Skills.SKILL.THROWN] = true,
        [CasualTBCPrep.Skills.SKILL.BOW] = true,
        [CasualTBCPrep.Skills.SKILL.CROSSBOW] = true,
        [CasualTBCPrep.Skills.SKILL.GUN] = true
    },
    [CasualTBCPrep.Classes.PriestID] = {
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_MACE] = true,
        [CasualTBCPrep.Skills.SKILL.DAGGER] = true,
        [CasualTBCPrep.Skills.SKILL.STAFF] = true
    },
    [CasualTBCPrep.Classes.ShamanID] = {
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_MACE] = true,
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_AXE] = true,
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_MACE] = true,
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_AXE] = true,
        [CasualTBCPrep.Skills.SKILL.DAGGER] = true,
        [CasualTBCPrep.Skills.SKILL.FIST] = true,
        [CasualTBCPrep.Skills.SKILL.STAFF] = true
    },
    [CasualTBCPrep.Classes.WarlockID] = {
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_SWORD] = true,
        [CasualTBCPrep.Skills.SKILL.DAGGER] = true,
        [CasualTBCPrep.Skills.SKILL.STAFF] = true
    },
    [CasualTBCPrep.Classes.DruidID] = {
        [CasualTBCPrep.Skills.SKILL.ONE_HANDED_MACE] = true,
        [CasualTBCPrep.Skills.SKILL.TWO_HANDED_MACE] = true,
        [CasualTBCPrep.Skills.SKILL.FIST] = true,
        [CasualTBCPrep.Skills.SKILL.DAGGER] = true,
        [CasualTBCPrep.Skills.SKILL.STAFF] = true
    },
}
local importantClassSkills = {
    [CasualTBCPrep.Classes.MageID] = {
        [CasualTBCPrep.Skills.SKILL.WAND] = { level=300, comment="You might need to wand..." },
        [CasualTBCPrep.Skills.SKILL.DEFENSE] = { level=300, comment="Gruul mechanic will one-shot you if you don't fix your defense. Yes, also as a caster" }
    },
    [CasualTBCPrep.Classes.PriestID] = {
        [CasualTBCPrep.Skills.SKILL.WAND] = { level=300, comment="You might need to wand..." },
        [CasualTBCPrep.Skills.SKILL.DEFENSE] = { level=300, comment="Gruul mechanic will one-shot you if you don't fix your defense. Yes, also as a caster" }
    },
    [CasualTBCPrep.Classes.WarlockID] = {
        [CasualTBCPrep.Skills.SKILL.WAND] = { level=300, comment="You might need to wand..." },
        [CasualTBCPrep.Skills.SKILL.DEFENSE] = { level=300, comment="Gruul mechanic will one-shot you if you don't fix your defense. Yes, also as a caster" }
    },
    [CasualTBCPrep.Classes.DruidID] = {
        [CasualTBCPrep.Skills.SKILL.DEFENSE] = { level=300, comment="Defense matters for physical AOE damage, like on Gruul." },
    },
    [CasualTBCPrep.Classes.RogueID] = {
        [CasualTBCPrep.Skills.SKILL.DEFENSE] = { level=300, comment="Defense matters for physical AOE damage, like on Gruul." },
        [CasualTBCPrep.Skills.SKILL.UNARMED] = { level=300, comment="For fist weapons & when you get disarmed" },
    },
    [CasualTBCPrep.Classes.HunterID] = {
        [CasualTBCPrep.Skills.SKILL.DEFENSE] = { level=300, comment="Defense matters for physical AOE damage, like on Gruul." },
    },
    [CasualTBCPrep.Classes.ShamanID] = {
        [CasualTBCPrep.Skills.SKILL.DEFENSE] = { level=300, comment="Defense matters for physical AOE damage, like on Gruul." },
        [CasualTBCPrep.Skills.SKILL.UNARMED] = { level=300, comment="Enhancement Spec - For fist weapons & when you get disarmed" },
    },
    [CasualTBCPrep.Classes.WarriorID] = {
        [CasualTBCPrep.Skills.SKILL.DEFENSE] = { level=300, comment="Defense matters for physical AOE damage, like on Gruul." },
        [CasualTBCPrep.Skills.SKILL.UNARMED] = { level=300, comment="For fist weapons & when you get disarmed" },
    },
    [CasualTBCPrep.Classes.PaladinID] = {
        [CasualTBCPrep.Skills.SKILL.DEFENSE] = { level=300, comment="Defense matters for physical AOE damage, like on Gruul." },
        [CasualTBCPrep.Skills.SKILL.UNARMED] = { level=300, comment="For when you get disarmed" },
    }
}

---@param skillID number
---@return boolean
function CasualTBCPrep.Skills.IsValidSkillID(skillID)
    return skillID == CasualTBCPrep.Professions.SKILL.ONE_HANDED_SWORD or skillID == CasualTBCPrep.Professions.SKILL.TWO_HANDED_SWORD
        or skillID == CasualTBCPrep.Professions.SKILL.ONE_HANDED_MACE or skillID == CasualTBCPrep.Professions.SKILL.TWO_HANDED_MACE
        or skillID == CasualTBCPrep.Professions.SKILL.ONE_HANDED_AXE or skillID == CasualTBCPrep.Professions.SKILL.TWO_HANDED_AXE
        or skillID == CasualTBCPrep.Professions.SKILL.FIST or skillID == CasualTBCPrep.Professions.SKILL.DAGGER
        or skillID == CasualTBCPrep.Professions.SKILL.THROWN or skillID == CasualTBCPrep.Professions.SKILL.GUN
        or skillID == CasualTBCPrep.Professions.SKILL.BOW or skillID == CasualTBCPrep.Professions.SKILL.CROSSBOW
        or skillID == CasualTBCPrep.Professions.SKILL.STAFF or skillID == CasualTBCPrep.Professions.SKILL.POLEARM
        or skillID == CasualTBCPrep.Professions.SKILL.DEFENSE or skillID == CasualTBCPrep.Professions.SKILL.WAND
        or skillID == CasualTBCPrep.Professions.SKILL.UNARMED
end

---@return table,table
function CasualTBCPrep.Professions.GetPlayerSkills()
    local toLearn,toSkillUp = {},{}

    local classID = CasualTBCPrep.Classes.GetPlayerClassID()
    local playerCurrentSkills = {}
    for i=1,GetNumSkillLines() do
        local skillName,_,_,skillRank,_,_,skillMaxRank,_,_,_,_,_,skillDescription = GetSkillLineInfo(i)

        local skillID = CasualTBCPrep.Locale.Skills.GetSkillIDFromName(skillName)

        if skillID ~= nil and skillID > 0 and CasualTBCPrep.Skills.IsValidSkillID(skillID) then
            local playerSkillData = {
                id = skillID,
                name = skillName,
                level = skillRank,
                maxLevel = skillMaxRank,
                isMaxSkill = skillRank == skillMaxRank,
                description = skillDescription
            }
            playerCurrentSkills[skillID] = playerSkillData
        end
    end

    -- TODO TEST
    -- print(WOW_PROJECT_ID)
    -- print(WOW_PROJECT_CLASSIC)
    -- print(WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
    local skillList = skillsToLearn[classID]
    if skillList and #skillList > 0 then
        for skillID,skill in pairs(skillList) do
            local playerSkillData = playerCurrentSkills[skillID]
            if playerSkillData == nil then
                
            else

            end
        end
    end

    return toLearn,toSkillUp
end