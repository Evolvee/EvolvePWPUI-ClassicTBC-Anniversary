local BuffsPerRow = 4
local BuffRowSpacing = 4
local HorizontalSpacing = 2
local maxDebuffs = 8
local iconSize = 13
local xPos, yPos = 45, 6
local mod, UnitDebuff, DebuffTypeColor = _G.mod, _G.UnitDebuff, _G.DebuffTypeColor

local blacklist = {
    [GetSpellInfo(6788)] = true, -- Weakened Soul
    [GetSpellInfo(99)] = true, -- Demoralizing Roar
    [GetSpellInfo(1160)] = true, -- Demoralizing Shout
    [GetSpellInfo(16511)] = true, -- Hemorrhage
    [GetSpellInfo(33878)] = true, -- Mangle (Bear)
    [GetSpellInfo(33876)] = true, -- Mangle (Cat)
    [GetSpellInfo(26013)] = true, -- Deserter
    [GetSpellInfo(8647)] = true, -- Expose Armor
    [GetSpellInfo(6343)] = true, -- Thunder Clap
    [GetSpellInfo(29836)] = true, -- Blood Frenzy
    [GetSpellInfo(33191)] = true, -- Misery
}

local function UpdateDebuffs(frame, unit)
    local numAuraRows = 0
    local previousDebuff, aboveDebuff = nil, nil
    local lastIndex = 1
    local frameName, buffName, buffNameIcon
    local buffNameBorder, buffNameCooldown

    -- unregister og event
    if frame:IsEventRegistered("UNIT_AURA") then
        frame:UnregisterEvent("UNIT_AURA")
    end

    -- hide og buffs
    if frame.AuraFrameContainer then
        frame.AuraFrameContainer:Hide()
        frame.AuraFrameContainer:SetAlpha(0)
    end

    -- create our own buffs
    for i = 1, maxDebuffs do
        local name, tex, _, debuffType, duration, expirationTime = UnitDebuff(unit, i, "HARMFUL")

        if name and not blacklist[name] then
            frameName = "EvolveDeBuff" .. lastIndex
            buffName = _G[frameName]

            if not buffName then
                if not tex then
                    break
                else
                    buffName = CreateFrame("Frame", frameName, frame, "TargetDebuffFrameTemplate")
                    buffName.unit = frame.unit
                end
            end
            if tex and (not maxDebuffs or lastIndex <= maxDebuffs) then
                buffName:SetID(i)

                -- Icon
                buffNameIcon = _G[frameName .. "Icon"]
                buffNameIcon:SetSize(iconSize, iconSize)
                buffNameIcon:SetTexture(tex)

                -- Positioning
                buffName:ClearAllPoints()
                if ((lastIndex > 1) and (mod(lastIndex, BuffsPerRow) == 1)) then
                    numAuraRows = numAuraRows + 1
                    buffName:SetPoint("TOPLEFT", aboveDebuff, "BOTTOMLEFT", 0, -BuffRowSpacing)
                    aboveDebuff = buffName
                elseif (lastIndex == 1) then
                    numAuraRows = 1
                    buffName:SetPoint("TOPLEFT", frame, "BOTTOMLEFT", xPos, yPos)
                    aboveDebuff = buffName
                else
                    buffName:SetPoint("LEFT", previousDebuff, "RIGHT", HorizontalSpacing, 0)
                end

                -- Border
                buffNameBorder = _G[frameName .. "Border"]
                local color = debuffType and DebuffTypeColor[debuffType] or DebuffTypeColor["none"]
                buffNameBorder:SetVertexColor(color.r, color.g, color.b)

                -- Cooldown
                buffNameCooldown = _G[frameName .. "Cooldown"]
                if duration and expirationTime then
                    CooldownFrame_Set(buffNameCooldown, expirationTime - duration, duration, duration > 0, true)
                    buffNameCooldown:SetReverse(true)
                    buffNameCooldown:SetHideCountdownNumbers(true)
                else
                    CooldownFrame_Clear(buffNameCooldown)
                end

                -- show buff, set last visible index, remember prev buff for anchoring
                buffName:Show()
                lastIndex = lastIndex + 1
                previousDebuff = buffName
            else
                buffName:Hide()
            end
        end
    end

    for i = lastIndex, maxDebuffs do
        local dbf = _G["EvolveDeBuff" .. i]
        if dbf then
            dbf:Hide()
        end
    end
end

local gg = CreateFrame("Frame")
gg:RegisterEvent("UNIT_AURA")
gg:RegisterEvent("PLAYER_LOGIN")
gg:SetScript("OnEvent", function(self, event, arg1)
    if (event == "UNIT_AURA") then
        if PartyFrame and PartyFrame.PartyMemberFramePool then
            for pFrame in PartyFrame.PartyMemberFramePool:EnumerateActive() do
                if pFrame.unit == arg1 then
                    UpdateDebuffs(pFrame, arg1)
                    break
                end
            end
        end

    elseif event == "PLAYER_LOGIN" or event == "GROUP_ROSTER_UPDATE" then
        C_Timer.After(1, function()
            if PartyFrame and PartyFrame.PartyMemberFramePool then
                for pFrame in PartyFrame.PartyMemberFramePool:EnumerateActive() do
                    if pFrame:IsEventRegistered("UNIT_AURA") then
                        pFrame:UnregisterEvent("UNIT_AURA")
                    end

                    if pFrame.AuraFrameContainer then
                        pFrame.AuraFrameContainer:Hide()
                        pFrame.AuraFrameContainer:SetAlpha(0)
                    end

                    if pFrame.unit then
                        UpdateDebuffs(pFrame, pFrame.unit)
                    end
                end
            end
        end)
    end
end)