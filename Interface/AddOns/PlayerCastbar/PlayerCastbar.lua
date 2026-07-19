--[[--------------------------------------------------------------------------
    Player Castbar  (standalone)

    Faithful rebuild of the DragonflightUI player castbar template
    (DragonflightUIPlayerCastbarTemplate) in pure Lua, player-only, plus:

    Dynamic pushback ticks
      Channel ticks keep their real fire-time (start + k*interval, fixed at
      channel start). Their pixel position is recomputed every frame from the
      CURRENT [start,end] window, so when damage shortens the channel
      (UNIT_SPELLCAST_CHANNEL_UPDATE) ticks past the new end are hidden and the
      survivors re-space across the remaining bar. Cast delay
      (UNIT_SPELLCAST_DELAYED) just re-reads the pushed-back end time.

    Slash: /pcb  (lock | unlock | reset | icon | ticks | compact | test)
----------------------------------------------------------------------------]]

local ADDON = ...
local UNIT  = 'player'

-- Where the DF castbar textures live. If you REMOVE DragonflightUI, copy its
-- Textures\Castbar folder into PlayerCastbar\Textures\ and change this to:
--   'Interface\\AddOns\\PlayerCastbar\\Textures\\'
local TEX = 'Interface\\AddOns\\PlayerCastbar\\Textures\\'
local FILL         = TEX .. 'CastingBarStandard2'   -- cast fill
local FILL_CHANNEL = TEX .. 'CastingBarChannel'     -- channel fill
local ATLAS1 = TEX .. 'uicastingbar'          -- text-border strip
local ATLAS2 = TEX .. 'uicastingbar2x'        -- background/border/spark/shield/flash

-- exact texcoords lifted from the template
local TC = {
    textBorder = {0.001953125, 0.412109375, 0.00390625,  0.11328125},
    background = {0.0009765625, 0.4130859375, 0.3671875,  0.41796875},
    shield     = {0.000976562, 0.0742188, 0.796875,       0.970703},
    border     = {0.412109375, 0.828125,  0.001953125,    0.060546875},
    flash      = {0.0009765625, 0.4169921875, 0.2421875,  0.30078125},
    spark      = {0.076171875, 0.0859375, 0.796875,       0.9140625},
}
local TC_TICK = TC.spark -- ticks reuse the vertical spark slice, tinted black

-- Channel tick counts, keyed by spell name (client/rank agnostic). Edit freely.
local CHANNEL_TICK_IDS = {
    [5740]=4,[5138]=5,[689]=5,[1120]=5,[755]=10,[1949]=15,  -- warlock
    [47540]=2,[15407]=3,[48045]=5,[64843]=4,[64901]=4,      -- priest
    [1510]=6,                                               -- hunter
    [740]=4,[16914]=10,                                     -- druid
    [5143]=3,[5144]=4,[5145]=5,[10]=8,                      -- mage
}

----------------------------------------------------------------------------
-- helpers
----------------------------------------------------------------------------
local function GetSpellName(id)
    if C_Spell and C_Spell.GetSpellInfo then
        local i = C_Spell.GetSpellInfo(id); return i and i.name
    end
    return (GetSpellInfo(id))
end
local function GetCastingInfo() return (UnitCastingInfo or CastingInfo)(UNIT) end
local function GetChannelInfo() return (UnitChannelInfo or ChannelInfo)(UNIT) end

local CHANNEL_TICKS = {}
for id, n in pairs(CHANNEL_TICK_IDS) do
    local name = GetSpellName(id); if name then CHANNEL_TICKS[name] = n end
end

----------------------------------------------------------------------------
-- saved variables
----------------------------------------------------------------------------
local DEFAULTS = {
    point='CENTER', relPoint='CENTER', x=0, y=-215,
    width=320, height=22, scale=1.0,
    showIcon=true, showTicks=true, showTime=false, compact=true, locked=true,
    holdTime=0, __v=3,
}
local db

