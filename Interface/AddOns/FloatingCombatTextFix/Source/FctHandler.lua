local _, fctf = ...
local L = fctf.L

-- Turns FCT on or off depending on "state"
local function changeFctState(state, message)
    SetCVar("enableFloatingCombatText", state)
    print(message)
end

local function isFctEnabled()
    return GetCVar("enableFloatingCombatText") == "1"
end

-- If the FCT is disabled on login, enables it
function fctf.enableCombatText()
    if not isFctEnabled() then
        changeFctState("1", L.fctNowEnabled[fctf.locale])
    else
        print(L.fctEnabled[fctf.locale])
    end
end

-- Checks if the value is not already enabled / disabled for options that are not "floatingCombatTextFloatMode"
local function shouldChangeOption(option, value)
    return option ~= fctf.fctOptions.floatMode and GetCVar(option) == value
end

local function toggleFct()
    if isFctEnabled() then
        changeFctState("0", L.fctDisabled[fctf.locale])
    else
        changeFctState("1", L.fctEnabled[fctf.locale])
    end
end

-- Enables all options related to FCT
local function enableAll()
    for key, option in pairs(fctf.fctOptions) do
        if shouldChangeOption(option, "0") then
            SetCVar(option, "1")
        end
    end
    print(L.optionsEnabled[fctf.locale])
end

local function disableAll()
    for key, option in pairs(fctf.fctOptions) do
        if shouldChangeOption(option, "1") then
            SetCVar(option, "0")
        end
    end
    print(L.optionsDisabled[fctf.locale])
end

-- Updates the FCT options based on the user's preferences
function fctf.updateInterfaceOptions()
    for key, option in pairs(fctf.fctOptions) do
        SetCVar(option, fctPreferences[key])
    end
end

-- Creates the base chat command /fct with optional arguments
SLASH_FCTFIX1 = "/fct"
SlashCmdList["FCTFIX"] = function(cmd)
    local command = strlower(cmd)
    if command == "" or command == nil then
        toggleFct()
    elseif command == "enable" or command == "e" then
        enableAll()
    elseif command == "disable" or command == "d" then
        disableAll()
    end
end
