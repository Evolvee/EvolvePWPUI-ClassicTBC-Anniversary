local ADDON_NAME = ...

TS_PlateDB = TS_PlateDB or {}

local defaults = {
    barWidth   = 128,
    barHeight  = 16,
    barYOffset = 0,
    scale      = 1.0,

    borderLeft   = 0,
    borderRight  = 0,
    borderTop    = 0,
    borderBottom = 0,

    castMatchWidth = false,
    castWidth      = 102,
    castHeight     = 10,
    castYOffset    = 9,
    castBgWidth    = 102,
    castBgHeight   = 10,
    castBorderLeft   = 0,
    castBorderRight  = 0,
    castBorderTop    = 0,
    castBorderBottom = 0,
    castForceBorder = false,

    castIconAutoSize = true,
    castIconSize = 16,
    castIconX    = -2,
    castIconY    = 0,
    castTextSize = 10,

    sparkEnabled = true, sparkWidth = 8, sparkHeight = 20, sparkX = 0, sparkY = 0,

    iconBorderEnabled = false,
    iconBorderHug     = false,
    iconBorderThickness = 2,
    iconBorderWidth   = 18,
    iconBorderHeight  = 18,
    iconBorderScale   = 1.0,
    iconBorderX       = 0,
    iconBorderY       = 0,
    iconBorderTexture = "",

    nameX     = 0,
    nameY     = 2,
    nameScale = 1.0,

    clickWidth  = 150,
    clickHeight = 50,
    clickVerticalAdjustment = 0,

    friendlyNameplateClickthrough = false,
    enemyNameplateClickthrough    = false,

    showClickableArea = false,
    showTestPlate     = false,
}

local db   = TS_PlateDB
local CNP  = C_NamePlate
local CNPM = C_NamePlateManager

local ClickAreaFramePool = CreateFramePool("Frame")
local NameplateClickAreas = {}

local HAS_HITTEST = (CNPM and type(CNPM.SetNamePlateHitTestInsets) == "function"
                     and Enum and Enum.NamePlateType) and true or false

local pending, applying, combatWarned = false, false, false
local testFrame

local LOOK_PARTS = {
    "healthBar", "HealthBarsContainer", "castBar", "CastBarsContainer",
    "name", "LevelFrame", "ClassificationFrame", "RaidTargetFrame",
}

local look = { parts = {}, captured = false }

local function SnapshotRegion(r)
    if not r or not r.GetObjectType then return nil end
    local i = { type = r:GetObjectType(), shown = r:IsShown(), alpha = r:GetAlpha() }
    if i.type == "Texture" then
        if r.GetAtlas then i.atlas = r:GetAtlas() end
        if not i.atlas and r.GetTexture then i.file = r:GetTexture() end
        if r.GetVertexColor then i.r, i.g, i.b, i.a = r:GetVertexColor() end
        if r.GetTexCoord then i.coords = { pcall(r.GetTexCoord, r) } end
        if i.coords and i.coords[1] ~= true then i.coords = nil else table.remove(i.coords, 1) end
        if r.GetBlendMode then i.blend = r:GetBlendMode() end
    elseif i.type == "FontString" then
        i.font, i.size, i.flags = r:GetFont()
        i.jh = r:GetJustifyH()
        i.cr, i.cg, i.cb, i.ca = r:GetTextColor()
    end
    return i
end

local function RestoreRegion(r, i)
    if not r or not i or not r.GetObjectType or r:GetObjectType() ~= i.type then return end
    if i.type == "Texture" then
        if i.atlas then pcall(r.SetAtlas, r, i.atlas)
        elseif i.file then pcall(r.SetTexture, r, i.file) end
        if i.coords and #i.coords == 8 then pcall(r.SetTexCoord, r, unpack(i.coords)) end
        if i.r then pcall(r.SetVertexColor, r, i.r, i.g, i.b, i.a) end
        if i.blend then pcall(r.SetBlendMode, r, i.blend) end
    elseif i.type == "FontString" then
        if i.font then pcall(r.SetFont, r, i.font, i.size, i.flags) end
        if i.jh then pcall(r.SetJustifyH, r, i.jh) end
        if i.cr then pcall(r.SetTextColor, r, i.cr, i.cg, i.cb, i.ca) end
    end
    r:SetAlpha(i.alpha or 1)
    r:SetShown(i.shown)
end

local function SnapshotObject(o)
    if not o or type(o) ~= "table" or not o.GetObjectType then return nil end
    local snap = { regions = {}, shown = o:IsShown(), alpha = o:GetAlpha() }
    if o.GetStatusBarTexture then
        local sbt = o:GetStatusBarTexture()
        if sbt then
            if sbt.GetAtlas then snap.sbAtlas = sbt:GetAtlas() end
            if not snap.sbAtlas and sbt.GetTexture then snap.sbFile = sbt:GetTexture() end
        end
    end
    if o.GetRegions then
        local ok, list = pcall(function() return { o:GetRegions() } end)
        if ok then
            for idx, r in ipairs(list) do
                snap.regions[idx] = SnapshotRegion(r)
            end
        end
    end
    return snap
end

local function RestoreObject(o, snap)
    if not o or not snap then return end
    if snap.sbAtlas and o.SetStatusBarTexture then
        pcall(o.SetStatusBarTexture, o, snap.sbAtlas)
    elseif snap.sbFile and o.SetStatusBarTexture then
        pcall(o.SetStatusBarTexture, o, snap.sbFile)
    end
    if o.GetRegions then
        local ok, list = pcall(function() return { o:GetRegions() } end)
        if ok then
            for idx, r in ipairs(list) do
                RestoreRegion(r, snap.regions[idx])
            end
        end
    end
    o:SetAlpha(snap.alpha or 1)
