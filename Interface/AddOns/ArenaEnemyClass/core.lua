local CLASS_MARKERS = {
    ["ROGUE"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\Rogue",
    ["PRIEST"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\Priest",
    ["WARRIOR"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\Warrior",
    ["PALADIN"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\Paladin",
    ["HUNTER"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\Hunter",
    ["DRUID"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\Druid",
    ["MAGE"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\Mage",
    ["SHAMAN"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\Shaman",
    ["WARLOCK"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\Warlock",
	["DEATHKNIGHT"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\DeathKnight",
	["UNKNOWN"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\Unknown",
	["GUESS_ROGUE"] = "Interface\\AddOns\\TextureScript\\ClassIconsUpscaled\\GuessRogue",
}

local HIDER_BUFFS = {
    [(GetSpellInfo(1126))] = "DRUID", -- Mark of the Wild
    [(GetSpellInfo(21849))] = "DRUID", -- Gift of the Wild
    [(GetSpellInfo(467))] = "DRUID", -- Thorns
    [(GetSpellInfo(17007))] = "DRUID", -- Leader of the Pack
    [(GetSpellInfo(1459))] = "MAGE", -- Arcane Intellect
    [(GetSpellInfo(23028))] = "MAGE", -- Arcane Brilliance
    [(GetSpellInfo(1243))] = "PRIEST", -- Power Word: Fortitude
    [(GetSpellInfo(21562))] = "PRIEST", -- Prayer of Fortitude
    [(GetSpellInfo(13159))] = "HUNTER", -- Aspect of the Pack
}

local GUESSING_ROGUE_TABLE = {
    {{PRIEST=1, DRUID=1}},
    {{PRIEST=2}},
    {{NONHIDER=2}},
}

local function AddClassIfNotSeen(classes, class)
    for i=1,#classes do
        if classes[i] == class then
            return
        end
    end
    classes[#classes+1] = class
end

local function DetermineClasses(class1, class2, class3)
    local teamSize = (select(6, GetBattlefieldStatus(1)))

    if not class1 and not class2 and not class3 then
        if teamSize == 2 then
            return "UNKNOWN", "UNKNOWN"
        elseif teamSize == 3 then
            return "UNKNOWN", "UNKNOWN", "UNKNOWN"
        end
        print("ArenaEnemyClass: no classes for strange team size!")
        return nil
    end

    -- add each visible class to the classes list
    local classes = {}
    for _,class in ipairs({class1, class2, class3}) do
        if class then
            classes[#classes+1] = class
        end
    end

    if #classes == teamSize then
        return unpack(classes)
    end

    -- check everyone's auras to find out certain classes that must exist on the team
    local hiderClassesFound = {}
    for i=1,3 do
        local unit = "arena"..i
        if UnitExists(unit) then
            for spellName,className in pairs(HIDER_BUFFS) do
                if C_UnitAuras.GetAuraDataBySpellName(unit, spellName) then
                    hiderClassesFound[className] = true
                end
            end
        end
    end

    -- add one of any hidden class that must exist if they're not visible
    for class in pairs(hiderClassesFound) do
        AddClassIfNotSeen(classes, class)
    end

    -- if there's any left hidden, go through the guessing table
    if #classes < teamSize then
        local known = {
            ROGUE = 0,
            PRIEST = 0,
            WARRIOR = 0,
            PALADIN = 0,
            HUNTER = 0,
            DRUID = 0,
            MAGE = 0,
            SHAMAN = 0,
            WARLOCK = 0,
            DEATHKNIGHT = 0,
            NONHIDER = 0,
            HIDDEN = teamSize - #classes,
        }
        for _,class in ipairs(classes) do
            known[class] = known[class] + 1
        end
        known.NONHIDER = known.PRIEST + known.WARRIOR + known.PALADIN + known.HUNTER + known.SHAMAN + known.WARLOCK + known.DEATHKNIGHT

        local badGuess
        for _,guess in ipairs(GUESSING_ROGUE_TABLE) do
            badGuess = false
            for needClass,needAmount in pairs(guess[1]) do
                if known[needClass] ~= needAmount then
                    badGuess = true
                    break
                end
            end
            if not badGuess then
                classes[#classes+1] = "GUESS_ROGUE"
                break
            end
        end
    end

    -- finally add "unknown" classes if a guessed rogue didn't fill the last spot
    local unknownAmount = teamSize - #classes
    while unknownAmount > 0 do
        classes[#classes+1] = "UNKNOWN"
        unknownAmount = unknownAmount - 1
    end

    return unpack(classes)
end


-- Animations
local function CreateScaleAnim(group, order, duration, scaleX, scaleY, delay, smoothing, endDelay, originPoint, originOffsetX, originOffsetY)
    local anim = group:CreateAnimation("Scale")
    anim:SetOrder(order)
    anim:SetDuration(duration)
    anim:SetScale(scaleX, scaleY)

    if delay then
        anim:SetStartDelay(delay)
    end
    if endDelay then
        anim:SetEndDelay(endDelay)
    end
    if smoothing then
        anim:SetSmoothing(smoothing)
    end
    if originPoint then
        anim:SetOrigin(originPoint, originOffsetX or 0, originOffsetY or 0)
    end
end

-- FIX: Updated function to use SetFromAlpha/SetToAlpha instead of SetChange
local function CreateAlphaAnim(group, order, duration, change, delay, smoothing, endDelay)
    local anim = group:CreateAnimation("Alpha")
    anim:SetOrder(order)
    anim:SetDuration(duration)

    -- Use SetFromAlpha and SetToAlpha based on 'change'
    if change > 0 then
        -- Fading in (e.g., change = 1)
        anim:SetFromAlpha(0)
        anim:SetToAlpha(1)
    elseif change < 0 then
        -- Fading out (e.g., change = -1)
        anim:SetFromAlpha(1)
        anim:SetToAlpha(0)
    else
        -- If change is 0, just set start/end to current alpha (fallback)
        anim:SetFromAlpha(anim:GetParent():GetAlpha() or 1)
        anim:SetToAlpha(anim:GetParent():GetAlpha() or 1)
    end

    if delay then
        anim:SetStartDelay(delay)
    end
    if endDelay then
        anim:SetEndDelay(endDelay)
    end
    if smoothing then
        anim:SetSmoothing(smoothing)
    end

    return anim
end

local AtlasInfo = {
    ["BossBanner-BgBanner-Bottom"]={440, 112, 0.00195312, 0.861328, 0.00195312, 0.220703, false, false, "1x"},
    ["BossBanner-BgBanner-Top"]={440, 112, 0.00195312, 0.861328, 0.224609, 0.443359, false, false, "1x"},
    ["BossBanner-BgBanner-Mid"]={440, 64, 0.00195312, 0.861328, 0.447266, 0.572266, false, false, "1x"},
}

local function SetAtlas(textureObject, atlasName, useAtlasSize)
    local atlas = AtlasInfo[atlasName]
    if textureObject and atlas then
        textureObject:SetTexture("Interface\\AddOns\\ArenaEnemyClass\\textures\\BossBanner") -- hardcode texture, since there is only one required for this Toast
        textureObject:SetTexCoord(atlas[3], atlas[4], atlas[5], atlas[6])
        if useAtlasSize then
            textureObject:SetSize(atlas[1], atlas[2])
        end
        return textureObject
    end
end

local BossBanner = CreateFrame("Frame", "BossBanner", UIParent)
BossBanner:Hide()
BossBanner:SetSize(128, 206)
BossBanner:SetPoint("TOP", UIParent, 0, -130)
BossBanner:EnableMouse(false)
BossBanner:SetAlpha(1)
BossBanner:SetFrameStrata("HIGH") -- cuz of TextureScript nameplate strata changes

-- BORDER
BossBanner.BannerTop = BossBanner:CreateTexture("BannerTop", "BORDER")
local BannerTop = BossBanner.BannerTop
BannerTop:SetBlendMode("BLEND")
BannerTop = SetAtlas(BannerTop, "BossBanner-BgBanner-Top", true)
BannerTop:SetPoint("TOP", 0, -44)

BossBanner.BannerTopGlow = BossBanner:CreateTexture("BannerTopGlow", "BORDER")
local BannerTopGlow = BossBanner.BannerTopGlow
BannerTopGlow:SetBlendMode("ADD")
BannerTopGlow = SetAtlas(BannerTopGlow, "BossBanner-BgBanner-Top", true)
BannerTopGlow:SetPoint("TOP", 0, -44)
BannerTopGlow:SetAlpha(0)

BossBanner.BannerBottom = BossBanner:CreateTexture("BannerBottom", "BORDER")
local BannerBottom = BossBanner.BannerBottom
BannerBottom:SetBlendMode("BLEND")
BannerBottom = SetAtlas(BannerBottom, "BossBanner-BgBanner-Bottom", true)
BannerBottom:SetPoint("BOTTOM", 0, 0)
--BannerBottom:SetAlpha(0)

BossBanner.BannerBottomGlow = BossBanner:CreateTexture("BannerBottomGlow", "BORDER")
local BannerBottomGlow = BossBanner.BannerBottomGlow
BannerBottomGlow:SetBlendMode("ADD")
BannerBottomGlow = SetAtlas(BannerBottomGlow, "BossBanner-BgBanner-Bottom", true)
BannerBottomGlow:SetPoint("BOTTOM", 0, 0)
BannerBottomGlow:SetAlpha(0)

-- BACKGROUND
BossBanner.BannerMiddle = BossBanner:CreateTexture("BannerMiddle", "BACKGROUND")
local BannerMiddle = BossBanner.BannerMiddle
BannerMiddle = SetAtlas(BannerMiddle, "BossBanner-BgBanner-Mid", true)
BannerMiddle:SetBlendMode("BLEND")
BannerMiddle:SetPoint("TOPLEFT", BannerTop, 0, -34)
BannerMiddle:SetPoint("BOTTOMRIGHT", BannerBottom, 0, 25)
--BannerMiddle:SetAlpha(0)

BossBanner.BannerMiddleGlow = BossBanner:CreateTexture("BannerMiddleGlow", "BACKGROUND")
local BannerMiddleGlow = BossBanner.BannerMiddleGlow
BannerMiddleGlow = SetAtlas(BannerMiddleGlow, "BossBanner-BgBanner-Mid", true)
BannerMiddleGlow:SetBlendMode("ADD")
BannerMiddleGlow:SetPoint("TOPLEFT", BannerTop, 0, -34)
BannerMiddleGlow:SetPoint("BOTTOMRIGHT", BannerBottom, 0, 25)
BannerMiddleGlow:SetAlpha(0)

BannerTop.animForAnimIn = BannerTop:CreateAnimationGroup()
BannerBottom.animForAnimIn = BannerBottom:CreateAnimationGroup()
BannerMiddle.animForAnimIn = BannerMiddle:CreateAnimationGroup()
BannerTopGlow.animForAnimIn = BannerTopGlow:CreateAnimationGroup()
BannerBottomGlow.animForAnimIn = BannerBottomGlow:CreateAnimationGroup()
BannerMiddleGlow.animForAnimIn = BannerMiddleGlow:CreateAnimationGroup()

-- Order 2 of AnimIn (with order 1 set to 0.15s endDelay)
CreateAlphaAnim(BannerTop.animForAnimIn, 1, 0, -1, nil, nil, 0.15)
CreateAlphaAnim(BannerTop.animForAnimIn, 2, 0.25, 1, 0.2)
CreateScaleAnim(BannerTop.animForAnimIn, 1, 0, 0.1, 1, 0.15)
CreateScaleAnim(BannerTop.animForAnimIn, 2, 0.3, 10, 1, 0.1)

CreateAlphaAnim(BannerBottom.animForAnimIn, 1, 0, -1, nil, nil, 0.15)
CreateAlphaAnim(BannerBottom.animForAnimIn, 2, 0.25, 1, 0.2)
CreateScaleAnim(BannerBottom.animForAnimIn, 1, 0, 0.1, 1, 0.15)
CreateScaleAnim(BannerBottom.animForAnimIn, 2, 0.3, 10, 1, 0.1)

CreateAlphaAnim(BannerMiddle.animForAnimIn, 1, 0, -1, nil, nil, 0.15)
CreateAlphaAnim(BannerMiddle.animForAnimIn, 2, 0.25, 1, 0.2)
CreateScaleAnim(BannerMiddle.animForAnimIn, 1, 0, 0.1, 1, 0.15)
CreateScaleAnim(BannerMiddle.animForAnimIn, 2, 0.3, 10, 1, 0.1)

CreateAlphaAnim(BannerTopGlow.animForAnimIn, 1, 0, -1, nil, nil, 0.15)
CreateAlphaAnim(BannerTopGlow.animForAnimIn, 2, 0.25, 1, 0.9)
CreateScaleAnim(BannerTopGlow.animForAnimIn, 1, 0, 0.5, 1, 0.15)
CreateScaleAnim(BannerTopGlow.animForAnimIn, 2, 0.5, 3.2, 1, 0.9)
CreateAlphaAnim(BannerTopGlow.animForAnimIn, 2, 0.6, -1, 1.1)

CreateAlphaAnim(BannerBottomGlow.animForAnimIn, 1, 0, -1, nil, nil, 0.15)
CreateAlphaAnim(BannerBottomGlow.animForAnimIn, 2, 0.25, 1, 0.9)
CreateScaleAnim(BannerBottomGlow.animForAnimIn, 1, 0, 0.5, 1, 0.15)
CreateScaleAnim(BannerBottomGlow.animForAnimIn, 2, 0.5, 3.2, 1, 0.9)
CreateAlphaAnim(BannerBottomGlow.animForAnimIn, 2, 0.6, -1, 1.1)

CreateAlphaAnim(BannerMiddleGlow.animForAnimIn, 1, 0, -1, nil, nil, 0.15)
CreateAlphaAnim(BannerMiddleGlow.animForAnimIn, 2, 0.25, 1, 0.9)
CreateScaleAnim(BannerMiddleGlow.animForAnimIn, 1, 0, 0.5, 1, 0.15)
CreateScaleAnim(BannerMiddleGlow.animForAnimIn, 2, 0.5, 3.2, 1, 0.9)
CreateAlphaAnim(BannerMiddleGlow.animForAnimIn, 2, 0.6, -1, 1.1)


BossBanner.AnimIn = {}
local AnimIn = BossBanner.AnimIn
AnimIn.BannerTop = BannerTop.animForAnimIn
AnimIn.BannerBottom = BannerBottom.animForAnimIn
AnimIn.BannerMiddle = BannerMiddle.animForAnimIn
AnimIn.BannerTopGlow = BannerTopGlow.animForAnimIn
AnimIn.BannerBottomGlow = BannerBottomGlow.animForAnimIn
AnimIn.BannerMiddleGlow = BannerMiddleGlow.animForAnimIn

BossBanner.AnimOut = BossBanner:CreateAnimationGroup()
CreateAlphaAnim(BossBanner.AnimOut, 1, 0, 1)
CreateAlphaAnim(BossBanner.AnimOut, 1, 0.5, -1)
BossBanner.AnimOut:SetScript("OnFinished", function(self)
    BossBanner:Hide()
end)

AnimIn.Play = function(self)
    if BossBanner.AnimOut:IsPlaying() then
        BossBanner.AnimOut:Stop()
    end

    for _, anim in pairs(self) do
        if type(anim) == "table" then
            anim:Stop()
            anim:Play()
        end
    end
end

AnimIn.Stop = function(self)
    for _, anim in pairs(self) do
        if type(anim) == "table" then
            anim:Stop()
        end
    end
end


local function CreateIcon()
    local icon = BossBanner:CreateTexture(nil, "OVERLAY")
    icon = icon
    icon:SetWidth(80)
    icon:SetHeight(80)

    -- FIX: Icon animation groups reset to include only the delayed fade-in AND a long hold animation.
    icon.animForAnimIn = icon:CreateAnimationGroup()
    -- Order 1: The actual Fade-In
    local fadeInAnim2 = icon.animForAnimIn:CreateAnimation("Alpha")
    fadeInAnim2:SetOrder(1)
    fadeInAnim2:SetDuration(0.25)
    fadeInAnim2:SetFromAlpha(0)
    fadeInAnim2:SetToAlpha(1)
    fadeInAnim2:SetStartDelay(0.25) -- The original delay

    -- Order 2 (NEW): A long "hold" animation to keep alpha at 1 until AnimIn.Stop() is called
    local holdAnim2 = icon.animForAnimIn:CreateAnimation("Alpha")
    holdAnim2:SetOrder(2)
    holdAnim2:SetDuration(100) -- Very long duration
    holdAnim2:SetFromAlpha(1)
    holdAnim2:SetToAlpha(1)

    return icon
end

local classIcons = { CreateIcon(), CreateIcon(), CreateIcon() }
classIcons[2]:SetPoint("LEFT", classIcons[1], "RIGHT", 10, 0)
classIcons[3]:SetPoint("LEFT", classIcons[2], "RIGHT", 10, 0)

local function ShowIcon(index, class)
    local icon = classIcons[index]
    icon:Show()

    icon:SetTexture(CLASS_MARKERS[class])
    -- FIX: Explicitly set alpha to 0 right before playing the animation group
    icon:SetAlpha(0)
    icon.animForAnimIn:Stop()
    icon.animForAnimIn:Play()
end

local function HideIcon(index)
    classIcons[index]:Hide()
end

local function DetectClass(class1, class2, class3)
    if not class1 and not class2 and not class3 then
        class1, class2, class3 = DetermineClasses((UnitClassBase("arena1")), (UnitClassBase("arena2")), (UnitClassBase("arena3")))
    end

    if class3 then
        classIcons[1]:SetPoint("LEFT", BossBanner, "LEFT", -65, -25)
        ShowIcon(1, class1)
        ShowIcon(2, class2)
        ShowIcon(3, class3)
    elseif class2 then
        classIcons[1]:SetPoint("LEFT", BossBanner, "LEFT", -20, -25)
        ShowIcon(1, class1)
        ShowIcon(2, class2)
        HideIcon(3)
    end

    if class2 or class3 then
        BossBanner:Show()
        AnimIn.Play(BossBanner.AnimIn)
        C_Timer.After(2, function()
            BossBanner.AnimOut:Play()
            AnimIn.Stop(BossBanner.AnimIn)
        end)
    end
end



function EICTest(amount, guess)
    if amount == 3 then
        DetectClass("PRIEST", "DRUID", guess and "GUESS_ROGUE" or "WARRIOR")
    elseif amount == 2 then
        DetectClass("PRIEST", guess and "GUESS_ROGUE" or "HUNTER")
    end
end

local arenaWatcher = CreateFrame("frame")
arenaWatcher:Hide()
local arenaWatcherElapsed = 0
arenaWatcher:SetScript("OnUpdate", function(self, elapsed)
    arenaWatcherElapsed = arenaWatcherElapsed + elapsed
    if (UnitClassBase("arena1")) or (UnitClassBase("arena2")) or (UnitClassBase("arena3")) or arenaWatcherElapsed > 1.2 then
        PlaySoundFile("Interface\\Addons\\ArenaEnemyClass\\Finish.ogg")
        DetectClass()
        self:Hide()
    end
end)

BossBanner:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL")
BossBanner:SetScript("OnEvent", function(self, event, arg1)
	if arg1 == "The Arena battle has begun!" then
        local teamSize = (select(6, GetBattlefieldStatus(1)))
        if teamSize == 2 or teamSize == 3 then
            arenaWatcherElapsed = 0
            arenaWatcher:Show()
        elseif teamSize ~= 5 then
            print("Strange teamSize: ", GetBattlefieldStatus(1))
        end
    end
end)
