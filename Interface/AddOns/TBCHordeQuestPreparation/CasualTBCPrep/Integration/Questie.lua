CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.Integration.Questie = CasualTBCPrep.Integration.Questie or {}

function CasualTBCPrep.Integration.Questie.IsQuestAutoCompleteOn()
    local questie = LibStub("AceAddon-3.0"):GetAddon("Questie", true)
    if questie then return questie.db.profile.autocomplete or false end
    return false
end
function CasualTBCPrep.Integration.Questie.DisableAutoQuestCompletion()
    local questie = LibStub("AceAddon-3.0"):GetAddon("Questie", true)
    if questie then
        questie.db.profile.autocomplete = false --questie.db.profile.autoAccept.enabled
    end
end