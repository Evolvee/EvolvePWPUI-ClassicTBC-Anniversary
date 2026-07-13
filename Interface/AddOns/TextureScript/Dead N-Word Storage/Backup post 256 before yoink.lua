TS_FinalValue = setmetatable({}, { __mode = "k" })

--EVOLVE PWP UI

local UnitCastingInfo, UnitChannelInfo = UnitCastingInfo, UnitChannelInfo
local np = {}
local inArena = false
local string_split = string.split
local string_format = string.format

local CUSTOM_CLASS_COLORS = {
    ["HUNTER"] = { r = 0.6, g = 0.85, b = 0.2 },
    ["WARLOCK"] = { r = 0.4, g = 0, b = 0.8 },
    ["PRIEST"] = { r = 1.0, g = 1.0, b = 1.0 },
    ["PALADIN"] = { r = 0.96, g = 0.55, b = 0.73 },
    ["MAGE"] = { r = 0, g = 0.82, b = 1 },
    ["ROGUE"] = { r = 1.0, g = 0.96, b = 0.41 },
    ["DRUID"] = { r = 1.0, g = 0.49, b = 0.04 },
    ["SHAMAN"] = { r = 0.0, g = 0.44, b = 0.87 },
    ["WARRIOR"] = { r = 0.7, g = 0.56, b = 0.42 },
    ["DEATHKNIGHT"] = { r = 0, g = 1 , b = 0.6 },
};

-- Fixing the dogshit retail 2.5.6 border colors of debuffs
local TS_DebuffColors = {
    Magic   = { 0.20, 0.60, 1.00 },
    Curse   = { 0.60, 0.00, 1.00 },
    Disease = { 0.60, 0.40, 0.00 },
    Poison  = { 0.00, 0.60, 0.00 },
    Bleed   = { 0.80, 0.00, 0.00 },
    None    = { 0.80, 0.00, 0.00 },
}

hooksecurefunc(AuraUtil, "SetAuraBorderColor", function(borderRegion, dispelType)
    local c = TS_DebuffColors[dispelType or "None"] or TS_DebuffColors.None
    if borderRegion and c then
        borderRegion:SetVertexColor(c[1], c[2], c[3])
    end
end)

--dark theme
local function DarkenFrames(addon)
    for _, v in pairs({
        --PlayerFrameTexture,
        --TargetFrameTextureFrameTexture,
        --TargetFrameToTTextureFrameTexture,
        --FocusFrameToTTextureFrameTexture,
        --FocusFrameTextureFrameTexture,
        --PetFrameTexture,
        --PartyMemberFrame1Texture,
        --PartyMemberFrame2Texture,
        --PartyMemberFrame3Texture,
        --PartyMemberFrame4Texture,
        --SlidingActionBarTexture0,
        --SlidingActionBarTexture1,
        MainMenuBarLeftEndCap,
        MainMenuBarRightEndCap,
        PartyMemberFrame1PetFrameTexture,
        PartyMemberFrame2PetFrameTexture,
        PartyMemberFrame3PetFrameTexture,
        PartyMemberFrame4PetFrameTexture,
        --TargetofTargetTexture,
        --TargetofFocusTexture,
        MainMenuBarTexture0,
        MainMenuBarTexture1,
        MainMenuBarTexture2,
        MainMenuBarTexture3,
        MainMenuMaxLevelBar0,
        MainMenuMaxLevelBar1,
        MainMenuMaxLevelBar2,
        MainMenuMaxLevelBar3,
		MainStatusTrackingBarContainer.MainMenuBarFrameTexture1,
		MainStatusTrackingBarContainer.MainMenuBarFrameTexture2,
		MainStatusTrackingBarContainer.MainMenuBarFrameTexture3,
		MainStatusTrackingBarContainer.MainMenuBarFrameTexture4,
		SecondaryStatusTrackingBarContainer.StandaloneFrameTexture1,
		SecondaryStatusTrackingBarContainer.StandaloneFrameTexture2,
		SecondaryStatusTrackingBarContainer.StandaloneFrameTexture3,
		SecondaryStatusTrackingBarContainer.StandaloneFrameTexture4,
		SecondaryStatusTrackingBarContainer.StandaloneFrameTexture5,
		PlayerStatFrameLeftDropdown.Background,
		PlayerStatFrameRightDropdown.Background,
		--PetActionBar.BackgroundArt1,
		--PetActionBar.BackgroundArt2,
        --CastingBarFrameBorder,
		TargetFrameToTTextureFrameTexture,
        MiniMapBattlefieldBorder,
        --FocusFrameSpellBarBorder,
        --CastingBarBorder,
        --TargetFrameSpellBarBorder,
        MiniMapTrackingButtonBorder,
        --MiniMapLFGFrameBorder,
        MainMenuXPBarTexture0,
        MainMenuXPBarTexture1,
        MainMenuXPBarTexture2,
        MainMenuXPBarTexture3,
        ReputationXPBarTexture0,
        ReputationXPBarTexture1,
        ReputationXPBarTexture2,
        ReputationXPBarTexture3,
        MainMenuXPBarTextureMid,
        MiniMapMailBorder, }) do
        if v then
            v:SetVertexColor(0, 0, 0)
        end
    end

    if addon == "Blizzard_TimeManager" then
        for _, v in pairs({ select(2, TimeManagerClockButton:GetRegions()) }) do
            if v then
                v:SetVertexColor(1, 1, 1)
            end
        end
    end

    if WorldStateScoreFrame then
        local a, b, c, d, e, f, _, _, _, _, _, l = WorldStateScoreFrame:GetRegions()
        for _, v in pairs({ a, b, c, d, e, f, l }) do
            if v then
                v:SetVertexColor(0.15, 0.15, 0.15)
            end
        end
    end
end

-- CVars
local cvars = {
    -- ShowClassColorInFriendlyNameplate = "1", --(DEPRECATED?)
	-- ShowClassColorInNameplate = "1", --(DEPRECATED?)
	nameplateShowClassColor = "1", -- 2.5.6
	nameplateShowFriendlyClassColor = "1", -- 2.5.6
	nameplateMaxDistance = "41",
	--nameplateGlobalScale = "1.12", --(DEPRECATED)
	nameplateSize ="3", -- 2.5.6
    threatWarning = "0",
    --predictedHealth = "0", --(DEPRECATED - gone completely, no substitution)
    --Sound_EnableDSPEffects = "0", --(DEPRECATED?)
    nameplateShowFriendlyNPCs = "0",
    nameplateShowFriendlyMinions = "0",
	nameplateShowEnemyMinions = "1", -- needed for our nameplate filtering aparently? otherwise no pets show up (felhunter)
    --nameplateShowFriendlyPets = "0", --(DEPRECATED)
	nameplateShowFriendlyPlayerPets = "0", -- 2.5.6
    --nameplateShowFriendlyTotems = "0", -- (DEPRECATED)
	nameplateShowFriendlyPlayerTotems = "0", -- 2.5.6
	nameplateShowDebuffsOnFriendly = "0", -- 2.5.6 (required not to show debuffs on shadowfiend / water ele and shit...)
    showPartyPets = "0",
	UnitNameFriendlySpecialNPCName = "0",
    UnitNameHostleNPC = "0",
    UnitNameInteractiveNPC = "0",
	nameplateSelectedAlpha = "1", -- nameplates always focused 1 (prevent fading/graying-out nonselected nameplates)
	nameplateNotSelectedAlpha = "1", -- nameplates always focused 2 (prevent fading/graying-out nonselected nameplates)
	UnitNamePlayerGuild = "0", -- hides the <guild> name from Player Names
	floatingCombatTextCombatHealing = "1", -- keeps bugging out and randomly disabling itself on this dogpiss anniversaty shitclient
	CursorFreelookStartDelta = "0" -- another hackfix for this new dogshit client (camera movement with mouse required movement before it actually moved, now its smooth)
}

local function CustomCvar()
    for cvar, value in pairs(cvars) do
        local current = tostring(GetCVar(cvar))
        if current ~= value then
            SetCVar(cvar, value)
        end
    end
end

-- adding class colours to guild tab
local function ColorGuildTabs()
    local _, guildIndex, class, color
    local guildOffset = FauxScrollFrame_GetOffset(GuildListScrollFrame)
    for i = 1, 13 do
        guildIndex = guildOffset + i
        _, _, _, _, _, _, _, _, _, _, class = GetGuildRosterInfo(guildIndex)
        if not class then
            break
        end
        color = CUSTOM_CLASS_COLORS[class]
        if color then
            _G["GuildFrameButton" .. i .. "Class"]:SetTextColor(color.r, color.g, color.b)
        end
    end
end

local sounds = {
    569772, -- sound/spells/fizzle/fizzleholya.ogg
    569773, -- sound/spells/fizzle/fizzlefirea.ogg
    569774, -- sound/spells/fizzle/fizzlenaturea.ogg
    569775, -- sound/spells/fizzle/fizzlefrosta.ogg
    569776, -- sound/spells/fizzle/fizzleshadowa.ogg
    567407, -- sound/interface/uchatscrollbutton.ogg annoying clicking sound when you press a spell on action bar
    567453, -- target
    567520, -- untarget
    601649, -- Naaru cancer (Alar sounds)
    601652, -- Naaru cancer 2
    567518, -- Friendlist (when someone logs in)
}

local tooltipOwnerBlacklist = {
    "ActionButton%d+$", -- bar buttons
    "MultiBarBottomLeftButton",
    "MultiBarBottomRightButton",
    "MultiBarLeftButton",
    "MultiBarRightButton",
	"MultiBar5Button",
    "MinimapZoneTextButton",
    "CharacterMicroButton",
    "SpellbookMicroButton",
    "TalentMicroButton",
    "QuestLogMicroButton",
    "SocialsMicroButton",
    "LFGMicroButton",
    "HelpMicroButton",
	"WorldMapMicroButton",
    "^KeyRingButton$", -- key ring
    "^CharacterBag%dSlot$", -- bags
    "^MainMenuBarBackpackButton$", -- backpack
}

local function PlayerFrameArt()
    PlayerFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame")
    PlayerStatusTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-Player-Status")
    local _, b, c = PlayerFrameHealthBar:GetPoint()
    PlayerFrameHealthBar:ClearAllPoints()
    PlayerFrameHealthBar:SetPoint("TOPLEFT", b, c, 90, -27)
    PlayerFrameHealthBar:SetWidth(118)
    PlayerFrameHealthBar:SetHeight(28)
    PlayerName:SetPoint("CENTER", 50, 35)
    PlayerFrameHealthBarText:SetPoint("CENTER", 33, 8)
    PlayerFrameHealthBarText:SetFont("Fonts/FRIZQT__.TTF", 18, "THICKOUTLINE")
    PlayerFrameManaBarText:SetFont("Fonts/FRIZQT__.TTF", 10, "THICKOUTLINE")
end
hooksecurefunc("PlayerFrame_ToPlayerArt", PlayerFrameArt)