end

local function CaptureLook(frame)
    if not frame or frame:IsForbidden() or frame.tsIsTest then return end

    local isEnemy = frame.unit and UnitCanAttack("player", frame.unit)
    if look.captured and (look.fromEnemy or not isEnemy) then return end

    look.parts = {}
    for _, key in ipairs(LOOK_PARTS) do
        look.parts[key] = SnapshotObject(frame[key])
    end
    look.parts.__self = SnapshotObject(frame)

    local cb = frame.tsCastBar
    if cb then look.parts.__castbar = SnapshotObject(cb) end

    if frame.healthBar and frame.healthBar.GetStatusBarColor then
        look.hpR, look.hpG, look.hpB = frame.healthBar:GetStatusBarColor()
    end

    look.captured  = true
    look.fromEnemy = isEnemy and true or false
    look.dirty     = true
end

local function ApplyLook(tf)
    if not look.captured or not tf then return end
    RestoreObject(tf, look.parts.__self)
    for _, key in ipairs(LOOK_PARTS) do
        RestoreObject(tf[key], look.parts[key])
    end
    local cb = tf.tsCastBar
    if cb and look.parts.__castbar then RestoreObject(cb, look.parts.__castbar) end
end

local function HideTestJunk(tf)
    if not tf then return end
    local junk = {
        "aggroHighlight", "totalAbsorb", "totalAbsorbOverlay",
        "myHealPrediction", "otherHealPrediction", "myHealAbsorb",
        "myHealAbsorbLeftShadow", "myHealAbsorbRightShadow",
        "overAbsorbGlow", "overHealAbsorbGlow",
        "aggroHighlightBase", "aggroHighlightAdditive", "aggroHighlightMask",
    }
    for _, key in ipairs(junk) do
        local o = tf[key]
        if o and o.Hide then o:Hide() end
    end
    local cb = tf.tsCastBar
    if cb then
        if cb.ImportantCastIndicator then cb.ImportantCastIndicator:Hide() end
        if cb.CastTargetIndicator then cb.CastTargetIndicator:Hide() end
        if cb.BorderShield then cb.BorderShield:Hide() end
    end
end

local function Clamp(v, lo, hi)
    v = tonumber(v) or lo
    return math.max(lo, math.min(hi, v))
end

local function CheckCombatAndWarn()
    if InCombatLockdown() then
        pending = true
        if not combatWarned then
            combatWarned = true
            print("|cffff4444[Plates]|r Can't resize nameplates in combat. Applying when you leave combat.")
        end
        return true
    end
    return false
end

local PLATE_HEIGHT = 120

local function PlateSize()
    local w = Clamp(math.max(db.barWidth + 40, db.clickWidth + 16) * db.scale, 60, 800)
    -- Make the base plate tall enough to contain the click area at any Y offset.
    -- The clickbox follows the health bar, so its position relative to the frame
    -- center is barYOffset + clickVerticalAdjustment. Growth is symmetric
    -- (2 * |total offset|) so the frame center never shifts and the visuals
    -- anchored to CENTER stay exactly where they are.
    local totalOffset = db.barYOffset + db.clickVerticalAdjustment
    local clickReach = db.clickHeight + 2 * math.abs(totalOffset) + 20
    local h = Clamp(math.max(PLATE_HEIGHT, clickReach) * db.scale, 20, 500)
    return w, h
end


local function GetBox(frame)
    return frame.HealthBarsContainer or frame.healthBar
end

local function AnchorBorder(border, target, l, r, t, b)
    if not border or not border.ClearAllPoints or not target then return end
    border:ClearAllPoints()
    border:SetPoint("TOPLEFT",     target, "TOPLEFT",     -l,  t)
    border:SetPoint("BOTTOMRIGHT", target, "BOTTOMRIGHT",  r, -b)
end

local function LooksLikeCastBar(o)
    return type(o) == "table" and o.GetObjectType and o.Spark and o.Icon and o.Text
end

local function FindCastBar(frame)
    if frame.tsCastBar ~= nil then return frame.tsCastBar or nil end

    local direct = { frame.CastBar, frame.castBar, frame.CastingBarFrame }
    for _, c in ipairs(direct) do
        if LooksLikeCastBar(c) then
            frame.tsCastBar = c
            return c
        end
    end

    local found
    local function scan(parent, depth)
        if found or not parent or depth > 3 or not parent.GetChildren then return end
        local ok, children = pcall(function() return { parent:GetChildren() } end)
        if not ok then return end
        for _, child in ipairs(children) do
            if LooksLikeCastBar(child) then found = child return end
            scan(child, depth + 1)
        end
    end
    scan(frame, 1)

    frame.tsCastBar = found or false
    return found
end

function TS_UpdateSpark(cb)
    local sp = cb and cb.tsSpark
    if not sp then return end
    if not db.sparkEnabled then sp:Hide() return end

    sp:SetSize(db.sparkWidth, db.sparkHeight)

    local min, max = cb:GetMinMaxValues()
    local range = (max or 0) - (min or 0)
    if range <= 0 then sp:Hide() return end

    local pos = ((cb:GetValue() or 0) - min) / range * cb:GetWidth()
    sp:ClearAllPoints()
    sp:SetPoint("CENTER", cb, "LEFT", pos + db.sparkX, db.sparkY)
    sp:Show()
