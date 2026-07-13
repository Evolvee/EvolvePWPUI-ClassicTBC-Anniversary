local AddonName, DBF = ...

local DeBuffFilter = LibStub:GetLibrary(AddonName, true)
local MAX_TARGET_DEBUFFS = 16
local MAX_TARGET_BUFFS = 40
local AURA_START_Y = 28
local AURA_START_X = 21
local fontName
local mabs, pairs, mfloor = math.abs, pairs, math.floor
local tinsert, tsort = table.insert, table.sort
local UnitBuff, UnitDebuff, UnitIsEnemy = _G.UnitBuff, _G.UnitDebuff, _G.UnitIsEnemy
local UnitIsUnit, UnitIsOwnerOrControllerOfUnit, UnitIsFriend = _G.UnitIsUnit,
_G.UnitIsOwnerOrControllerOfUnit,
_G.UnitIsFriend
local IsAddOnLoaded = C_AddOns and C_AddOns.IsAddOnLoaded or IsAddOnLoaded
local GetAddOnMetadata = C_AddOns and C_AddOns.GetAddOnMetadata or GetAddOnMetadata
local playerClass = select(2, UnitClass("player"))
local LibClassicDurations
DeBuffFilter._trackedAuras = DeBuffFilter._trackedAuras or {}
DeBuffFilter._auraState = DeBuffFilter._auraState or {}

local function adjustCastbar(frame)
    local parentFrame = frame:GetParent()
    if not parentFrame then
        return
    end

    local addXOffset = frame.xOffset or 0
    local yOffset = parentFrame.largestAura or 0
    local db = DeBuffFilter.db.profile
    local barPosX = (parentFrame == TargetFrame and db.targetBarPosX) or (parentFrame == FocusFrame and db.focusBarPosX)
    local barPosY = (parentFrame == TargetFrame and db.targetBarPosY) or (parentFrame == FocusFrame and db.focusBarPosY)
    local hasCustomX = (barPosX and barPosX ~= 0)
    local hasCustomY = (barPosY and barPosY ~= 0)
    local isCustom = hasCustomX or hasCustomY
    local anchorFrame = parentFrame
    local defaultX = 43 + addXOffset
    local defaultY = 0

    if frame.boss then
        defaultY = 6 - yOffset
    elseif parentFrame.haveToT then
        if parentFrame.buffsOnTop or (parentFrame.dbfaurarow or 0) <= 1 then
            defaultY = -25
        else
            anchorFrame = parentFrame.dbfspellanchor
            defaultX = 22 + addXOffset
            defaultY = -15 - yOffset
        end
    elseif parentFrame.haveElite then
        if parentFrame.buffsOnTop or (parentFrame.dbfaurarow or 0) <= 1 then
            defaultY = -9
        else
            anchorFrame = parentFrame.dbfspellanchor
            defaultX = 22 + addXOffset
            defaultY = -15 - yOffset
        end
    else
        if not parentFrame.buffsOnTop and (parentFrame.dbfaurarow or 0) > 0 then
            anchorFrame = parentFrame.dbfspellanchor
            defaultX = 22 + addXOffset
            defaultY = -15 - yOffset
        else
            defaultY = 7 - yOffset
        end
    end

    if isCustom then
        anchorFrame = parentFrame
    end

    local finalX = hasCustomX and barPosX or defaultX
    local finalY = hasCustomY and barPosY or defaultY

    local curPoint, curRelTo, curRelPoint, curX, curY = frame:GetPoint()

    if
    curRelTo and
            (curRelTo ~= anchorFrame or curPoint ~= "TOPLEFT" or curRelPoint ~= "BOTTOMLEFT" or
                    mabs(curX - finalX) > 0.01 or
                    mabs(curY - finalY) > 0.01)
    then
        frame:ClearAllPoints()
        frame:SetPoint("TOPLEFT", anchorFrame, "BOTTOMLEFT", finalX, finalY)
    end
