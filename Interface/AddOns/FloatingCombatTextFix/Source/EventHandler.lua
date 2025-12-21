local addonName, fctf = ...

fctf.frame:RegisterEvent("ADDON_LOADED")
fctf.frame:RegisterEvent("PLAYER_LOGOUT")

-- Runs the functions below once the addOn loads
function fctf.handleAddonLoaded(event, addon)
    if event == "ADDON_LOADED" and addon == addonName then
        fctf.enableCombatText()
        fctf.createSavedVariables()
        -- Delaying the options update ensures that the Blizzard_CombatText add-on has already implemented its changes
        C_Timer.After(1, fctf.updateInterfaceOptions)
        fctf.frame:UnregisterEvent("ADDON_LOADED")
    end
end

-- Saves current preferences when the user logs out or reloads the UI
function fctf.handleLogout(event)
    if event == "PLAYER_LOGOUT" then
        fctf.saveOptions()
    end
end