local barText = {}
-- Create PartyMemberFrame StatusText
for pFrame in PartyFrame.PartyMemberFramePool:EnumerateActive() do

    pFrame.Background:SetHeight(30)
	pFrame.Background:SetWidth(71)
    pFrame.Background:SetPoint("TOPLEFT", pFrame, "TOPLEFT", 45, -13)
	pFrame:SetScale(1.27)
    pFrame.PartyMemberOverlay.Texture:SetTexture("Interface\\AddOns\\TextureScript\\UI-PartyFrame")
    pFrame.HealthBar:SetWidth(72)
    pFrame.HealthBar:SetHeight(18)
    pFrame.ManaBar:SetWidth(72)
    pFrame.ManaBar:SetHeight(10)
    pFrame.HealthBar:SetPoint("TOPLEFT", 44.5, -12.5)
    pFrame.ManaBar:SetPoint("TOPLEFT", 44.5, -31)

    pFrame.PartyMemberOverlay.LeaderIcon:SetAlpha(0)
    pFrame.PartyMemberOverlay.MasterIcon:SetAlpha(0)
	
    local healthText = pFrame.healthbar:CreateFontString(nil, "OVERLAY", "GameFontWhite")
    healthText:SetFont("Fonts/FRIZQT__.TTF", 15, "THICKOUTLINE")
    healthText:SetPoint("CENTER", 0, -0.5)
    healthText:Show()

    local manaText = pFrame.manabar:CreateFontString(nil, "OVERLAY", "GameFontWhite")
    manaText:SetFont("Fonts/FRIZQT__.TTF", 9, "THICKOUTLINE")
    manaText:SetPoint("CENTER", 0, -0.5)
    manaText:Show()

    barText[pFrame] = {
                health = healthText,
                mana = manaText,
                lastHP = nil,
                lastMana = nil,
               }

    pFrame.PartyMemberOverlay.Name:Hide()
    pFrame.PartyMemberOverlay.PVPIcon:SetAlpha(0)

    hooksecurefunc(pFrame, "UpdateMemberHealth", function(self)
        local t = barText[self]
        if not t then return end
        local healthbar = pFrame.healthbar
        local manabar = pFrame.manabar
        local hp = TS_FinalValue[healthbar] or healthbar:GetValue()
        local mana = TS_FinalValue[manabar] or manabar:GetValue()
        local powertype = UnitPowerType(pFrame.unit)

        local _, class = UnitClass(pFrame.unit)
        local c = CUSTOM_CLASS_COLORS[class]
        if c then
            healthbar:SetStatusBarColor(c.r, c.g, c.b)
        end

        if hp ~= t.lastHP then
            t.lastHP = hp
            t.health:SetText(hp)
        end

        if powertype ~= 0 then
            t.mana:SetText("")
            t.lastMana = -1
        elseif mana ~= t.lastMana then
            t.lastMana = mana
            t.mana:SetText(mana)
        end

        if ((pFrame.unitHPPercent > 0) and (pFrame.unitHPPercent <= 0.2)) then
            pFrame.portrait:SetVertexColor(1, 1, 1, 1)
        end
    end)
	-- Add more spacing between PartyFrames (<3 Pyralis)
	--[[
	local isUpdating = false
    hooksecurefunc(pFrame, "SetPoint", function(frame)
        if isUpdating or InCombatLockdown() then return end

        local unit = frame.unitToken:match("^party(%d)")
        local place = unit and tonumber(unit)
        if place and place > 1 then
            local yAdjustment = (place - 1) * 25
            local point, relativeFrame, relativePoint, ofsx, ofsy = frame:GetPoint()

            isUpdating = true
            frame:ClearAllPoints() -- not sure if clearing is needed -- only 1 point is ever set on them
            frame:SetPoint(point, relativeFrame, relativePoint, ofsx, ofsy - yAdjustment, true)
            isUpdating = false
        end
    end)
]]--
    hooksecurefunc(pFrame.PartyMemberOverlay.Status, "Show", pFrame.PartyMemberOverlay.Status.Hide)
end

local function OnInit()
    --minimap buttons, horde/alliance icons on target/focus/player,minimap city location, minimap sun/clock, minimap text frame,minimap zoomable with mousewheel etc
    MinimapZoomIn:Hide()
    MinimapZoomOut:Hide()
    Minimap:EnableMouseWheel(true)
    Minimap:SetScript('OnMouseWheel', function(_, delta)
        if delta > 0 then
            Minimap_ZoomIn()
        else
            Minimap_ZoomOut()
        end
    end)
    MiniMapTracking:Hide()
    MinimapCluster.BorderTop:Hide()
    GameTimeTexture:Hide()
    GameTimeFrame:Hide()
    MiniMapMailFrame:ClearAllPoints()
    MiniMapMailFrame:SetPoint('BOTTOMRIGHT', 0, -10)
    MinimapZoneTextButton:Hide()
	MinimapToggleButton:Hide()
    PlayerPVPTimerText:SetAlpha(0)
	
	-- Reputation XP bar left and right art hidden
	SecondaryStatusTrackingBarContainer.StandaloneFrameTextureRightCapBottom:Hide()
	SecondaryStatusTrackingBarContainer.StandaloneFrameTextureRightCapTop:Hide()
	SecondaryStatusTrackingBarContainer.StandaloneFrameTextureLeftCapBottom:Hide()
	SecondaryStatusTrackingBarContainer.StandaloneFrameTextureLeftCapTop:Hide()

    -- Color Clock
    select(1, TimeManagerClockButton:GetRegions()):SetVertexColor(0, 0, 0)

    -- Position
	-- Handling in the EDIT MODE (2.5.5)
    FocusFrame:StopMovingOrSizing()
    --FocusFrame:ClearAllPoints()
    --FocusFrame:SetPoint("CENTER", UIParent, "CENTER", -237, 115)
    --FocusFrame:SetUserPlaced(true)
    FocusFrame:SetAttribute("*type2", "target") -- right click target focus

    -- Hide PVP Icon
    PlayerPVPIcon:SetAlpha(0)
    TargetFrameTextureFramePVPIcon:SetAlpha(0)
    FocusFrameTextureFramePVPIcon:SetAlpha(0)

    -- Player Frame, Focus Frame, Target Frame
    PlayerFrameArt()

    TargetFrameHealthBar:SetWidth(118)
    TargetFrameHealthBar:SetHeight(30)
    local _, b, c = TargetFrameHealthBar:GetPoint()
    TargetFrameHealthBar:ClearAllPoints()
    TargetFrameHealthBar:SetPoint("TOPRIGHT", b, c, -90.5, -27)
    TargetFrameTextureFrameName:SetPoint("CENTER", -33, 32)
    TargetFrameHealthBar.TextString:SetPoint("CENTER", -33, 8)
    TargetFrameHealthBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 17, "THICKOUTLINE")
    TargetFrameManaBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 10, "THICKOUTLINE")

    FocusFrameHealthBar:SetWidth(118)
    FocusFrameHealthBar:SetHeight(30)
    local _, b, c = FocusFrameHealthBar:GetPoint()
    FocusFrameHealthBar:ClearAllPoints()
    FocusFrameHealthBar:SetPoint("TOPRIGHT", b, c, -90.5, -27)
    FocusFrameTextureFrameName:SetPoint("CENTER", -33, 32)
    FocusFrameHealthBar.TextString:SetPoint("CENTER", -33, 8)
    FocusFrameHealthBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 17, "THICKOUTLINE")
    FocusFrameManaBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 10, "THICKOUTLINE")

    -- Hide Gryphons
    MainMenuBarLeftEndCap:Hide()
    MainMenuBarRightEndCap:Hide()

    --Player,Focus,Target,Pet and Party 1-4 Frames cleaned of names, group frame titles, combat indicators, glows, leader icons, master looter icons, levels, rest icons, !Improved Error Frame button hidden, Red Erros in top-center of screen hidden etc

    PlayerName:SetAlpha(0)
    PetName:SetAlpha(0)
    PlayerFrameGroupIndicator:SetAlpha(0)
    MainActionBar.ActionBarPageNumber.UpButton:Hide()
    MainActionBar.ActionBarPageNumber.DownButton:Hide()
    MainActionBar.ActionBarPageNumber:SetAlpha(0)

    UIErrorsFrame:SetAlpha(0)

    hooksecurefunc(PlayerLevelText, "Show", PlayerLevelText.Hide)
    PlayerLeaderIcon:SetAlpha(0)
    PlayerStatusTexture:SetAlpha(0)
    PlayerMasterIcon:SetAlpha(0)

    FocusFrameTextureFrameLevelText:SetAlpha(0)
    FocusFrameTextureFrameLeaderIcon:SetAlpha(0)

    TargetFrameTextureFrameLevelText:SetAlpha(0)
    TargetFrameTextureFrameLeaderIcon:SetAlpha(0)
	
    -- TargetFrame castbar slight up-scaling & the status bar height adjustment (bottom alpha gap)
    TargetFrameSpellBar:SetScale(1.13)
	TargetFrameSpellBar:SetHeight(10.5)
	--default WIDTH: TargetFrameSpellBar:SetWidth(150)

    -- FocusFrame castbar slight up-scaling
    FocusFrameSpellBar:SetScale(1.13)
	FocusFrameSpellBar:SetHeight(10.5)
	
	-- Fixing the default Blizzard bugged/mispotioned casting bar text... shit company
	TargetFrameSpellBar.Text:ClearAllPoints()
	TargetFrameSpellBar.Text:SetPoint("CENTER", 0, 0.05)
	TargetFrameSpellBar.Text:SetFont("Fonts/FRIZQT__.TTF", 11, "OUTLINE")
	
	FocusFrameSpellBar.Text:ClearAllPoints()
	FocusFrameSpellBar.Text:SetPoint("CENTER", 0, 0.05)
	FocusFrameSpellBar.Text:SetFont("Fonts/FRIZQT__.TTF", 11, "OUTLINE")
	
	-- Slightly increase the size of Target/Focus spell cast bar icon
	TargetFrameSpellBar.Icon:SetSize(26,26)
	FocusFrameSpellBar.Icon:SetSize(26,26)
	
	-- Fixing the default Blizzard mispositioned castbar background texture...
	local function FixCastBarBackground(bar)
    if not bar then return end
	
    for _, region in ipairs({ bar:GetRegions() }) do
        if region:IsObjectType("Texture") and region:GetDrawLayer() == "BACKGROUND" then
            region:ClearAllPoints()
            region:SetPoint("TOPLEFT", bar, "TOPLEFT", 2, 2.5)
            region:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT", -2, -2)
            break
        end
    end
	end
	-- Target
	FixCastBarBackground(TargetFrameSpellBar)
	-- Focus
	FixCastBarBackground(FocusFrameSpellBar)
	
	-- Removing the "interrupted" status spell cast bar from Target/Focus
	local f = CreateFrame("Frame")
	f:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED")

	f:SetScript("OnEvent", function(_, _, unit)
		if unit == "target" and TargetFrameSpellBar then
			TargetFrameSpellBar:Hide()
		elseif unit == "focus" and FocusFrameSpellBar then
			FocusFrameSpellBar:Hide()
		end
	end)

    --removing character "C" button image
    MicroButtonPortrait:Hide()

    -- removing the retarded "latency" bar
    MainMenuMicroButton.PerformanceIndicator:SetAlpha(0)

    -- move target of target to the right side in order to allow cleaner vision of buffs/debuffs on a target/focus
    TargetFrameToT:ClearAllPoints();
    TargetFrameToT:SetPoint("RIGHT", "TargetFrame", "BOTTOMRIGHT", 0, 3);
    FocusFrameToT:ClearAllPoints();
    FocusFrameToT:SetPoint("RIGHT", "FocusFrame", "BOTTOMRIGHT", 0, 3);
	
	-- adjust the ToT background texture (because current Blizzard is a piss of shit company that cant even maintain their OWN fucking UI that somebody else made for them)
    TargetFrameToTBackground:SetPoint("BOTTOMLEFT", TargetFrameToT, "BOTTOMLEFT", 45, 15)
	FocusFrameToTBackground:SetPoint("BOTTOMLEFT", FocusFrameToT, "BOTTOMLEFT", 45, 15)
    --disable mouseover flashing on buttons
    for i = 1, 12 do
        local texture = _G["MultiBarBottomLeftButton" .. i]:GetHighlightTexture()
        if texture then
            texture:SetAlpha(0)
        end

        texture = _G["MultiBarBottomRightButton" .. i]:GetHighlightTexture()
        if texture then
            texture:SetAlpha(0)
        end

        texture = _G["MultiBarLeftButton" .. i]:GetHighlightTexture()
        if texture then
            texture:SetAlpha(0)
        end

        texture = _G["MultiBarRightButton" .. i]:GetHighlightTexture()
        if texture then
            texture:SetAlpha(0)
        end
		
		texture = _G["MultiBar5Button" .. i]:GetHighlightTexture()
        if texture then
            texture:SetAlpha(0)
        end

        texture = _G["ActionButton" .. i]:GetHighlightTexture()
        if texture then
            texture:SetAlpha(0)
        end
    end

	-- Pet bar only (for some reason it errors on 2.5.5 otherwise)
	for i = 1, 10 do
    local btn = _G["PetActionButton"..i]
    if btn then
        local texture = btn:GetHighlightTexture()
        if texture then
            texture:SetAlpha(0)
        end
    end
	end
	
    local texture = MainMenuBarBackpackButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = CharacterBag0Slot:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = CharacterBag1Slot:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = CharacterBag2Slot:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = CharacterBag3Slot:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = CharacterMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = SpellbookMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = TalentMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = QuestLogMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = SocialsMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = MainMenuMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = HelpMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)
	
	texture = WorldMapMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)
	
	-- Remove Fizzle sounds (this was previously done by replacing the actual sound in Data/Sounds)
    for _, fdid in pairs(sounds) do
        MuteSoundFile(fdid)
    end

    -- Hide	Macro & Keybind texts from Action Bar buttons
    local buttonPrefixes = {
        "ActionButton",
        "MultiBarBottomRightButton",
        "MultiBarBottomLeftButton",
        "MultiBarRightButton",
        "MultiBarLeftButton",
		"MultiBar5Button",
        "PetActionButton",
    }

    for _, prefix in ipairs(buttonPrefixes) do
        for i = 1, 12 do
            local button = _G[prefix .. i]
            if button then
                if button.HotKey then
                    button.HotKey:SetAlpha(0)
                end

                if button.Name then
                    button.Name:SetAlpha(0)
                end

                if button.Border then
                    button.Border:AddMaskTexture(button.IconMask) -- fk blizz
                end

                if button.SlotBackground then
                    button.SlotBackground:SetAlpha(0)
                end
            end
        end
    end