local COLOR = {
    cast    = {1.00, 1.00, 1.00}, -- fill textures carry their own color
    channel = {1.00, 1.00, 1.00},
    failed  = {1.00, 0.20, 0.20},
}

local bar
local ticks = {}

----------------------------------------------------------------------------
-- build the frame from the template
----------------------------------------------------------------------------
local function Tex(layer, sub, file, tc)
    local t = bar:CreateTexture(nil, layer, nil, sub or 0)
    if file then t:SetTexture(file) end
    if tc then t:SetTexCoord(tc[1], tc[2], tc[3], tc[4]) end
    return t
end

local function CreateBar()
    bar = CreateFrame('StatusBar', 'PlayerCastbarFrame', UIParent)
    bar:SetStatusBarTexture(FILL)
    bar:GetStatusBarTexture():SetDrawLayer('BORDER')
    bar:SetMinMaxValues(0, 1)
    bar:SetValue(0)
    bar:SetFrameStrata('MEDIUM')
    bar:SetClampedToScreen(true)

    -- BACKGROUND
    bar.textBorder = Tex('BACKGROUND', 0, ATLAS1, TC.textBorder)
    bar.textBorder:SetPoint('TOPLEFT', bar, 'TOPLEFT', 0, 0)
    bar.textBorder:SetPoint('BOTTOMRIGHT', bar, 'BOTTOMRIGHT', 0, -14)

    bar.background = Tex('BACKGROUND', 2, ATLAS2, TC.background)
    bar.background:SetPoint('TOPLEFT', bar, 'TOPLEFT', -1, 1)
    bar.background:SetPoint('BOTTOMRIGHT', bar, 'BOTTOMRIGHT', 1, -1)

    -- ARTWORK: interrupt shield (shown for non-interruptible casts)
    bar.shield = Tex('ARTWORK', 3, ATLAS2, TC.shield)
    bar.shield:SetSize(25, 28.5)
    bar.shield:SetPoint('RIGHT', bar, 'LEFT', -0.19, -2.2)
    bar.shield:Hide()

    -- ARTWORK: icon + frame border
    bar.icon = Tex('ARTWORK', 4)
    bar.icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
    bar.icon:SetPoint('RIGHT', bar, 'LEFT', -7, -4)

    -- DF mixin re-anchors the shield onto the icon at runtime
    bar.shield:ClearAllPoints()
    bar.shield:SetPoint('CENTER', bar.icon, 'CENTER', 0, -2.25)

    bar.border = Tex('ARTWORK', 4, ATLAS2, TC.border)
    bar.border:SetPoint('TOPLEFT', bar, 'TOPLEFT', -2, 2)
    bar.border:SetPoint('BOTTOMRIGHT', bar, 'BOTTOMRIGHT', 2, -2)

    -- OVERLAY: flash + text + spark
    bar.flash = Tex('OVERLAY', 1, ATLAS2, TC.flash)
    bar.flash:SetBlendMode('ADD')
    bar.flash:SetPoint('TOPLEFT', bar, 'TOPLEFT', -1, 1)
    bar.flash:SetPoint('BOTTOMRIGHT', bar, 'BOTTOMRIGHT', 1, -1)
    bar.flash:Hide()

    -- name: centered-below (non-compact) or bottom-left (compact)
    bar.nameFull = bar:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightSmall')
    bar.nameFull:SetSize(185, 16)
    bar.nameFull:SetPoint('BOTTOM', bar, 'BOTTOM', 0, -15)

    bar.nameCompact = bar:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightSmall')
    bar.nameCompact:SetJustifyH('LEFT')
    bar.nameCompact:SetSize(185, 16)
    bar.nameCompact:SetPoint('BOTTOMLEFT', bar, 'BOTTOMLEFT', 7, -15)

    -- time
    bar.timeFull = bar:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightLarge')
    bar.timeFull:SetPoint('LEFT', bar, 'RIGHT', 10, 0)

    bar.timeCompact = bar:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightSmall')
    bar.timeCompact:SetJustifyH('RIGHT')
    bar.timeCompact:SetPoint('BOTTOMRIGHT', bar, 'BOTTOMRIGHT', -7, -15)

    bar.spark = Tex('OVERLAY', 2, ATLAS2, TC.spark)
    bar.spark:SetSize(6, 20)
    bar.spark:SetPoint('CENTER', bar, 'LEFT', 0, 0)

    bar:SetMovable(true)
    bar:RegisterForDrag('LeftButton')
    bar:SetScript('OnDragStart', function(s) s:StartMoving() end)
    bar:SetScript('OnDragStop', function(s)
        s:StopMovingOrSizing()
        local p, _, rp, x, y = s:GetPoint()
        db.point, db.relPoint, db.x, db.y = p, rp, x, y
    end)
    bar:Hide()
