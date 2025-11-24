--EVOLVE PWP UI

local string_match = string.match
local table_insert = table.insert
local table_remove = table.remove
local GetTime, UnitCastingInfo, UnitChannelInfo = GetTime, UnitCastingInfo, UnitChannelInfo
local np = {}
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

--dark theme
local function DarkenFrames(addon)
    for _, v in pairs({
        PlayerFrameTexture,
        TargetFrameTextureFrameTexture,
        TargetFrameToTTextureFrameTexture,
        FocusFrameToTTextureFrameTexture,
        FocusFrameTextureFrameTexture,
        PetFrameTexture,
        PartyMemberFrame1Texture,
        PartyMemberFrame2Texture,
        PartyMemberFrame3Texture,
        PartyMemberFrame4Texture,
        SlidingActionBarTexture0,
        SlidingActionBarTexture1,
        MainMenuBarLeftEndCap,
        MainMenuBarRightEndCap,
        PartyMemberFrame1PetFrameTexture,
        PartyMemberFrame2PetFrameTexture,
        PartyMemberFrame3PetFrameTexture,
        PartyMemberFrame4PetFrameTexture,
        TargetofTargetTexture,
        TargetofFocusTexture,
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
        MinimapBorder,
        CastingBarFrameBorder,
        MiniMapBattlefieldBorder,
        FocusFrameSpellBarBorder,
        CastingBarBorder,
        TargetFrameSpellBarBorder,
        MiniMapTrackingButtonBorder,
        MiniMapLFGFrameBorder,
        MainMenuXPBarTexture0,
        MainMenuXPBarTexture1,
        MainMenuXPBarTexture2,
        MainMenuXPBarTexture3,
        ReputationXPBarTexture0,
        ReputationXPBarTexture1,
        ReputationXPBarTexture2,
        ReputationXPBarTexture3,
        MainMenuXPBarTextureMid,
        MiniMapBattlefieldBorder,
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

    local a, b, c, d, e, f, _, _, _, _, _, l = WorldStateScoreFrame:GetRegions()
    for _, v in pairs({ a, b, c, d, e, f, l }) do
        if v then
            v:SetVertexColor(0.15, 0.15, 0.15)
        end
    end
end

-- CVars
local cvars = {
    ShowClassColorInFriendlyNameplate = "1",
	ShowClassColorInNameplate = "1",
	nameplateMaxDistance = "41",
	nameplateGlobalScale = "1.12",
    threatWarning = "0",
    predictedHealth = "1",
    Sound_EnableDSPEffects = "0",
    countdownForCooldowns = "1",
    nameplateShowFriendlyNPCs = "0",
    nameplateShowFriendlyMinions = "0",
    nameplateShowFriendlyPets = "0",
    nameplateShowFriendlyTotems = "0",
    showPartyPets = "0",
	UnitNameFriendlySpecialNPCName = "0",
    UnitNameHostleNPC = "0",
    UnitNameInteractiveNPC = "0"
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
        _G["GuildFrameButton" .. i .. "Class"]:SetTextColor(color.r, color.g, color.b)
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
	567407, -- Chat scroll button
}

local tooltipOwnerBlacklist = {
    "ActionButton%d+$", -- bar buttons
    "MultiBarBottomLeftButton",
    "MultiBarBottomRightButton",
    "MultiBarLeftButton",
    "MultiBarRightButton",
    "MinimapZoneTextButton",
    "CharacterMicroButton",
    "SpellbookMicroButton",
    "TalentMicroButton",
    "QuestLogMicroButton",
    "SocialsMicroButton",
    "LFGMicroButton",
    "HelpMicroButton",
    "^KeyRingButton$", -- key ring
    "^CharacterBag%dSlot$", -- bags
    "^MainMenuBarBackpackButton$", -- backpack
}

local function PlayerFrameArt()
    PlayerFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame")
    PlayerStatusTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-Player-Status")
    PlayerFrameHealthBar:SetPoint("TOPLEFT", 93, -28)
    PlayerFrameHealthBar:SetWidth(117)
    PlayerFrameHealthBar:SetHeight(27)
    PlayerName:SetPoint("CENTER", 50, 35)
    PlayerFrameHealthBarText:SetPoint("CENTER", 35, 8)
    PlayerFrameHealthBarText:SetFont("Fonts/FRIZQT__.TTF", 16, "OUTLINE")
    PlayerFrameManaBarText:SetFont("Fonts/FRIZQT__.TTF", 10, "OUTLINE")
end
hooksecurefunc("PlayerFrame_ToPlayerArt", PlayerFrameArt)

-- Create PartyMemberFrame StatusText
for pFrame in PartyFrame.PartyMemberFramePool:EnumerateActive() do

    pFrame:SetScale(1.25)
    pFrame.PartyMemberOverlay.Texture:SetTexture("Interface\\AddOns\\TextureScript\\UI-PartyFrame")
    pFrame.HealthBar:SetWidth(70)
    pFrame.HealthBar:SetHeight(18)
    pFrame.ManaBar:SetWidth(71)
    pFrame.ManaBar:SetHeight(10)
    pFrame.HealthBar:SetPoint("TOPLEFT", 45, -14)
    pFrame.ManaBar:SetPoint("TOPLEFT", 45, -32)

    pFrame.PartyMemberOverlay.LeaderIcon:SetAlpha(0)
    pFrame.PartyMemberOverlay.MasterIcon:SetAlpha(0)

    local healthText = pFrame.healthbar:CreateFontString(nil, "OVERLAY", "GameFontWhite")
    healthText:SetFont("Fonts/FRIZQT__.TTF", 15, "OUTLINE")
    healthText:SetPoint("CENTER")
    healthText:Show()

    local manaText = pFrame.manabar:CreateFontString(nil, "OVERLAY", "GameFontWhite")
    manaText:SetFont("Fonts/FRIZQT__.TTF", 9, "OUTLINE")
    manaText:SetPoint("CENTER")
    manaText:Show()

    pFrame.healthbar.fontString = healthText
    pFrame.manabar.fontString = manaText

    pFrame.PartyMemberOverlay.Name:Hide()
    pFrame.PartyMemberOverlay.PVPIcon:SetAlpha(0)

    hooksecurefunc(pFrame, "UpdateMemberHealth", function(elapsed)
        local healthbar = pFrame.healthbar
        local manabar = pFrame.manabar
        local hp = healthbar.finalValue or healthbar:GetValue()
        local mana = manabar.finalValue or manabar:GetValue()
        local powertype = UnitPowerType(pFrame.unit)

        local _, class = UnitClass(pFrame.unit)
        local c = CUSTOM_CLASS_COLORS[class]
        if c then
            healthbar:SetStatusBarColor(c.r, c.g, c.b)
        end

        if hp ~= healthbar.lastTextValue then
            healthbar.lastTextValue = hp
            healthbar.fontString:SetText(healthbar.lastTextValue)
        end

        if powertype ~= 0 then
            manabar.fontString:SetText("")
            manabar.lastTextValue = -1
        elseif mana ~= manabar.lastTextValue then
            manabar.lastTextValue = mana
            manabar.fontString:SetText(manabar.lastTextValue)
        end

        if ((pFrame.unitHPPercent > 0) and (pFrame.unitHPPercent <= 0.2)) then
            pFrame.portrait:SetVertexColor(1, 1, 1, 1)
        end
    end)

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

    -- Color Clock
    select(1, TimeManagerClockButton:GetRegions()):SetVertexColor(0, 0, 0)

    -- Position
    FocusFrame:StopMovingOrSizing()
    FocusFrame:ClearAllPoints()
    FocusFrame:SetPoint("CENTER", UIParent, "CENTER", -237, 115)
    FocusFrame:SetUserPlaced(true)
    FocusFrame:SetAttribute("*type2", "target") -- right click target focus

    -- ToT texture closing the alpha gap (previously handled by ClassPortraits itself)
    TargetFrameToTTextureFrameTexture:SetVertexColor(0, 0, 0)

    -- Hide PVP Icon
    PlayerPVPIcon:SetAlpha(0)
    TargetFrameTextureFramePVPIcon:SetAlpha(0)
    FocusFrameTextureFramePVPIcon:SetAlpha(0)

    -- Player Frame, Focus Frame, Target Frame
    PlayerFrameArt()

    TargetFrameHealthBar:SetWidth(115)
    TargetFrameHealthBar:SetHeight(30)
    TargetFrameHealthBar:SetPoint("TOPRIGHT", -93, -25)
    TargetFrameTextureFrameName:SetPoint("CENTER", -30, 35)
    TargetFrameHealthBar.TextString:SetPoint("CENTER", -35, 8)
    TargetFrameHealthBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 16, "OUTLINE")
    TargetFrameManaBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 10, "OUTLINE")

    FocusFrameHealthBar:SetWidth(115)
    FocusFrameHealthBar:SetHeight(30)
    FocusFrameHealthBar:SetPoint("TOPRIGHT", -93, -25)
    FocusFrameTextureFrameName:SetPoint("CENTER", -30, 35)
    FocusFrameHealthBar.TextString:SetPoint("CENTER", -35, 8)
    FocusFrameHealthBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 16, "OUTLINE")
    FocusFrameManaBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 10, "OUTLINE")

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

    ChatFrameMenuButton:Hide()
	
    -- TargetFrame castbar slight up-scaling
    TargetFrameSpellBar:SetScale(1.1)

    -- FocusFrame castbar slight up-scaling
    FocusFrameSpellBar:SetScale(1.1)

    --removing character "C" button image
    MicroButtonPortrait:Hide()

    -- removing the retarded "latency" bar
    MainMenuMicroButton.PerformanceIndicator:SetAlpha(0)

    -- move target of target to the right side in order to allow cleaner vision of buffs/debuffs on a target/focus
    TargetFrameToT:ClearAllPoints();
    TargetFrameToT:SetPoint("RIGHT", "TargetFrame", "BOTTOMRIGHT", -20, 5);
    FocusFrameToT:ClearAllPoints();
    FocusFrameToT:SetPoint("RIGHT", "FocusFrame", "BOTTOMRIGHT", -20, 5);

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

        texture = _G["ActionButton" .. i]:GetHighlightTexture()
        if texture then
            texture:SetAlpha(0)
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
	
	-- Remove Fizzle sounds (this was previously done by replacing the actual sound in Data/Sounds)
    for _, fdid in pairs(sounds) do
        MuteSoundFile(fdid)
    end

    -- Hide	Macro & Keybind texts from Action Bar buttons
    for i = 1, 12 do
        _G["ActionButton" .. i .. "HotKey"]:SetAlpha(0)
        _G["MultiBarBottomRightButton" .. i .. "HotKey"]:SetAlpha(0)
        _G["MultiBarBottomLeftButton" .. i .. "HotKey"]:SetAlpha(0)
        _G["MultiBarRightButton" .. i .. "HotKey"]:SetAlpha(0)
        _G["MultiBarLeftButton" .. i .. "HotKey"]:SetAlpha(0)
    end
    for i = 1, 12 do
        _G["ActionButton" .. i .. "Name"]:SetAlpha(0)
        _G["MultiBarBottomRightButton" .. i .. "Name"]:SetAlpha(0)
        _G["MultiBarBottomLeftButton" .. i .. "Name"]:SetAlpha(0)
        _G["MultiBarRightButton" .. i .. "Name"]:SetAlpha(0)
        _G["MultiBarLeftButton" .. i .. "Name"]:SetAlpha(0)
    end
