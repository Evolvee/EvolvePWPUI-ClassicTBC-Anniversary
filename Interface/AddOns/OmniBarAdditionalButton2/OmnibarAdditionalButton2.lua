local OABframe2

OABframe2 = CreateFrame("Button", "OBframe", UIParent, "UIPanelButtonTemplate")
OABframe2:SetClampedToScreen(true)
OABframe2:EnableMouse(true)
OABframe2:SetAlpha(0.1)
OABframe2:SetSize(10, 10)
OABframe2:SetPoint("TOPLEFT", 0, 0) -- position it wherever u want FeelsOkayMan
OABframe2:RegisterForClicks("RightButtonUp", "LeftButtonUp");
OABframe2:RegisterEvent("PLAYER_ENTERING_WORLD")
OABframe2:SetScript("OnEvent", function(self, event, ...)
	SetCVar("WorldTextMinSize", 5)
	SetCVar("UnitNameOwn", 1)
	SetCVar("UnitNameFriendlyPlayerName", 1)
end)

OABframe2:SetScript("OnClick", function(self)
        if GetCVar("UnitNameOwn") == "1" then
            SetCVar("WorldTextMinSize", 64)
			SetCVar("UnitNameOwn", 0)
			SetCVar("UnitNameFriendlyPlayerName", 0)
			ChatFrame1:AddMessage("Large Player Names - ON", 1, 0, 0)
        else
            SetCVar("WorldTextMinSize", 5)
			SetCVar("UnitNameOwn", 1)
			SetCVar("UnitNameFriendlyPlayerName", 1)
			ChatFrame1:AddMessage("Large Player Names - OFF", 0, 0.8, 1)
        end
end)