end

local PLAYER_UNITS = {
    player = true,
    vehicle = true,
    pet = true
}

function DeBuffFilter:ShouldAuraBeLarge(caster)
    if not caster then
        return false
    end

    for token, value in pairs(PLAYER_UNITS) do
        if UnitIsUnit(caster, token) or UnitIsOwnerOrControllerOfUnit(token, caster) then
            return value
        end
    end
end

local function GetFramePosition(frame)
    if not frame then
        return 0, 0
    end

    local left = frame:GetLeft() or 0
    local bottom = frame:GetBottom() or 0
    return left, bottom
end

local function combinedSort(a, b)
    local db = DeBuffFilter.db.profile

    if db.sortbyDispellable and playerClass == "ROGUE" then
        local aHasType = a.dispelName and a.dispelName ~= ""
        local bHasType = b.dispelName and b.dispelName ~= ""

        if aHasType ~= bHasType then
            return aHasType
        end
    end

    if db.sortbyDispellable then
        local aMagic = a.dispelName == "Magic"
        local bMagic = b.dispelName == "Magic"

        if aMagic ~= bMagic then
            return aMagic
        end
    end

    if a.prio ~= b.prio then
        return a.prio > b.prio
    end

    if a.size ~= b.size then
        return a.size > b.size
    end

    return a.index < b.index
end

function DeBuffFilter:TrackAuraDuration(frame, spellId, expirationTime, duration, settings)
    if not expirationTime or not duration then
        return
    end
    local unit = frame.unit or "player"
    local guid = UnitGUID(unit)
    if not guid then
        return
    end

    self._trackedAuras[frame] = self._trackedAuras[frame] or {}
    self._trackedAuras[frame][guid] = self._trackedAuras[frame][guid] or {}

    self._auraState[frame] = self._auraState[frame] or {}
    self._auraState[frame][guid] = self._auraState[frame][guid] or {}

    self._trackedAuras[frame][guid][spellId] = {
        expiration = expirationTime,
        min = settings.minDuration or 0,
        max = settings.maxDuration or 0
    }

    self._auraState[frame][guid][spellId] = self._auraState[frame][guid][spellId] or
            {
                entered = false,
                exited = false,
                expiration = expirationTime
            }
end

local function updateAuraPosition(self, auraFrame, size, xPos, yPos, mirrorVertically)
    local point = mirrorVertically and "BOTTOMLEFT" or "TOPLEFT"
    local relativePoint = mirrorVertically and "TOPLEFT" or "BOTTOMLEFT"
    
    auraFrame:ClearAllPoints()
    auraFrame:SetPoint(point, self, relativePoint, xPos, yPos)
    auraFrame:SetWidth(size)
    auraFrame:SetHeight(size)
    
    local borderFrame = _G[auraFrame:GetName() .. "Border"]
    if borderFrame then
        borderFrame:SetWidth(size + 2)
        borderFrame:SetHeight(size + 2)
    end
end