end

-- SpeedyActions level: Garage clicker & Pro Gaymer
local wahkFrames = {}
local buttonNames = {
    ["ACTIONBUTTON"] = "ActionButton",
    ["MULTIACTIONBAR1BUTTON"] = "MultiBarBottomLeftButton",
    ["MULTIACTIONBAR2BUTTON"] = "MultiBarBottomRightButton",
    ["MULTIACTIONBAR3BUTTON"] = "MultiBarRightButton",
    ["MULTIACTIONBAR4BUTTON"] = "MultiBarLeftButton",
    ["CLICK BT4Button"] = "BT4Button",
    ["MULTIACTIONBAR5BUTTON"] = "MultiBar5Button",
    ["MULTIACTIONBAR6BUTTON"] = "MultiBar6Button",
    ["MULTIACTIONBAR7BUTTON"] = "MultiBar7Button",
    ["CLICK DominosActionButton"] = "DominosActionButton",
}

local function ConvertActionButtonName(name)
    -- remove "CLICK "
    name = name:gsub("^CLICK ", "")
    -- remove ":Keybind"
    name = name:gsub(":Keybind$", "")

    if dominos or elvUI then
        if string.match(name, "Dominos") or string.match(name, "ElvUI") then
            name = name:gsub(":LeftButton", "")
            name = name:gsub(":HOTKEY", "")
        end
    end

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
    if button:match("BT4Button") then
        clickButton = ("CLICK %s:LeftButton"):format(button)
    elseif button:match("DominosActionButton") then
        clickButton = ("CLICK %s:HOTKEY"):format(button)
    end

    id = tonumber(button:match("(%d+)"))

    if button:match("MultiBar5") then
        id = tonumber(button:match("MultiBar5Button(%d+)"))
    elseif button:match("MultiBar6") then
        id = tonumber(button:match("MultiBar6Button(%d+)"))
    elseif button:match("MultiBar7") then
        id = tonumber(button:match("MultiBar7Button(%d+)"))
    end

    local actionButtonType = btn.buttonType
    local buttonType = actionButtonType and (actionButtonType .. id) or ("ACTIONBUTTON%d"):format(id)
    clickButton = buttonType or ("CLICK " .. button .. ":LeftButton")

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
        local action = GetBindingAction(v, true)
        if action and action ~= "" then
            btn = _G[ConvertActionButtonName(action)]
        end

        if btn then
            local btnName = btn:GetName()
            local clk = tostring(btnName)

            if not id then
                id = tonumber(button:match("(%d+)"))
            end

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
                    if btn then
                        btn:SetButtonState("PUSHED")
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
                    if btn then
                        btn:SetButtonState("NORMAL")
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
    PetFrameHealthBar:SetWidth(70)
    PetFrameHealthBar:SetHeight(18)
    PetFrameManaBar:SetWidth(71)
    PetFrameManaBar:SetHeight(10)
    PetFrameHealthBar:SetPoint("TOPLEFT", 45, -14)
    PetFrameHealthBarText:SetPoint("CENTER", 19, 4)
    PetFrameHealthBarText:SetFont("Fonts/FRIZQT__.TTF", 14, "OUTLINE")
    PetFrameManaBarText:SetPoint("CENTER", 19, -10)
    PetFrameManaBarText:SetFont("Fonts/FRIZQT__.TTF", 9, "OUTLINE")
    PetFrameManaBar:SetPoint("TOPLEFT", 45, -32)
