local TREMOR_ID = 5913
local TREMOR_SPELL_ID = 8143

local framePool = {}
local activeTotems = {}
local castTimers = {}

local mainFrame = CreateFrame("Frame")

local function CreateIconTextFrame()
    local frame = CreateFrame("Frame")
    frame:SetSize(50, 50)

    if not frame.text then
        frame.text = frame:CreateFontString(nil, "OVERLAY")
        frame.text:SetFont("Interface\\Addons\\Gladdy\\Fonts\\DorisPP.TTF", 19, "OUTLINE")
        frame.text:SetPoint("CENTER", frame, "CENTER", 95, -8)
        frame.text:SetTextColor(1, 1, 1)
    end

    if not frame.icon then
        frame.icon = frame:CreateTexture(nil, "ARTWORK")
        frame.icon:SetSize(36, 34)
        frame.icon:SetPoint("CENTER", frame, "CENTER", 95, -7)
        frame.icon:SetTexture("Interface\\Addons\\TextureScript\\TremorPulseTexture")
    end

    frame:Hide()
    return frame
end

local function OnUpdateTimer(self)
    local age = GetTime() - self.spawnTime
    local timeToNextTick = 3 - (age % 3)
    self.text:SetText(string.format("%0.1f", timeToNextTick))
end

local function GetNamePlateByGUID(guid)
    if not guid then return nil end
    
    local unit = UnitTokenFromGUID(guid)
    if not unit then return nil end

    return C_NamePlate.GetNamePlateForUnit(unit)
end

local function HidePlate(nameplate)
    if not nameplate then return end
    
    if nameplate.attachedFrame then
        local frame = nameplate.attachedFrame
        frame:Hide()
        frame:SetParent(nil)
        frame:SetScript("OnUpdate", nil)
        table.insert(framePool, frame)
        nameplate.attachedFrame = nil
    end

    if nameplate.UnitFrame then
        nameplate.UnitFrame:Hide()
    end
end

local function ShowPlate(nameplate, spawnTime)
    if not nameplate then return end

    if not nameplate.attachedFrame then
        local frame = #framePool > 0 and table.remove(framePool) or CreateIconTextFrame()
        frame:SetParent(nameplate)
        frame:SetFrameStrata("TOOLTIP")
        frame:SetFrameLevel(nameplate:GetFrameLevel() + 100)
        frame:ClearAllPoints()
        frame:SetPoint("RIGHT", nameplate, "LEFT", -5, 0)
        frame:Show()
        nameplate.attachedFrame = frame
    end

    if spawnTime then
        nameplate.attachedFrame.spawnTime = spawnTime
        nameplate.attachedFrame:SetScript("OnUpdate", OnUpdateTimer)
    end
end

local function GetNPCID(guid)
    if not guid then return 0 end
    local _, _, _, _, _, npcId = strsplit("-", guid)
    return tonumber(npcId)
end

local function OnEvent(_, event, ...)
    if event == "COMBAT_LOG_EVENT_UNFILTERED" then
        local _, eventType, _, sourceGUID, _, _, _, destGUID, _, _, _, spellID, _, _, amount = CombatLogGetCurrentEventInfo()

        if eventType == "SPELL_CAST_SUCCESS" and spellID == TREMOR_SPELL_ID then
            castTimers[sourceGUID] = GetTime()

        elseif eventType == "SPELL_SUMMON" and spellID == TREMOR_SPELL_ID then
            
            for oldGuid, info in pairs(activeTotems) do
                if info.shaman == sourceGUID then
                    activeTotems[oldGuid] = nil
                    
                    local oldPlate = GetNamePlateByGUID(oldGuid)
                    if oldPlate then
                        HidePlate(oldPlate) 
                    end
                end
            end

            local startTime = castTimers[sourceGUID] or GetTime()
            castTimers[sourceGUID] = nil
            
            activeTotems[destGUID] = { shaman = sourceGUID, spawnTime = startTime }

            local nameplate = GetNamePlateByGUID(destGUID)
            if nameplate then
                ShowPlate(nameplate, startTime)
            end

        elseif eventType == "UNIT_DIED" or eventType == "UNIT_DESTROYED" then
            if activeTotems[destGUID] then
                activeTotems[destGUID] = nil
                
                local plate = GetNamePlateByGUID(destGUID)
                if plate then
                     HidePlate(plate)
                end
            end

        elseif activeTotems[destGUID] and (eventType == "SWING_DAMAGE" or eventType == "SPELL_DAMAGE" or eventType == "RANGE_DAMAGE") then
            local damage = amount
            if eventType == "SWING_DAMAGE" then damage = spellID end

            if damage and damage >= 5 then
                activeTotems[destGUID] = nil
                
                local plate = GetNamePlateByGUID(destGUID)
                if plate then
                    HidePlate(plate)
                end
            end
        end

    elseif event == "NAME_PLATE_UNIT_ADDED" then
        local unit = ...
        local guid = UnitGUID(unit)
        local npcID = GetNPCID(guid)
        
        if npcID == TREMOR_ID and not UnitIsDead(unit) then
            local data = activeTotems[guid]
            
            if not data then
                data = { spawnTime = GetTime(), shaman = nil }
                activeTotems[guid] = data
            end

            local nameplate = C_NamePlate.GetNamePlateForUnit(unit)
            ShowPlate(nameplate, data.spawnTime)
        end

    elseif event == "NAME_PLATE_UNIT_REMOVED" then
        local unit = ...
        local nameplate = C_NamePlate.GetNamePlateForUnit(unit)
        
        if nameplate and nameplate.attachedFrame then
            local frame = nameplate.attachedFrame
            frame:Hide()
            frame:SetParent(nil)
            frame:SetScript("OnUpdate", nil)
            table.insert(framePool, frame)
            nameplate.attachedFrame = nil
        end

    elseif event == "PLAYER_ENTERING_WORLD" then
        activeTotems = {}
        castTimers = {}
    end
end

mainFrame:SetScript("OnEvent", OnEvent)
mainFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
mainFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
mainFrame:RegisterEvent("NAME_PLATE_UNIT_ADDED")
mainFrame:RegisterEvent("NAME_PLATE_UNIT_REMOVED")