end

----------------------------------------------------------------------------
-- text layout helpers
----------------------------------------------------------------------------
local function SetName(txt)
    if db.compact then
        bar.nameCompact:SetText(txt); bar.nameCompact:Show(); bar.nameFull:Hide()
    else
        bar.nameFull:SetText(txt); bar.nameFull:Show(); bar.nameCompact:Hide()
    end
end
local function SetTime(txt)
    if not db.showTime then
        bar.timeCompact:Hide(); bar.timeFull:Hide()
        return
    end
    if db.compact then
        bar.timeCompact:SetText(txt); bar.timeCompact:Show(); bar.timeFull:Hide()
    else
        bar.timeFull:SetText(txt); bar.timeFull:Show(); bar.timeCompact:Hide()
    end
end

----------------------------------------------------------------------------
-- ticks
----------------------------------------------------------------------------
local function GetTick(i)
    if not ticks[i] then
        local t = Tex('OVERLAY', 1, ATLAS2, TC_TICK)
        t:SetVertexColor(0, 0, 0, 0.69)
        t:SetWidth(6)
        ticks[i] = t
    end
    return ticks[i]
end
local function HideTicks() for _, t in ipairs(ticks) do t:Hide() end end

-- Reposition ticks every frame.
-- bar.tickTimes holds ABSOLUTE fire times, snapshotted once at channel start
-- and never recomputed - pushback must not move when a tick actually fires,
-- only cut ticks off the end. Each tick is drawn where the draining spark
-- will cross it in the CURRENT [start,end] window:
--     frac = (end - tickTime) / (end - start)
-- This works regardless of whether the client reports pushback by lowering
-- endTime or by shifting startTime: either way the window changes and the
-- surviving ticks slide to their new spots; ticks with tickTime >= end are
-- lost to pushback and hidden.
local function UpdateTicks()
    HideTicks()
    if not (db.showTicks and bar.channeling and bar.tickTimes) then return end

    local width, height = bar:GetWidth(), bar:GetHeight()
    local s, e = bar.startTime, bar.endTime
    local span = e - s
    if span <= 0 then return end

    for k, tickTime in ipairs(bar.tickTimes) do
        if tickTime < e then                     -- survives the pushback
            local frac = (e - tickTime) / span   -- spark crosses here at fire time
            if frac > 0.01 and frac < 0.99 then  -- keep off the end caps
                local t = GetTick(k)
                t:SetHeight(height + 8)          -- DF sizing: overhangs bar by 4px
                t:ClearAllPoints()
                t:SetPoint('CENTER', bar, 'LEFT', frac * width, 0)
                t:Show()
            end
        end
    end
end