end)

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
    local value = statusFrame.finalValue or statusFrame:GetValue();
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

    if classification == "elite" or classification == "worldboss" then
        self.borderTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Elite")
    elseif classification == "rareelite" then
        self.borderTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Rare-Elite")
    elseif classification == "rare" then
        self.borderTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Rare")
    else
        self.borderTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame")
    end

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
        self.Background:SetHeight(33)
    end
end
hooksecurefunc(TargetFrame, "CheckClassification", Classification)
hooksecurefunc(FocusFrame, "CheckClassification", Classification)


local mmin, mmax, mabs = math.min, math.max, math.abs
local floor = math.floor
--Smooth Status Bars (animated progress)
local barstosmooth = {
    PlayerFrameHealthBar = "player",
    PlayerFrameManaBar = "player",
    TargetFrameHealthBar = "target",
    TargetFrameManaBar = "target",
	PetFrameHealthBar = "pet",
    PetFrameManaBar = "pet",
    FocusFrameHealthBar = "focus",
    FocusFrameManaBar = "focus",
	MainMenuExpBar = "",
    ReputationWatchStatusBar = "",
}

local smoothframe = CreateFrame("Frame")
local smoothing = {}
local inArena

local function AnimationTick()
    local limit = 30 / GetFramerate()

    for bar, value in pairs(smoothing) do
        local cur = bar:GetValue()
        local new = cur + mmin((value - cur) / 3, mmax(value - cur, limit))
        if new ~= new then
            new = value
        end
        if cur == value or mabs(new - value) < 2 then
            bar:SetValue_(value)
            smoothing[bar] = nil
        else
            bar:SetValue_(floor(new))
        end
    end
