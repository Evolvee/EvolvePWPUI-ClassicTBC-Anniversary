CasualTBCPrep.Classes = CasualTBCPrep.Classes or {}

CasualTBCPrep.Classes.MageID = 8
CasualTBCPrep.Classes.PriestID = 5
CasualTBCPrep.Classes.WarlockID = 9
CasualTBCPrep.Classes.DruidID = 11
CasualTBCPrep.Classes.RogueID = 4
CasualTBCPrep.Classes.HunterID = 3
CasualTBCPrep.Classes.ShamanID = 7
CasualTBCPrep.Classes.WarriorID = 1
CasualTBCPrep.Classes.PaladinID = 2

local classData = {
    [CasualTBCPrep.Classes.MageID] = {  },
    [CasualTBCPrep.Classes.PriestID] = { },
    [CasualTBCPrep.Classes.WarlockID] = { },
    [CasualTBCPrep.Classes.DruidID] = { },
    [CasualTBCPrep.Classes.RogueID] = { },
    [CasualTBCPrep.Classes.HunterID] = { },
    [CasualTBCPrep.Classes.ShamanID] = { },
    [CasualTBCPrep.Classes.WarriorID] = { },
    [CasualTBCPrep.Classes.PaladinID] = { },
}
local reverseClassLookup = { }
local armorTypeData = {
    [0] = { 5,8,9, 4,11, 3,7, 1,2 }, -- Cloth
    [1] = { 4,11, 3,7, 1,2}, -- Leather
    [2] = { 3,7, 1,2 }, -- Mail
    [3] = { 1,2 } -- Plate
}

for classID, data in pairs(classData) do
    data.name,data.token = GetClassInfo(classID)
    if data.token and data.token ~= "" then
        reverseClassLookup[data.token] = classID
        reverseClassLookup[data.name] = classID
    end
end

---@param classID number
---@return table|nil
function CasualTBCPrep.Classes.GetClassFromID(classID)
    return classData[classID]
end

---@param classTokenOrName string
---@return table|nil
function CasualTBCPrep.Classes.GetClassFromText(classTokenOrName)
    local classID = reverseClassLookup[classTokenOrName]
    if not classID or classID <= 0 then return nil end
    return classData[classID]
end

---@param armorTypeIndex number
---@return table|nil
function CasualTBCPrep.Classes.GetClassesUsingArmorType(armorTypeIndex)
    if armorTypeIndex == nil or armorTypeIndex < 0 then return nil end
    if armorTypeIndex >= 3 then return armorTypeData[3] end
    return armorTypeData[armorTypeIndex]
end

---@return number
function CasualTBCPrep.Classes.GetPlayerClassID()
    local playerClassText = UnitClass("player")
    return reverseClassLookup[playerClassText]
end

---@param classID number
---@return string,string|nil
function CasualTBCPrep.Classes.GetClassNameFromID(classID)
    local cData = classData[classID]
    if cData == nil then return "" end

    local playerClassText = UnitClass("player")
    if cData.color == nil then
        local wowColor = RAID_CLASS_COLORS[cData.token]
        cData.color = { r=wowColor.r, g=wowColor.g, b=wowColor.b, hex="" }
        cData.hex = string.format("FF%02x%02x%02x", wowColor.r * 255, wowColor.g * 255, wowColor.b * 255)
    end

    return playerClassText, cData.hex
end