local function updateLayout(frame, auraList, numOppositeAuras, isBuff, offsetX, mirrorAurasVertically, startYOffset)
    local db = DeBuffFilter.db.profile
    local maxRowWidth = db.auraWidth
    local yDistance = db.verticalSpace
    
    local startX = AURA_START_X
    local startY = AURA_START_Y
    if mirrorAurasVertically then
        startY = -19
        if frame.threatNumericIndicator:IsShown() then
            startY = startY + frame.threatNumericIndicator:GetHeight()
        end
    end

    local currentX = startX
    local currentY = startY
    
    if startYOffset and startYOffset > 0 then
        currentY = mirrorAurasVertically and (startY + startYOffset) or (startY - startYOffset)
    end
    
    local biggestAuraInRow = 0
    local haveToT = frame.totFrame and frame.totFrame:IsShown()
    local totFrameX, totFrameBottom = GetFramePosition(frame.totFrame)

    for _, data in ipairs(auraList) do
        if data.shouldHide then
            if data.dbf then
                data.dbf:Hide()
            end
        else
            local dbf, size = data.dbf, data.size
            dbf:Show()
            
            if (currentX - startX) > 0 then
                local newWidth = (currentX - startX) + size + offsetX
                local leftestAura = frame:GetLeft() + currentX + offsetX
                local bottomEnd = frame:GetBottom() + currentY
                
                local verticalDistance = bottomEnd and (bottomEnd - totFrameBottom) or 0
                local horizontalDistance = newWidth
                if leftestAura then
                    horizontalDistance = mfloor(mabs(leftestAura - totFrameX)) + 5
                end

                local breakRow = false
                if (haveToT and (horizontalDistance < size) and verticalDistance > 0) or (newWidth > maxRowWidth) then
                    breakRow = true
                end
                
                if breakRow then
                    local distance = yDistance * 2
                    if distance == 0 then
                        distance = 2
                    end
                    
                    local rowDrop = biggestAuraInRow + distance
                    
                    currentY = mirrorAurasVertically and (currentY + rowDrop) or (currentY - rowDrop)
                    currentX = startX
                    biggestAuraInRow = 0
                    frame.dbfaurarow = frame.dbfaurarow + 1
                else
                    currentX = currentX + offsetX
                end
            else
                frame.dbfaurarow = frame.dbfaurarow + 1
            end
            
            if size > biggestAuraInRow then
                biggestAuraInRow = size
            end
            
            local calc = yDistance * 2
            if calc == 0 then
                calc = 2
            end
            
            if not frame.largestAura or frame.largestAura < calc then
                frame.largestAura = calc
            end

            updateAuraPosition(frame, dbf, size, currentX, currentY, mirrorAurasVertically)
            
            if currentX == startX then
                local isFriend = UnitIsFriend("player", frame.unit)
                if not isBuff then
                    if isFriend or (not isFriend and numOppositeAuras == 0) then
                        frame.dbfspellanchor = dbf
                    end
                else
                    frame.dbfspellanchor = dbf
                end
            end
            
            currentX = currentX + size
        end
    end
    
    local totalOffset = 0
    if frame.dbfaurarow > 0 and biggestAuraInRow > 0 then
        local bottomPadding = yDistance * 2
        if bottomPadding == 0 then
            bottomPadding = 2
        end
        
        totalOffset = mfloor(mabs(startY - currentY)) + biggestAuraInRow + bottomPadding
    end
    
    return totalOffset
end

local function ProcessList(list, shouldSort)
    if shouldSort then
        tsort(list, combinedSort)
    end

    local count = 0
    local seen = {}
    for _, data in ipairs(list) do
        if not data.shouldHide and data.removeDuplicates then
            local key = data.spellId or data.name
            if key then
                if seen[key] then
                    data.shouldHide = true
                else
                    seen[key] = true
                end
            end
        end

        if not data.shouldHide then
            count = count + 1
        end
    end

    return count
end