end

local function SmoothSetValue(self, value)
    self.finalValue = value
    if self.unit then
        local guid = UnitGUID(self.unit)
        if value == self:GetValue() or not guid or guid ~= self.lastGuid then
            smoothing[self] = nil
            self:SetValue_(value)
        else
            smoothing[self] = value
        end
        self.lastGuid = guid
    else
        local _, max = self:GetMinMaxValues()
        if value == self:GetValue() or self._max and self._max ~= max then
            smoothing[self] = nil
            self:SetValue_(value)
        else
            smoothing[self] = value
        end
        self._max = max
    end
end

local function SmoothBar(bar)
    if not bar.SetValue_ then
        bar.SetValue_ = bar.SetValue
        bar.SetValue = SmoothSetValue
    end
end

smoothframe:SetScript("OnUpdate", AnimationTick)

local function SetSmooth()
    for k, v in pairs(barstosmooth) do
        if _G[k] then
            SmoothBar(_G[k])
            _G[k]:SetScript("OnHide", function(frame)
                frame.lastGuid = nil;
                frame.max_ = nil
            end)
            if v ~= "" then
                _G[k].unit = v
            end
        end
    end
end

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
    if manager.collapsed and not FindParent(GetMouseFocus(), self) then
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
        if guild and strfind(GameTooltipTextLeft2:GetText(), guild) then
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

        -- Totems/Pets
        if not UnitIsPlayer(unit) then
            for i = 1, self:NumLines() do
                local lines = _G["GameTooltipTextLeft" .. i]
                if i > 1 then
                    if lines then
                        lines:SetText("")
                    end
                end
            end
        end

        -- Add class-coloured names on mouseover tooltips
        local _, class = UnitClass(unit)
        local color = class and CUSTOM_CLASS_COLORS[class]
        if color and UnitIsPlayer(unit) then
            local text = GameTooltipTextLeft1:GetText()
            if text then
                GameTooltipTextLeft1:SetFormattedText("|cff%02x%02x%02x%s|r", color.r * 255, color.g * 255, color.b * 255, text:match("|cff\x\x\x\x\x\x(.+)|r") or text)
            end
        end
    end
    self:Show()
