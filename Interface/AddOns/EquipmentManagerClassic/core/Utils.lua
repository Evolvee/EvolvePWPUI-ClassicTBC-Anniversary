local Utils = EMC.Utils

EMC._InventoryTypes = function(slot)
    if slot == _G["INVSLOT_AMMO"] then
        return _G["INVTYPE_AMMO"];
    elseif slot == _G["INVSLOT_HEAD"] then
        return _G["INVTYPE_HEAD"];
    elseif slot == _G["INVSLOT_NECK"] then
        return _G["INVTYPE_NECK"];
    elseif slot == _G["INVSLOT_SHOULDER"] then
        return _G["INVTYPE_SHOULDER"];
    elseif slot == _G["INVSLOT_BODY"] then
        return _G["INVTYPE_BODY"];
    elseif slot == _G["INVSLOT_CHEST"] then
        return _G["INVTYPE_CHEST"];
    elseif slot == _G["INVSLOT_WAIST"] then
        return _G["INVTYPE_WAIST"];
    elseif slot == _G["INVSLOT_LEGS"] then
        return _G["INVTYPE_LEGS"];
    elseif slot == _G["INVSLOT_FEET"] then  
        return _G["INVTYPE_FEET"];
    elseif slot == _G["INVSLOT_WRIST"] then
        return _G["INVTYPE_WRIST"];
    elseif slot == _G["INVSLOT_HAND"] then
        return _G["INVTYPE_HAND"];
    elseif slot == _G["INVSLOT_FINGER1"] then
        return _G["INVTYPE_FINGER"] .. "1";
    elseif slot == _G["INVSLOT_FINGER2"] then
        return _G["INVTYPE_FINGER"] .. "2";
    elseif slot == _G["INVSLOT_TRINKET1"] then
        return _G["INVTYPE_TRINKET"] .. "1";
    elseif slot == _G["INVSLOT_TRINKET2"] then
        return _G["INVTYPE_TRINKET"] .. "2";
    elseif slot == _G["INVSLOT_BACK"] then
        return _G["INVTYPE_CLOAK"];
    elseif slot == _G["INVSLOT_MAINHAND"] then
        return _G["INVTYPE_WEAPONMAINHAND"];
    elseif slot == _G["INVSLOT_OFFHAND"] then
        return _G["INVTYPE_WEAPONOFFHAND"];
    elseif slot == _G["INVSLOT_RANGED"] then
        return _G["INVTYPE_RANGED"];
    elseif slot == _G["INVSLOT_TABARD"] then
        return _G["INVTYPE_TABARD"];
    else
        return _G["INVTYPE_NON_EQUIP"];
    end
end

---@return boolean list contains obj
---@param obj any
---@param list table
function Utils:ListContains(obj, list)
    if list == nil then
        return false;
    end
    for _, v in pairs(list) do
        if v == obj then
            return true;
        end
    end
    return false;
end

---@return table
---@param t table
function Utils:CopyTable(t, ignored)
    local _t = {}

    for k, v in pairs(t) do
        if self:ListContains(k, ignored) then
            break
        end
        _t[k] = v
    end
    return setmetatable(_t, getmetatable(t))
end

---@return string name of inventory slot
---@param slot number inventory slot ID (1-19)
function Utils:InventorySlotToString(slot)
    if tonumber(slot) ~= nil then
        return EMC._InventoryTypes(slot);
    elseif slot:match("^INVTYPE_") then
        return _G[slot];
    end
end

function Utils:GetPaperDollSlotTexture(slot)
    local texturePathBase = "Interface\\PaperDoll\\UI-PaperDoll-Slot-";

    if slot == _G["INVSLOT_AMMO"] then
        return texturePathBase .. "Ammo";
    elseif slot == _G["INVSLOT_HEAD"] then
        return texturePathBase .. "Head";
    elseif slot == _G["INVSLOT_NECK"] then
        return texturePathBase .. "Neck";
    elseif slot == _G["INVSLOT_SHOULDER"] then
        return texturePathBase .. "Shoulder";
    elseif slot == _G["INVSLOT_BODY"] then
        return texturePathBase .. "Shirt";
    elseif slot == _G["INVSLOT_CHEST"] then
        return texturePathBase .. "Chest";
    elseif slot == _G["INVSLOT_WAIST"] then
        return texturePathBase .. "Waist";
    elseif slot == _G["INVSLOT_LEGS"] then
        return texturePathBase .. "Legs";
    elseif slot == _G["INVSLOT_FEET"] then  
        return texturePathBase .. "Feet";
    elseif slot == _G["INVSLOT_WRIST"] then
        return texturePathBase .. "Wrists";
    elseif slot == _G["INVSLOT_HAND"] then
        return texturePathBase .. "Hands";
    elseif slot == _G["INVSLOT_FINGER1"] then
        return texturePathBase .. "Finger";
    elseif slot == _G["INVSLOT_FINGER2"] then
        return texturePathBase .. "Finger";
    elseif slot == _G["INVSLOT_TRINKET1"] then
        return texturePathBase .. "Trinket";
    elseif slot == _G["INVSLOT_TRINKET2"] then
        return texturePathBase .. "Trinket";
    elseif slot == _G["INVSLOT_BACK"] then
        return texturePathBase .. "Chest";
    elseif slot == _G["INVSLOT_MAINHAND"] then
        return texturePathBase .. "MainHand";
    elseif slot == _G["INVSLOT_OFFHAND"] then
        return texturePathBase .. "SecondaryHand";
    elseif slot == _G["INVSLOT_RANGED"] then
        return texturePathBase .. "Ranged";
    elseif slot == _G["INVSLOT_TABARD"] then
        return texturePathBase .. "Tabard";
    else
        return "Interface\\Icons\\INV_Misc_QuestionMark";
    end
