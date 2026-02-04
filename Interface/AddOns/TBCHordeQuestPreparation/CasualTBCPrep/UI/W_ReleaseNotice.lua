CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.W_ReleaseNotice = CasualTBCPrep.W_ReleaseNotice or {}

local w_window_name = "CasualTBCPrep_W_WarningNotice"

---@class Frame|nil
local wReleaseNotice = nil;

---@return FontString
local function CreateString(text, font, relativeTo, anchor, anchorPoint, xOffset, yOffset, clr, hori, verti)
	local txt = wReleaseNotice:CreateFontString(nil, "OVERLAY", font)
	txt:SetPoint(relativeTo, anchor, anchorPoint, xOffset, yOffset)
    txt:SetText(text)
	txt:SetWidth(495)
    if clr == nil then
	    txt:SetTextColor(1, 0.82, 0)
    else
        txt:SetTextColor(clr.r, clr.g, clr.b)
    end
    if hori ~= nil then
	    txt:SetJustifyH(hori)
    end
    if verti ~= nil then
	    txt:SetJustifyV(verti)
    end
	txt:SetWordWrap(true)
    return txt
end

local function Display()
    local clr = { r=0.3, g=0.77, b=0.55 }
    local clrHdr = { r=0.4, g=0.57, b=0.15 }
    local txtComing = CreateString("TBC is around the corner!", "GameFontNormalSmall", "TOP", wReleaseNotice.txtRead, "BOTTOM", 0, -10, clr, "CENTER", nil)

    local txtHeader = CreateString("Reminders:", "GameFontNormal", "LEFT", wReleaseNotice, "TOPLEFT", 9, -80, clrHdr, "LEFT", nil)
    local txt = CreateString("1. Go to Step 1 in 'Quests Part 1' of your chosen RXP guide and run through all steps.\r    We have made many changes & additions to the quest prep!", "GameFontNormalSmall", "TOPLEFT", txtHeader, "BOTTOMLEFT", 2, -4, clr, "LEFT", nil)
    txt = CreateString("2. Check that you have all flightpaths in the extras tab!\r    New ones were added with prepatch.", "GameFontNormalSmall", "TOPLEFT", txt, "BOTTOMLEFT", 0, -8, clr, "LEFT", nil)
    txt = CreateString("3. Your hearthstone should already be set!\r    Check the first step of your turnin guide to see where you need to set it to.", "GameFontNormalSmall", "TOPLEFT", txt, "BOTTOMLEFT", 0, -8, clr, "LEFT", nil)

    txt = CreateString("4. Make sure you have room in your bags (40+ open slots).\r    Mail your consumables and pick them up at Stonard or Thrallmar!", "GameFontNormalSmall", "TOPLEFT", txt, "BOTTOMLEFT", 0, -8, clr, "LEFT", nil)
    txt = CreateString("5. Check that you marked all items as 'on an alt/mailbox' to use the companion.\r    |cFFFF1C26IT WILL NOT WORK WITHOUT!|r", "GameFontNormalSmall", "TOPLEFT", txt, "BOTTOMLEFT", 0, -8, clr, "LEFT", nil)
    txt = CreateString("6. Check that all your BoE items are in your mail, and all BoP items are in your bank.\r    It's your character, you should double check this!", "GameFontNormalSmall", "TOPLEFT", txt, "BOTTOMLEFT", 0, -8, clr, "LEFT", nil)

    txt = CreateString("7. On launch, remember to disable all the warnings in the /tbc settings tab.", "GameFontNormalSmall", "TOPLEFT", txt, "BOTTOMLEFT", 0, -8, clr, "LEFT", nil)
    txt = CreateString("8. Also on launch, remember to turn on the RXP Quest AutoAccept/Complete feature.", "GameFontNormalSmall", "TOPLEFT", txt, "BOTTOMLEFT", 0, -8, clr, "LEFT", nil)

    txtHeader = CreateString("We sacrificed a character to test the 'Main/Group' route.\rYou can see the run edited together here.", "GameFontNormal", "BOTTOM", wReleaseNotice, "BOTTOM", 0, 45, clrHdr, "CENTER", nil)

    txt = CreateString("Remind your friends to update the addon. We made a lot of bugfixes in this version.", "GameFontNormalSmall", "BOTTOM", txtHeader, "TOP", 0, 24, clr, "CENTER", nil)
    txt:SetTextColor(0.9,0.9,0.9)
    txt = CreateString("You can open this window again with '/tbc release'", "GameFontNormalSmall", "TOP", txt, "BOTTOM", 0, -1, clr, "CENTER", nil)
    txt:SetTextColor(0.9,0.9,0.9)

    local youtubeLink = "https://youtu.be/c7443D-OnHw"
	local editBox = CreateFrame("EditBox", nil, wReleaseNotice, "InputBoxTemplate")
	editBox:SetPoint("TOP", txtHeader, "BOTTOM", 0, -8)
	editBox:SetSize(320, 20)
	editBox:SetFontObject(GameFontNormalSmall)
	editBox:SetAutoFocus(false)
	editBox:SetJustifyH("CENTER")
	editBox:SetJustifyV("TOP")
    editBox:SetText(youtubeLink)
    editBox:SetTextColor(0.9,0.9,0.9)