end)

-- Change BuffFrame position
hooksecurefunc("UIParent_UpdateTopFramePositions", function()
    BuffFrame:ClearAllPoints()
    BuffFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -180, -13)
end)

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

local function HandleNewNameplate(nameplate, unit)
    local name = UnitName(unit)
    if name == "Unknown" then
        nameplate.recheckGuid = UnitGUID(unit)
        nameplatesToRecheck[UnitGUID(unit)] = nameplate
        plateEventFrame:Show()
        return
    end

    local creatureType, _, _, _, _, npcId = string_split("-", UnitGUID(unit))
    -- the rest of nameplate stuff
    if name:match("Totem") and not name:match("Tremor Totem") then
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
        local texture = (nameplate.UnitFrame.HealthBarsContainer.border:GetRegions())
        local guid = UnitGUID(unit)
        if guid then
            local totem = tremorTotems[guid]
            if totem then
                totem.nameplate = nameplate
            else
                tremorTotems[guid] = { ["shaman"] = "Unknown", ["nameplate"] = nameplate }
            end
            nameplate.tremorTotemGuid = guid
            texture:SetTexture("Interface/Addons/TextureScript/Nameplate-Border-TREMOR.blp")
        end
    elseif name == "Ebon Gargoyle" then
        local texture = (nameplate.UnitFrame.HealthBarsContainer.border:GetRegions())
        texture:SetTexture("Interface/Addons/TextureScript/Nameplate-Border-GARGOYLE.blp")
    elseif UnitIsUnit(unit, "pet") and (name == "Shadowfiend" or name == "Water Elemental") then
        local texture = (nameplate.UnitFrame.HealthBarsContainer.border:GetRegions())
        if not nameplate.UnitFrame.texture then
            nameplate.UnitFrame.texture = nameplate.UnitFrame:CreateTexture(nil, "OVERLAY")
            nameplate.UnitFrame.texture:SetSize(30, 30)
            nameplate.UnitFrame.texture:SetPoint("CENTER", nameplate.UnitFrame, "CENTER", 0, 20)
            nameplate.UnitFrame.texture:Hide()
        end
        if name == "Shadowfiend" then
            nameplate.UnitFrame.texture:SetTexture(classmarkers["Shadowfiend"])
        elseif name == "Water Elemental" then
            nameplate.UnitFrame.texture:SetTexture(classmarkers["Elemental"])
        end
        nameplate.UnitFrame.texture:Show()
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


-- PlaySound whenever an enemy casts Tremor Totem inside arena (this is unnecessary overcomplicated due to being backported from clASSic where totems dont disappear instantly upon destroying them)
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

-- Adding class icons on party members inside arena for more clarity where teammates are positioned

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

-- Custom colored Target & Focus Castbar
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
                if not name then return end
                local r, g, b = getSpellColor(name)
                self:SetStatusBarColor(r, g, b)
            end
        end)
    end
end