end

function Utils:MakeReactive(tableToWrap, onChange)
    local proxy = {}
    local mt = {
        __index = tableToWrap,
        __newindex = function(t, key, value)
            tableToWrap[key] = value
            onChange(key, value)
        end,
    }
    setmetatable(proxy, mt)
    return proxy
end

local iconSize = 32
local padding = 4

local _col = {
    -3*iconSize,
    -1*iconSize - padding,
    0,
    1*iconSize + padding,
    3*iconSize,
}

local _row = {}
_row[4] = 0.5*iconSize + padding/2
_row[3] = _row[4] + iconSize + padding
_row[2] = _row[3] + iconSize + padding
_row[1] = _row[2] + iconSize + padding

_row[5] = -0.5*iconSize - padding/2
_row[6] = _row[5] - iconSize - padding
_row[7] = _row[6] - iconSize - padding
_row[8] = _row[7] - iconSize - padding

_row[9] = _row[8] - 0.5*iconSize


local paperDollSlotPaddings = {
    { x = _col[1], y = _row[1]}, -- 1 Head
    { x = _col[1], y = _row[2]}, -- 2 Neck
    { x = _col[1], y = _row[3]}, -- 3 Shoulder
    { x = _col[1], y = _row[6]}, -- 4 Shirt
    { x = _col[1], y = _row[5]}, -- 5 Chest
    { x = _col[5], y = _row[2]}, -- 6 Waist
    { x = _col[5], y = _row[3]}, -- 7 Legs
    { x = _col[5], y = _row[4]}, -- 8 Boots
    { x = _col[1], y = _row[8]}, -- 9 Wrists
    { x = _col[5], y = _row[1]}, -- 10 Hands
    { x = _col[5], y = _row[5]}, -- 11 Ring1
    { x = _col[5], y = _row[6]}, -- 12 Ring2
    { x = _col[5], y = _row[7]}, -- 13 Trinket1
    { x = _col[5], y = _row[8]}, -- 14 Trinket2
    { x = _col[1], y = _row[4]}, -- 15 Back
    { x = _col[2], y = _row[9]}, -- 16 MainHand
    { x = _col[3], y = _row[9]}, -- 17 OffHand
    { x = _col[4], y = _row[9]}, -- 18 Ranged
    { x = _col[1], y = _row[7]}, -- 19 Tabard
}



function Utils:ItemSlotMarginFromCenter(slot)
    return paperDollSlotPaddings[slot].x, paperDollSlotPaddings[slot].y
end

local tooltipAnchorBySlot = {
    "ANCHOR_LEFT", -- 1 HEAD
    "ANCHOR_LEFT", -- 2 Neck
    "ANCHOR_LEFT", -- 3 Shoulder
    "ANCHOR_LEFT", -- 4 Shirt
    "ANCHOR_LEFT", -- 5 Chest
    "ANCHOR_RIGHT", -- 6 Waist
    "ANCHOR_RIGHT", -- 7 Legs
    "ANCHOR_RIGHT", -- 8 Boots
    "ANCHOR_LEFT", -- 9 Wrists
    "ANCHOR_RIGHT", -- 10 Hands
    "ANCHOR_RIGHT", -- 11 Ring1
    "ANCHOR_RIGHT", -- 12 Ring2
    "ANCHOR_RIGHT", -- 13 Trinket1
    "ANCHOR_RIGHT", -- 14 Trinket2
    "ANCHOR_LEFT", -- 15 Back
    "ANCHOR_TOP", -- 16 MainHand
    "ANCHOR_TOP", -- 17 OffHand
    "ANCHOR_TOP", -- 18 Ranged
    "ANCHOR_LEFT", -- 19 Tabard
}

function Utils:TooltipAnchorBySlot(slot)
    return tooltipAnchorBySlot[slot]
end

function Utils:HandSlotNameBySlot(slot)
    if slot == 16 then 
        return "MAINHANDSLOT"
    elseif slot == 17 then
        return "SECONDARYHANDSLOT"
    else 
        return nil 
    end
end
