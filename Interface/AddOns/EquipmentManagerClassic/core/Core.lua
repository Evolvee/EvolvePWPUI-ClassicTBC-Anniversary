    -- https://www.townlong-yak.com/framexml/9.0.2/Constants.lua#192
    -- _G["INVSLOT_FIRST_EQUIPPED"]
    -- _G["INVSLOT_LAST_EQUIPPED"]
    -- _G["INVSLOTS_EQUIPABLE_IN_COMBAT"]
    -- _G["MAX_EQUIPMENT_SETS_PER_PLAYER"]
    -- _G["EQUIPMENT_SET_EMPTY_SLOT"]
    -- _G["EQUIPMENT_SET_IGNORED_SLOTS"]
    -- _G["EQUIPMENT_SET_ITEM_MISSING"]

EMC = LibStub("AceAddon-3.0"):NewAddon("EquipmentManagerClassic", "AceConsole-3.0", "AceEvent-3.0");
EMC.debugMode = false;

RegisterCVar("EMC_alwaysCompareItems")

dump = function(c) DevTools_Dump(c) end

local Persistent = {}
local Temp = {}
local Flag = {}
EMC.Temp = Temp
EMC.Persistent = Persistent
EMC.Flag = Flag

Flag.hasEquipmentSetsChanged = false
Flag.isEditingView = false

local Widget = {}
EMC.Widget = Widget

local GUI = {}
EMC.GUI = GUI

local Utils = {}
EMC.Utils = Utils

local CallAPI = {}
EMC.CallAPI = CallAPI

local Func = {}
EMC.Func = Func

local Inventory = {}
EMC.Inventory = Inventory

local Item = {}
Inventory.Item = Item

local show = {}
Inventory.show = show

local sets = {}
Inventory.sets = sets

local items = {}
Inventory.items = items

local current = {}
Inventory.current = current

local isEditable = false
Inventory.isEditable = isEditable



for slot = 1, 19 do
    Inventory.show[slot] = {}
    Inventory.items[slot] = {}
    Inventory.current[slot] = {}
end

function Temp:Clear()
    for k, v in pairs(self) do
        if k ~= "Clear" then
            v = nil
        end
    end
end

function Persistent:Clear()
end

local mainFrameName = "EquipmentManagerClassicFrame"
EMC.mainFrameName = mainFrameName
local menuDropdownName = "EquipmentManagerClassicFrame_UIDropdown"
EMC.menuDropdownName = menuDropdownName
local contentFrameName = "EquipmentManagerClassicFrame_ContentFrame"
EMC.contentFrameName = contentFrameName
