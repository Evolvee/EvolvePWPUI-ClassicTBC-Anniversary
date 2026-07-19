-- Ever since the dogshit patch 2.5.6, these CVars no longer take any effect in the game despite being set in Congif.wtf already and they have to be re-entered every time... fuck you Blizzard piece of shit company

local frame = CreateFrame("Frame")

local function SetMyCVars()
    C_CVar.SetCVar("rawMouseEnable", "1")
    C_CVar.SetCVar("enableMouseSpeed", "1")
    C_CVar.SetCVar("mouseSpeed", "0.69999998807907")
	C_CVar.SetCVar("cameraPitchMoveSpeed", "180")
	C_CVar.SetCVar("cameraYawSmoothSpeed", "360")
	C_CVar.SetCVar("cameraYawMoveSpeed", "360")
	C_CVar.SetCVar("TurnSpeed", "235")
end

local function OnEvent(self, event, isInitialLogin, isReloading)
    if isInitialLogin or isReloading then
        -- Wait 1 second after entering the world before setting CVars
        C_Timer.After(1, SetMyCVars)
    end
end

frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", OnEvent)