end
	-- Hide	Macro & Keybind texts from Pet Action Bar (only has 10 slots)
	for i = 1, 10 do
        local hotkey = _G["PetActionButton" .. i .. "HotKey"]
        if hotkey then
            hotkey:SetAlpha(0)
        end
    end

-- SpeedyActions level: Garage clicker & Pro Gaymer
-- Since 2.5.5 Client, this works only for BINDED buttons... For clicks, using modified "MiniClickDown" addon for now --> Blizzard fucked it up, currently otherwise only either AnyDown or AnyUp possible for clicks... rip, Blizzard fucks everything and anything they touch, gotta hackfix everything back up
local wahkFrames = {}
local buttonNames = {
    ["ACTIONBUTTON"] = "ActionButton",
    ["MULTIACTIONBAR1BUTTON"] = "MultiBarBottomLeftButton",
    ["MULTIACTIONBAR2BUTTON"] = "MultiBarBottomRightButton",
    ["MULTIACTIONBAR3BUTTON"] = "MultiBarRightButton",
    ["MULTIACTIONBAR4BUTTON"] = "MultiBarLeftButton",
    ["CLICK BT4Button"] = "BT4Button",
    ["BT4Button"] = "BT4Button",
    ["MULTIACTIONBAR5BUTTON"] = "MultiBar5Button",
    ["MULTIACTIONBAR6BUTTON"] = "MultiBar6Button",
    ["MULTIACTIONBAR7BUTTON"] = "MultiBar7Button",
    ["CLICK DominosActionButton"] = "DominosActionButton",
    ["DominosActionButton"] = "DominosActionButton",
}

local function ConvertActionButtonName(name)
    -- remove "CLICK "
    name = name:gsub("^CLICK ", "")
    -- remove ":Keybind"
    name = name:gsub(":Keybind$", "")

    local button, buttonNumber = name:match("^(.-)(%d+)$")
    if button and tonumber(buttonNumber) and buttonNames[button] then
        name = buttonNames[button] .. buttonNumber
    end

    return name
end

local function WAHK(button, ok)
    if not button then
        return
    end

    local btn = _G[button]
    if not btn then
        return
    end

    local clickButton, id

    id = tonumber(button:match("(%d+)"))

    if button:match("MultiBar5") then
        id = tonumber(button:match("MultiBar5Button(%d+)"))
    elseif button:match("MultiBar6") then
        id = tonumber(button:match("MultiBar6Button(%d+)"))
    elseif button:match("MultiBar7") then
        id = tonumber(button:match("MultiBar7Button(%d+)"))
    end

    if button:match("BT4Button") then
        clickButton = ("CLICK %s:LeftButton"):format(button)
    elseif button:match("DominosActionButton") then
        clickButton = ("CLICK %s:HOTKEY"):format(button)
    else
        local actionButtonType = btn.buttonType
        clickButton = actionButtonType and (actionButtonType .. id) or ("ACTIONBUTTON%d"):format(id)
    end

    local key, key2 = GetBindingKey(clickButton)
    if not key and not key2 then
        return
    end

    local cacheKeys = {}
    if key then
        cacheKeys[key] = key
    end
    if key2 then
        cacheKeys[key2] = key2
    end

    for v in pairs(cacheKeys) do
        local targetBtn = btn
        local action = GetBindingAction(v, true)
        if action and action ~= "" then
            targetBtn = _G[ConvertActionButtonName(action)]
        end

        if targetBtn then
            local wahkName = "WAHK" .. v .. button
            local wahk = _G[wahkName] or CreateFrame("Button", wahkName, nil, "SecureActionButtonTemplate")
            wahkFrames[wahkName] = true

            wahk:RegisterForClicks("AnyDown", "AnyUp")
            wahk:SetAttribute("type", "click")
            wahk:SetAttribute("pressAndHoldAction", "1")
            wahk:SetAttribute("typerelease", "click")
            wahk:SetAttribute("clickbutton", _G[button])


            SetOverrideBindingClick(wahk, true, v, wahk:GetName())

            wahk:SetScript("OnMouseDown", function()
                if OverrideActionBar and OverrideActionBar:IsShown() and id then
                    local obtn = _G["OverrideActionBarButton" .. id]
                    if obtn then
                        obtn:SetButtonState("PUSHED")
                    end
                else
                    if targetBtn then
                        targetBtn:SetButtonState("PUSHED")
                    end
                end
            end)
            wahk:SetScript("OnMouseUp", function()
                if OverrideActionBar and OverrideActionBar:IsShown() and id then
                    local obtn = _G["OverrideActionBarButton" .. id]
                    if obtn then
                        obtn:SetButtonState("NORMAL")
                    end
                else
                    if targetBtn then
                        targetBtn:SetButtonState("NORMAL")
                    end
                end
            end)
        end
    end
end

local function UpdateBinds(frame)
    if InCombatLockdown() then
        frame:RegisterEvent("PLAYER_REGEN_ENABLED")
        return
    end

    for name in pairs(wahkFrames) do
        local wahk = _G[name]
        if wahk then
            ClearOverrideBindings(wahk)
            SecureHandlerUnwrapScript(wahk, "OnClick")
        end
    end
    wipe(wahkFrames)

    for i = 1, 12 do
        WAHK("ActionButton" .. i, true)
        WAHK("MultiBarBottomRightButton" .. i)
        WAHK("MultiBarBottomLeftButton" .. i)
        WAHK("MultiBarRightButton" .. i)
        WAHK("MultiBarLeftButton" .. i)
        WAHK("MultiBar6Button" .. i)
        WAHK("MultiBar5Button" .. i)
        WAHK("MultiBar7Button" .. i)
    end
end

-- Hide the modern shitclient multigroup icon at PlayerFrame
local mg = PlayerPlayTime:GetParent().MultiGroupFrame
hooksecurefunc(mg, "Show", mg.Hide)

-- Hide Player and Pet hit indicators
hooksecurefunc(PlayerHitIndicator, "Show", PlayerHitIndicator.Hide)
hooksecurefunc(PetHitIndicator, "Show", PetHitIndicator.Hide)

-- Color Guild Tabs
hooksecurefunc("GuildStatus_Update", ColorGuildTabs)

-- Pet Frame
hooksecurefunc(PetFrame, "Update", function()
    PetFrameHealthBar:SetWidth(72)
    PetFrameHealthBar:SetHeight(18)
    PetFrameManaBar:SetWidth(72)
    PetFrameManaBar:SetHeight(11)
    PetFrameHealthBar:SetPoint("TOPLEFT", 44, -13)
    PetFrameHealthBarText:SetPoint("CENTER", 17, 4)
    PetFrameHealthBarText:SetFont("Fonts/FRIZQT__.TTF", 15, "THICKOUTLINE")
    PetFrameManaBarText:SetPoint("CENTER", 19, -10.5)
    PetFrameManaBarText:SetFont("Fonts/FRIZQT__.TTF", 9, "THICKOUTLINE")
    PetFrameManaBar:SetPoint("TOPLEFT", 44, -31)
end)
-- Creating a brand new pet frame background texture because Blizzard is too dogshit to maintain their own fucking UI and completely missed it
local PetBG = PetFrame:CreateTexture(nil, "BACKGROUND")
        PetBG:SetSize(72, 28)
        PetBG:SetPoint("BOTTOMLEFT", PetFrame, "BOTTOMLEFT", 44, 12)
        PetBG:SetColorTexture(0, 0, 0, 0.5)

-- Moving PetFrame debuffs down due to Blizzard fucking up once again and placing debuffs inside the petframe texture... the words are not enough to describe such incompetence and gross negligence
PetFrame.AuraFrameContainer:SetPoint("TOPLEFT", 48, -48)

-- Make the PetFrame debuffs not a subject to OmniCC (cant be done via OmniCC rules ingame)
local function hidePetCd()
    if not PetFrame.AuraFramePool then return end
    for frame in PetFrame.AuraFramePool:EnumerateActive() do
        local cd = frame.Cooldown
        if cd and not cd.noCooldownCount then
            cd.noCooldownCount = true
            hooksecurefunc(cd, "SetCooldown", function(self)
                self.noCooldownCount = true
            end)
        end
    end
end