end

local function ApplyCastBar(frame, box)
    local cb = FindCastBar(frame)
    if not cb or cb:IsForbidden() then return end

    cb:ClearAllPoints()
    cb:SetPoint("TOPRIGHT", box, "BOTTOMRIGHT", 0, -db.castYOffset)

    if db.castMatchWidth then
        cb:SetSize(db.barWidth, db.castHeight)
    else
        cb:SetSize(db.castWidth, db.castHeight)
    end

    if cb.Icon then
        local iconSize = db.castIconAutoSize
            and (db.castHeight + db.castBorderTop + db.castBorderBottom)
            or db.castIconSize
        cb.Icon:ClearAllPoints()
        cb.Icon:SetSize(iconSize, iconSize)
        cb.Icon:SetPoint("RIGHT", cb, "LEFT", db.castIconX, db.castIconY)

        if not cb.tsIconBorder then
            local layer, sub = cb.Icon:GetDrawLayer()
            cb.tsIconBorder = cb:CreateTexture(nil, layer or "ARTWORK", nil, math.max((sub or 0) - 1, -8))
        end
        local ib = cb.tsIconBorder
        if db.iconBorderEnabled then
            ib:ClearAllPoints()
            ib:SetPoint("CENTER", cb.Icon, "CENTER", db.iconBorderX, db.iconBorderY)

            local w, h
            if db.iconBorderHug then
                w = iconSize + db.iconBorderThickness * 2
                h = iconSize + db.iconBorderThickness * 2
            else
                w = db.iconBorderWidth * db.iconBorderScale
                h = db.iconBorderHeight * db.iconBorderScale
            end
            ib:SetSize(math.max(w, 1), math.max(h, 1))

            local tex = db.iconBorderTexture
            if tex and tex ~= "" then
                if ib.tsTexApplied ~= tex then
                    ib:SetTexture(tex)
                    ib.tsTexApplied = tex
                end
            else
                if ib.tsTexApplied ~= "__black" then
                    ib:SetColorTexture(0, 0, 0, 1)
                    ib.tsTexApplied = "__black"
                end
            end
            ib:Show()
        else
            ib:Hide()
        end
    end

    if cb.BorderShield then cb.BorderShield:Hide() end

    if cb.Spark then cb.Spark:SetAlpha(0) end
    if not cb.tsSpark then
        cb.tsSpark = cb:CreateTexture(nil, "OVERLAY")
        cb.tsSpark:SetTexture("Interface\\CastingBar\\UI-CastingBar-Spark")
        cb.tsSpark:SetBlendMode("ADD")
    end
    TS_UpdateSpark(cb)

    if cb.Text then
        cb.Text:ClearAllPoints()
        cb.Text:SetPoint("CENTER", cb, "CENTER", 0, 0)
        local font, _, flags = cb.Text:GetFont()
        if font then cb.Text:SetFont(font, db.castTextSize, flags) end
    end

    local border = cb.Border or cb.border
    if border then
        if db.castForceBorder and border.Show then border:Show() end
        AnchorBorder(border, cb, db.castBorderLeft, db.castBorderRight, db.castBorderTop, db.castBorderBottom)
    end

    if cb.Background then
        cb.Background:ClearAllPoints()
        cb.Background:SetPoint("CENTER", cb, "CENTER", 0, 0)
        cb.Background:SetSize(db.castBgWidth, db.castBgHeight)
    end

    if not cb.tsCastHooked and not frame.tsIsTest then
        cb.tsCastHooked = true
        if cb.ApplyStyleAndAnchoring then
            hooksecurefunc(cb, "ApplyStyleAndAnchoring", function()
                local b = GetBox(frame)
                if b then ApplyCastBar(frame, b) end
            end)
        end
        cb:HookScript("OnShow", function()
            local b = GetBox(frame)
            if b then ApplyCastBar(frame, b) end
        end)
        cb:HookScript("OnUpdate", function(self)
            if self:IsForbidden() then return end
            TS_UpdateSpark(self)
        end)
    end
end

function TS_ApplyPlateSize(frame)
    if not frame or frame:IsForbidden() or frame.tsSkipSize then return end
    if not frame.tsIsTest and frame.unit and UnitIsUnit(frame.unit, "player") then return end

    local fs = frame:GetScale()
    if not frame.tsIsTest and fs < db.scale - 0.25 then return end

    local bar = frame.healthBar
    local box = GetBox(frame)
    if not box then return end

    if not frame.tsIsTest then
        FindCastBar(frame)
        CaptureLook(frame)
    end

    box:ClearAllPoints()
    box:SetPoint("CENTER", frame, "CENTER", 0, db.barYOffset)
    box:SetSize(db.barWidth, db.barHeight)

    if bar and bar ~= box then
        bar:ClearAllPoints()
        bar:SetAllPoints(box)
    end

    local target = bar or box
    AnchorBorder(target.bgTexture, target, db.borderLeft, db.borderRight, db.borderTop, db.borderBottom)
    AnchorBorder(target.border,    target, db.borderLeft, db.borderRight, db.borderTop, db.borderBottom)
    if box ~= target then
        AnchorBorder(box.bgTexture, target, db.borderLeft, db.borderRight, db.borderTop, db.borderBottom)
        AnchorBorder(box.border,    target, db.borderLeft, db.borderRight, db.borderTop, db.borderBottom)
    end

    ApplyCastBar(frame, box)

    local name = frame.name
    if name then
        name:ClearAllPoints()
        name:SetPoint("BOTTOM", box, "TOP", db.nameX, db.nameY)
        if name.SetScale then
            pcall(name.SetScale, name, db.nameScale)
        else
            if not frame.tsNameFont then
                local path, size, flags = name:GetFont()
                if path then frame.tsNameFont = { path, size, flags } end
            end
            if frame.tsNameFont then
                local path, size, flags = unpack(frame.tsNameFont)
                pcall(name.SetFont, name, path, size * db.nameScale, flags)
            end
        end
    end

    if math.abs(fs - db.scale) > 0.001 then
        frame:SetScale(db.scale)
    end
