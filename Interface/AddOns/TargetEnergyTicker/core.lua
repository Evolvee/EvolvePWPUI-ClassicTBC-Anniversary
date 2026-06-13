local e = CreateFrame("Frame")
e:RegisterEvent("PLAYER_LOGIN")
e:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
e:RegisterEvent("PLAYER_TARGET_CHANGED")
e:RegisterEvent("PLAYER_FOCUS_CHANGED")
e:RegisterEvent("UNIT_POWER_UPDATE")
e:RegisterEvent("UNIT_HEALTH")

local energyValues = {
    target = { last_tick = 0, last_value = 0, last_health = 0, startTick = false, tickRate = 2.02, externalTick = 0, externalGain = 0, externalHealTick = 0, externalHealGain = 0 },
    focus = { last_tick = 0, last_value = 0, last_health = 0, startTick = false, tickRate = 2.02, externalTick = 0, externalGain = 0, externalHealTick = 0, externalHealGain = 0 }
}

for i = 1, 5 do
    energyValues["arena"..i] = { last_tick = 0, last_value = 0, last_health = 0, startTick = true, tickRate = 2.02, externalTick = 0, externalGain = 0, externalHealTick = 0, externalHealGain = 0 }
end

local trackedUnits = {"target", "focus", "arena1", "arena2", "arena3", "arena4", "arena5"}

local function GetUnitKey(unit)
    for i = 1, 5 do
        if UnitIsUnit(unit, "arena"..i) then
            return "arena"..i
        end
    end
    return unit
end

local function SetEnergyValue(frame, value, tickRate)
    local x = frame:GetWidth()
    local position = ((x * value) / tickRate)

    --if (position >= x * 0.2 and position <= x * 0.45) then
        --frame.energy.spark:SetVertexColor(50/255, 205/255, 50/255, 1)
    --else
        frame.energy.spark:SetVertexColor(1, 0, 0, 1)
    --end
    
    local _, class = UnitClass(frame.unit)
    local energy = UnitPower(frame.unit)
    
    if (class and class == "ROGUE") and (energy and (energy >= 4 and energy <=24)) then
        frame.energy.spark:Show()
    else
        frame.energy.spark:Hide()
    end

    if (position < x) then
        frame.energy.spark:SetPoint("CENTER", frame, "LEFT", position, 0)
    else
        frame.energy.spark:Hide()
    end
end

local function OnUpdate(self, elapsed)
    for _, unit in ipairs(trackedUnits) do
        if UnitExists(unit) then
            local data = energyValues[unit]
            if data.startTick then
                data.last_tick = data.last_tick + elapsed

                if data.last_tick >= data.tickRate then
                    data.last_tick = data.last_tick - data.tickRate
                end
            end
        end
    end

    if UnitExists("target") and TargetFrameManaBar and TargetFrameManaBar.energy then
        local key = GetUnitKey("target")
        SetEnergyValue(TargetFrameManaBar, energyValues[key].last_tick, energyValues[key].tickRate)
    end
    
    if UnitExists("focus") and FocusFrameManaBar and FocusFrameManaBar.energy then
        local key = GetUnitKey("focus")
        SetEnergyValue(FocusFrameManaBar, energyValues[key].last_tick, energyValues[key].tickRate)
    end
end

local ignoreTicks = {
    [10] = true,
    [4] = true,
    [6] = true,
    [8] = true,
    [25] = true,
    [33] = true,
    [25] = true,
    [30] = true,
    [15] = true,
    [20] = true,
   }
    
local function UpdateEnergy(unit)
    local powerType = UnitPowerType(unit)
    local energy = UnitPower(unit)
    local energyInc = energy - energyValues[unit].last_value
    local now = GetTime()
    local guid = UnitGUID(unit)

    local externalTick = energyValues[guid] and energyValues[guid].externalTick or 0
    local gain = energyValues[guid] and energyValues[guid].externalGain or 0

    if ((now - externalTick) <= 0.1) and energyInc == gain then
        energyValues[unit].last_value = energy
        return
    end

    if (energyValues[unit].last_value == 0) then
        energyValues[unit].last_value = energy
        return
    elseif energyInc == 0 then
        return
    end

    local increment = false
    if powerType == 3 then
        increment = (energyInc == 20 or energyInc == 21)
    end

    energyValues[unit].last_value = energy

    if increment then
        energyValues[unit].startTick = true
        energyValues[unit].last_tick = 0
        energyValues[unit].tickRate = 2.02
    end