PetFrame.AuraFramePool:Acquire()
hidePetCd()
hooksecurefunc(PetFrame, "UpdateAuras", hidePetCd)

-- Hidden Player glow combat/rested flashes + Hidden Focus Flash on Focused Target + Hiding the red glowing status on target/focus frames when they have low HP
local playerTextures = { PlayerStatusTexture, PlayerRestGlow, PlayerRestIcon, PlayerAttackIcon, PlayerAttackGlow, PlayerStatusGlow, PlayerAttackBackground }

hooksecurefunc("PlayerFrame_UpdateStatus", function()
    for _, i in pairs(playerTextures) do
        if i and i:IsShown() then
            i:Hide()
        end
    end
end)
hooksecurefunc(PlayerFrameGroupIndicator, "Show", PlayerFrameGroupIndicator.Hide)

-- Hiding the pet combat/attack glowing status, similarly to the above ^^
local HideCancer = CreateFrame("Frame")
PetAttackModeTexture:SetParent(HideCancer)
HideCancer:Hide()


PaperDollFrame:HookScript("OnShow", function()
    MicroButtonPortrait:Show()
end)

PaperDollFrame:HookScript("OnHide", function()
    MicroButtonPortrait:Hide()
end)


local function TextStatusBar_UpdateTextString(statusFrame)
    local value = TS_FinalValue[statusFrame] or statusFrame:GetValue();
    if statusFrame.TextString and statusFrame.currValue and statusFrame.currValue > 0 then
        statusFrame.TextString:SetText(value)
    else
        statusFrame.TextString:Hide()
    end
end
hooksecurefunc(PlayerFrameHealthBar, "UpdateTextStringWithValues", TextStatusBar_UpdateTextString)
hooksecurefunc(PlayerFrameManaBar, "UpdateTextStringWithValues", TextStatusBar_UpdateTextString)

hooksecurefunc(TargetFrameHealthBar, "UpdateTextStringWithValues", TextStatusBar_UpdateTextString)
hooksecurefunc(TargetFrameManaBar, "UpdateTextStringWithValues", TextStatusBar_UpdateTextString)

hooksecurefunc(FocusFrameHealthBar, "UpdateTextStringWithValues", TextStatusBar_UpdateTextString)
hooksecurefunc(FocusFrameManaBar, "UpdateTextStringWithValues", TextStatusBar_UpdateTextString)

hooksecurefunc(PetFrameHealthBar, "UpdateTextStringWithValues", TextStatusBar_UpdateTextString)
hooksecurefunc(PetFrameManaBar, "UpdateTextStringWithValues", TextStatusBar_UpdateTextString)

local function Classification(self, forceNormalTexture)
    local classification = UnitClassification(self.unit);

    self.nameBackground:Hide()

    -- same texture for all classifications (elite/worldboss/rareelite/rare/normal)
    self.borderTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame")

    -- fix Blizzard's overlapping backgrounds causing a darker line
    if forceNormalTexture then
        if classification ~= "minus" then
            self.Background:SetHeight(24)
            -- else
            -- not sure if "minus" mobs exist in TBC - wowpedia says:
            -- Patch 5.0.4: used for minion mobs that typically have less health than normal mobs of their level, but engage the player in larger numbers
            -- if they do exist, have to check if the default 12 is an OK size for it not to overlap
            -- self.Background:SetHeight(12)
        end
    else
	-- set back to "33" in case Blizz fixes their own shit UI after release
        self.Background:SetHeight(40)
    end
end
hooksecurefunc(TargetFrame, "CheckClassification", Classification)
hooksecurefunc(FocusFrame, "CheckClassification", Classification)

-- Smooth status bars

local smoothing = {}
local smoothData = setmetatable({}, { __mode = "k" })
local floor, next = math.floor, next
local mabs = math.abs
local UnitGUID = UnitGUID
local smoothframe = CreateFrame("Frame")

local barstosmooth = {
    PlayerFrameHealthBar = "player",
    PlayerFrameManaBar = "player",
    TargetFrameHealthBar = "target",
    TargetFrameManaBar = "target",
    FocusFrameHealthBar = "focus",
    FocusFrameManaBar = "focus",
    PetFrameHealthBar = "pet",
    PetFrameManaBar = "pet",
}

local function clamp(v, max)
    local min = 0
    max = max or 1

    if v >= max then
        return max
    elseif v <= min then
        return min
    end

    return v
end

local function lerp(startValue, endValue, amount)
    return startValue + (endValue - startValue) * amount
end

local function isCloseEnough(new, target, range)
    return range and range > 0.0 and mabs((new - target) / range) <= 0.001
end

local function AnimationTick(_, elapsed)
    for bar, targetValue in next, smoothing do
        local d = smoothData[bar]

        if not d then
            smoothing[bar] = nil
        else
            local newValue = lerp(d.value, targetValue, clamp(0.33 * elapsed * 60))
            d.value = newValue

            d.isUpdating = true
            bar:SetValue(floor(newValue))
            d.isUpdating = false

            if not bar:IsVisible() or isCloseEnough(newValue, targetValue, d.max) then
                d.value = targetValue
                smoothing[bar] = nil

                d.isUpdating = true
                bar:SetValue(targetValue)
                d.isUpdating = false

                if not next(smoothing) then
                    smoothframe:SetScript("OnUpdate", nil)
                end
            end
        end
    end
end

local function Hook_SetValue(self, value)
    local d = smoothData[self]
    if not d or d.isUpdating then return end

    TS_FinalValue[self] = value

    local unit = self.unit or d.unit
    local guid = unit and UnitGUID(unit) or nil

    if not self:IsVisible()
        or isCloseEnough(d.value, value, d.max)
        or (unit and guid ~= d.guid)
    then
        d.guid = guid
        d.value = value
        smoothing[self] = nil
        return
    end

    d.guid = guid
    smoothing[self] = clamp(value, d.max)

    d.isUpdating = true
    self:SetValue(d.value)
    d.isUpdating = false

    if not smoothframe:GetScript("OnUpdate") then
        smoothframe:SetScript("OnUpdate", AnimationTick)
    end
end

local function Hook_SetMinMaxValues(self, min, max)
    local d = smoothData[self]
    if not d then return end

    if d.max and d.max ~= max then
        local ratio = (max ~= 0 and d.max ~= 0) and (max / d.max) or 1

        local target = smoothing[self]
        if target then
            smoothing[self] = target * ratio
        end

        if d.value then
            d.value = d.value * ratio

            d.isUpdating = true
            self:SetValue(d.value)
            d.isUpdating = false
        end
    end

    d.max = max
end

local function SmoothBar(bar, unit)
    if not bar or smoothData[bar] then return end

    smoothData[bar] = {
        value = bar:GetValue(),
        max = select(2, bar:GetMinMaxValues()) or 100,
        unit = (unit and unit ~= "") and unit or nil,
        guid = nil,
        isUpdating = false,
    }

    hooksecurefunc(bar, "SetValue", Hook_SetValue)
    hooksecurefunc(bar, "SetMinMaxValues", Hook_SetMinMaxValues)

    bar:HookScript("OnHide", function(self)
        local d = smoothData[self]
        if d then d.guid = nil end
        smoothing[self] = nil
        if not next(smoothing) then
            smoothframe:SetScript("OnUpdate", nil)
        end
    end)
end

for barName, unit in pairs(barstosmooth) do
    SmoothBar(_G[barName], unit)
end

local function SetupPartyBars()
    if not PartyFrame or not PartyFrame.PartyMemberFramePool then return end

    for pFrame in PartyFrame.PartyMemberFramePool:EnumerateActive() do
        local unit = pFrame.unit
        SmoothBar(pFrame.healthbar, unit)
        SmoothBar(pFrame.manabar, unit)
    end
end

SetupPartyBars()

smoothframe:RegisterEvent("GROUP_ROSTER_UPDATE")
smoothframe:RegisterEvent("PLAYER_ENTERING_WORLD")
smoothframe:SetScript("OnEvent", SetupPartyBars)

-- statusbar.lockColor causes taints
local function colour(statusbar, unit)
    if (not statusbar or statusbar.lockValues) then
        return
    end

    if unit then
        if UnitIsPlayer(unit) and unit == statusbar.unit then
            if (UnitIsConnected(unit) and UnitClass(unit) and unit ~= "player" and not statusbar.lockColor) then
                -- ArenaFrames lock/unlock color
                local _, class = UnitClass(unit)
                local c = CUSTOM_CLASS_COLORS[class]
                if c then
                    if class == "DEATHKNIGHT" then
                        -- experimental DK recoulouring feature (part1)
                        statusbar:SetStatusBarColor(0, 1, 0.6)
                    else
                        statusbar:SetStatusBarColor(c.r, c.g, c.b)
                    end
                end
            elseif unit == "player" then
                local value = UnitHealth("player")
                local _, max = PlayerFrameHealthBar:GetMinMaxValues()
                local r, g

                if ((value < 0) or (value > max)) then
                    return
                end

                if max > 0 then
                    value = value / max
                else
                    value = 0
                end

                if value > 0.5 then
                    r = (1.0 - value) * 2;
                    g = 1.0;
                elseif value > 0.25 and value < 0.5 then
                    r = 1.0;
                    g = value * 1.75;
                else
                    r = 1.0;
                    g = 0.0;
                end
                PlayerFrameHealthBar:SetStatusBarColor(r, g, 0.0)
            else
                statusbar:SetStatusBarColor(0.5, 0.5, 0.5)
            end
        end
    end
end
hooksecurefunc("UnitFrameHealthBar_Update", colour)
hooksecurefunc("HealthBar_OnValueChanged", function(self)
    colour(self, self.unit)
end)

-- Experimental mana colouring
local function manabarRecolor(manaBar)
    if not manaBar then
        return
    end

    local powerType = UnitPowerType(manaBar.unit);
    if powerType == 0 then
        if not manaBar.lockColor then
            manaBar:SetStatusBarColor(0, 0.4, 1)
        end
    end
end
hooksecurefunc("UnitFrameManaBar_UpdateType", manabarRecolor)

-- Remove flashing portraits
local function RemovePortraitFlash(self, r, g, b)
    if r ~= 1.0 or g ~= 1.0 or b ~= 1.0 then
        self:SetVertexColor(1.0, 1.0, 1.0)
    end
end

for _, i in pairs({ TargetFramePortrait, FocusFramePortrait, FocusFrameToTPortrait, TargetFrameToTPortrait }) do
    if i then
        hooksecurefunc(i, "SetVertexColor", RemovePortraitFlash)
    end
end

local function ChangeAlpha(self, a)
    if a ~= 1.0 then
        self:SetAlpha(1.0)
    end
end
hooksecurefunc(TargetFramePortrait, "SetAlpha", ChangeAlpha)
hooksecurefunc(FocusFramePortrait, "SetAlpha", ChangeAlpha)

-- Blacklist of frames where tooltip mouseover is hidden
GameTooltip:HookScript("OnShow", function(self, ...)
    local owner = self:GetOwner() and self:GetOwner():GetName()
    if owner then
        -- hide world object tooltips like torches and signs
        if owner == "UIParent" and not self:GetUnit() then
            self:Hide()
            return
        end
        -- hide tooltips owned by frames in the blacklist
        for i = 1, #tooltipOwnerBlacklist do
            if owner:find(tooltipOwnerBlacklist[i]) then
                self:Hide()
                return
            end
        end
    end
end)

