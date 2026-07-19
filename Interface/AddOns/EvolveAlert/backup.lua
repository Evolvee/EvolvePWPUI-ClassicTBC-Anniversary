local frame = CreateFrame("Frame")

local alert = CreateFrame("Frame", nil, UIParent)
alert:SetSize(600, 100)
alert:SetPoint("CENTER", UIParent, "CENTER", 0, 200)
alert:Hide()

local text = alert:CreateFontString(nil, "OVERLAY")
text:SetFont("Fonts\\FRIZQT__.TTF", 40, "THICKOUTLINE")
text:SetPoint("CENTER")
text:SetTextColor(1, 0.15, 0.15)
alert.text = text

local hideTimer
local myName = UnitName("player")

local function ShowAlert(msg)
    alert.text:SetText(msg)
    alert:Show()
    if hideTimer then hideTimer:Cancel() end
    hideTimer = C_Timer.NewTimer(1, function() alert:Hide() end)
end

local units = { target = true, focus = true }

for i = 1, 5 do units["arena" .. i] = true end
for i = 1, 5 do units["arenapet" .. i] = true end

frame:RegisterEvent("UNIT_SPELLCAST_START")

frame:SetScript("OnEvent", function(self, event, unit, _, spellId)
    if event ~= "UNIT_SPELLCAST_START" then return end
    if not units[unit] then return end
    
    local targetName = UnitSpellTargetName(unit)
    if not targetName then return end

    if targetName == myName then
        local spellInfo = C_Spell.GetSpellInfo(spellId)
        local spellName = spellInfo and spellInfo.name
        ShowAlert((spellName or "Spell") .. " on YOU!")
    end
end)