end

local function UpdateHealth(unit)
    if UnitAffectingCombat(unit) or UnitPower(unit) ~= UnitPowerMax(unit) then
        return
    end
    
    local health = UnitHealth(unit)
    local healthMax = UnitHealthMax(unit)
    local healthInc = health - energyValues[unit].last_health
    local now = GetTime()
    local guid = UnitGUID(unit)

    local externalHealTick = energyValues[guid] and energyValues[guid].externalHealTick or 0
    local gain = energyValues[guid] and energyValues[guid].externalHealGain or 0

    if ((now - externalHealTick) <= 0.1) and healthInc == gain then
        energyValues[unit].last_health = health
        return
    end

    if (energyValues[unit].last_health == 0) then
        energyValues[unit].last_health = health
        return
    elseif healthInc <= 0 then
        energyValues[unit].last_health = health
        return
    end

    local previousHealth = energyValues[unit].last_health
    energyValues[unit].last_health = health

    if previousHealth < healthMax then
        energyValues[unit].startTick = true
        energyValues[unit].last_tick = 0
        energyValues[unit].tickRate = 2.02
    end
end

local function CreateSpark(frame)
    if not frame.energy then
        frame.energy = CreateFrame("Statusbar", frame:GetName().."_energy", frame)
        frame.energy.spark = frame.energy:CreateTexture(nil, "OVERLAY")
        frame.energy.spark:SetTexture("Interface\\CastingBar\\UI-CastingBar-Spark")
        frame.energy.spark:SetSize(32, 32)
        frame.energy.spark:SetPoint("CENTER", frame, 0, 0)
        frame.energy.spark:SetBlendMode("ADD")
        frame.energy.spark:SetAlpha(1)
    end
end

local function AddEnergy()
    if TargetFrameManaBar then
        CreateSpark(TargetFrameManaBar)
    end
    if FocusFrameManaBar then
        CreateSpark(FocusFrameManaBar)
    end
    e:SetScript("OnUpdate", OnUpdate)
end

local eventRegistered = { 
    SPELL_PERIODIC_ENERGIZE = true, SPELL_ENERGIZE = true,
    SPELL_HEAL = true, SPELL_PERIODIC_HEAL = true 
}
local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
local COMBATLOG_FILTER_HOSTILE_PLAYERS = COMBATLOG_FILTER_HOSTILE_PLAYERS

local function RealTick()
    local _, eventType, _, _, _, _, _, destGUID, _, destFlags, _, _, _, _, amount = CombatLogGetCurrentEventInfo()
    if not (eventRegistered) then
        return
    end

    if eventType == "SPELL_HEAL" or eventType == "SPELL_PERIODIC_HEAL" then
        if not energyValues then
            energyValues = {}
        end
        energyValues.externalHealTick = GetTime()
        energyValues.externalHealGain = amount
    elseif eventType == "SPELL_PERIODIC_ENERGIZE" or eventType == "SPELL_ENERGIZE" then
        local isDestEnemy = CombatLog_Object_IsA(destFlags, COMBATLOG_FILTER_HOSTILE_PLAYERS)
        if isDestEnemy then
            if not energyValues then
                energyValues = {}
            end
            energyValues.externalTick = GetTime()
            energyValues.externalGain = amount
        end
    end
end

local function OnEvent(self, event,...)
    if event == "PLAYER_LOGIN" then
        AddEnergy()
        self:UnregisterEvent("PLAYER_LOGIN")
    elseif event == "UNIT_POWER_UPDATE" then
        local unit =...
        if energyValues[unit] then
            UpdateEnergy(unit)
        end
    elseif event == "UNIT_HEALTH" then
        local unit =...
        if energyValues[unit] then
            UpdateHealth(unit)
        end
    elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then
        RealTick()
    elseif event == "PLAYER_TARGET_CHANGED" or event == "PLAYER_FOCUS_CHANGED" then
        local unit = (event == "PLAYER_TARGET_CHANGED") and "target" or "focus"
        local key = GetUnitKey(unit)
        
        if key == unit then
            energyValues[unit].last_tick = 0
            energyValues[unit].startTick = true
            energyValues[unit].last_value = UnitPower(unit)
            energyValues[unit].last_health = UnitHealth(unit)
        end
    end
end
e:SetScript("OnEvent", OnEvent)