end

function TS_UpdateClickRegion(nameplate)
    if not nameplate then return end
    if not nameplate.CanChangeHitTestPoints or not nameplate:CanChangeHitTestPoints() then return end

    local frame = nameplate.UnitFrame
    if not frame or frame:IsForbidden() or not frame.unit then return end
    local box = GetBox(frame)
    if not box then return end

    local clickableArea = NameplateClickAreas[nameplate:GetName()]
    if not clickableArea then
        clickableArea = ClickAreaFramePool:Acquire()
        clickableArea:SetParent(nameplate)
        NameplateClickAreas[nameplate:GetName()] = clickableArea
    end

    clickableArea:Show()
    clickableArea:SetScale(db.scale)
    clickableArea:ClearAllPoints()

    local isFriend = UnitIsFriend("player", frame.unit)
    local clickthrough = (isFriend and db.friendlyNameplateClickthrough)
                      or ((not isFriend) and db.enemyNameplateClickthrough)

    if clickthrough then
        clickableArea:SetPoint("TOPLEFT",     box, "CENTER", 0, 0)
        clickableArea:SetPoint("BOTTOMRIGHT", box, "CENTER", 0, 0)
    else
        -- Follows the health box: moving the bar moves the clickbox with it.
        -- The clickbox still can't move the plate — the base frame just grows
        -- symmetrically (see PlateSize) so nothing clips and nothing shifts.
        clickableArea:SetPoint("CENTER", box, "CENTER", 0, db.clickVerticalAdjustment)
        clickableArea:SetSize(db.clickWidth, db.clickHeight)
    end

    nameplate:SetAllHitTestPoints(clickableArea)
end

function TS_UpdateAllClickRegions()
    for _, nameplate in pairs(CNP.GetNamePlates()) do
        local frame = nameplate.UnitFrame
        if frame and not frame:IsForbidden() and frame.unit then
            TS_UpdateClickRegion(nameplate)
        end
    end
end

