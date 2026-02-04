local AddonName = "DeBuffFilter"

local DeBuffFilter = LibStub:GetLibrary(AddonName, true)
local ipairs, tinsert = ipairs, table.insert

local function durationPos(duration)
    local xPos = DeBuffFilter.db.profile.buffFrameDurationXPos or 0
    local yPos = DeBuffFilter.db.profile.buffFrameDurationYPos or -18

    duration:ClearAllPoints()
    duration:SetPoint("BOTTOM", duration:GetParent(), "BOTTOM", xPos, yPos)
end

local function GetPrimarySize(frame, isColumnBased)
    return isColumnBased and frame:GetHeight() or frame:GetWidth()
end

local function GetSecondarySize(frame, isColumnBased)
    return isColumnBased and frame:GetWidth() or frame:GetHeight()
end

local function GetAnchorData(anchor)
    if anchor.Get then 
        return anchor:Get()
    end
    if anchor.point then
        return anchor.point, anchor.relativeTo, anchor.relativePoint, anchor.x, anchor.y
    end
    if anchor.GetPoint then
        return anchor:GetPoint()
    end
    return "CENTER", UIParent, "CENTER", 0, 0
end

local function SafeApplyGridLayout(regions, initialAnchor, layout)
    if #regions == 0 then return end

    local isColumnBased = layout.isColumnBased
    local stride = layout.stride or 1

    local primaryPadding = layout.primarySizePadding or 0
    local secondaryPadding = layout.secondarySizePadding or 0
    
    local primaryMultiplier = layout.primaryMultiplier or 1
    local secondaryMultiplier = layout.secondaryMultiplier or -1

    local sections = {}
    local currentSection = {}
    for i, region in ipairs(regions) do
        table.insert(currentSection, region)
        if #currentSection >= stride then
            table.insert(sections, currentSection)
            currentSection = {}
        end
    end
    if #currentSection > 0 then
        table.insert(sections, currentSection)
    end

    local pointA, relativeTo, pointB, startX, startY = GetAnchorData(initialAnchor)
    startX = startX or 0
    startY = startY or 0
    
    local secondaryOffset = 0

    for _, section in ipairs(sections) do
        local primaryOffset = 0
        local maxSecondarySize = 0

        for i, region in ipairs(section) do
            if i > 1 then
                primaryOffset = primaryOffset + (primaryPadding * primaryMultiplier)
            end

            local finalX, finalY
            if isColumnBased then
                finalX = startX + (secondaryOffset * secondaryMultiplier)
                finalY = startY + primaryOffset 
            else
                finalX = startX + primaryOffset
                finalY = startY + (secondaryOffset * secondaryMultiplier)
            end

            region:ClearAllPoints()
            region:SetPoint(pointA, relativeTo, pointB, finalX, finalY)

            local pSize = GetPrimarySize(region)
            primaryOffset = primaryOffset + (pSize * primaryMultiplier)
            
            local sSize = GetSecondarySize(region)
            if sSize > maxSecondarySize then
                maxSecondarySize = sSize
            end
        end

        secondaryOffset = secondaryOffset + maxSecondarySize + secondaryPadding
    end
end