local function AddPlates(unit)
    local nameplate = C_NamePlate.GetNamePlateForUnit(unit)
    if not nameplate or nameplate:IsForbidden() then
        return
    end
    -- Change border plate
    local texture = (nameplate.UnitFrame.HealthBarsContainer.border:GetRegions())
    if UnitIsUnit(unit, "target") then
        texture:SetTexture("Interface\\Addons\\TextureScript\\Nameplate-Border-Target-Highlight")
    else
        texture:SetTexture("Interface/Addons/TextureScript/Nameplate-Border.blp")
    end

    if not np[nameplate] then
        np[nameplate] = true
        nameplate:RegisterEvent("PLAYER_TARGET_CHANGED")
        nameplate:HookScript("OnEvent", function(self, event)
            if event == "PLAYER_TARGET_CHANGED" then
                if UnitIsUnit("target", self.UnitFrame.unit) then
                    texture:SetTexture("Interface\\Addons\\TextureScript\\Nameplate-Border-Target-Highlight")
                elseif UnitName(self.UnitFrame.unit) == "Tremor Totem" then
                    texture:SetTexture("Interface\\Addons\\TextureScript\\Nameplate-Border-TREMOR")
                else
                    texture:SetTexture("Interface\\Addons\\TextureScript\\Nameplate-Border")
                end
            end
        end)

        nameplate.UnitFrame.castBar:HookScript("OnUpdate", function(self)
            local unit = self:GetParent().unit
            if unit then
                local name = UnitCastingInfo(unit)

                if not name then
                    name = UnitChannelInfo(self.unit)
                end
                if not name then return end
                local r, g, b = getSpellColor(name)
                self:SetStatusBarColor(r, g, b)
            end
        end)
    end

    -- hide level and expand healthbar
    nameplate.UnitFrame.LevelFrame:Hide()
    local hb = nameplate.UnitFrame.HealthBarsContainer
    hb:ClearAllPoints()
    hb:SetPoint("BOTTOMLEFT", hb:GetParent(), "BOTTOMLEFT", 4, 4)
    hb:SetPoint("BOTTOMRIGHT", hb:GetParent(), "BOTTOMRIGHT", -4, 4)

    -- make the selection highlight a tiny bit smaller
    local sh = nameplate.UnitFrame.selectionHighlight
    sh:ClearAllPoints()
    sh:SetPoint("TOPLEFT", sh:GetParent(), "TOPLEFT", 1, -1)
    sh:SetPoint("BOTTOMRIGHT", sh:GetParent(), "BOTTOMRIGHT", -1, 1)

    -- Class icon on friendly plates in arena, WRATH??
    local _, unitClass = UnitClass(unit)

    local name = nameplate.UnitFrame.name
    if name then
        if UnitIsPlayer(unit) then
            local classColor = CUSTOM_CLASS_COLORS[unitClass]
            if classColor then
                name:SetTextColor(classColor.r, classColor.g, classColor.b)
                -- Color HealthBar
                hb.healthBar:SetStatusBarColor(classColor.r, classColor.g, classColor.b)
            else
                name:SetTextColor(1, 1, 1)
            end
        else
            name:SetTextColor(1, 1, 1)
        end
    end

    if UnitIsPlayer(unit) and UnitIsFriend("player", unit) and not UnitIsEnemy("player", unit) and inArena then
        if not nameplate.UnitFrame.texture then
            nameplate.UnitFrame.texture = nameplate.UnitFrame:CreateTexture(nil, "OVERLAY")
            nameplate.UnitFrame.texture:SetSize(40, 40)
            nameplate.UnitFrame.texture:SetPoint("CENTER", nameplate.UnitFrame, "CENTER", 0, 20)
            nameplate.UnitFrame.texture:Hide()
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
        if nameplate.UnitFrame.LevelFrame:GetAlpha() > 0 then
            nameplate.UnitFrame.LevelFrame:SetAlpha(0)
        end
        if nameplate.UnitFrame.selectionHighlight:GetAlpha() > 0 then
            nameplate.UnitFrame.selectionHighlight:SetAlpha(0)
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
        if nameplate.UnitFrame.LevelFrame:GetAlpha() < 1 then
            nameplate.UnitFrame.LevelFrame:SetAlpha(1)
        end
        if nameplate.UnitFrame.selectionHighlight:GetAlpha() == 0 then
            nameplate.UnitFrame.selectionHighlight:SetAlpha(0.25)
        end
    end

    -- This is needed to restore scale due to the ShrinkPlates
    if nameplate.UnitFrame:GetScale() < 1.0 then
        nameplate.UnitFrame:SetScale(1.0)
        nameplate.UnitFrame.name:SetAlpha(1.0)
    end
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