local function Filterino(self)
    local selfName = self:GetName()
    local playerIsTarget = UnitIsUnit("player", self.unit)
    local isEnemy = UnitIsEnemy("player", self.unit)
    local db = DeBuffFilter.db.profile
    local retailGlow = db.enableRetailGlow
    local texturePath = "Interface\\TargetingFrame\\UI-TargetingFrame-Stealable"

    local buffList = {}
    local debuffList = {}

    local needBuffSort = (db.sortBySize or db.sortbyDispellable)
    local needDebuffSort = (db.sortBySize or db.sortbyDispellable)

    local buffIndex = 1

    AuraUtil.ForEachAura(
            self.unit,
            AuraUtil.CreateFilterString(AuraUtil.AuraFilters.Helpful),
            MAX_TARGET_BUFFS,
            function(...)
                local buffName, icon, count, debuffType, duration, expirationTime, caster, canStealOrPurge, _, spellId = ...
                if buffName and icon then
                    local frameName = selfName .. "Buff" .. buffIndex
                    local frame = _G[frameName]
                    if frame then
                        if not self.maxBuffs or buffIndex <= self.maxBuffs then
                            local shouldBeLarge = caster and DeBuffFilter:ShouldAuraBeLarge(caster)
                            local buffSize = shouldBeLarge and db.selfSize or db.otherSize
                            local shouldHide, shouldGlow, colorTable = nil, nil, { r = 1, g = 1, b = 0.85, a = 1 }
                            local prioValue, removeDuplicates, ownOnly = 0, false, false

                            local action, frameSettings = DeBuffFilter:CheckSmarterAuraFilters(spellId, buffName, expirationTime, count, selfName)
                            frameSettings = frameSettings or {}

                            if action then
                                for _, act in ipairs(action) do
                                    if act.hide then shouldHide = true end
                                    if act.glow then shouldGlow = true end
                                    if act.size and act.size.enabled then
                                        buffSize = shouldBeLarge and (act.selfSize or act.otherSize or 21) or (act.otherSize or act.selfSize or 19)
                                    end
                                end
                            end

                            if frameSettings then
                                if frameSettings.removeDuplicates then removeDuplicates = true end
                                if frameSettings.ownOnly then ownOnly = true end
                                if frameSettings.alwaysEnableGlow then shouldGlow = true end
                                if frameSettings.color then colorTable = frameSettings.color end
                                if frameSettings.priorityEnabled and frameSettings.priority and frameSettings.priority > 0 then
                                    prioValue = frameSettings.priority
                                    needBuffSort = true
                                end
                            end

                            local filters = DeBuffFilter:GetSmartFilterSettings(buffName, spellId, selfName)
                            if filters then
                                for _, settings in ipairs(filters) do
                                    if settings.enableDurationFilter then
                                        local timeLeft = expirationTime and (expirationTime - GetTime()) or 0
                                        local duration = duration or timeLeft
                                        DeBuffFilter:TrackAuraDuration(self, spellId, expirationTime, duration, settings)
                                        break
                                    end
                                end
                            end

                            if ownOnly and caster ~= "player" then shouldHide = true end

                            tinsert(buffList, {
                                dbf = frame,
                                shouldHide = shouldHide,
                                size = buffSize,
                                largeAura = shouldBeLarge,
                                prio = prioValue,
                                removeDuplicates = removeDuplicates,
                                spellId = spellId,
                                name = buffName,
                                dispelName = debuffType,
                                index = buffIndex
                            })

                            local frameStealable = _G[frameName .. "Stealable"]
                            local modifier = retailGlow and 2.06 or 1.34

                            if frameStealable then
                                if retailGlow then
                                    if not frameStealable.newTexture then
                                        frameStealable.newTexture = true
                                        if C_Texture.GetAtlasInfo("newplayertutorial-drag-slotgreen") then
                                            frameStealable:SetAtlas("newplayertutorial-drag-slotgreen")
                                        else
                                            frameStealable:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-Stealable")
                                        end
                                        frameStealable:SetDesaturated(true)
                                    end
                                end

                                if (db.highlightAll and debuffType == "Magic") or shouldGlow then
                                    frameStealable:Show()
                                    frameStealable:SetVertexColor(colorTable.r, colorTable.g, colorTable.b, colorTable.a)
                                elseif not playerIsTarget and isEnemy and canStealOrPurge then
                                    frameStealable:Show()
                                    frameStealable:SetVertexColor(1, 1, 1)
                                else
                                    frameStealable:Hide()
                                end
                                frameStealable:SetSize(buffSize * modifier, buffSize * modifier)
                            end

                            local fCount = _G[frameName .. "Count"]
                            if fCount then
                                if not fontName then fontName = fCount:GetFont() end
                                fCount:SetFont(fontName, buffSize / 1.75, "OUTLINE, THICKOUTLINE, MONOCHROME")
                                local c = db.countColor or { 1, 1, 1 }
                                fCount:SetVertexColor(c[1], c[2], c[3])
                            end
                            buffIndex = buffIndex + 1
                        end
                    end
                end
                return buffIndex > MAX_TARGET_BUFFS
            end
    )

    local debuffIndex = 1
    local maxDebuffs = self.maxDebuffs or MAX_TARGET_DEBUFFS

    AuraUtil.ForEachAura(
            self.unit,
            AuraUtil.CreateFilterString(AuraUtil.AuraFilters.Harmful, AuraUtil.AuraFilters.IncludeNameplateOnly),
            maxDebuffs,
            function(...)
                local debuffName, icon, count, debuffType, duration, expirationTime, caster, _, _, spellId, _, _, casterIsPlayer, nameplateShowAll = ...

                if debuffName and icon then
                    if (self:ShouldShowDebuffs(self.unit, caster, nameplateShowAll, casterIsPlayer)) then
                        local frameName = selfName .. "Debuff" .. debuffIndex
                        local frame = _G[frameName]

                        if frame then
                            local shouldBeLarge = caster and DeBuffFilter:ShouldAuraBeLarge(caster)
                            local buffSize = shouldBeLarge and db.selfSize or db.otherSize
                            local shouldHide, shouldGlow, colorTable = false, nil, { r = 1, g = 1, b = 0.85, a = 1 }
                            local prioValue, removeDuplicates, ownOnly = 0, false, false

                            local action, frameSettings = DeBuffFilter:CheckSmarterAuraFilters(spellId, debuffName, expirationTime, count, selfName)
                            frameSettings = frameSettings or {}

                            if action then
                                for _, act in ipairs(action) do
                                    if act.hide then shouldHide = true end
                                    if act.glow then shouldGlow = true end
                                    if act.size and act.size.enabled then
                                        buffSize = shouldBeLarge and (act.selfSize or act.otherSize or 21) or (act.otherSize or act.selfSize or 19)
                                    end
                                end
                            end

                            if frameSettings then
                                if frameSettings.removeDuplicates then removeDuplicates = true end
                                if frameSettings.ownOnly then ownOnly = true end
                                if frameSettings.alwaysEnableGlow then shouldGlow = true end
                                if frameSettings.color then colorTable = frameSettings.color end
                                if frameSettings.priorityEnabled and frameSettings.priority and frameSettings.priority > 0 then
                                    prioValue = frameSettings.priority
                                    needDebuffSort = true
                                end
                            end

                            local filters = DeBuffFilter:GetSmartFilterSettings(debuffName, spellId, selfName)
                            if filters then
                                for _, settings in ipairs(filters) do
                                    if settings.enableDurationFilter then
                                        local timeLeft = expirationTime and (expirationTime - GetTime()) or 0
                                        local duration = duration or timeLeft
                                        DeBuffFilter:TrackAuraDuration(self, spellId, expirationTime, duration, settings)
                                        break
                                    end
                                end
                            end

                            if ownOnly and caster ~= "player" then shouldHide = true end

                            tinsert(debuffList, {
                                dbf = frame,
                                shouldHide = shouldHide,
                                size = buffSize,
                                largeAura = shouldBeLarge,
                                prio = prioValue,
                                removeDuplicates = removeDuplicates,
                                spellId = spellId,
                                name = debuffName,
                                dispelName = debuffType,
                                index = debuffIndex
                            })

                            local frameStealable = _G[frameName .. "Stealable"]
                            local debuffBorder = _G[frameName .. "Border"]
                            local modifier = retailGlow and 2.06 or 1.34

                            if shouldGlow then
                                if not frameStealable and frame and colorTable then
                                    frameStealable = frame:CreateTexture(frameName .. "Stealable", "OVERLAY")
                                    frameStealable:SetBlendMode("ADD")
                                    if retailGlow then
                                        if not frameStealable.newTexture then
                                            frameStealable.newTexture = true
                                            if C_Texture.GetAtlasInfo("newplayertutorial-drag-slotgreen") then
                                                frameStealable:SetAtlas("newplayertutorial-drag-slotgreen")
                                            else
                                                frameStealable:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-Stealable")
                                            end
                                            frameStealable:SetDesaturated(true)
                                        end
                                    end
                                end
                                if frameStealable then
                                    frameStealable:Show()
                                    frameStealable:SetVertexColor(colorTable.r, colorTable.g, colorTable.b, colorTable.a)
                                    frameStealable:SetSize(buffSize * modifier, buffSize * modifier)
                                end
                                if debuffBorder then debuffBorder:Hide() end
                            else
                                if frameStealable then frameStealable:Hide() end
                                if debuffBorder then debuffBorder:Show() end
                            end

                            if debuffBorder then debuffBorder:SetSize(buffSize + 2, buffSize + 2) end
                            frame:SetSize(buffSize, buffSize)

                            local fCount = _G[frameName .. "Count"]
                            if fCount then
                                if not fontName then fontName = fCount:GetFont() end
                                fCount:SetFont(fontName, buffSize / 1.75, "OUTLINE, THICKOUTLINE, MONOCHROME")
                                fCount:SetPoint("BOTTOMRIGHT", 2, -2)
                                local c = db.countColor or { 1, 1, 1 }
                                fCount:SetVertexColor(c[1], c[2], c[3])
                            end
                            debuffIndex = debuffIndex + 1
                        end
                    end
                end
                return debuffIndex > maxDebuffs
            end
    )

    local numVisibleBuffs = ProcessList(buffList, needBuffSort)
    local numVisibleDebuffs = ProcessList(debuffList, needDebuffSort)
    local mirrorAurasVertically = self.buffsOnTop and true or false
    local offsetX = db.horizontalSpace

    self.dbfaurarow = 0
    self.largestAura = 0
    self.dbfspellanchor = nil
    local lastAnchor = nil

    local Offset = 0

    if isEnemy then
        Offset = updateLayout(self, debuffList, numVisibleBuffs, false, offsetX, mirrorAurasVertically, 0)
        updateLayout(self, buffList, numVisibleDebuffs, true, offsetX, mirrorAurasVertically, Offset)
    else
        Offset = updateLayout(self, buffList, numVisibleDebuffs, true, offsetX, mirrorAurasVertically, 0)
        updateLayout(self, debuffList, numVisibleBuffs, false, offsetX, mirrorAurasVertically, Offset)
    end

    if self.spellbar then
        adjustCastbar(self.spellbar)
    end