----------------------------------------------------------------------------
-- apply settings
----------------------------------------------------------------------------
local function ApplySettings()
    bar:SetScale(db.scale)
    bar:SetSize(db.width, db.height)
    bar:ClearAllPoints()
    bar:SetPoint(db.point, UIParent, db.relPoint, db.x, db.y)

    bar.spark:SetSize(6, db.height + 8)  -- DF sizing: overhangs bar by 4px
    local s = db.height
    bar.icon:SetSize(s, s)
    bar.icon:SetShown(db.showIcon)

    bar:EnableMouse(not db.locked)
    if not db.locked then
        bar:Show(); bar:SetValue(0.5)
        SetName('|cffffff00[ unlocked - drag ]|r'); SetTime('')
        bar.icon:SetTexture('Interface\\Icons\\INV_Misc_QuestionMark')
        bar:SetStatusBarColor(unpack(COLOR.cast))
        bar.spark:Show(); bar.spark:SetPoint('CENTER', bar, 'LEFT', bar:GetWidth()*0.5, 0)
        bar.flash:Hide(); bar.shield:Hide(); HideTicks()
    elseif not bar.casting and not bar.channeling then
        bar:Hide()
    end
end

----------------------------------------------------------------------------
-- start / pushback / finish
----------------------------------------------------------------------------
local function StartCast(channeling)
    local name, text, texture, startMS, endMS, castID, notInterruptible
    if channeling then
        -- UnitChannelInfo: name, text, texture, start, end, isTradeSkill, notInterruptible
        name, text, texture, startMS, endMS, _, notInterruptible = GetChannelInfo()
    else
        -- UnitCastingInfo: name, text, texture, start, end, isTradeSkill, castID, notInterruptible
        name, text, texture, startMS, endMS, _, castID, notInterruptible = GetCastingInfo()
    end
    if not name then return end

    bar.casting     = not channeling
    bar.channeling  = channeling
    bar.castID      = castID
    bar.finishState = nil
    bar.startTime   = startMS / 1000
    bar.endTime     = endMS / 1000

    bar:SetStatusBarTexture(channeling and FILL_CHANNEL or FILL)
    bar:GetStatusBarTexture():SetDrawLayer('BORDER')
    bar:SetStatusBarColor(unpack(channeling and COLOR.channel or COLOR.cast))
    -- like DF's showChannelName: channels display the spell name, not "Channeling"
    SetName(channeling and (name or text) or (text or name))
    bar.icon:SetTexture(texture)
    bar.icon:SetShown(db.showIcon)
    bar.spark:Show()
    bar.flash:Hide()
    bar.shield:SetShown(not not notInterruptible)

    -- Snapshot the absolute tick fire-times NOW, from the nominal duration.
    -- These never change again: pushback shortens the window (hiding lost
    -- ticks) but does not reschedule the ticks that still fire.
    bar.tickTimes = nil
    local n = channeling and CHANNEL_TICKS[name]
    if n and n > 1 then
        local interval = (bar.endTime - bar.startTime) / n
        bar.tickTimes = {}
        for k = 1, n - 1 do
            bar.tickTimes[k] = bar.startTime + k * interval
        end
    end

    ApplySettings()
    bar.icon:SetShown(db.showIcon)
    bar:Show()
    UpdateTicks()
end

local function OnPushback(channeling)
    local startMS, endMS
    if channeling and bar.channeling then
        _, _, _, startMS, endMS = GetChannelInfo()
    elseif (not channeling) and bar.casting then
        _, _, _, startMS, endMS = GetCastingInfo()
    end
    if startMS then
        bar.startTime = startMS / 1000
        bar.endTime   = endMS / 1000
    end
end

local function FinishCast(state)
    bar.casting, bar.channeling = false, false
    bar.tickTimes = nil
    bar.spark:Hide(); bar.shield:Hide(); HideTicks()

    local hold = db.holdTime or 0
    if hold <= 0 then
        -- no lingering / fade: drop the bar instantly
        bar.finishState = nil
        bar.flash:Hide()
        if db.locked then bar:Hide() end
        return
    end

    bar.finishState = state
    bar.holdUntil = GetTime() + hold
    if state == 'failed' then
        bar:SetStatusBarColor(unpack(COLOR.failed)); bar:SetValue(1); SetTime('')
    else
        bar:SetValue(1)
        bar.flash:SetAlpha(1); bar.flash:Show()
    end
