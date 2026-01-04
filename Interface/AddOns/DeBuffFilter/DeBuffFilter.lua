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
local UnitIsUnit, UnitIsOwnerOrControllerOfUnit, UnitIsFriend =
    _G.UnitIsUnit,
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
        if parentFrame.buffsOnTop or (parentFrame.auraRows or 0) <= 1 then
            defaultY = -25
        else
            anchorFrame = parentFrame.spellbarAnchor
            defaultX = 22 + addXOffset
            defaultY = -15 - yOffset
        end
    elseif parentFrame.haveElite then
        if parentFrame.buffsOnTop or (parentFrame.auraRows or 0) <= 1 then
            defaultY = -9
        else
            anchorFrame = parentFrame.spellbarAnchor
            defaultX = 22 + addXOffset
            defaultY = -15 - yOffset
        end
    else
        if not parentFrame.buffsOnTop and (parentFrame.auraRows or 0) > 0 then
            anchorFrame = parentFrame.spellbarAnchor
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
    if (not GetCVarBool("showDynamicBuffSize")) then
        return true
    end

    if not caster then
        return false
    end

    for token, value in pairs(PLAYER_UNITS) do
        if UnitIsUnit(caster, token) or UnitIsOwnerOrControllerOfUnit(token, caster) then
            return value
        end
    end
end

local function safeSetPoint(frame, point, relativeTo, relativePoint, x, y)
    if not frame or not relativeTo then
        return
    end
    local current = relativeTo
    while current do
        if current == frame then
            frame:ClearAllPoints()
            frame:SetPoint(point, relativeTo:GetParent(), relativePoint, x, y)
            return
        end
        local _, parent = current:GetPoint()
        current = parent
    end
    frame:ClearAllPoints()
    frame:SetPoint(point, relativeTo, relativePoint, x, y)
end

local function UpdateBuffAnchor(self, buffName, numDebuffs, anchorBuff, size, offsetX, offsetY, mirrorVertically, newRow)
    local point, relativePoint
    local startY, auraOffsetY
    if mirrorVertically then
        point = "BOTTOM"
        relativePoint = "TOP"
        startY = -19
        if self.threatNumericIndicator:IsShown() then
            startY = startY + self.threatNumericIndicator:GetHeight()
        end
        offsetY = -offsetY
        auraOffsetY = -DeBuffFilter.db.profile.verticalSpace
    else
        point = "TOP"
        relativePoint = "BOTTOM"
        startY = AURA_START_Y
        auraOffsetY = DeBuffFilter.db.profile.verticalSpace
    end

    buffName:ClearAllPoints()

    if anchorBuff == nil then
        if (UnitIsFriend("player", self.unit) and not UnitIsEnemy("player", self.unit)) or numDebuffs == 0 then
            buffName:SetPoint(point .. "LEFT", self, relativePoint .. "LEFT", AURA_START_X, startY)
        else
            safeSetPoint(buffName, point .. "LEFT", self.debuffz, relativePoint .. "LEFT", 0, -offsetY)
        end
        self.buffz:ClearAllPoints()
        self.buffz:SetPoint(point .. "LEFT", buffName, point .. "LEFT", 0, 0)
        self.buffz:SetPoint(relativePoint .. "LEFT", buffName, relativePoint .. "LEFT", 0, -auraOffsetY)
        self.spellbarAnchor = buffName
    elseif newRow then
        buffName:SetPoint(point .. "LEFT", anchorBuff, relativePoint .. "LEFT", 0, -offsetY)
        self.buffz:ClearAllPoints()
        self.buffz:SetPoint(relativePoint .. "LEFT", buffName, relativePoint .. "LEFT", 0, -auraOffsetY)
        self.spellbarAnchor = buffName
    else
        buffName:SetPoint(point .. "LEFT", anchorBuff, point .. "RIGHT", offsetX, 0)
    end

    buffName:SetWidth(size)
    buffName:SetHeight(size)
end