-- Since we disabled macro & keybind text above, there is no way to tell when target is too far to cast on, so adding this mechanic instead... (colouring action bar buttons that are out of range & out of mana to be casted...)
local IsActionInRange = IsActionInRange
local IsUsableAction = IsUsableAction

local function Usable(button)
    local isUsable, notEnoughMana = IsUsableAction(button.action)
    local icon = button.icon

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

hooksecurefunc("ActionButton_UpdateRangeIndicator", function(self)
    if not self.action then return end

    local _, oom = IsUsableAction(self.action)
    local valid = IsActionInRange(self.action);
    local checksRange = (valid ~= nil);
    local inRange = checksRange and valid;

    if self.HotKey and self.HotKey:GetText() == RANGE_INDICATOR then
        self.HotKey:Hide()
    end
    if checksRange and not inRange then
        if oom then
            self.icon:SetVertexColor(0.3, 0.3, 0.3, 1.0)
            self.icon:SetDesaturated(true)
        else
            self.icon:SetVertexColor(1.0, 0.35, 0.35, 0.75)
            self.icon:SetDesaturated(true)
        end
    else
        Usable(self)
    end

    -- Preventing the black action bar borders to be hidden due to pressing an action button
    if self.NormalTexture and not self.NormalTexture:IsShown() then
        self.NormalTexture:Show()
    end
end)

-- Remove debuffs from Target of Target frame
for _, totFrame in ipairs({ TargetFrameToT, FocusFrameToT }) do
    totFrame:HookScript("OnShow", function()
        for i = 1, 4 do
            local dbf = _G[totFrame:GetName() .. "Debuff" .. i]
            if dbf and dbf:GetAlpha() > 0 then
                dbf:SetAlpha(0)
            end
        end
    end)
end

-- Change position of widget showing below minimap
local widget = _G["UIWidgetBelowMinimapContainerFrame"]
hooksecurefunc(widget, "SetPoint", function(self, _, parent)
    if parent and (parent == "MinimapCluster" or parent == _G["MinimapCluster"]) then
        widget:ClearAllPoints()
        widget:SetPoint("TOPRIGHT", UIWidgetTopCenterContainerFrame, "BOTTOMRIGHT", 580, -345)
    end
end)

-- copy pasting features from wotlk classic

hooksecurefunc("Nameplate_CastBar_AdjustPosition", function(self)
    if not self or self:IsForbidden() then
        return
    end

    if UnitIsFriend("player", self.unit) and not UnitIsEnemy("player", self.unit) then
        self:Hide()
    end

    self.Text:Show()

    local parentFrame = self:GetParent()
    if self.BorderShield:IsShown() then
        self:ClearAllPoints()
        self:SetPoint("TOP", parentFrame.HealthBarsContainer, "BOTTOM", 9, -12)
    else
        self:ClearAllPoints()
        self:SetPoint("TOP", parentFrame.HealthBarsContainer, "BOTTOM", 9, -4)
    end
end)

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

-- Add MMR at the bottom of Arena Scoreboard
local teamRatingFrame = CreateFrame("frame", "TeamRatingTextFrame", WorldStateScoreFrame)
teamRatingFrame:SetPoint("BOTTOM", WorldStateScoreFrameLeaveButton, "TOP", 0, 12)
teamRatingFrame:SetSize(300, 80)
teamRatingFrame:Hide()
teamRatingFrame.names = teamRatingFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
teamRatingFrame.ratings = teamRatingFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
teamRatingFrame.names:SetFont("Fonts/FRIZQT__.TTF", 24)
teamRatingFrame.ratings:SetFont("Fonts/FRIZQT__.TTF", 24)
teamRatingFrame.names:SetJustifyH("LEFT")
teamRatingFrame.ratings:SetJustifyH("LEFT")
teamRatingFrame.ratings:SetPoint("TOPLEFT", teamRatingFrame.names, "TOPRIGHT", 0, 0)

teamRatingFrame:SetScript("OnShow", function()
    local nWidth = teamRatingFrame.names:GetWidth()
    local rWidth = teamRatingFrame.ratings:GetWidth()
    local x = (nWidth / 2) - ((nWidth + rWidth - 10) / 2) -- no idea why "- 10" helps centering it!
    teamRatingFrame.names:ClearAllPoints()
    teamRatingFrame.names:SetPoint("BOTTOM", teamRatingFrame, "BOTTOM", x, 0)
end)