end

DeBuffFilter.event = CreateFrame("Frame")
DeBuffFilter.event:RegisterEvent("PLAYER_LOGIN")
DeBuffFilter.event:SetScript("OnEvent", function(self)
    DeBuffFilter:SetupOptions()

    hooksecurefunc(TargetFrame, "UpdateAuras", Filterino)
    if FocusFrame then
        hooksecurefunc(FocusFrame, "UpdateAuras", Filterino)
    end

    for _, v in pairs({ TargetFrameSpellBar, FocusFrameSpellBar }) do
        if v then
            hooksecurefunc(v, "SetPoint", function(self)
                if self.busy then
                    return
                end
                self.busy = true
                adjustCastbar(self)
                self.busy = false
            end)
        end
    end

    local db = DeBuffFilter.db.profile
    TargetFrameSpellBar:SetScale(db.targetCastBarSize)
    if FocusFrameSpellBar then
        FocusFrameSpellBar:SetScale(db.focusCastBarSize)
    end

    if db.disableFade then
        for _, aura in ipairs({ BuffFrame.AuraContainer:GetChildren() }) do
            if aura and aura.SetAlpha then
                local overflowBuffs
                hooksecurefunc(aura, "SetAlpha", function(self)
                    if overflowBuffs then
                        return
                    end
                    overflowBuffs = true
                    self:SetAlpha(1)
                    overflowBuffs = false
                end)
            end
        end
        for _, aura in ipairs({ DebuffFrame.AuraContainer:GetChildren() }) do
            if aura and aura.SetAlpha then
                local overflowDebuffs
                hooksecurefunc(aura, "SetAlpha", function(self)
                    if overflowDebuffs then
                        return
                    end
                    overflowDebuffs = true
                    self:SetAlpha(1)
                    overflowDebuffs = false
                end)
            end
        end
    end

    playerClass = select(2, UnitClass("player"))

    if RougeUI then
        if RougeUI.AsuriFrame and not RougeUI.Roug then
            AURA_START_X = 23
        elseif RougeUI.AsuriFrame and RougeUI.Roug then
            AURA_START_X = 25
        elseif RougeUI.Roug then
            AURA_START_X = 22
        end
    end
end)