end

--@param type string|nil
local function Create()
	local w,h = 500,435
	wReleaseNotice = CreateFrame("Frame", w_window_name, UIParent, "PortraitFrameTemplate")
	wReleaseNotice:SetSize(w, h);
	wReleaseNotice:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	wReleaseNotice:EnableMouse(true)
	wReleaseNotice:SetMovable(true)
	wReleaseNotice:RegisterForDrag("LeftButton")
	wReleaseNotice:SetScript("OnDragStart", function(self) self:StartMoving() end)
	wReleaseNotice:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)

	-- Place in the front above other UI/addons
	wReleaseNotice:SetFrameStrata("FULLSCREEN_DIALOG")
	wReleaseNotice:SetFrameLevel(1000)

	--[Title]
	wReleaseNotice.Inset = CreateFrame("Frame", nil, wReleaseNotice, "InsetFrameTemplate")
	wReleaseNotice.Inset:SetPoint("TOPLEFT", wReleaseNotice, "TOPLEFT", 4, -55)
	wReleaseNotice.Inset:SetPoint("BOTTOMRIGHT", wReleaseNotice, "BOTTOMRIGHT", -4, 4)

	wReleaseNotice.title = wReleaseNotice:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	wReleaseNotice.title:SetPoint("TOP", wReleaseNotice, "TOP", 0, -1)
	wReleaseNotice.title:SetText("TBC Prep - Release Notice")
	wReleaseNotice.title:SetHeight(22)
	wReleaseNotice.title:SetJustifyH("CENTER")
	wReleaseNotice.title:SetJustifyV("MIDDLE")

    wReleaseNotice.txtRead = CreateString("PLEASE READ", "GameFontNormalHuge3Outline", "TOP", wReleaseNotice, "TOP", 0, -28, nil, "CENTER", nil)
    wReleaseNotice.txtRead:SetTextColor(1,0.11,0.15)
	SetPortraitToTexture(wReleaseNotice.portrait, CasualTBCPrep.AddonLogoTexture)
	
    Display()
    --[QoL]
	wReleaseNotice:SetScript("OnShow", function() CasualTBCPrep.Sounds.PlaySound_RaidWarning() end)
	wReleaseNotice:SetScript("OnHide", function() CasualTBCPrep.Sounds.PlaySound_Click() end)
	wReleaseNotice:Hide();
	wReleaseNotice:Show();
end

function CasualTBCPrep.W_ReleaseNotice.Show()

	if wReleaseNotice == nil then

		Create()
		if wReleaseNotice == nil then
			return
		end
	end

	if not wReleaseNotice:IsShown() then
		wReleaseNotice:Show()
	end
end