local Utils = EMC.Utils;

-- CLI
function EMC:CLIHandler(input, _)
    if input == "" then
        --self:ShowGUI();
        self.GUI:Show()
        return;
    end

    if true then return end
    -- TODO below has not been updated

    local command, rest = input:match("^(%S*)%s*(.-)$");
    command = command:lower();

    if command == "help" or command == "h" or command == "?" then
        self:PrintCLIsHelp();
    elseif command == "debug" or command == "d" then
        self:ToggleDebugMode();
    elseif command == "t" then
        self:PrintTest()
    elseif command == "sets" or (command == "s" and rest == "") then
        self:PrintSets();
    elseif tonumber(command) ~= nil then
        local setID = tonumber(command);
        self:PrintSet(setID);
    elseif command == "s" and tonumber(rest) ~= nil then
        local setID = tonumber(rest);
        self:PrintSet(setID);
    else
        self:Print("Unknown command" .. command);
    end
end

function EMC:PrintTest()
    EMC:Print("Test")
    EMC.Inventory:Init()
end

function EMC:PrintCLIHelp()
    self:Print("EquipmentManagerClassic commands:");
    self:Print("  /emc help - this command");
    self:Print("  /emc debug - toggle debug mode");
    self:Print("  /emc sets - list equipment sets with ID");
    self:Print("  /emc <setID> - list items in the <num> equipment set");
end

function EMC:ToggleDebugMode()
    self.debugMode = not self.debugMode;
    if self.debugMode then
        self:Print("Debug mode enabled");
    else
        self:Print("Debug mode disabled");
    end
end

function EMC:PrintSets()
    local setIDs = Call.GetEquipmentSetIDs()
    self:Print("Equipment sets:")
    for _, id in ipairs(setIDs) do
        local setInfo = Call.GetEquipmentSetInfo(id)
        self:Print(
            "  " .. setInfo.setID .. 
            ": " .. setInfo.name .. 
            " (items: " .. setInfo.numItems .. 
            ", equipped: " .. setInfo.numEquipped .. 
            ", isEquipped: " .. tostring(setInfo.isEquipped) .. 
        ")")
        --local name, icon, setID, isEquipped, isVisible, numItems, numEquipped, numInInventory, numLost, numIgnored = Call.GetEquipmentSetInfo(id);
        --self:Print("  " .. setID .. ": " .. name .. " (items: " .. numItems .. ", equipped: " .. numEquipped .. ", isEquipped: " .. tostring(isEquipped) .. ")");
    end
end

function EMC:PrintSet(setID)
    local setIDs = Call.GetEquipmentSetIDs();
    if not Utils:ListContains(setID, setIDs) then
        self:Print("Invalid equipment set ID: " .. setID);
        return;
    end
    local name, icon, setID, isEquipped, isVisible, numItems, numEquipped, numInInventory, numLost, numIgnored = Call.GetEquipmentSetInfo(setID);
    local ignoredSlots = Call.GetIgnoredSlots(setID);
    print("Items in equipment set " .. setID .. ": " .. name);
    local items = Call.GetItemIDs(setID);
    for slot = 1, 19 do
        if not ignoredSlots[slot] then
            local itemID = items[slot];
            if items[slot] then
                local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, iconFileDataID = Call.GetItemInfo(itemID);
                self:Print("  " .. Utils:InventorySlotToString(slot) .. ": " .. itemLink .. " (" .. itemSubType .. ")");
                -- self:Print("    " .. " (ID: " .. itemID .. ", Level: " .. itemLevel .. ", Type: " .. itemType .. "/" .. itemSubType .. ", EquipLoc: " .. Utils:InventorySlotToString(itemEquipLoc) .. ")");
            else
                self:Print("  " .. Utils:InventorySlotToString(slot) .. ": empty");
            end
        end
    end
end