local function DBFrame(self)
    local framesToLayout = {}
    local seenSpells = {}
    local isDebuff = self == DebuffFrame
    local filter = isDebuff and "HARMFUL" or "HELPFUL"
    local frameName = isDebuff and "DebuffFrame" or "BuffFrame"
    local db = DeBuffFilter.db.profile

    for i, auraInfo in ipairs(self.auraInfo or {}) do
        local auraFrame = self.auraFrames[i]

        if auraFrame and auraFrame:IsShown() then
            local shouldHide, shouldGlow, colorTable = false, false, { r = 1, g = 1, b = 0.85, a = 1 }
            local removeDuplicates = false
            local name, count, duration, expirationTime, source, spellId
            local currentSize = nil

            local buttonInfo = auraFrame.buttonInfo
            if buttonInfo and buttonInfo.isTempEnchant then
                spellId = buttonInfo.ID
                expirationTime = buttonInfo.expirationTime
                name = "Temp Enchant"
                source = "player"
                count = 0
                duration = 0
            else
                local auraData = C_UnitAuras.GetAuraDataByIndex("player", auraInfo.index, filter)
                if auraData then
                    spellId = auraData.spellId
                    name = auraData.name
                    expirationTime = auraData.expirationTime
                    count = auraData.applications
                    source = auraData.sourceUnit
                end
            end

            if spellId and DeBuffFilter then
                local filters = DeBuffFilter:GetSmartFilterSettings(name, spellId, frameName)
                local action, frameSettings = DeBuffFilter:CheckSmarterAuraFilters(spellId, name, expirationTime, count, frameName)

                if filters then
                    for _, settings in ipairs(filters) do
                        if settings.enableDurationFilter then
                            local timeLeft = expirationTime and (expirationTime - GetTime()) or 0
                            local finalDuration = duration or timeLeft

                            DeBuffFilter:TrackAuraDuration(self, spellId, expirationTime, finalDuration, settings)
                            break
                        end
                    end
                end

                if action then
                    for _, act in ipairs(action) do
                        if act.hide then
                            shouldHide = true
                        end
                        if act.glow then
                            shouldGlow = true
                        end
                        if act.size and act.size.enabled then
                            if source == "player" then
                                currentSize = act.selfSize
                            else
                                currentSize = act.otherSize
                            end
                        end
                    end
                end

                if frameSettings then
                    if frameSettings.removeDuplicates then
                        removeDuplicates = true
                    end
                    if frameSettings.ownOnly and source ~= "player" then
                        shouldHide = true
                    end
                    if frameSettings.alwaysEnableGlow then
                        shouldGlow = true
                    end
                    if frameSettings.color then
                        colorTable = frameSettings.color
                    end
                end

                if not shouldHide and removeDuplicates then
                    if seenSpells[spellId] then
                        shouldHide = true
                    else
                        seenSpells[spellId] = true
                    end
                end
            end

            if shouldHide then
                auraFrame:Hide()
                if auraFrame.DeBuffFilterGlow then
                    auraFrame.DeBuffFilterGlow:Hide()
                end
            else
                if currentSize then
                    auraFrame:SetSize(currentSize, currentSize)
                    auraFrame.Icon:SetSize(currentSize, currentSize)
                end

                if shouldGlow then
                    if not auraFrame.DeBuffFilterGlow then
                        auraFrame.DeBuffFilterGlow = auraFrame:CreateTexture(nil, "OVERLAY", nil, 7)
                        if DeBuffFilter.db.profile.enableRetailGlow then
                            if C_Texture.GetAtlasInfo("newplayertutorial-drag-slotblue") then
                                auraFrame.DeBuffFilterGlow:SetAtlas("newplayertutorial-drag-slotblue")
                            end
                            auraFrame.DeBuffFilterGlow:SetDesaturated(true)
                        else
                            auraFrame.DeBuffFilterGlow:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-Stealable")
                        end
                        auraFrame.DeBuffFilterGlow:SetPoint("CENTER", auraFrame.Icon, 0, 0)
                        auraFrame.DeBuffFilterGlow:SetBlendMode("ADD")
                    end

                    local mod = (DeBuffFilter.db.profile.enableRetailGlow and 2.06 or 1.34)
                    if currentSize then
                        auraFrame.DeBuffFilterGlow:SetSize(currentSize * mod, currentSize * mod)
                    else
                        local w, h = auraFrame.Icon:GetSize()
                        auraFrame.DeBuffFilterGlow:SetSize(w * mod, h * mod)
                    end
                    auraFrame.DeBuffFilterGlow:SetVertexColor(colorTable.r, colorTable.g, colorTable.b, colorTable.a)
                    auraFrame.DeBuffFilterGlow:Show()

                    if auraFrame.DebuffBorder and isDebuff then
                        auraFrame.DebuffBorder:Hide()
                    end

                    local point, relativeTo, relativePoint, xOfs, yOfs = auraFrame.Duration:GetPoint()
                    local yOffset, xOffset
                    if not self.AuraContainer.isHorizontal then
                        yOffset = yOfs
                        xOffset = self.AuraContainer.addIconsToRight and 6 or -6
                    else
                        yOffset = self.AuraContainer.addIconsToTop and 4 or -4
                        xOffset = xOfs
                    end
                    auraFrame.Duration:ClearAllPoints();
                    auraFrame.Duration:SetPoint(point, relativeTo, relativePoint, xOffset, yOffset)
                else
                    if auraFrame.DeBuffFilterGlow then
                        auraFrame.DeBuffFilterGlow:Hide()
                    end
                    if auraFrame.DebuffBorder and isDebuff then
                        auraFrame.DebuffBorder:Show()
                    end
                end

                tinsert(framesToLayout, auraFrame)
            end
        end
    end
    
    if self.AuraContainer.currentGridLayoutInfo then
        SafeApplyGridLayout(framesToLayout,
        self.AuraContainer.currentGridLayoutInfo.anchor,
        self.AuraContainer.currentGridLayoutInfo.layout
       )
    end

end

hooksecurefunc(BuffFrame, "UpdateAuraButtons", DBFrame)
hooksecurefunc(DebuffFrame, "UpdateAuraButtons", DBFrame)