function TS_ClickableArea(nameplate)
    if not nameplate then return end
    local frame = nameplate.UnitFrame
    if not frame or frame:IsForbidden() or not frame.unit then return end

    TS_UpdateClickRegion(nameplate)

    local clickableArea = NameplateClickAreas[nameplate:GetName()]
    if not clickableArea then return end

    if not clickableArea.clickableAreaOverlay then
        clickableArea.clickableAreaOverlay = clickableArea:CreateTexture(nil, "OVERLAY")
        clickableArea.clickableAreaOverlay:SetColorTexture(math.random(), math.random(), math.random(), 0.5)
        clickableArea.clickableAreaOverlay:SetAllPoints()

        clickableArea.clickableAreaMask = clickableArea:CreateMaskTexture()
        clickableArea.clickableAreaMask:SetTexture("interface\\masks\\squaremask",
            "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
        clickableArea.clickableAreaOverlay:AddMaskTexture(clickableArea.clickableAreaMask)

        clickableArea.clickableAreaText = clickableArea:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        clickableArea.clickableAreaText:SetPoint("BOTTOM", clickableArea, "TOP", 0, 2)
    end

    -- Mask follows the clickbox itself so the overlay always shows the full
    -- click area instead of being clipped/shrunk at the plate's edges.
    local mask = clickableArea.clickableAreaMask
    mask:ClearAllPoints()
    mask:SetPoint("TOPLEFT",     clickableArea, "TOPLEFT",     0, 0)
    mask:SetPoint("BOTTOMRIGHT", clickableArea, "BOTTOMRIGHT", 0, 0)

    local isFriend = UnitIsFriend("player", frame.unit)
    local clickthrough = (isFriend and db.friendlyNameplateClickthrough)
                      or ((not isFriend) and db.enemyNameplateClickthrough)

    local label = clickthrough and "Un-clickable"
        or string.format("Clickable Area (%d x %d)", db.clickWidth, db.clickHeight)

    clickableArea.clickableAreaText:SetText(label)
    clickableArea.clickableAreaOverlay:SetShown(db.showClickableArea)
    clickableArea.clickableAreaText:SetShown(db.showClickableArea)
end

function TS_ApplyNameplateWidth()
    if CheckCombatAndWarn() then return end
    if applying then return end
    applying = true
    pending = false

    if CNP.SetNamePlateSize then
        local w, h = PlateSize()
        pcall(CNP.SetNamePlateSize, w, h)
    end

    if HAS_HITTEST then
        local BIG = 10000
        if db.friendlyNameplateClickthrough then
            pcall(CNPM.SetNamePlateHitTestInsets, Enum.NamePlateType.Friendly, BIG, BIG, BIG, BIG)
        else
            pcall(CNPM.SetNamePlateHitTestInsets, Enum.NamePlateType.Friendly, 0, 0, 0, 0)
        end
        if db.enemyNameplateClickthrough then
            pcall(CNPM.SetNamePlateHitTestInsets, Enum.NamePlateType.Enemy, BIG, BIG, BIG, BIG)
        else
            pcall(CNPM.SetNamePlateHitTestInsets, Enum.NamePlateType.Enemy, 0, 0, 0, 0)
        end
    end

    TS_UpdateAllClickRegions()
    applying = false
end

local function BuildTestPlate()
    if testFrame then return testFrame end

    local holder = CreateFrame("Frame", "TSTestPlateHolder", UIParent)
    holder:SetSize(200, 120)
    holder:SetPoint("CENTER", UIParent, "CENTER", 0, 150)
    holder:SetMovable(true)
    holder:EnableMouse(true)
    holder:RegisterForDrag("LeftButton")
    holder:SetScript("OnDragStart", holder.StartMoving)
    holder:SetScript("OnDragStop", holder.StopMovingOrSizing)
    holder:SetFrameStrata("HIGH")

    local ok, tf = pcall(CreateFrame, "Button", "TSTestPlate", holder, "NamePlateUnitFrameTemplate")
    if not ok or not tf then
        print("|cffff4444[Plates]|r Could not create a test plate on this client.")
        holder:Hide()
        return nil
    end

    tf.tsIsTest = true
    tf:SetAllPoints(holder)
    tf:EnableMouse(false)
    tf:UnregisterAllEvents()

    FindCastBar(tf)

    ApplyLook(tf)
    HideTestJunk(tf)

    local bar = tf.healthBar
    if bar then
        bar:SetMinMaxValues(0, 100)
        bar:SetValue(72)
        bar:SetStatusBarColor(look.hpR or 0.2, look.hpG or 0.8, look.hpB or 0.2)
    end

    if tf.name then tf.name:SetText("Test Plate") end

    local cb = tf.tsCastBar
    if cb then
        pcall(cb.UnregisterAllEvents, cb)
        cb:SetScript("OnUpdate", nil)
        cb:SetScript("OnEvent", nil)
        cb:SetScript("OnShow", nil)
        cb:SetMinMaxValues(0, 1)
        cb:SetValue(0)
        local parent = cb:GetParent()
        if parent and parent ~= tf then parent:Show() end
        cb:Show()
        if cb.Text then cb.Text:SetText("Test Cast") end
        if cb.Icon then
            cb.Icon:SetTexture("Interface\\Icons\\Spell_Fire_FlameBolt")
            cb.Icon:Show()
        end
        holder.testCast = cb
    end

    holder.clickBox = tf:CreateTexture(nil, "BACKGROUND")
    holder.clickBox:SetColorTexture(0, 1, 0, 0.25)

    local hint = holder:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    hint:SetPoint("TOP", holder, "BOTTOM", 0, -30)
    hint:SetText("drag to move")

    local elapsed = 0
    holder:SetScript("OnUpdate", function(_, e)
        elapsed = elapsed + e
        if elapsed > 2.5 then elapsed = 0 end
        local cast = holder.testCast
        if cast then
            local frac = elapsed / 2.5
            cast:SetValue(frac)
            TS_UpdateSpark(cast)
        end
    end)

    testFrame = tf
    testFrame.holder = holder
    return testFrame
end

local function RefreshTestPlate()
    if not db.showTestPlate then
        if testFrame and testFrame.holder then testFrame.holder:Hide() end
        return
    end

    local tf = BuildTestPlate()
    if not tf then return end

    if look.dirty then
        ApplyLook(tf)
        HideTestJunk(tf)
        if tf.healthBar then
            tf.healthBar:SetStatusBarColor(look.hpR or 0.2, look.hpG or 0.8, look.hpB or 0.2)
        end
        look.dirty = false
    end

    if not look.captured and not look.warned then
        look.warned = true
        print("|cffffcc00[Plates]|r No nameplate seen yet this session, so the test plate is using template defaults. Show a real nameplate once and it will copy its exact skin.")
    end

    tf.holder:Show()

    TS_ApplyPlateSize(tf)

    local cbox = tf.holder.clickBox
    if cbox then
        -- Follows the health box, matching real clickboxes.
        local anchor = GetBox(tf) or tf
        cbox:ClearAllPoints()
        cbox:SetPoint("CENTER", anchor, "CENTER", 0, db.clickVerticalAdjustment)
        cbox:SetSize(db.clickWidth, db.clickHeight)
        cbox:SetShown(db.showClickableArea)
    end
end

function TS_RefreshPlates(includeClick)
    if includeClick then TS_ApplyNameplateWidth() end
    for _, nameplate in pairs(CNP.GetNamePlates()) do
        local frame = nameplate.UnitFrame
        if frame and not frame:IsForbidden() and frame.unit then
            TS_ApplyPlateSize(frame)
            TS_ClickableArea(nameplate)
        end
    end
    RefreshTestPlate()
end

local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("PLAYER_REGEN_ENABLED")
f:RegisterEvent("PLAYER_TARGET_CHANGED")
f:RegisterEvent("NAME_PLATE_UNIT_ADDED")
f:RegisterEvent("CVAR_UPDATE")
f:SetScript("OnEvent", function(_, event, arg1)
    if event == "ADDON_LOADED" and arg1 == ADDON_NAME then
        TS_PlateDB = TS_PlateDB or {}
        for k, v in pairs(defaults) do
            if TS_PlateDB[k] == nil then TS_PlateDB[k] = v end
        end
        db = TS_PlateDB
        db.showTestPlate = false

    elseif event == "PLAYER_ENTERING_WORLD" then
        TS_ApplyNameplateWidth()

    elseif event == "PLAYER_REGEN_ENABLED" then
        combatWarned = false
        if pending then TS_ApplyNameplateWidth() end

    elseif event == "PLAYER_TARGET_CHANGED" then
        if C_Timer and C_Timer.After then
            C_Timer.After(0, function() TS_RefreshPlates(false) end)
        end

    elseif event == "NAME_PLATE_UNIT_ADDED" then
        local nameplate = CNP.GetNamePlateForUnit(arg1)
        if not nameplate or nameplate:IsForbidden() then return end
        local frame = nameplate.UnitFrame
        if not frame then return end

        if frame.tsCastBar == false then frame.tsCastBar = nil end

        if not frame.tsSizeHooked and frame.UpdateAnchors then
            hooksecurefunc(frame, "UpdateAnchors", TS_ApplyPlateSize)
            frame.tsSizeHooked = true
        end

        TS_ApplyPlateSize(frame)
        TS_ClickableArea(nameplate)
        if C_Timer and C_Timer.After then
            C_Timer.After(0, function()
                if nameplate.UnitFrame then
                    TS_ApplyPlateSize(nameplate.UnitFrame)
                    TS_UpdateClickRegion(nameplate)
                end
            end)
        end

        if db.showTestPlate and look.dirty then
            RefreshTestPlate()
        end

    elseif event == "CVAR_UPDATE" then
        local a = tostring(arg1 or ""):lower()
        if a == "nameplatestyle" or a == "nameplateverticalscale" then
            look.captured, look.fromEnemy, look.dirty = false, false, false
            if C_Timer and C_Timer.After then
                C_Timer.After(0.1, function() TS_RefreshPlates(true) end)
            end
        end
    end
end)

local panel
local allControls = {}
local sliderByKey = {}
local inputByKey = {}

local function MakeSlider(parent, label, minV, maxV, step, key, y, isClick)
    local s = CreateFrame("Slider", "TSPlateSlider"..key, parent, "OptionsSliderTemplate")
    s:SetPoint("TOPLEFT", 20, y)
    s:SetWidth(150)
    s:SetMinMaxValues(minV, maxV)
    s:SetValueStep(step)
    if s.SetObeyStepOnDrag then s:SetObeyStepOnDrag(true) end
    _G[s:GetName().."Low"]:SetText(minV)
    _G[s:GetName().."High"]:SetText(maxV)

    local title = _G[s:GetName().."Text"]
    title:SetText(label)

    local eb = CreateFrame("EditBox", nil, parent, "InputBoxTemplate")
    eb:SetSize(52, 20)
    eb:SetPoint("LEFT", s, "RIGHT", 16, 0)
    eb:SetAutoFocus(false)
    eb:SetMaxLetters(7)
    eb:SetJustifyH("CENTER")

    local updating = false

    local function Fmt(v)
        return tostring(math.floor(v * 100 + 0.5) / 100)
    end

    local function Sync()
        updating = true
        s:SetValue(Clamp(db[key], minV, maxV))
        eb:SetText(Fmt(db[key]))
        updating = false
    end

    local function Apply(v)
        v = tonumber(v)
        if not v then Sync() return end
        v = Clamp(v, minV, maxV)
        if db[key] == v then Sync() return end
        db[key] = v
        Sync()
        TS_RefreshPlates(isClick)
    end

    s:SetScript("OnValueChanged", function(_, v)
        if updating then return end
        Apply(v)
    end)
    eb:SetScript("OnEnterPressed", function(self)
        Apply(self:GetText())
        self:ClearFocus()
    end)
    eb:SetScript("OnEscapePressed", function(self)
        Sync()
        self:ClearFocus()
    end)

    s.tsEditBox = eb
    sliderByKey[key] = s
    table.insert(allControls, Sync)
    return s
end

local function MakeTextInput(parent, label, key, y, isClick)
    local t = parent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    t:SetPoint("TOPLEFT", 24, y)
    t:SetText(label)

    local eb = CreateFrame("EditBox", nil, parent, "InputBoxTemplate")
    eb:SetSize(200, 20)
    eb:SetPoint("TOPLEFT", 28, y - 16)
    eb:SetAutoFocus(false)
    eb:SetMaxLetters(220)

    local function Sync()
        eb:SetText(db[key] or "")
        eb:SetCursorPosition(0)
    end

    eb:SetScript("OnEnterPressed", function(self)
        local v = self:GetText():gsub("^%s+", ""):gsub("%s+$", "")
        db[key] = v
        Sync()
        self:ClearFocus()
        TS_RefreshPlates(isClick)
    end)
    eb:SetScript("OnEscapePressed", function(self)
        Sync()
        self:ClearFocus()
    end)

    eb.tsLabel = t
    inputByKey[key] = eb
    table.insert(allControls, Sync)
    return eb
end

local function SetSliderEnabled(key, enabled)
    local s = sliderByKey[key]
    if s then
        if enabled then
            s:Enable() s:SetAlpha(1)
            s.tsEditBox:Enable() s.tsEditBox:SetAlpha(1)
        else
            s:Disable() s:SetAlpha(0.35)
            s.tsEditBox:Disable() s.tsEditBox:SetAlpha(0.35)
        end
        return
    end
    local eb = inputByKey[key]
    if eb then
        if enabled then
            eb:Enable() eb:SetAlpha(1)
            if eb.tsLabel then eb.tsLabel:SetAlpha(1) end
        else
            eb:Disable() eb:SetAlpha(0.35)
            if eb.tsLabel then eb.tsLabel:SetAlpha(0.35) end
        end
    end
end

local function SyncAll()
    for _, fn in ipairs(allControls) do fn() end
    SetSliderEnabled("castWidth", not db.castMatchWidth)
    SetSliderEnabled("castIconSize", not db.castIconAutoSize)
    local on, hug = db.iconBorderEnabled, db.iconBorderHug
    SetSliderEnabled("iconBorderThickness", on and hug)
    SetSliderEnabled("iconBorderWidth",  on and not hug)
    SetSliderEnabled("iconBorderHeight", on and not hug)
    SetSliderEnabled("iconBorderScale",  on and not hug)
    SetSliderEnabled("iconBorderX",       on)
    SetSliderEnabled("iconBorderY",       on)
    SetSliderEnabled("iconBorderTexture", on)
    local sp = db.sparkEnabled
    SetSliderEnabled("sparkWidth",  sp)
    SetSliderEnabled("sparkHeight", sp)
    SetSliderEnabled("sparkX",      sp)
    SetSliderEnabled("sparkY",      sp)
end

local function MakeCheck(parent, label, key, y, isClick, disabled)
    local c = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
    c:SetPoint("TOPLEFT", 20, y)
    c:SetSize(24, 24)
    local t = c:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    t:SetPoint("LEFT", c, "RIGHT", 2, 0)
    t:SetText(label)
    c:SetScript("OnClick", function(self)
        db[key] = self:GetChecked() and true or false
        SyncAll()
        TS_RefreshPlates(isClick)
    end)
    if disabled then
        c:Disable() c:SetAlpha(0.4)
        t:SetTextColor(0.5, 0.5, 0.5)
    end
    table.insert(allControls, function() c:SetChecked(db[key]) end)
    return c
end

local function Header(parent, text, y)
    local h = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    h:SetPoint("TOPLEFT", 20, y)
    h:SetText(text)
    return h
end

local function BuildPanel()
    panel = CreateFrame("Frame", "TSPlateOptions", UIParent, "BasicFrameTemplateWithInset")
    panel:SetSize(820, 620)
    panel:SetPoint("CENTER")
    panel:SetMovable(true)
    panel:EnableMouse(true)
    panel:RegisterForDrag("LeftButton")
    panel:SetScript("OnDragStart", panel.StartMoving)
    panel:SetScript("OnDragStop", panel.StopMovingOrSizing)
    panel:SetFrameStrata("DIALOG")
    panel.title = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    panel.title:SetPoint("TOP", 0, -5)
    panel.title:SetText("Nameplate Size")
    tinsert(UISpecialFrames, "TSPlateOptions")

    local tabs = {}

    local function SelectTab(i)
        for idx, t in ipairs(tabs) do
            t.content:SetShown(idx == i)
            if idx == i then t.btn:LockHighlight() else t.btn:UnlockHighlight() end
        end
    end

    local function MakeTab(name, index)
        local btn = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
        btn:SetSize(150, 24)
        btn:SetPoint("TOPLEFT", 14 + (index - 1) * 156, -28)
        btn:SetText(name)
        btn:SetScript("OnClick", function() SelectTab(index) end)

        local content = CreateFrame("Frame", nil, panel)
        content:SetPoint("TOPLEFT", 10, -60)
        content:SetPoint("BOTTOMRIGHT", -10, 44)
        content:Hide()

        tabs[index] = { btn = btn, content = content }
        return content
    end

    local function Col(content, i)
        local c = CreateFrame("Frame", nil, content)
        c:SetPoint("TOPLEFT", (i - 1) * 265, 0)
        c:SetSize(260, 520)
        return c
    end

    local t1 = MakeTab("Nameplate", 1)
    local n1 = Col(t1, 1)
    Header(n1, "Health bar", -10)
    MakeSlider(n1, "Bar width",     40, 400, 1,    "barWidth",   -50)
    MakeSlider(n1, "Bar height",     4,  60, 1,    "barHeight",  -100)
    MakeSlider(n1, "Bar Y offset", -60,  60, 1,    "barYOffset", -150, true)
    MakeSlider(n1, "Plate scale",  0.5, 2.0, 0.05, "scale",      -200, true)

    local n2 = Col(t1, 2)
    Header(n2, "Health border", -10)
    MakeSlider(n2, "Border left",   -30, 30, 1, "borderLeft",   -50)
    MakeSlider(n2, "Border right",  -30, 30, 1, "borderRight",  -100)
    MakeSlider(n2, "Border top",    -30, 30, 1, "borderTop",    -150)
    MakeSlider(n2, "Border bottom", -30, 30, 1, "borderBottom", -200)

    local t2 = MakeTab("Cast bar", 2)
    local b1 = Col(t2, 1)
    Header(b1, "Cast bar", -10)
    MakeCheck(b1, "Match health bar width", "castMatchWidth", -45)
    MakeSlider(b1, "Bar width",   40, 400, 1, "castWidth",   -85)
    MakeSlider(b1, "Bar height",   4,  60, 1, "castHeight",  -130)
    MakeSlider(b1, "Bg width",    40, 400, 1, "castBgWidth", -175)
    MakeSlider(b1, "Bg height",    4,  60, 1, "castBgHeight",-220)
    MakeSlider(b1, "Y offset",   -60,  60, 1, "castYOffset", -265)
    MakeSlider(b1, "Text size",    6,  36, 1, "castTextSize",-310)
    
    Header(b1, "Cast border", -355)
    MakeCheck(b1, "Force border visible", "castForceBorder", -390)
    MakeSlider(b1, "Left",   -30, 30, 1, "castBorderLeft",   -430)
    MakeSlider(b1, "Right",  -30, 30, 1, "castBorderRight",  -470)
    MakeSlider(b1, "Top",    -30, 30, 1, "castBorderTop",    -510)
    MakeSlider(b1, "Bottom", -30, 30, 1, "castBorderBottom", -550)

    local b2 = Col(t2, 2)
    Header(b2, "Cast icon", -10)
    MakeCheck(b2, "Auto icon size (match bar)", "castIconAutoSize", -45)
    MakeSlider(b2, "Icon size", 4, 100, 1, "castIconSize", -90)
    MakeSlider(b2, "Icon X", -100, 100, 1, "castIconX", -140)
    MakeSlider(b2, "Icon Y", -100, 100, 1, "castIconY", -190)

    Header(b2, "Spark", -240)
    MakeCheck(b2, "Show spark", "sparkEnabled", -275)
    MakeSlider(b2, "Spark width",   1, 60, 1,   "sparkWidth",  -320)
    MakeSlider(b2, "Spark height",  1, 80, 1,   "sparkHeight", -370)
    MakeSlider(b2, "Spark X",     -50, 50, 1,   "sparkX",      -420)
    MakeSlider(b2, "Spark Y",     -50, 50, 1,   "sparkY",      -470)

    local b3 = Col(t2, 3)
    Header(b3, "Icon border", -10)
    MakeCheck(b3, "Enable icon border", "iconBorderEnabled", -45)
    MakeCheck(b3, "Hug icon (thickness mode)", "iconBorderHug", -75)
    MakeSlider(b3, "Thickness",      0, 20, 1,       "iconBorderThickness", -120)
    MakeSlider(b3, "Border width",   1, 100, 1,      "iconBorderWidth",     -170)
    MakeSlider(b3, "Border height",  1, 100, 1,      "iconBorderHeight",    -220)
    MakeSlider(b3, "Border scale",   0.5, 3.0, 0.05, "iconBorderScale",     -270)
    MakeSlider(b3, "Border X",     -50, 50, 1,       "iconBorderX",         -320)
    MakeSlider(b3, "Border Y",     -50, 50, 1,       "iconBorderY",         -370)
    MakeTextInput(b3, "Custom texture path (empty = black)", "iconBorderTexture", -415)

    local bnote = b3:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    bnote:SetPoint("TOPLEFT", 24, -460)
    bnote:SetWidth(220)
    bnote:SetJustifyH("LEFT")
    bnote:SetText("Hug mode follows auto icon sizing at a fixed thickness; free mode uses width, height and scale. Texture path example: Interface\\Buttons\\WHITE8x8. Press Enter to apply.")

    local t3 = MakeTab("Click area", 3)
    local k1 = Col(t3, 1)
    Header(k1, "Clickable area", -10)
    MakeSlider(k1, "Click width",     20, 400, 1, "clickWidth",  -50,  true)
    MakeSlider(k1, "Click height",    10, 200, 1, "clickHeight", -100, true)
    MakeSlider(k1, "Click Y offset", -100, 100, 1, "clickVerticalAdjustment", -150, true)

    local k2 = Col(t3, 2)
    Header(k2, "Behaviour", -10)
    MakeCheck(k2, "Friendly clickthrough", "friendlyNameplateClickthrough", -45, true, not HAS_HITTEST)
    MakeCheck(k2, "Enemy clickthrough",    "enemyNameplateClickthrough",    -75, true, not HAS_HITTEST)
    MakeCheck(k2, "Show clickable area",   "showClickableArea",             -105)
    MakeCheck(k2, "Show test plate",       "showTestPlate",                 -135)

    local knote = k2:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    knote:SetPoint("TOPLEFT", 20, -175)
    knote:SetWidth(220)
    knote:SetJustifyH("LEFT")
    knote:SetText("The test plate is a real nameplate template with a looping fake cast. Drag it anywhere. It updates live with every slider.")

    local t4 = MakeTab("Name", 4)
    local m1 = Col(t4, 1)
    Header(m1, "Name text", -10)
    MakeSlider(m1, "Name X",     -80, 80, 1,     "nameX",     -50)
    MakeSlider(m1, "Name Y",     -80, 80, 1,     "nameY",     -100)
    MakeSlider(m1, "Name scale", 0.5, 2.5, 0.05, "nameScale", -150)

    SelectTab(1)

    panel:SetScript("OnShow", SyncAll)

    local reset = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    reset:SetPoint("BOTTOM", 0, 15)
    reset:SetSize(120, 22)
    reset:SetText("Reset defaults")
    reset:SetScript("OnClick", function()
        local test = db.showTestPlate
        for k, v in pairs(defaults) do db[k] = v end
        db.showTestPlate = test
        SyncAll()
        TS_RefreshPlates(true)
    end)

    panel:Hide()
end

SLASH_TSPLATES1 = "/plates"
SlashCmdList.TSPLATES = function()
    if not panel then BuildPanel() end
    if panel:IsShown() then panel:Hide() else panel:Show() end
end