end

----------------------------------------------------------------------------
-- OnUpdate
----------------------------------------------------------------------------
local function OnUpdate(self)
    if self.casting or self.channeling then
        local now, s, e = GetTime(), self.startTime, self.endTime
        local dur = e - s
        if dur <= 0 then return end
        local elapsed = now - s
        local frac
        if self.casting then
            frac = elapsed / dur
            SetTime(string.format('%.1f', e - now))
        else
            frac = 1 - elapsed / dur
            SetTime(string.format('%.1f', e - now))
        end
        if frac < 0 then frac = 0 elseif frac > 1 then frac = 1 end
        self:SetValue(frac)
        self.spark:ClearAllPoints()
        self.spark:SetPoint('CENTER', self, 'LEFT', frac * self:GetWidth(), 0)
        UpdateTicks()
        if now >= e then FinishCast('success') end
    elseif self.finishState then
        if self.flash:IsShown() then
            local a = self.flash:GetAlpha() - 0.05
            if a <= 0 then self.flash:Hide() else self.flash:SetAlpha(a) end
        end
        if GetTime() >= self.holdUntil then
            self.finishState = nil
            self.flash:Hide()
            if db.locked then self:Hide() end
        end
    end
end

----------------------------------------------------------------------------
-- events
----------------------------------------------------------------------------
local ev = CreateFrame('Frame')
ev:RegisterEvent('PLAYER_LOGIN')
ev:SetScript('OnEvent', function(_, event, unit, castGUID)
    if event == 'PLAYER_LOGIN' then
        PlayerCastbarDB = PlayerCastbarDB or {}
        db = PlayerCastbarDB
        for k, v in pairs(DEFAULTS) do if db[k] == nil then db[k] = v end end
        -- one-time migrations
        if (db.__v or 0) < 2 then
            if db.width == 256 then db.width = 320 end
            if db.height == 16 then db.height = 22 end
        end
        if (db.__v or 0) < 3 then
            db.holdTime = 0       -- no post-cast linger/fade
            db.showTime = false   -- time text off
        end
        db.__v = 3

        CreateBar()
        ApplySettings()
        bar:SetScript('OnUpdate', OnUpdate)

        if PlayerCastingBarFrame then
            PlayerCastingBarFrame:UnregisterAllEvents(); PlayerCastingBarFrame:Hide()
        elseif CastingBarFrame then
            CastingBarFrame:UnregisterAllEvents(); CastingBarFrame:Hide()
        end

        for _, e in ipairs({
            'UNIT_SPELLCAST_START','UNIT_SPELLCAST_STOP',
            'UNIT_SPELLCAST_FAILED','UNIT_SPELLCAST_INTERRUPTED',
            'UNIT_SPELLCAST_DELAYED',
            'UNIT_SPELLCAST_CHANNEL_START','UNIT_SPELLCAST_CHANNEL_STOP',
            'UNIT_SPELLCAST_CHANNEL_UPDATE',
        }) do ev:RegisterUnitEvent(e, UNIT) end
        return
    end

    if event == 'UNIT_SPELLCAST_START' then
        StartCast(false)
    elseif event == 'UNIT_SPELLCAST_CHANNEL_START' then
        StartCast(true)
    elseif event == 'UNIT_SPELLCAST_DELAYED' then
        if bar.casting then OnPushback(false)
        elseif GetCastingInfo() then StartCast(false) end -- recover a missed start
    elseif event == 'UNIT_SPELLCAST_CHANNEL_UPDATE' then
        if bar.channeling then OnPushback(true)
        elseif GetChannelInfo() then StartCast(true) end  -- recover a missed start
    elseif event == 'UNIT_SPELLCAST_STOP' then
        -- only stop OUR cast: a stale STOP from a previous castID must not
        -- kill a newer cast (spam-cast race)
        if bar.casting and (not castGUID or castGUID == bar.castID) then
            FinishCast('success')
        end
    elseif event == 'UNIT_SPELLCAST_CHANNEL_STOP' then
        -- channels have no castID; if the game says we're STILL channeling,
        -- this STOP belongs to the previous channel (cancel->recast race):
        -- resync the bar to the live channel instead of hiding it
        if GetChannelInfo() then
            StartCast(true)
        elseif bar.channeling then
            FinishCast('success')
        end
    elseif event == 'UNIT_SPELLCAST_FAILED' or event == 'UNIT_SPELLCAST_INTERRUPTED' then
        -- like Blizzard/DF: FAILED only ever cancels a matching CAST.
        -- Spamming a spell mid-channel fires FAILED ("already in progress")
        -- and must NOT hide the live channel bar.
        if bar.casting and (not castGUID or castGUID == bar.castID) then
            FinishCast('failed')
        elseif bar.channeling and event == 'UNIT_SPELLCAST_INTERRUPTED'
            and not GetChannelInfo() then
            FinishCast('failed')
        end
    end
end)

