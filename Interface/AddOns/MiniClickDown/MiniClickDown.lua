local addonName = ...
local frame = CreateFrame("Frame")
local overlays = {}
local maxButtonsCount = 12
local prefixes = {
	"ActionButton",
	"MultiBarBottomLeftButton",
	"MultiBarBottomRightButton",
	"MultiBarRightButton",
	"MultiBarLeftButton",
	"MultiBar5Button",
	"MultiBar6Button",
	"MultiBar7Button",
	"PetActionButton",
	"ShapeshiftButton",
	"BonusActionButton",
	"PossessButton",
}

local function IsSecureActionButton(btn)
	return btn and btn.GetAttribute and btn.SetAttribute and btn.RegisterForClicks
end

local function EnsureOverlay(btn)
	local existing = overlays[btn]

	if existing then
		return existing
	end

	local name = btn:GetName()
	if not name then
		return nil
	end

	local overlay = CreateFrame("Button", name .. "MouseDownOverlay", btn, "SecureActionButtonTemplate")
	overlay:SetAllPoints(btn)
	overlay:SetFrameLevel(btn:GetFrameLevel() + 10)
	overlay:EnableMouse(true)
	overlay:RegisterForClicks("AnyDown", "AnyUp")

	local function ApplyHoverVisuals(isOver)
		if btn.LockHighlight and btn.UnlockHighlight then
			if isOver then
				btn:LockHighlight()
			else
				btn:UnlockHighlight()
			end
		end

		local hl = btn.GetHighlightTexture and btn:GetHighlightTexture()
		if hl then
			if isOver then
				hl:Show()
			else
				hl:Hide()
			end
		end

		if btn.hoverTexture then
			if isOver then
				btn.hoverTexture:Show()
			else
				btn.hoverTexture:Hide()
			end
		end
	end

	overlay:SetScript("OnEnter", function()
		ApplyHoverVisuals(true)
	end)

	overlay:SetScript("OnLeave", function()
		ApplyHoverVisuals(false)
	end)

	overlays[btn] = overlay
	return overlay
end

local function ConfigureOverlay(btn)
	if not IsSecureActionButton(btn) then
		return
	end

	local overlay = EnsureOverlay(btn)
	if not overlay then
		return
	end

	if InCombatLockdown() then
		return
	end

	overlay:SetAttribute("type", "click")
	overlay:SetAttribute("typerelease", "click")
	overlay:SetAttribute("pressAndHoldAction", "1")
	overlay:SetAttribute("clickbutton", btn)
	overlay:Show()
end

local function UpdateAll()
	for _, prefix in ipairs(prefixes) do
		for i = 1, maxButtonsCount do
			local btn = _G[prefix .. i]
			if btn then
				EnsureOverlay(btn)
				ConfigureOverlay(btn)
			end
		end
	end
end

local function OnEvent(_, event, arg1)
	if event == "ADDON_LOADED" then
		if arg1 ~= addonName then
			return
		end

		-- Wait until the UI has fully built the action bars
		frame:RegisterEvent("PLAYER_LOGIN")
		return
	end

	if event == "PLAYER_LOGIN" then
		UpdateAll()
		return
	end

	if event == "PLAYER_REGEN_ENABLED" then
		frame:UnregisterEvent("PLAYER_REGEN_ENABLED")
		UpdateAll()
		return
	end

	if InCombatLockdown() then
		frame:RegisterEvent("PLAYER_REGEN_ENABLED")
		return
	end

	UpdateAll()
end

frame:RegisterEvent("ADDON_LOADED")

-- Bar change events
frame:RegisterEvent("ACTIONBAR_PAGE_CHANGED")
frame:RegisterEvent("ACTIONBAR_SLOT_CHANGED")
frame:RegisterEvent("UPDATE_BONUS_ACTIONBAR")
frame:RegisterEvent("UPDATE_OVERRIDE_ACTIONBAR")
frame:RegisterEvent("UPDATE_SHAPESHIFT_FORM")
frame:RegisterEvent("UPDATE_POSSESS_BAR")
frame:RegisterEvent("PET_BAR_UPDATE")
frame:RegisterEvent("UNIT_PET")

frame:SetScript("OnEvent", OnEvent)
