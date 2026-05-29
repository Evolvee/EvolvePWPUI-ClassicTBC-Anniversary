local options = {
    name = "EquipmentManagerClassic",
    handler = EMC,
    type = 'group',
    args = {
        debug = {
            type = 'toggle',
            name = 'Debug Mode',
            desc = 'Toggle debug mode',
            get = function() return EMC.debugMode; end,
            set = function(_, val) EMC.debugMode = val; end,
        },
        characterSheetButton = {
            type = 'toggle',
            name = 'Character Sheet Button',
            desc = 'Not implemented for now\n~~Show/Hide the Equipment Manager button on the character sheet~~',
            get = function() return EMC.charSheetButton; end,
            set = function(_, val) 
                EMC.charSheetButton = val; 
                --EMC:UpdateCharacterSheetButton();
            end,
        },
        openMainWindow = {
            type = 'execute',
            name = 'Open Main Window',
            desc = 'Open the Equipment Manager Classic main window, same as /emc',
            func = function() EMC.GUI:Show(); end,
        },
    },
}

LibStub("AceConfig-3.0"):RegisterOptionsTable("EquipmentManagerClassic", options);
EMC.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("EquipmentManagerClassic", "EquipmentManagerClassic");