teamRatingFrame:SetScript("OnEvent", function(_, event)
    if event == "UPDATE_BATTLEFIELD_SCORE" then
        local _, isRatedArena = IsActiveBattlefieldArena()
        if isRatedArena then
            local name1, _, newRating1, mmr1 = GetBattlefieldTeamInfo(0)
            local name2, _, _, mmr2 = GetBattlefieldTeamInfo(1)
            if newRating1 and newRating1 > 0 then
                local nameText = string_format('|cffbd67ff"%s" |r\n|cffffd500"%s" |r', name1, name2)
                local ratingText = string_format('|cffbd67ffMMR: %d|r\n|cffffd500MMR: %d|r', mmr1, mmr2)
                teamRatingFrame.names:SetText(nameText)
                teamRatingFrame.ratings:SetText(ratingText)
                teamRatingFrame:Show()
                return
            end
        end
    end
    teamRatingFrame:Hide()
end)
teamRatingFrame:RegisterEvent("UPDATE_BATTLEFIELD_SCORE")
teamRatingFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

-- Removing the flashing animation of coooldown finish at action bars
for k, v in pairs(_G) do
    if type(v) == "table" and type(v.SetDrawBling) == "function" then
        v:SetDrawBling(false)
    end
end
hooksecurefunc(getmetatable(ActionButton1Cooldown).__index, 'SetCooldown', function(self)
    self:SetDrawBling(false)
end)

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
        SetSmooth() -- SmoothBar init
        hooksecurefunc("CompactUnitFrame_UpdateName", PlateNames) -- has to be called after event
        UpdateBinds(self)
        self:UnregisterEvent("PLAYER_LOGIN")
    elseif event == "UNIT_PET" then
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
        self:UnregisterEvent("ADDON_LOADED")
    elseif event == "PLAYER_ENTERING_WORLD" then
        local _, type = IsInInstance()
        if type == "arena" then
            if GetCVar("nameplateShowFriends") == "0" then
                SetCVar("nameplateShowFriends", 1)
            end
            inArena = true
        else
            if GetCVar("nameplateShowFriends") == "1" then
                SetCVar("nameplateShowFriends", 0)
            end
            inArena = false
        end

        -- clear the totems on loading screens
        tremorTotems = {}
        if type == "arena" or type == "pvp" then
            plateEventFrame:SetScript("OnUpdate", plateOnUpdateFrame)
        else
            plateEventFrame:SetScript("OnUpdate", nil)
        end

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


-- TODO: fix fade macro

-- classic cancer to fix the healing on VE party members: /console floatingCombatTextCombatHealing 0
-- ^^ yea idk... dogshit gayme

-- Temporary way to disable the dogshit cata spellqueue they brought to tbc instead of using the proper Retail TBC one that bypasses GCD: /console SpellQueueWindow 0
-- ^^ current value: 130 (100+ latency)

-- trying to remove the cancer weather that is not part of the video settings as it used to be in 2.4.3: /console set weatherdensity 0 // /console WeatherDensity 0

-- trying to reduce the view distance (maybe reduces fps drops?) because this dragonshit client doesnt even allow you to change it in interface options: /run SetCVar("farclip", 0)

-- Disable the ability to scroll chat with mouse wheel (fucks binds with the mouse-wheel-up/down): /console chatMouseScroll 0

-- FUCK BLIZZARD, garbage company:
-- https://eu.forums.blizzard.com/en/wow/t/lf-a-blizzard-response-all-talents-that-reduce-spell-resists-in-pvp-no-longer-works-since-phase-2/320188
-- https://us.forums.blizzard.com/en/wow/t/all-talents-that-reduce-spell-resists-in-pvp-no-longer-works-since-phase-2/1114096/5



COMBAT_TEXT_RESIST = "FUCK BLIZZARD"

--Login message informing all scripts of this file were properly executed
ChatFrame1:AddMessage("EvolvePWPUI-ClassicTBC-Anniversary v0.1 Loaded successfully!", 0, 205, 255)
ChatFrame1:AddMessage("Check for updates at:", 153, 0, 0)
ChatFrame1:AddMessage("https://github.com/Evolvee/EvolvePWPUI-ClassicTBC-Anniversary", 153, 0, 0)


-- trying to remove the cancer weather that is not part of the video settings as it used to be in 2.4.3: /console set weatherdensity 0 // /console WeatherDensity 0

-- Disable the ability to scroll chat with mouse wheel (fucks binds with the mouse-wheel-up/down): /console chatMouseScroll 0