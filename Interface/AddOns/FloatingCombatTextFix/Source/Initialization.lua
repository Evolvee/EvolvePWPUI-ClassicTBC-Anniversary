local _, fctf = ...
-- fctf: Globals within Floating Combat Text Fix
fctf.frame = CreateFrame("Frame")
fctf.locale = GetLocale()
fctf.L = {} -- Localized text
fctf.fctOptions = {
    floatMode = "floatingCombatTextFloatMode",
    lowManaHealth = "floatingCombatTextLowManaHealth",
    auras = "floatingCombatTextAuras",
    fadingAuras = "floatingCombatTextAuraFade",
    combatState = "floatingCombatTextCombatState",
    miss = "floatingCombatTextDodgeParryMiss",
    damageReduct = "floatingCombatTextDamageReduction",
    reputation = "floatingCombatTextRepChanges",
    reactives = "floatingCombatTextReactives",
    healerNames = "floatingCombatTextFriendlyHealers",
    comboPoints = "floatingCombatTextComboPoints",
    energyGains = "floatingCombatTextEnergyGains",
    honorGains = "floatingCombatTextHonorGains",
    damage = "floatingCombatTextCombatDamage",
    damagePeriod = "floatingCombatTextCombatLogPeriodicSpells",
    damagePet = "floatingCombatTextPetMeleeDamage",
    healing = "floatingCombatTextCombatHealing"
}

-- Updates the user's FCT options in SavedVariables
function fctf.saveOptions()
    for key, option in pairs(fctf.fctOptions) do
        fctPreferences[key] = GetCVar(option)
    end
end

-- Creates the user's preferences table to be stored in SavedVariables
function fctf.createSavedVariables()
    if not fctPreferences then
        fctPreferences = {}
        fctf.saveOptions()
    end
end