-- remove the shitty new client "raid frame manager" left gray bar next to the party frames (currently shows on/off on mouseover)
local manager = CompactRaidFrameManager
manager:SetAlpha(0)
-- look through a frame's parents
local function FindParent(frame, target)
    if frame == target then
        return true
    elseif frame then
        return FindParent(frame:GetParent(), target)
    end
end

manager:HookScript("OnEnter", function(self)
    self:SetAlpha(1)
end)

manager:HookScript("OnLeave", function(self)
    if manager.collapsed and not FindParent(GetMouseFoci()[1], self) then
        self:SetAlpha(0)
    end
end)

manager.toggleButton:HookScript("OnClick", function()
    if manager.collapsed then
        manager:SetAlpha(0)
    end
end)
-- keep the container frame visible
manager.container:SetIgnoreParentAlpha(true)
manager.containerResizeFrame:SetIgnoreParentAlpha(true)


-- Hide HealthBar under unit tooltips + Hide Titles, PVP flag and Guild Names from Player tooltips
GameTooltip:HookScript("OnTooltipSetUnit", function(self)
    GameTooltipStatusBar:Hide()

    local _, unit = self:GetUnit()
    if not unit then
        return
    end

    if UnitIsPlayer(unit) then
        local name = UnitName(unit)
        GameTooltipTextLeft1:SetFormattedText("%s", name)

        local guild = GetGuildInfo(unit)
        local line2Text = GameTooltipTextLeft2:GetText()
        if guild and line2Text and strfind(line2Text, guild, 1, true) then
            GameTooltipTextLeft2:SetFormattedText("")
        end

        for i = 1, self:NumLines() do
            local line = _G["GameTooltipTextLeft" .. i]
            if line then
                local text = line:GetText()
                if text then
                    local newText = string.gsub(text, " %(Player%)", "")
                    if i > 2 and newText == PVP_ENABLED then
                        line:SetText("")
                    else
                        line:SetText(newText)
                    end
                end
            end
        end

        -- Add class-coloured names on mouseover tooltips
        local _, class = UnitClass(unit)
        local color = class and CUSTOM_CLASS_COLORS[class]
        if color then
            local text = GameTooltipTextLeft1:GetText()
            if text then
                GameTooltipTextLeft1:SetFormattedText("|cff%02x%02x%02x%s|r", color.r * 255, color.g * 255, color.b * 255, text:match("|cff%x%x%x%x%x%x(.+)|r") or text)
            end
        end
    else
        -- Totems/Pets: strip everything below the name line
        for i = 2, self:NumLines() do
            local line = _G["GameTooltipTextLeft" .. i]
            if line then
                line:SetText("")
            end
        end
    end
	-- moving the tooltip frame due to dogshit blizzard fucking up positions of random frames once again
	local xOffset, yOffset = -110, 110
    self:ClearAllPoints()
    self:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", xOffset, yOffset)
    self:Show()
end)

-- Remove server name and/or (*) and abbreviations from Target/Focus frame Player name
local lock = false
local function HookName(frame)
    if not frame or not frame.name then return end

    hooksecurefunc(frame.name, "SetText", function(self, text)
        if not text or lock then return end

        local clean = text
            :gsub("%-[^|]+", "")      -- remove realm
            :gsub("%s*%(%*%)", "")    -- remove (*)

        if clean ~= text then
            lock = true
            self:SetText(clean)
            lock = false
        end
    end)
end
HookName(TargetFrame)
HookName(FocusFrame)

-- stop Gladdy from showing nameplates (necessary for the next script)
-- "Lock Frame" inside Gladdy must be Toggled ON!
-- "Totem Plates" plugin inside Gladdy must be Toggled OFF!
if C_AddOns.IsAddOnLoaded("Gladdy") then
    local Gladdy = LibStub and LibStub("Gladdy")
    if Gladdy then
        local TotemPlates = Gladdy.modules["Totem Plates"]
        if TotemPlates then
            local TotemPlates_ToggleAddon = TotemPlates.ToggleAddon
            function TotemPlates:ToggleAddon(nameplate, show)
                if not show then
                    TotemPlates_ToggleAddon(self, nameplate, show)
                end
            end
        end
    end
end

-- Highlight Tremor Totem (disable nameplates of everything else) + disable Snake Trap Cancer + prevent displaying already dead Tremor Totem (retarded Classic-like behavior)
local ShrinkPlates = {
    ["Viper"] = true,
    ["Venomous Snake"] = true,
}

local HideNameplateUnits = {
    ["Underbelly Croc"] = true,
    ["Vern"] = true,
    ["Army of the Dead Ghoul"] = true,
    ["Spirit Wolf"] = true,
    ["Treant"] = true,
    ["Risen Ghoul"] = true,
    ["31216"] = true, -- Mirror Image
}

