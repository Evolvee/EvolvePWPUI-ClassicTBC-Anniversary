CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.Integration.RXP = CasualTBCPrep.Integration.RXP or {}

function CasualTBCPrep.Integration.RXP.IsQuestAutomationOn()
    local rxp = LibStub("AceAddon-3.0"):GetAddon("RXPGuides", true)
    if rxp then return rxp.settings.profile.enableQuestAutomation or false end
    return false
end
function CasualTBCPrep.Integration.RXP.DisableAutoQuestCompletion()
    local rxp = LibStub("AceAddon-3.0"):GetAddon("RXPGuides", true)
    if rxp then
        rxp.settings.profile.enableQuestAutomation = false
    end
end