local function UpdateDebuffAnchor(
    self,
    debuffName,
    numBuffs,
    anchorDebuff,
    size,
    offsetX,
    offsetY,
    mirrorVertically,
    newRow)
    local point, relativePoint
    local startY, auraOffsetY
    local isFriend = UnitIsFriend("player", self.unit)

    if mirrorVertically then
        point = "BOTTOM"
        relativePoint = "TOP"
        startY = -19
        if self.threatNumericIndicator:IsShown() then
            startY = startY + self.threatNumericIndicator:GetHeight()
        end
        offsetY = -offsetY
        auraOffsetY = -DeBuffFilter.db.profile.verticalSpace
    else
        point = "TOP"
        relativePoint = "BOTTOM"
        startY = AURA_START_Y
        auraOffsetY = DeBuffFilter.db.profile.verticalSpace
    end

    debuffName:ClearAllPoints()

    if anchorDebuff == nil then
        if (isFriend and not UnitIsEnemy("player", self.unit)) and numBuffs > 0 then
            debuffName:SetPoint(point .. "LEFT", self.buffz, relativePoint .. "LEFT", 0, -offsetY)
        else
            debuffName:SetPoint(point .. "LEFT", self, relativePoint .. "LEFT", AURA_START_X, startY)
        end
        self.debuffz:ClearAllPoints()
        self.debuffz:SetPoint(point .. "LEFT", debuffName, point .. "LEFT", 0, 0)
        self.debuffz:SetPoint(relativePoint .. "LEFT", debuffName, relativePoint .. "LEFT", 0, -auraOffsetY)
        if isFriend or (not isFriend and numBuffs == 0) then
            self.spellbarAnchor = debuffName
        end
    elseif newRow then
        debuffName:SetPoint(point .. "LEFT", anchorDebuff, relativePoint .. "LEFT", 0, -offsetY)
        self.debuffz:ClearAllPoints()
        self.debuffz:SetPoint(relativePoint .. "LEFT", debuffName, relativePoint .. "LEFT", 0, -auraOffsetY)
        if isFriend or (not isFriend and numBuffs == 0) then
            self.spellbarAnchor = debuffName
        end
    else
        debuffName:SetPoint(point .. "LEFT", anchorDebuff, point .. "RIGHT", offsetX, 0)
    end

    debuffName:SetWidth(size)
    debuffName:SetHeight(size)
    local debuffFrame = _G[debuffName:GetName() .. "Border"]
    if debuffFrame then
        debuffFrame:SetWidth(size + 2)
        debuffFrame:SetHeight(size + 2)
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

    self._auraState[frame][guid][spellId] =
        self._auraState[frame][guid][spellId] or
        {
            entered = false,
            exited = false,
            expiration = expirationTime
        }
end