local ShowNameplatePetIds = {
    ["417"] = true, -- Felhunter
    ["1863"] = true, -- Succubus
    ["185317"] = true, -- Incubus
}
-- Adding class icons on party members inside arena for more clarity where teammates are positioned
local classmarkers = {
    ["ROGUE"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Rogue",
    ["PRIEST"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Priest",
    ["WARRIOR"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Warrior",
    ["PALADIN"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Paladin",
    ["HUNTER"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Hunter",
    ["DRUID"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Druid",
    ["MAGE"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Mage",
    ["SHAMAN"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Shaman",
    ["WARLOCK"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Warlock",
    ["DEATHKNIGHT"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\DeathKnight",
    ["Shadowfiend"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Fiend",
    ["Elemental"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Elemental",
}

local tremorTotems = {} -- {[totem GUID] = {[shaman]=GUID, nameplate=<nameplate frame>}, ...}
local nameplatesToRecheck = {}

local plateEventFrame = CreateFrame("Frame")
plateEventFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

local function HideNameplate(nameplate)
    if nameplate.UnitFrame then
        nameplate.wasHidden = true
        nameplate.UnitFrame:Hide()
    end
end

local CastBarVisuals
local function EvolveUI_UpdateAnchors(self)
    if self:IsForbidden() then return end

    local hb = self.HealthBarsContainer
    local hBar = self.healthBar or (hb and hb.healthBar)
    if not hb or not hBar then return end

    hBar:ClearAllPoints()
    hBar:SetPoint("TOPLEFT", hb, "TOPLEFT", 4, 0)
    hBar:SetPoint("BOTTOMRIGHT", hb, "BOTTOMRIGHT", -4, 0)

	-- Adding in back the background hp status nameplate texture that retarded company Blizzard removed in 2.5.6
    if not hBar.EvolveHealthBG then
        local bg = hBar:CreateTexture(nil, "BACKGROUND")
        bg:SetAllPoints(hBar)
        bg:SetColorTexture(0.2, 0.2, 0.2, 0.85)
        hBar.EvolveHealthBG = bg
    end

    -- Pin the name centered above the health bar (matches CenteredAboveHealthBar).
    if self.name then
        self.name:ClearAllPoints()
        self.name:SetPoint("BOTTOM", hb, "TOP", 0, 2)
        self.name:SetJustifyH("CENTER")
    end

    -- Swap the border texture only -- do NOT re-anchor it.
    local borderTex = hBar.bgTexture
    if borderTex then
        local unit = self.unit or self.displayedUnit
        if unit then
            if UnitIsUnit("target", unit) then
                borderTex:SetTexture("Interface\\AddOns\\TextureScript\\Nameplate-Border-Target-Highlight")
            else
                local name = UnitName(unit)
                if name == "Tremor Totem" then
                    borderTex:SetTexture("Interface\\AddOns\\TextureScript\\Nameplate-Border-TREMOR.blp")
                elseif name == "Ebon Gargoyle" then
                    borderTex:SetTexture("Interface\\AddOns\\TextureScript\\Nameplate-Border-GARGOYLE.blp")
                else
                    borderTex:SetTexture("Interface\\AddOns\\TextureScript\\Nameplate-Border.blp")
                end
            end
        end
    end
end

function CastBarVisuals(self)
    if not self or self:IsForbidden() then return end
    local container = self:GetParent()
    local unitFrame = container and container:GetParent()
    if not unitFrame then return end

    if self.Text then
        self.Text:ClearAllPoints()
        if self.classicStyleCastBar then
            self.Text:SetPoint("TOPLEFT", self, "TOPLEFT", 0, 0)
            self.Text:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", 0, 0)
        elseif self.Icon then
            self.Text:SetPoint("LEFT", self.Icon, "RIGHT", 2, 1)
        end
        self.Text:Show()
    end
    
    if self.Spark then
        self.Spark.offsetY = self.classicStyleCastBar and 0 or 1
    end

    -- hide cast bars on friendly units (was in the old
    -- Nameplate_CastBar_AdjustPosition hook, which no longer exists)
    local u = unitFrame.unit or unitFrame.displayedUnit
    if u and UnitIsFriend("player", u) and not UnitIsEnemy("player", u) then
        self:Hide()
    end
end

local function HandleNewNameplate(nameplate, unit)
    local name = UnitName(unit)
    if name == "Unknown" then
        nameplate.recheckGuid = UnitGUID(unit)
        nameplatesToRecheck[UnitGUID(unit)] = nameplate
        plateEventFrame:Show()
        return
    end

    local creatureType, _, _, _, _, npcId = string_split("-", UnitGUID(unit))
    
    if (name == "Tremor Totem" or npcId == "417") and UnitIsFriend("player", unit) then
        HideNameplate(nameplate)
    elseif name:match("Totem") and not name:match("Tremor Totem") then
        HideNameplate(nameplate)
    elseif (HideNameplateUnits[name] or HideNameplateUnits[npcId])
            or (creatureType == "Pet" and not ShowNameplatePetIds[npcId]) then
        HideNameplate(nameplate)
    elseif ShrinkPlates[name] then
        nameplate.UnitFrame:ClearAllPoints()
        nameplate.UnitFrame:SetPoint("TOPLEFT", nameplate, "TOPLEFT", 60, 0)
        nameplate.UnitFrame:SetPoint("BOTTOMRIGHT", nameplate, "BOTTOMRIGHT", -67, 0)
        nameplate.UnitFrame:SetScale(0.5)
        nameplate.UnitFrame.name:SetAlpha(0)
    elseif name == "Tremor Totem" then
        local guid = UnitGUID(unit)
        if guid then
            local totem = tremorTotems[guid]
            if totem then
                totem.nameplate = nameplate
            else
                tremorTotems[guid] = { ["shaman"] = "Unknown", ["nameplate"] = nameplate }
            end
            nameplate.tremorTotemGuid = guid
        end
        -- border swap now handled via healthBar.bgTexture inside EvolveUI_UpdateAnchors
        if nameplate.UnitFrame then EvolveUI_UpdateAnchors(nameplate.UnitFrame) end
    elseif name == "Ebon Gargoyle" then
        if nameplate.UnitFrame then EvolveUI_UpdateAnchors(nameplate.UnitFrame) end
    end
end

local function plateOnUpdateFrame()
    for guid, nameplate in pairs(nameplatesToRecheck) do
        nameplatesToRecheck[guid] = nil
        if nameplate.recheckGuid == guid and nameplate.UnitFrame then
            HandleNewNameplate(nameplate, nameplate.UnitFrame.displayedUnit)
        end
    end

    if next(nameplatesToRecheck) == nil then
        plateEventFrame:Hide()
    end
end

plateEventFrame:SetScript("OnUpdate", plateOnUpdateFrame)
plateEventFrame:Hide()


-- PlaySound whenever an enemy casts Tremor Totem inside arena
local COMBATLOG_FILTER_HOSTILE_PLAYERS = COMBATLOG_FILTER_HOSTILE_PLAYERS;
local CombatLog_Object_IsA = CombatLog_Object_IsA
local eventRegistered = {
    ["SPELL_CAST_SUCCESS"] = true,
    ["SPELL_SUMMON"] = true,
    ["SWING_DAMAGE"] = true,
    ["RANGE_DAMAGE"] = true,
    ["SPELL_DAMAGE"] = true,

}

local function PlateScript()
    local _, action, _, sourceGuid, _, sourceFlags, _, destGuid, destName, _, _, ex1, _, _, ex4 = CombatLogGetCurrentEventInfo()
    local isSourceEnemy = CombatLog_Object_IsA(sourceFlags, COMBATLOG_FILTER_HOSTILE_PLAYERS)
    local _, instanceType = IsInInstance()

    if not (eventRegistered[action]) then
        return
    end

    if isSourceEnemy and instanceType == "arena" and ex1 == 8143 and action == "SPELL_CAST_SUCCESS" then
        PlaySound(12889)
    end

    if destName == "Tremor Totem" then
        if action == "SPELL_SUMMON" then
            if destName == "Tremor Totem" then
                for totem, info in pairs(tremorTotems) do
                    if info.shaman == sourceGuid then
                        local nameplate = info.nameplate
                        if nameplate and nameplate.tremorTotemGuid == totem and nameplate.UnitFrame then
                            nameplate.wasHidden = true
                            nameplate.UnitFrame:Hide()
                        end
                    end
                end
                tremorTotems[destGuid] = { ["shaman"] = sourceGuid }
            end
        else
            local damage
            if action == "SWING_DAMAGE" or action == "RANGE_DAMAGE" then
                damage = ex1
            elseif action == "SPELL_DAMAGE" then
                damage = ex4
            else
                damage = 0
            end

            if damage >= 5 then
                local totem = tremorTotems[destGuid]
                if totem then
                    local nameplate = totem.nameplate
                    if nameplate and nameplate.tremorTotemGuid == destGuid and nameplate.UnitFrame then
                        nameplate.wasHidden = true
                        nameplate.UnitFrame:Hide()
                    end
                end
            end
        end
    end
end

-- Custom colored Target & Focus Castbar
local spellColors = {
    --Mage
    ["Frostbolt"] = { r = 0, g = 0.67, b = 1 },
    ["Frostfire Bolt"] = { r = 0, g = 0.67, b = 1 },
    ["Polymorph"] = { r = 1, g = 1, b = 1 },
    ["Arcane Blast"] = { r = 1, g = 1, b = 1 },
    ["Arcane Missiles"] = { r = 1, g = 1, b = 1 },
    ["Blizzard"] = { r = 0, g = 0.67, b = 1 },
    ["Fireball"] = { r = 1, g = 0.16, b = 0 },
    ["Flamestrike"] = { r = 1, g = 0.16, b = 0 },
    ["Scorch"] = { r = 1, g = 0.16, b = 0 },
    --Priest
    ["Mana Burn"] = { r = 0.4, g = 0.4, b = 0.4 },
    ["Mind Blast"] = { r = 0.4, g = 0.4, b = 0.4 },
    ["Mind Flay"] = { r = 0.4, g = 0.4, b = 0.4 },
    ["Mind Sear"] = { r = 0.4, g = 0.4, b = 0.4 },
    ["Mind Control"] = { r = 0.4, g = 0.4, b = 0.4 },
    ["Vampiric Touch"] = { r = 0.4, g = 0.4, b = 0.4 },
    ["Flash Heal"] = { r = 0.6, g = 1, b = 0 },
    ["Greater Heal"] = { r = 0.6, g = 1, b = 0 },
    ["Binding Heal"] = { r = 0.6, g = 1, b = 0 },
    ["Heal"] = { r = 0.6, g = 1, b = 0 },
    ["Lesser Heal"] = { r = 0.6, g = 1, b = 0 },
    ["Prayer of Healing"] = { r = 0.6, g = 1, b = 0 },
    ["Divine Hymn"] = { r = 0.6, g = 1, b = 0 },
    ["Smite"] = { r = 1, g = 1, b = 0 },
    ["Holy Fire"] = { r = 1, g = 1, b = 0 },
    ["Hymn of Hope"] = { r = 0, g = 0.67, b = 1 },
    --Warlock
    ["Shadow Bolt"] = { r = 0.5, g = 0.2, b = 0.8 },
    ["Fear"] = { r = 0.5, g = 0.2, b = 0.8 },
    ["Howl of Terror"] = { r = 0.5, g = 0.2, b = 0.8 },
    ["Incinerate"] = { r = 1, g = 0.16, b = 0 },
    ["Searing Pain"] = { r = 1, g = 0.16, b = 0 },
    ["Rain of Fire"] = { r = 1, g = 0.16, b = 0 },
    ["Immolate"] = { r = 1, g = 0.16, b = 0 },
    ["Hellfire"] = { r = 1, g = 0.16, b = 0 },
    ["Soul Fire"] = { r = 1, g = 0.16, b = 0 },
    ["Drain Mana"] = { r = 0, g = 0.67, b = 1 },
    ["Drain Life"] = { r = 0.6, g = 1, b = 0 },
    ["Drain Soul"] = { r = 0.4, g = 0.4, b = 0.4 },
    --Druid
    ["Cyclone"] = { r = 0.4, g = 0.4, b = 0.4 },
    ["Entangling Roots"] = { r = 1, g = 0.5, b = 0 },
    ["Healing Touch"] = { r = 0.6, g = 1, b = 0 },
    ["Regrowth"] = { r = 0.6, g = 1, b = 0 },
    ["Nourish"] = { r = 0.6, g = 1, b = 0 },
    ["Tranquility"] = { r = 0.6, g = 1, b = 0 },
    ["Wrath"] = { r = 1, g = 1, b = 0 },
    ["Hurricane"] = { r = 0.4, g = 0.4, b = 0.4 },
    --Hunter
    --Shaman
    ["Healing Wave"] = { r = 0.6, g = 1, b = 0 },
    ["Chain Heal"] = { r = 0.6, g = 1, b = 0 },
    ["Lesser Healing Wave"] = { r = 0.6, g = 1, b = 0 },
    ["Lava Burst"] = { r = 1, g = 0.16, b = 0 },
    --Paladin
    ["Flash of Light"] = { r = 0.6, g = 1, b = 0 },
    ["Holy Light"] = { r = 0.6, g = 1, b = 0 },
    --Death Knight
}

local function getSpellColor(spellName)
    local color = spellColors[spellName]
    if color then
        return color.r, color.g, color.b
    else
        return 1.0, 0.7, 0.0
    end
end

for _, v in pairs({ TargetFrameSpellBar, FocusFrameSpellBar }) do
    if v then
        v:HookScript("OnUpdate", function(self, elapsed)
            local r, g, b
            local castText = self.Text and self.Text:GetText()

            if castText == INTERRUPTED or castText == FAILED then
                self.holdTime = 0 -- faster fade out
                return
            else
                local name = UnitCastingInfo(self.unit)

                if not name then
                    name = UnitChannelInfo(self.unit)
                end
                if not name then
                    return
                end
                local r, g, b = getSpellColor(name)
                self:SetStatusBarColor(r, g, b)
            end
        end)
    end
end

local function ClassIcons(nameplate, unit)
    local _, unitClass = UnitClass(unit)
    local name = UnitName(unit)

    if (UnitIsPlayer(unit) and UnitIsFriend("player", unit) and not UnitIsEnemy("player", unit)) or (UnitIsFriend("player", unit) and name and (name == "Shadowfiend" or name == "Water Elemental")) then
        if not nameplate.UnitFrame.texture then
            nameplate.UnitFrame.texture = nameplate.UnitFrame:CreateTexture(nil, "OVERLAY")
            nameplate.UnitFrame.texture:SetSize(55, 55)
            nameplate.UnitFrame.texture:SetPoint("CENTER", nameplate.UnitFrame, "CENTER", 0, 20)
            nameplate.UnitFrame.texture:Hide()
        end
        if name == "Shadowfiend" then
            unitClass = "Shadowfiend"
        elseif name == "Water Elemental" then
            unitClass = "Elemental"
        end
        if unitClass then
            nameplate.UnitFrame.texture:SetTexture(classmarkers[unitClass])
            if not nameplate.UnitFrame.texture:IsShown() then
                nameplate.UnitFrame.texture:Show()
            end
        end
        if nameplate.UnitFrame.name:GetAlpha() > 0 then
            nameplate.UnitFrame.name:SetAlpha(0)
        end
        if nameplate.UnitFrame.HealthBarsContainer:GetAlpha() > 0 then
            nameplate.UnitFrame.HealthBarsContainer:SetAlpha(0)
        end
        if nameplate.UnitFrame.LevelFrame and nameplate.UnitFrame.LevelFrame:GetAlpha() > 0 then
            nameplate.UnitFrame.LevelFrame:SetAlpha(0)
        end
        if nameplate.UnitFrame.selectionHighlight and nameplate.UnitFrame.selectionHighlight:GetAlpha() > 0 then
            nameplate.UnitFrame.selectionHighlight:SetAlpha(0)
        end
        if nameplate.UnitFrame.RaidTargetFrame and nameplate.UnitFrame.RaidTargetFrame:GetAlpha() > 0 then
            nameplate.UnitFrame.RaidTargetFrame:SetAlpha(0)
        end
    else
        if nameplate.UnitFrame.texture then
            nameplate.UnitFrame.texture:Hide()
        end
        if nameplate.UnitFrame.name:GetAlpha() < 1 then
            nameplate.UnitFrame.name:SetAlpha(1)
        end
        if nameplate.UnitFrame.HealthBarsContainer:GetAlpha() < 1 then
            nameplate.UnitFrame.HealthBarsContainer:SetAlpha(1)
        end
        if nameplate.UnitFrame.LevelFrame and nameplate.UnitFrame.LevelFrame:GetAlpha() < 1 then
            nameplate.UnitFrame.LevelFrame:SetAlpha(1)
        end
        if nameplate.UnitFrame.RaidTargetFrame and nameplate.UnitFrame.RaidTargetFrame:GetAlpha() < 1 then
            nameplate.UnitFrame.RaidTargetFrame:SetAlpha(1)
        end
    end
end

local function AddPlates(unit)
    local nameplate = C_NamePlate.GetNamePlateForUnit(unit)
    if not nameplate or nameplate:IsForbidden() then
        return
    end
    local frame = nameplate.UnitFrame
    if not frame then
        return
    end

    if not np[nameplate] then
        np[nameplate] = true
        nameplate:RegisterEvent("PLAYER_TARGET_CHANGED")
        nameplate:HookScript("OnEvent", function(self, event)
            if event == "PLAYER_TARGET_CHANGED" then
                if self.UnitFrame then
                    EvolveUI_UpdateAnchors(self.UnitFrame)
                end
            end
        end)
    end
    
    if not frame.EvolveUI_Hooked then
        if frame.UpdateAnchors then
            hooksecurefunc(frame, "UpdateAnchors", EvolveUI_UpdateAnchors)
        end

        local cb = frame.CastBarsContainer and frame.CastBarsContainer.castBar
        if cb then
            cb:HookScript("OnShow", CastBarVisuals)

            cb:HookScript("OnUpdate", function(self)
                local parent = self:GetParent():GetParent()
                local u = parent and (parent.unit or parent.namePlateUnitToken)
                if u then
                    local name = UnitCastingInfo(u)

                    if not name then
                        name = UnitChannelInfo(u)
                    end
                    if not name then
                        return
                    end
                    local r, g, b = getSpellColor(name)
                    self:SetStatusBarColor(r, g, b)
                end
            end)
        end

        frame.EvolveUI_Hooked = true
    end

    if frame.LevelFrame then
        frame.LevelFrame:Hide()
    end

    -- make the selection highlight a tiny bit smaller
    local sh = frame.selectionHighlight
    --sh:ClearAllPoints()
    --sh:SetPoint("TOPLEFT", sh:GetParent(), "TOPLEFT", 1, -1)
    --sh:SetPoint("BOTTOMRIGHT", sh:GetParent(), "BOTTOMRIGHT", -1, 1)
    if sh then
        sh:SetAlpha(0)
    end

    ClassIcons(nameplate, unit)

    -- This is needed to restore scale due to the ShrinkPlates
    if frame:GetScale() < 1.0 then
        frame:SetScale(1.0)
        frame:ClearAllPoints()
        frame:SetAllPoints(nameplate) -- undo the shrunk TOPLEFT/BOTTOMRIGHT offsets
        frame.name:SetAlpha(1.0)
    end

    EvolveUI_UpdateAnchors(frame) -- also positions the cast bar

    HandleNewNameplate(nameplate, unit)
end

local function RemovePlate(unit)
    local nameplate = C_NamePlate.GetNamePlateForUnit(unit)
    if not nameplate or nameplate:IsForbidden() then
        return
    end
    nameplate.tremorTotemGuid = nil
    tremorTotems[UnitGUID(unit) or ""] = nil
    if nameplate.UnitFrame then
        if nameplate.wasHidden then
            nameplate.wasHidden = nil
            nameplate.UnitFrame:Show()
        end
    end
end

hooksecurefunc("CompactUnitFrame_UpdateName", function(frame)
    if not frame.unit or frame:IsForbidden() or not string.find(frame.unit, "nameplate") then
        return
    end

    local unit = frame.unit
    local name = frame.name
    local _, unitClass = UnitClass(unit)

    if name then
        -- Add outline to the font
        local font, size, _ = name:GetFont()
        name:SetFont(font, size, "THICKOUTLINE") -- "OUTLINE" / "THICKOUTLINE" (subject to testing)

        -- Set text color based on class
        if unitClass and UnitIsPlayer(unit) then
            local classColor = CUSTOM_CLASS_COLORS[unitClass]
            if classColor then
                name:SetTextColor(classColor.r, classColor.g, classColor.b)
            else
                name:SetTextColor(1, 1, 1)
            end
        else
            name:SetTextColor(1, 1, 1)
        end
    end
end)


hooksecurefunc("CompactUnitFrame_UpdateHealthColor", function(frame)
    if not frame.unit or frame:IsForbidden() or not string.find(frame.unit, "nameplate") then
        return
    end

    if UnitIsConnected(frame.unit) and UnitIsPlayer(frame.unit) then
        local _, class = UnitClass(frame.unit)
        local c = CUSTOM_CLASS_COLORS[class]
        if c then
            frame.healthBar:SetStatusBarColor(c.r, c.g, c.b)
        end
    end
end)

-- Since we disabled macro & keybind text above, there is no way to tell when target is too far to cast on, so adding this mechanic instead... (colouring action bar buttons that are out of range & out of mana to be casted...)
-- Requires no #showtooltip in the macro (dogshit 2.5.5 client piss of shit)
local IsActionInRange = IsActionInRange
local IsUsableAction = IsUsableAction

local function EvolveRange(self)
    if not self.action then
        return
    end

    local icon = self.icon
    if not icon then
        return
    end

    local inRange = IsActionInRange(self.action)
    local isUsable, notEnoughMana = IsUsableAction(self.action)

    if inRange == false then
        if notEnoughMana then
            icon:SetVertexColor(0.3, 0.3, 0.3, 1.0)
            icon:SetDesaturated(false)
        else
            icon:SetVertexColor(1.0, 0.35, 0.35, 0.75)
            icon:SetDesaturated(true)
        end
    else
        if isUsable then
            icon:SetVertexColor(1.0, 1.0, 1.0, 1.0)
            icon:SetDesaturated(false)
        elseif notEnoughMana then
            icon:SetVertexColor(0.3, 0.3, 0.3, 1.0)
            icon:SetDesaturated(true)
        else
            icon:SetVertexColor(0.4, 0.4, 0.4, 1.0)
            icon:SetDesaturated(true)
        end
    end

    -- Fix disappearing black borders
    if self.NormalTexture and not self.NormalTexture:IsShown() then
        self.NormalTexture:Show()
    end
end

-- Remove debuffs from Target of Target frame
for name, totFrame in pairs({
    TargetFrameToT = TargetFrameToT,
    FocusFrameToT  = FocusFrameToT,
}) do
    for i = 1, 4 do
        local dbf = _G[name .. "Debuff" .. i]
        if dbf then
            dbf:HookScript("OnShow", dbf.Hide)
            dbf:Hide()
        end
    end
end

-- Change position of widget showing below minimap
local WIDGET_FRAME_NAME = "UIWidgetBelowMinimapContainerFrame"
local widget = _G[WIDGET_FRAME_NAME]
local addonFrame = CreateFrame("Frame")
-- Function to handle the frame repositioning
local function MoveWidget()
    if widget and _G["MinimapCluster"] then
        --Clear existing anchors
        widget:ClearAllPoints()
        -- Anchor the TOPRIGHT of your widget to the TOPRIGHT of the Minimap
        widget:SetPoint("TOPLEFT", _G["MinimapCluster"], "BOTTOMLEFT", -150, -320)
    end
end

-- copy pasting features from wotlk classic

-- leave arena on PVP icon doubleclick (useful when playing against RM/RR retards)
MiniMapBattlefieldFrame:HookScript("OnDoubleClick", function()
    if inArena then
        LeaveBattlefield()
    end
end)

-- more wrath stuff idk??

local function PlateNames(frame)
    if not frame or frame:IsForbidden() then
        return
    end

    if frame.unit and UnitExists(frame.unit) and strfind(frame.unit, "nameplate") then
        -- static pet names for more clarity
        local _, _, _, _, _, npcId = string_split("-", UnitGUID(frame.unit))
        if npcId == "1863" then
            frame.name:SetText("Succubus")
        elseif npcId == "417" then
            frame.name:SetText("Felhunter")
        elseif npcId == "185317" then
            frame.name:SetText("Succubus")
        end

        if UnitIsPlayer(frame.unit) then
            frame.name:SetText((UnitName(frame.unit)):gsub("%-.*", "")) -- not sure if UnitName() adds the realm so :gsub() might not be needed
        end
    end
end

-- wrath stuff end

-- Skip certain gossip_menu windows for vendors and especially arena/bg NPCs --> can be bypassed by pressing ctrl/alt/shift
local gossipSkipIcon = {
    [132050] = 1, -- banker
    [132051] = 1, -- battlemaster
    [132057] = 1, -- taxi
    [132058] = 1, -- trainer
    [132060] = 1, -- vendor
    [528409] = 1, -- Dalaran auction house
}

local IsShiftKeyDown, IsAltKeyDown, IsControlKeyDown = IsShiftKeyDown, IsAltKeyDown, IsControlKeyDown
local GetNumGossipActiveQuests, GetNumGossipAvailableQuests = C_GossipInfo.GetNumActiveQuests, C_GossipInfo.GetNumAvailableQuests
local SelectGossipOption, Dismount = C_GossipInfo.SelectOption, Dismount

local function skipEventFrame()
    local options = C_GossipInfo.GetOptions()
    local numOptions = #options

    if not IsShiftKeyDown() and numOptions == 1 and GetNumGossipActiveQuests() == 0 and GetNumGossipAvailableQuests() == 0 then
        if gossipSkipIcon[options[1].icon] then
            SelectGossipOption(options[1].gossipOptionID)
            if options[1].icon == 132057 then
                -- taxi
                Dismount()
            end
            return
        end
    end
    if numOptions > 0 and not IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown() then
        for _, v in ipairs(options) do
            if v.icon == 132060 then
                -- vendor
                SelectGossipOption(v.gossipOptionID)
                return
            end
        end
    end
end

-- There doesnt seem to be any animation on 2.5.5 (just keeping it in here in case this shit comes back...)
-- Removing the flashing animation of coooldown finish at action bars
--for k, v in pairs(_G) do
--    if type(v) == "table" and type(v.SetDrawBling) == "function" then
--        v:SetDrawBling(false)
--    end
--end
--hooksecurefunc(getmetatable(ActionButton1Cooldown).__index, 'SetCooldown', function(self)
--    self:SetDrawBling(false)
--end)

-- Distinguish r1 debuffs from the full-rank ones
local pinkSpells = {
    [589] = true, -- SW:P (pain)
    [8921] = true, -- Moonfire
    [5570] = true, -- Swarm Insect
};

local function Evolve_Auras(self)
    for index, info in ipairs(self.auraFrames) do
        local dbf = C_UnitAuras.GetDebuffDataByIndex("player", index)
        if dbf and dbf.spellId and pinkSpells[dbf.spellId] then
            info.DebuffBorder:SetVertexColor(0.78, 0.61, 0.43)
        end
    end
end
hooksecurefunc(DebuffFrame, "Update", Evolve_Auras)


--Action bar buttons are now bigger, better looking and also fixes spellbook/wep switch bugging of dark theme [CHATGPT Fix 2.5.5]
local bars = {
    "Action", "MultiBarBottomLeft", "MultiBarBottomRight",
    "MultiBarLeft", "MultiBarRight", "Stance", "PetAction", "BonusAction"
}

for _, bar in ipairs(bars) do
    for i = 1, 12 do
        local btnName = bar .. "Button" .. i
        local button = _G[btnName]
        if button then
            -- Fix icon tex coords
            local icon = _G[btnName .. "Icon"]
            if icon then
                icon:SetTexCoord(0.06, 0.94, 0.06, 0.94)
            end

            -- Fix NormalTexture color
            if button:GetNormalTexture() then
                button:GetNormalTexture():SetVertexColor(1, 1, 1, 1)
            end
        end
    end
end

-- PetActionButtons are only 10
for i = 1, 10 do
    local button = _G["PetActionButton"..i]
    if button then
        local icon = _G["PetActionButton"..i.."Icon"]
        if icon then
            icon:SetTexCoord(0.06, 0.94, 0.06, 0.94)
        end
        if button:GetNormalTexture() then
            button:GetNormalTexture():SetVertexColor(1, 1, 1, 1)
        end
    end
end

-- Move the Target,Focus and ToT names slightly & change the text formating/size/outlines and shit
local function StyleUnitName(frame, offsetX, offsetY)
    if not frame or not frame.name or not frame.portrait then return end

    local nameText = frame.name
    local font, size = nameText:GetFont()

    nameText:SetFont(font, size + 1, "THICKOUTLINE")

    nameText:ClearAllPoints()
    nameText:SetPoint("LEFT", frame.portrait, "RIGHT", offsetX or -0.5, offsetY or -16)
end

-- Target-of-Target
StyleUnitName(TargetFrameToT, -0.5, -16)

-- Focus Target-of-Target
StyleUnitName(FocusFrameToT, -0.5, -16)

-- Target frame
StyleUnitName(TargetFrame, -173, 30)

-- Focus frame
StyleUnitName(FocusFrame, -173, 30)

-- Disable the default Blizzard shit arena timer tracker that is never correct... like wtf are u doing... the most dogshit lazy ignorant and incompetent company i have ever seen, the enshitification of wow with retail dogshit continues
TimerTracker:UnregisterAllEvents()

-- AUTO-TAB BINDING SWITCHER (PvP vs PvE)
local TabSwitcherFrame = CreateFrame("Frame")

local TAB_KEYS = {
    primary = "TAB"
}

local function UpdateTabBindings()
    -- Important: Bindings cannot be changed while in combat
    if InCombatLockdown() then 
        -- If we are in combat, register to try again when combat ends
        TabSwitcherFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
        return 
    end

    local _, instanceType = IsInInstance()
    local isPvp = (instanceType == "pvp" or instanceType == "arena")

    if isPvp then
        -- PvP Mode: Target Players only
        SetBinding(TAB_KEYS.primary, "TARGETNEARESTENEMYPLAYER")
    else
        -- PvE Mode: Target all Enemies
        SetBinding(TAB_KEYS.primary, "TARGETNEARESTENEMY")
    end
end

TabSwitcherFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_REGEN_ENABLED" then
        UpdateTabBindings()
        self:UnregisterEvent("PLAYER_REGEN_ENABLED")
    else
        UpdateTabBindings()
    end
end)

-- Events that should trigger a binding check
TabSwitcherFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
TabSwitcherFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

-- Initial run on file load
UpdateTabBindings()

-- FPS counter positioning
local holder = CreateFrame("Frame", "FPSHolder", UIParent)
holder:SetSize(60, 20)
holder:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -680, -720)
FramerateLabel:ClearAllPoints()
FramerateLabel:SetPoint("CENTER", holder, "CENTER")

-- Attempt to hackfix the bugged Floating Combat Text randomly being turned off despite being turned on ... dogshit client ... dogshit company
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")

frame:SetScript("OnEvent", function(self, event, isLogin, isReload)
    SetCVar("enableFloatingCombatText", "0")
    C_Timer.After(1.5, function()
        SetCVar("enableFloatingCombatText", "1")
    end)
end)

-- Attempt to hackfix dogshit 2.5.6 nameplates triggering display level randomly 
hooksecurefunc("CompactUnitFrame_UpdateLevel", function(frame)
                if frame and not frame:IsForbidden() and frame.unit and frame.unit:find("nameplate") then
                    if frame.LevelFrame then
                        frame.LevelFrame:Hide()
                    end
                end
             end)

-- TEMP XYZ PARTY SPACING TEMP
local eAnchor = CreateFrame("Frame", nil, UIParent, "SecureFrameTemplate")
eAnchor:SetAllPoints(PartyFrame)

local manager = CreateFrame("Frame", nil, UIParent, "SecureHandlerStateTemplate")
SecureHandlerSetFrameRef(manager, "PartyFrameAnchor", eAnchor)

manager:SetAttribute("_onstate-run", [[
    if newstate == "ignore" then return end

    local anchor = self:GetFrameRef("PartyFrameAnchor")
    if not anchor then return end

    for i = 1, 4 do
        local frm = self:GetFrameRef("pf" .. i)
        if frm and frm:IsShown() then
            local _, _, _, ofsx, ofsy = frm:GetPoint()
            if not ofsx or not ofsy then return end

            local baseY = frm:GetAttribute("BaseY")
            local expectedY = frm:GetAttribute("ExpectedY")

            if not baseY or (expectedY and math.abs(ofsy - expectedY) > 0.5) then
                baseY = ofsy
                frm:SetAttribute("BaseY", baseY)
            end

            local yAdjustment = (i - 1) * 25
            local newY = baseY - yAdjustment

            frm:ClearAllPoints()
            frm:SetPoint("TOPLEFT", anchor, "TOPLEFT", ofsx, newY)
            frm:SetAttribute("ExpectedY", newY)
        end
    end
]])

local pframes = {}
local function SetupFrame(pFrame)
    if pFrame.unit and string.match(pFrame.unit, "^party%d") then
        local index = tonumber(string.match(pFrame.unit, "%d+"))
        if index and index >= 1 and index <= 4 and not pframes[pFrame] then
            pframes[pFrame] = true
            
            SecureHandlerSetFrameRef(manager, "pf" .. index, pFrame)
            
            SecureHandlerWrapScript(pFrame, "OnShow", manager, [[
                control:SetAttribute("state-run", "ignore")
            ]])
            SecureHandlerWrapScript(pFrame, "OnHide", manager, [[
                control:SetAttribute("state-run", "ignore")
            ]])
            SecureHandlerWrapScript(pFrame, "OnAttributeChanged", manager, [[
                if name == "unit" then
                    control:SetAttribute("state-run", "ignore")
                end
            ]])
        end
    end
end

for pFrame in PartyFrame.PartyMemberFramePool:EnumerateActive() do 
    SetupFrame(pFrame) 
end

RegisterAttributeDriver(manager, "state-run", "[pet] pet; nopet;")
manager:SetAttribute("state-run", "ignore")





local evolvedFrame = CreateFrame("Frame")
evolvedFrame:RegisterEvent("ADDON_LOADED")
evolvedFrame:RegisterEvent("PLAYER_LOGIN")
evolvedFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
evolvedFrame:RegisterEvent("GOSSIP_SHOW")
evolvedFrame:RegisterEvent("UPDATE_BINDINGS")
evolvedFrame:RegisterUnitEvent("UNIT_PET", "player")
evolvedFrame:RegisterEvent("NAME_PLATE_UNIT_ADDED")
evolvedFrame:RegisterEvent("NAME_PLATE_UNIT_REMOVED")
evolvedFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        CustomCvar() -- Set our CVAR values
        OnInit() -- Init tons of shit
        --SetSmooth() -- SmoothBar init (removed since using Xyz´s smooth shit now)
        hooksecurefunc("CompactUnitFrame_UpdateName", PlateNames) -- has to be called after event
        UpdateBinds(self)
		MoveWidget() -- UIWidgetBelowMinimapContainerFrame
	-- EvolveRange thingy
		ActionBarButtonUpdateFrame:SetScript("OnUpdate", nil)
        ActionBarButtonEventsFrame:HookScript("OnUpdate", function(self)
            for _, btn in pairs(self.frames) do
                EvolveRange(btn)
            end
        end)
	-- end of EvolveRange thingy
	-- Hiding some 2.5.5 shit that requires event handling
		C_Timer.After(0.5, function()
            -- Hide the Chat Frame Menu Button
            if ChatFrameMenuButton then
                ChatFrameMenuButton:Hide()
            end
			-- Hide the Chat Channel Button
			if ChatFrameChannelButton then
				ChatFrameChannelButton:Hide()
			end
			-- Hide the Friends button next to chat
			if FriendsMicroButton then
				FriendsMicroButton:Hide()
			end
			-- Hide the Looking For Group (LFG) Minimap Button container
			if LFGMinimapFrame then
				LFGMinimapFrame:HookScript("OnShow", LFGMinimapFrame.Hide)
				LFGMinimapFrame:Hide()
			end
        end)
	-- end of Hiding some 2.5.5 chat shit
        self:UnregisterEvent("PLAYER_LOGIN")
    elseif event == "PLAYER_REGEN_ENABLED" then
        -- UpdateBinds was deferred due to combat lockdown
        self:UnregisterEvent("PLAYER_REGEN_ENABLED")
        UpdateBinds(self)
    elseif event == "UNIT_PET" then
        if not UnitExists("pet") then
            return
        end
        local _, type = IsInInstance()
        if type ~= "arena" then
            return
        end
        if GetRaidTargetIndex("pet") ~= 3 then
            SetRaidTarget("pet", 3)
        end
    elseif event == "UPDATE_BINDINGS" then
        UpdateBinds(self)
    elseif event == "ADDON_LOADED" then
        local addon = ...
        DarkenFrames(addon)
        -- keep listening until Blizzard_TimeManager loads so its clock gets recolored too
        if addon == "Blizzard_TimeManager" then
            self:UnregisterEvent("ADDON_LOADED")
        end
    elseif event == "PLAYER_ENTERING_WORLD" then
        local _, type = IsInInstance()
        if type == "arena" then
            if GetCVar("nameplateShowFriendlyPlayers") == "0" then
                SetCVar("nameplateShowFriendlyPlayers", 1)
            end
			-- needed for Elemental/Shadowfiend icon texture to be displayed?
			if GetCVar("nameplateShowFriendlyPlayerMinions") == "0" then
                SetCVar("nameplateShowFriendlyPlayerMinions", 1)
            end
            inArena = true
        else
            if GetCVar("nameplateShowFriendlyPlayers") == "1" then
                SetCVar("nameplateShowFriendlyPlayers", 0)
            end
			-- needed for Elemental/Shadowfiend icon texture to be displayed?
			if GetCVar("nameplateShowFriendlyPlayerMinions") == "1" then
                SetCVar("nameplateShowFriendlyPlayerMinions", 0)
            end
            inArena = false
        end

        -- clear the totems on loading screens
        tremorTotems = {}

        if type == "raid" then
            plateEventFrame:SetScript("OnEvent", nil)
            SetCVar("floatingCombatTextCombatHealing", 0)
        else
            plateEventFrame:SetScript("OnEvent", PlateScript)
        end
    elseif event == "GOSSIP_SHOW" then
        skipEventFrame()
    elseif event == "NAME_PLATE_UNIT_ADDED" then
        local unit = ...
        AddPlates(unit)
    elseif event == "NAME_PLATE_UNIT_REMOVED" then
        local unit = ...
        RemovePlate(unit)
    end
end)


--[[

/console SpellQueueWindow 150
(100+ latency)

/console set weatherdensity 0
/console WeatherDensity 0

/console chatMouseScroll 0

/console rawMouseEnable 1
/run SetConsoleKey(";")

cameraPitchMoveSpeed 180
cameraYawSmoothSpeed 360
cameraYawMoveSpeed 360
TurnSpeed 235

mouse look speed 14.5
autofollowspeed 14.5
enable mouse sensitivity (YES) - value 3

--]]


COMBAT_TEXT_RESIST = "FUCK BLIZZARD"

--Login message informing all scripts of this file were properly executed
ChatFrame1:AddMessage("EvolvePWPUI-ClassicTBC-Anniversary v1.3 Loaded successfully!", 0, 205, 255)
ChatFrame1:AddMessage("Check for updates at:", 89, 89, 89)
ChatFrame1:AddMessage("https://github.com/Evolvee/EvolvePWPUI-ClassicTBC-Anniversary", 89, 89, 89)