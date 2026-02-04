local _, fctf = ...

-- Turns FCT on or off depending on "state"
local function changeFctState(state, message)
    SetCVar("enableFloatingCombatText", state)
    if message ~= nil then
        print(message)
    end
end

local function isFctEnabled()
    return fctf.getCurrentFctState() == "1"
end

function fctf.toggleFct()
    if isFctEnabled() then
        changeFctState("0", fctf.getLocalizedText("fctDisabled"))
    else
        changeFctState("1", fctf.getLocalizedText("fctEnabled"))
    end
end

-- local function updateFctOptionIfNeeded(option, targetValue)
--     if GetCVar(option) ~= targetValue then
--         SetCVar(option, targetValue)
--     end
-- end

-- Enables all options related to FCT
-- function fctf.enableAllFctOptions()
--     for key, option in pairs(fctf.fctOptions) do
--         if option ~= fctf.fctOptions.floatMode then
--             updateFctOptionIfNeeded(option, "1")
--         end
--     end
--     print(fctf.getLocalizedText("optionsEnabled"))
-- end

-- function fctf.disableAllFctOptions()
--     for key, option in pairs(fctf.fctOptions) do
--         if option ~= fctf.fctOptions.floatMode then
--             updateFctOptionIfNeeded(option, "0")
--         end
--     end
--     print(fctf.getLocalizedText("optionsDisabled"))
-- end

local function getFctStatusMessage(lastFctState)
    if lastFctState == "0" then
        return fctf.getLocalizedText("fctDisabled")
    else
        return fctf.getLocalizedText("fctEnabled")
    end
end

local function updateFctStatus()
    local restoreLastFctState = fctfPreferences["rememberLastFctState"]
    local lastFctState = fctfPreferences["lastFctState"]
    local message = getFctStatusMessage(lastFctState)
    if restoreLastFctState == true then -- Restores the FCT state from last log off
        changeFctState(lastFctState)
    elseif restoreLastFctState ~= true and not isFctEnabled() then
        changeFctState("1")
        message = fctf.getLocalizedText("fctNowEnabled")
    end
    return message
end

-- Updates the FCT options based on the user's preferences on log in / reload
function fctf.applyUserPreferences()
    for key, option in pairs(fctf.fctOptions) do
        SetCVar(option, fctfPreferences[key])
    end
    local shouldDisplayFctStatusMessage = fctfPreferences["displayFctStatusMessageOnLogin"] ~= false
    local fctStatusMessage = updateFctStatus()
    if shouldDisplayFctStatusMessage then
        print(fctStatusMessage)
    end
end