local function updateLayout(frame, auraList, numOppositeAuras, updateFunc, offsetX, mirrorAurasVertically)
    local db = DeBuffFilter.db.profile
    local maxRowWidth = db.auraWidth
    local yDistance = db.verticalSpace
    local rowWidth, anchorRowAura, lastBuff = 0, nil, nil
    local biggestAura, offsetY = nil, yDistance
    local haveToT = frame.totFrame and frame.totFrame:IsShown()
    local totFrameX, totFrameBottom = GetFramePosition(frame.totFrame)
    local currentX, currentY

    for _, data in ipairs(auraList) do
        if data.shouldHide then
            if data.dbf then
                data.dbf:Hide()
            end
        else
            local dbf, size = data.dbf, data.size

            dbf:Show()

            local shouldBeLarge = data.largeAura
            if shouldBeLarge then
                offsetY = yDistance * 2
            end

            if lastBuff == nil then
                rowWidth = size
                frame.auraRows = frame.auraRows + 1
                anchorRowAura = dbf
                if frame.largestAura then
                    offsetY = frame.largestAura
                end
            else
                rowWidth = rowWidth + size + offsetX
            end

            local verticalDistance = currentY and (currentY - totFrameBottom) or 0
            local horizontalDistance = rowWidth
            if currentX then
                horizontalDistance = mfloor(mabs((currentX + size + offsetX) - totFrameX)) + 5
            end

            local breakRow = false
            if (haveToT and (horizontalDistance < size) and verticalDistance > 0) or (rowWidth > maxRowWidth) then
                breakRow = true
            end

            if breakRow then
                if biggestAura and anchorRowAura and biggestAura >= mfloor(anchorRowAura:GetHeight() + 0.5) then
                    offsetY = (yDistance * 2) + (biggestAura - anchorRowAura:GetHeight())
                end
                updateFunc(
                    frame,
                    dbf,
                    numOppositeAuras,
                    anchorRowAura,
                    size,
                    offsetX,
                    offsetY,
                    mirrorAurasVertically,
                    true
                )
                rowWidth = size
                frame.auraRows = frame.auraRows + 1
                anchorRowAura = dbf
                offsetY = yDistance
                biggestAura = nil
                frame.largestAura = nil
            else
                updateFunc(frame, dbf, numOppositeAuras, lastBuff, size, offsetX, offsetY, mirrorAurasVertically)
            end

            lastBuff = dbf
            currentX, currentY = dbf:GetLeft(), dbf:GetTop()

            if not biggestAura or biggestAura < size then
                biggestAura = size
            end
            local calc = (yDistance * 2) + (biggestAura - anchorRowAura:GetHeight())
            if not frame.largestAura or frame.largestAura < calc then
                frame.largestAura = calc
            end
        end
    end
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
                        local shouldHide, shouldGlow, colorTable = nil, nil, {r = 1, g = 1, b = 0.85, a = 1}
                        local prioValue, removeDuplicates, ownOnly = 0, false, false

                        local action, frameSettings =
                            DeBuffFilter:CheckSmarterAuraFilters(spellId, buffName, expirationTime, count, selfName)
                        frameSettings = frameSettings or {}

                        if action then
                            for _, act in ipairs(action) do
                                if act.hide then
                                    shouldHide = true
                                end
                                if act.glow then
                                    shouldGlow = true
                                end
                                if act.size and act.size.enabled then
                                    buffSize =
                                        shouldBeLarge and (act.selfSize or act.otherSize or 21) or
                                        (act.otherSize or act.selfSize or 19)
                                end
                            end
                        end

                        if frameSettings then
                            if frameSettings.removeDuplicates then
                                removeDuplicates = true
                            end
                            if frameSettings.ownOnly then
                                ownOnly = true
                            end
                            if frameSettings.alwaysEnableGlow then
                                shouldGlow = true
                            end
                            if frameSettings.color then
                                colorTable = frameSettings.color
                            end
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

                        if ownOnly and caster ~= "player" then
                            shouldHide = true
                        end

                        tinsert(
                            buffList,
                            {
                                dbf = frame,
                                shouldHide = shouldHide,
                                size = buffSize,
                                prio = prioValue,
                                removeDuplicates = removeDuplicates,
                                spellId = spellId,
                                name = buffName,
                                largeAura = shouldBeLarge,
                                dispelName = debuffType,
                                index = buffIndex
                            }
                        )

                        local frameStealable = _G[frameName .. "Stealable"]
                        local modifier = retailGlow and 2.06 or 1.34

                        if frameStealable then
                            if retailGlow then
                                if not frameStealable.newTexture then
                                    frameStealable.newTexture = true
                                    if C_Texture.GetAtlasInfo("newplayertutorial-drag-slotblue") then
                                        frameStealable:SetAtlas("newplayertutorial-drag-slotblue")
                                    else
                                        frameStealable:SetTexture(
                                            "Interface\\TargetingFrame\\UI-TargetingFrame-Stealable"
                                        )
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
                            if not fontName then
                                fontName = fCount:GetFont()
                            end
                            fCount:SetFont(fontName, buffSize / 1.75, "OUTLINE, THICKOUTLINE, MONOCHROME")
                            local c = db.countColor or {1, 1, 1}
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
            local debuffName,
                icon,
                count,
                debuffType,
                duration,
                expirationTime,
                caster,
                _,
                _,
                spellId,
                _,
                _,
                casterIsPlayer,
                nameplateShowAll = ...

            if debuffName and icon then
                if (self:ShouldShowDebuffs(self.unit, caster, nameplateShowAll, casterIsPlayer)) then
                    local frameName = selfName .. "Debuff" .. debuffIndex
                    local frame = _G[frameName]

                    if frame then
                        local shouldBeLarge = caster and DeBuffFilter:ShouldAuraBeLarge(caster)
                        local buffSize = shouldBeLarge and db.selfSize or db.otherSize
                        local shouldHide, shouldGlow, colorTable = false, nil, {r = 1, g = 1, b = 0.85, a = 1}
                        local prioValue, removeDuplicates, ownOnly = 0, false, false

                        local action, frameSettings =
                            DeBuffFilter:CheckSmarterAuraFilters(spellId, debuffName, expirationTime, count, selfName)
                        frameSettings = frameSettings or {}

                        if action then
                            for _, act in ipairs(action) do
                                if act.hide then
                                    shouldHide = true
                                end
                                if act.glow then
                                    shouldGlow = true
                                end
                                if act.size and act.size.enabled then
                                    buffSize =
                                        shouldBeLarge and (act.selfSize or act.otherSize or 21) or
                                        (act.otherSize or act.selfSize or 19)
                                end
                            end
                        end

                        if frameSettings then
                            if frameSettings.removeDuplicates then
                                removeDuplicates = true
                            end
                            if frameSettings.ownOnly then
                                ownOnly = true
                            end
                            if frameSettings.alwaysEnableGlow then
                                shouldGlow = true
                            end
                            if frameSettings.color then
                                colorTable = frameSettings.color
                            end
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

                        if ownOnly and caster ~= "player" then
                            shouldHide = true
                        end
                        tinsert(
                            debuffList,
                            {
                                dbf = frame,
                                shouldHide = shouldHide,
                                size = buffSize,
                                prio = prioValue,
                                removeDuplicates = removeDuplicates,
                                spellId = spellId,
                                name = debuffName,
                                largeAura = shouldBeLarge,
                                dispelName = debuffType,
                                index = debuffIndex
                            }
                        )

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
                                        if C_Texture.GetAtlasInfo("newplayertutorial-drag-slotblue") then
                                            frameStealable:SetAtlas("newplayertutorial-drag-slotblue")
                                        else
                                            frameStealable:SetTexture(
                                                "Interface\\TargetingFrame\\UI-TargetingFrame-Stealable"
                                            )
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
                            if debuffBorder then
                                debuffBorder:Hide()
                            end
                        else
                            if frameStealable then
                                frameStealable:Hide()
                            end
                            if debuffBorder then
                                debuffBorder:Show()
                            end
                        end

                        if debuffBorder then
                            debuffBorder:SetSize(buffSize + 2, buffSize + 2)
                        end
                        frame:SetSize(buffSize, buffSize)

                        local fCount = _G[frameName .. "Count"]
                        if fCount then
                            if not fontName then
                                fontName = fCount:GetFont()
                            end
                            fCount:SetFont(fontName, buffSize / 1.75, "OUTLINE, THICKOUTLINE, MONOCHROME")
                            local c = db.countColor or {1, 1, 1}
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

    self.auraRows = 0
    self.largestAura = 0
    self.spellbarAnchor = nil

    if not self.buffz then
        self.buffz = CreateFrame("Frame", "$parentBuffz", self)
        self.buffz:SetSize(10, 10)
    end
    if not self.debuffz then
        self.debuffz = CreateFrame("Frame", "$parentDebuffz", self)
        self.debuffz:SetSize(10, 10)
    end

    if isEnemy then
        updateLayout(self, debuffList, numVisibleBuffs, UpdateDebuffAnchor, offsetX, mirrorAurasVertically)
        updateLayout(self, buffList, numVisibleDebuffs, UpdateBuffAnchor, offsetX, mirrorAurasVertically)
    else
        updateLayout(self, buffList, numVisibleDebuffs, UpdateBuffAnchor, offsetX, mirrorAurasVertically)
        updateLayout(self, debuffList, numVisibleBuffs, UpdateDebuffAnchor, offsetX, mirrorAurasVertically)
    end

    if self.spellbar then
        adjustCastbar(self.spellbar)
    end