local interval = 0.1
local lastUpdate = 0

DeBuffFilter.event:SetScript("OnUpdate", function(self, elapsed)
    lastUpdate = lastUpdate + elapsed
    if lastUpdate < interval then
        return
    end
    lastUpdate = 0

    local now = GetTime()
    local tracked = DeBuffFilter._trackedAuras or {}
    local stateTable = DeBuffFilter._auraState or {}

    for frame, guidTable in pairs(tracked) do
        local needsUpdate = false
        local currentGUID = frame.unit and UnitGUID(frame.unit)

        if frame == BuffFrame or frame == DebuffFrame then
            currentGUID = UnitGUID("player")
        end

        for guid, spells in pairs(guidTable) do
            if guid ~= currentGUID then
                guidTable[guid] = nil
                if stateTable[frame] then
                    stateTable[frame][guid] = nil
                end
            else
                for spellId, data in pairs(spells) do
                    local timeLeft = data.expiration - now
                    stateTable[frame][guid] = stateTable[frame][guid] or {}
                    local state = stateTable[frame][guid][spellId]

                    if not state or state.expiration ~= data.expiration then
                        state = { entered = false, exited = false, expiration = data.expiration }
                        stateTable[frame][guid][spellId] = state
                    end

                    if not state.entered and timeLeft <= data.max then
                        state.entered = true
                        needsUpdate = true
                    end

                    if not state.exited and timeLeft <= data.min then
                        state.exited = true
                        state.entered = true
                        needsUpdate = true
                    end

                    if timeLeft <= 0 then
                        spells[spellId] = nil
                        stateTable[frame][guid][spellId] = nil
                    end
                end
            end
        end

        if needsUpdate then
            if frame == BuffFrame or frame == DebuffFrame then
                if frame.UpdateAuraButtons then
                    frame:UpdateAuraButtons()
                end
            elseif frame == TargetFrame or frame == FocusFrame then
                frame:UpdateAuras()
            end
        end
    end
end)

local function wipetrackcache()
    if not DeBuffFilter._trackedAuras then
        return
    end
    local tracked = DeBuffFilter._trackedAuras
    local state = DeBuffFilter._auraState

    for frame, guidTable in pairs(tracked) do
        local currentGUID
        if frame == BuffFrame or frame == DebuffFrame then
            currentGUID = UnitGUID("player")
        elseif frame and frame.unit then
            currentGUID = UnitGUID(frame.unit)
        end

        if not currentGUID then
            tracked[frame] = nil
            state[frame] = nil
        else
            for guid in pairs(guidTable) do
                if guid ~= currentGUID then
                    guidTable[guid] = nil
                    if state[frame] then
                        state[frame][guid] = nil
                    end
                end
            end
        end
    end
end
C_Timer.NewTicker(600, wipetrackcache)