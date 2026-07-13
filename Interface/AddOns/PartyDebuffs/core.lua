local BuffsPerRow = 4
local BuffRowSpacing = 4
local HorizontalSpacing = 2
local maxDebuffs = 8
local iconSize = 13
local xPos, yPos = 40, 6
local mod, UnitDebuff = _G.mod, _G.UnitDebuff

local DebuffTypeColor = { };
DebuffTypeColor["none"]	= { r = 0.80, g = 0, b = 0 };
DebuffTypeColor["Magic"]	= { r = 0.20, g = 0.60, b = 1.00 };
DebuffTypeColor["Curse"]	= { r = 0.60, g = 0.00, b = 1.00 };
DebuffTypeColor["Disease"]	= { r = 0.60, g = 0.40, b = 0 };
DebuffTypeColor["Poison"]	= { r = 0.00, g = 0.60, b = 0 };
DebuffTypeColor[""]	= DebuffTypeColor["none"];

local count = 0

local blacklist = {
    [GetSpellInfo(6788)] = true,
    [GetSpellInfo(99)] = true,
    [GetSpellInfo(1160)] = true,
    [GetSpellInfo(16511)] = true,
    [GetSpellInfo(33878)] = true,
    [GetSpellInfo(33876)] = true,
    [GetSpellInfo(26013)] = true,
    [GetSpellInfo(8647)] = true,
    [GetSpellInfo(6343)] = true,
    [GetSpellInfo(29836)] = true,
    [GetSpellInfo(33191)] = true,
	[GetSpellInfo(57724)] = true,
}

local function UpdateDebuffs(frame, unit)
    if not frame.eId then
        count = count + 1
        frame.eId = count
    end
    
    local framePrefix = "EvolveParty" .. frame.eId .. "_"
    local numAuraRows = 0
    local previousDebuff, aboveDebuff = nil, nil
    local lastIndex = 1
    local frameName, buffName, buffNameIcon
    local buffNameBorder, buffNameCooldown

    if frame:IsEventRegistered("UNIT_AURA") then
        frame:UnregisterEvent("UNIT_AURA")
    end

    if frame.AuraFrameContainer and frame.AuraFrameContainer:IsShown() then
        if not frame.AuraFrameContainer.isHooked then
            hooksecurefunc(frame.AuraFrameContainer, "Show", function(self) self:Hide() end)
            frame.AuraFrameContainer.isHooked = true
        end
        frame.AuraFrameContainer:Hide()
        frame.AuraFrameContainer:SetAlpha(0)
    end

    for i = 1, maxDebuffs do
        local name, tex, _, debuffType, duration, expirationTime = UnitDebuff(unit, i, "HARMFUL")

        if name and not blacklist[name] then
            frameName = framePrefix .. lastIndex
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

                buffNameIcon = _G[frameName .. "Icon"]
                buffNameIcon:SetSize(iconSize, iconSize)
                buffNameIcon:SetTexture(tex)

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

                buffNameBorder = _G[frameName .. "Border"]
                AuraUtil.SetAuraBorderColor(buffNameBorder, debuffType)

                buffNameCooldown = _G[frameName .. "Cooldown"]
                if duration and expirationTime then
                    CooldownFrame_Set(buffNameCooldown, expirationTime - duration, duration, duration > 0, true)
                    buffNameCooldown:SetReverse(true)
                    buffNameCooldown:SetHideCountdownNumbers(true)
                else
                    CooldownFrame_Clear(buffNameCooldown)
                end

                buffName:Show()
                lastIndex = lastIndex + 1
                previousDebuff = buffName
            else
                buffName:Hide()
            end
        end
    end

    for i = lastIndex, maxDebuffs do
        local dbf = _G[framePrefix .. i]
        if dbf then
            dbf:Hide()
        end
    end
end

local gg = CreateFrame("Frame")
gg:RegisterEvent("UNIT_AURA")
gg:RegisterEvent("PLAYER_LOGIN")
gg:RegisterEvent("GROUP_ROSTER_UPDATE")
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
                        if not pFrame.AuraFrameContainer.isHooked then
                            hooksecurefunc(pFrame.AuraFrameContainer, "Show", function(self) self:Hide() end)
                            pFrame.AuraFrameContainer.isHooked = true
                        end
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