end

DeBuffFilter.event = CreateFrame("Frame")
DeBuffFilter.event:RegisterEvent("PLAYER_LOGIN")
DeBuffFilter.event:SetScript(
    "OnEvent",
    function(self)
        DeBuffFilter:SetupOptions()

        hooksecurefunc(TargetFrame, "UpdateAuras", Filterino)
        if FocusFrame then
            hooksecurefunc(FocusFrame, "UpdateAuras", Filterino)
        end

        for _, v in pairs({TargetFrameSpellBar, FocusFrameSpellBar}) do
            if v then
                hooksecurefunc(
                    v,
                    "SetPoint",
                    function(self)
                        if self.busy then
                            return
                        end
                        self.busy = true
                        adjustCastbar(self)
                        self.busy = false
                    end
                )
            end
        end

        local db = DeBuffFilter.db.profile
        TargetFrameSpellBar:SetScale(db.targetCastBarSize)
        if FocusFrameSpellBar then
            FocusFrameSpellBar:SetScale(db.focusCastBarSize)
        end

        if db.disableFade then
            for _, aura in ipairs({BuffFrame.AuraContainer:GetChildren()}) do
                if aura and aura.SetAlpha then
                    local overflowBuffs
                    hooksecurefunc(
                        aura,
                        "SetAlpha",
                        function(self)
                            if overflowBuffs then
                                return
                            end
                            overflowBuffs = true
                            self:SetAlpha(1)
                            overflowBuffs = false
                        end
                    )
                end
            end
            for _, aura in ipairs({DebuffFrame.AuraContainer:GetChildren()}) do
                if aura and aura.SetAlpha then
                    local overflowDebuffs
                    hooksecurefunc(
                        aura,
                        "SetAlpha",
                        function(self)
                            if overflowDebuffs then
                                return
                            end
                            overflowDebuffs = true
                            self:SetAlpha(1)
                            overflowDebuffs = false
                        end
                    )
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
    end
)

local interval = 0.1
local lastUpdate = 0

DeBuffFilter.event:SetScript(
    "OnUpdate",
    function(self, elapsed)
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
                            state = {entered = false, exited = false, expiration = data.expiration}
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
    end
)

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