----------------------------------------------------------------------------
-- test: ticked channel with two simulated pushbacks
----------------------------------------------------------------------------
local function RunTest()
    local now = GetTime()
    bar.casting, bar.channeling, bar.finishState = false, true, nil
    bar.startTime, bar.endTime = now, now + 6
    local n, interval = 6, 1.0
    bar.tickTimes = {}
    for k = 1, n - 1 do bar.tickTimes[k] = bar.startTime + k * interval end
    bar:SetStatusBarTexture(FILL_CHANNEL)
    bar:GetStatusBarTexture():SetDrawLayer('BORDER')
    bar:SetStatusBarColor(unpack(COLOR.channel))
    SetName('Test Channel')
    bar.icon:SetTexture('Interface\\Icons\\Spell_Shadow_SiphonMana')
    bar.icon:SetShown(db.showIcon)
    bar.spark:Show(); bar.flash:Hide(); bar:Show(); UpdateTicks()
    -- simulate both ways clients report channel pushback:
    C_Timer.After(2.0, function()   -- endTime lowered
        if bar.channeling then bar.endTime = bar.endTime - 1 end
    end)
    C_Timer.After(3.5, function()   -- startTime shifted
        if bar.channeling then bar.startTime = bar.startTime - 1 end
    end)
end

----------------------------------------------------------------------------
-- slash
----------------------------------------------------------------------------
SLASH_PLAYERCASTBAR1 = '/pcb'
SlashCmdList.PLAYERCASTBAR = function(msg)
    msg = (msg or ''):lower():gsub('%s+', '')
    local p = '|cff33ff99PlayerCastbar|r: '
    if msg == 'unlock' then db.locked = false; ApplySettings(); print(p..'unlocked')
    elseif msg == 'lock' then db.locked = true; ApplySettings(); print(p..'locked')
    elseif msg == 'reset' then for k,v in pairs(DEFAULTS) do db[k]=v end; ApplySettings(); print(p..'reset')
    elseif msg == 'icon' then db.showIcon = not db.showIcon; ApplySettings(); print(p..'icon '..(db.showIcon and 'on' or 'off'))
    elseif msg == 'ticks' then db.showTicks = not db.showTicks; print(p..'ticks '..(db.showTicks and 'on' or 'off'))
    elseif msg == 'time' then db.showTime = not db.showTime; print(p..'time text '..(db.showTime and 'on' or 'off'))
    elseif msg == 'compact' then db.compact = not db.compact; print(p..'compact '..(db.compact and 'on' or 'off'))
    elseif msg == 'test' then RunTest()
    else print(p..'lock, unlock, reset, icon, ticks, time, compact, test') end
end
