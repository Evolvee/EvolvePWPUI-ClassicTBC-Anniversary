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
        tinsert(currentSection, region)
        if #currentSection >= stride then
            tinsert(sections, currentSection)
            currentSection = {}
        end
    end
    if #currentSection > 0 then
        tinsert(sections, currentSection)
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
                finalX = startX + secondaryOffset
                finalY = startY + primaryOffset 
            else
                finalX = startX + primaryOffset
                finalY = startY + secondaryOffset
            end

            region:ClearAllPoints()
            region:SetPoint(pointA, relativeTo, pointB, finalX, finalY)

            local pSize = GetPrimarySize(region, isColumnBased)
            primaryOffset = primaryOffset + (pSize * primaryMultiplier)
            
            local sSize = GetSecondarySize(region, isColumnBased)
            if sSize > maxSecondarySize then
                maxSecondarySize = sSize
            end
        end

        secondaryOffset = secondaryOffset + ((maxSecondarySize + secondaryPadding) * secondaryMultiplier)
    end
end

function DeBuffFilter.DBFrame(self)
    local framesToLayout = {}
    local seenSpells = {}
    local isDebuff = self == DebuffFrame
    local filter = isDebuff and "HARMFUL" or "HELPFUL"
    local frameName = isDebuff and "DebuffFrame" or "BuffFrame"
    local db = DeBuffFilter.db.profile

    for i, auraFrame in ipairs(self.auraFrames or {}) do

        if auraFrame and not auraFrame.isAuraAnchor and not auraFrame.isExample and auraFrame:IsShown() then
            local shouldHide, shouldGlow, colorTable = false, false, { r = 1, g = 1, b = 0.85, a = 1 }
            local removeDuplicates = false
            local name, count, duration, expirationTime, source, spellId
            local currentSize = nil

            local buttonInfo = auraFrame.buttonInfo
            if buttonInfo and buttonInfo.auraType == "TempEnchant" then
                -- Blizzard renamed the "isTempEnchant" flag; temp enchants are now
                -- identified via buttonInfo.auraType == "TempEnchant".
                spellId = buttonInfo.ID
                expirationTime = buttonInfo.expirationTime
                name = "Temp Enchant"
                source = "player"
                count = 0
                duration = 0
            elseif buttonInfo and buttonInfo.index then
                -- Blizzard's auraInfo entries no longer carry spellId/name/source directly,
                -- so we still need GetAuraDataByIndex - but we must use buttonInfo.index
                -- (the index Blizzard actually assigned to THIS frame), not a positional
                -- guess from self.auraInfo, since auraFrames no longer line up 1:1 with
                -- self.auraInfo when buffs are hidden/collapsed.
                local auraData = C_UnitAuras.GetAuraDataByIndex("player", buttonInfo.index, filter)
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
                local size = currentSize or 30
                local auraWidth, auraHeight, durationPoint, durationRelativePoint, iconPoint

                if self.AuraContainer.isHorizontal then
                    auraWidth = size
                    auraHeight = size + 10
                    durationPoint = self.AuraContainer.addIconsToTop and "BOTTOM" or "TOP"
                    durationRelativePoint = self.AuraContainer.addIconsToTop and "TOP" or "BOTTOM"
                    iconPoint = self.AuraContainer.addIconsToTop and "BOTTOM" or "TOP"
                else
                    auraWidth = size + 30
                    auraHeight = size
                    durationPoint = self.AuraContainer.addIconsToRight and "LEFT" or "RIGHT"
                    durationRelativePoint = self.AuraContainer.addIconsToRight and "RIGHT" or "LEFT"
                    iconPoint = self.AuraContainer.addIconsToRight and "LEFT" or "RIGHT"
                end
                
                auraFrame:SetScale(self.AuraContainer.iconScale or 1)
                auraFrame:SetSize(auraWidth, auraHeight)
                auraFrame.Icon:SetSize(size, size)

                auraFrame.Icon:ClearAllPoints()
                auraFrame.Icon:SetPoint(iconPoint, auraFrame, iconPoint)

                auraFrame.Duration:ClearAllPoints()
                auraFrame.Duration:SetPoint(durationPoint, auraFrame.Icon, durationRelativePoint)

                if shouldGlow then
                    if not auraFrame.DeBuffFilterGlow then
                        auraFrame.DeBuffFilterGlow = auraFrame:CreateTexture(nil, "OVERLAY", nil, 7)
                        if DeBuffFilter.db.profile.enableRetailGlow then
                            if C_Texture.GetAtlasInfo("newplayertutorial-drag-slotgreen") then
                                auraFrame.DeBuffFilterGlow:SetAtlas("newplayertutorial-drag-slotgreen")
                            end
                            auraFrame.DeBuffFilterGlow:SetDesaturated(true)
                        else
                            auraFrame.DeBuffFilterGlow:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-Stealable")
                        end
                        auraFrame.DeBuffFilterGlow:SetPoint("CENTER", auraFrame.Icon, 0, 0)
                        auraFrame.DeBuffFilterGlow:SetBlendMode("ADD")
                    end

                    local mod = (DeBuffFilter.db.profile.enableRetailGlow and 2.06 or 1.34)
                    auraFrame.DeBuffFilterGlow:SetSize(size * mod, size * mod)
                    auraFrame.DeBuffFilterGlow:SetVertexColor(colorTable.r, colorTable.g, colorTable.b, colorTable.a)
                    auraFrame.DeBuffFilterGlow:Show()

                    if auraFrame.DebuffBorder and isDebuff then
                        auraFrame.DebuffBorder:Hide()
                    end
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
    
    if self.AuraContainer.currentGridLayoutInfo and self.AuraContainer.currentGridLayoutInfo.anchor then
        -- Don't reuse Blizzard's cached .layout table: it's now built by the new
        -- GridLayoutUtil (CreateStandardGridLayout/CreateVerticalGridLayout), whose
        -- internal field names are not the isColumnBased/stride/...Multiplier fields
        -- SafeApplyGridLayout expects. Derive the layout directly from the
        -- AuraContainer's own stable properties instead, so this doesn't break again
        -- if Blizzard changes GridLayoutUtil's internals.
        local container = self.AuraContainer
        local isColumnBased = not container.isHorizontal
        local xMultiplier = container.addIconsToRight and 1 or -1
        local yMultiplier = container.addIconsToTop and 1 or -1
        local padding = container.iconPadding or 0

        SafeApplyGridLayout(framesToLayout,
            container.currentGridLayoutInfo.anchor,
            {
                isColumnBased = isColumnBased,
                stride = container.iconStride or 1,
                primarySizePadding = padding,
                secondarySizePadding = padding,
                primaryMultiplier = isColumnBased and yMultiplier or xMultiplier,
                secondaryMultiplier = isColumnBased and xMultiplier or yMultiplier,
            }
        )
    end

end

hooksecurefunc(BuffFrame, "UpdateAuraButtons", DeBuffFilter.DBFrame)
hooksecurefunc(DebuffFrame, "UpdateAuraButtons", DeBuffFilter.DBFrame)
