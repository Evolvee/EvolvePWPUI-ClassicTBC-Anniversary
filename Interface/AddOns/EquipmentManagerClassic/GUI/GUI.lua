local GUI = EMC.GUI
local Widget = EMC.Widget
local Utils = EMC.Utils

function GUI:Show()
    self:Hide()

    local mainFrame = Widget:MainFrame()
    _G[EMC.mainFrameName] = mainFrame

    --self.paperButton.texture:SetDesaturated(true)

    self:populateMenuDropdown(function(setID)
        EMC.Temp.editing = (setID == nil)
        self:populateContent(setID)
    end)

    self:populateContent(nil)
end

function GUI:Hide()
    if _G[EMC.contentFrameName] then
        _G[EMC.contentFrameName]:Hide()
        _G[EMC.contentFrameName] = nil
    end
    if _G[EMC.menuDropdownName] then
        _G[EMC.menuDropdownName]:Hide()
        _G[EMC.menuDropdownName] = nil
    end
    if _G[EMC.mainFrameName] then 
        _G[EMC.mainFrameName]:Hide()
    end
    --self.paperButton.texture:SetDesaturated(false)
end


function GUI:populateMenuDropdown(updateContent)
    if _G[EMC.menuDropdownName] then
        _G[EMC.menuDropdownName]:Hide()
        _G[EMC.menuDropdownName] = nil
    end

    local mainFrame = _G[EMC.mainFrameName]

    local DropdownFrame = CreateFrame("Frame", EMC.menuDropdownName, mainFrame, "UIDropDownMenuTemplate")
    --DropdownFrame:SetSize(140, 22)
    UIDropDownMenu_SetWidth(DropdownFrame, 260)
    UIDropDownMenu_SetAnchor(DropdownFrame, 0, -10, "TOP", mainFrame, "TOP")
    DropdownFrame:SetPoint("RIGHT", mainFrame, "RIGHT", -10, 0)
    DropdownFrame:SetPoint("LEFT", mainFrame, "LEFT", 10, 0)
    DropdownFrame:SetPoint("TOP", mainFrame, "TOP", 0, -10)

    _G[EMC.menuDropdownName] = DropdownFrame
    local function EMC_Dropdown_Initialize(self, level)
        local info
        local setIDs = C_EquipmentSet.GetEquipmentSetIDs() or {}
        if #setIDs == 0 then
            info = UIDropDownMenu_CreateInfo()
            info.text = "No equipment sets"
            info.isTitle = true
            info.notCheckable = true
            UIDropDownMenu_AddButton(info, level)
        else
            for i = 1, #setIDs do
                local setID = setIDs[i]
                local setName = select(1, C_EquipmentSet.GetEquipmentSetInfo(setID)) or ("Set " .. tostring(i))
                info = UIDropDownMenu_CreateInfo()
                info.text = setName
                info.arg1 = setID
                info.func = function(_, arg1)
                    if updateContent then
                        updateContent(arg1)
                    end
                end
                info.notCheckable = true
                UIDropDownMenu_AddButton(info, level)
            end
        end

        --info = UIDropDownMenu_CreateInfo()
        --info.text = " "
        --info.disabled = true
        --info.notCheckable = true
        --UIDropDownMenu_AddButton(info, level)
        UIDropDownMenu_AddSeparator(level)

        info = UIDropDownMenu_CreateInfo()
        info.text = "Create New Set..."
        info.func = function()
            if updateContent then
                updateContent()
            end
        end
        info.notCheckable = true
        UIDropDownMenu_AddButton(info, level)
    end

    UIDropDownMenu_Initialize(DropdownFrame, EMC_Dropdown_Initialize)
end

function GUI:populateContent(setID)
    EMC.Temp:Clear()
    local mainFrame = _G[EMC.mainFrameName]
    local menuDropDownFrame = _G[EMC.menuDropdownName]

    local parent = Widget:ContentFrame(mainFrame)

    local itemIDs, label, dressUpModel, ignores, imageButton
    if setID then
        local getActionButton, deleteButton, macroEditBox, setName, macroText
        setName = C_EquipmentSet.GetEquipmentSetInfo(setID)
        itemIDs = C_EquipmentSet.GetItemIDs(setID)
        label = Widget:Label(parent)
        label:SetText(setName)
        label:SetPoint("TOP")
        UIDropDownMenu_SetText(menuDropDownFrame, setName)

        getActionButton = Widget:Button(parent, function() 
            C_EquipmentSet.PickupEquipmentSet(setID)
        end,
        "EMC_GetActionButton")
        getActionButton:SetPoint("BOTTOMLEFT", 4, 4)
        getActionButton:SetText("Get Button")

        macroText = "/equipset " .. setName .. ""

        macroEditBox = Widget:EditBox(parent, function() 
            macroEditBox:SetText(macroText)
        end,
        nil, "EMC_MacroEditBox")
        macroEditBox:SetPoint("BOTTOMRIGHT", -12, 12)
        macroEditBox:SetText(macroText)
        macroEditBox:SetWidth(macroEditBox:GetWidth()*1.5)

        deleteButton = Widget:Button(parent, function()
            --C_EquipmentSet.DeleteEquipmentSet(setID)
            -- TODO Confirm dialog show
            StaticPopupDialogs["EMC_CONFIRM_DELETE_SET"] = {
                text = "Are you sure you want to delete the equipment set '" .. setName .. "'? This action cannot be undone.",
                button1 = "Delete",
                button2 = "Cancel",
                OnAccept = function()
                    C_EquipmentSet.DeleteEquipmentSet(setID)
                    GUI:Show()
                end,
                timeout = 0,
                whileDead = true,
                hideOnEscape = true,
                preferredIndex = 3,
            }
            StaticPopup_Show("EMC_CONFIRM_DELETE_SET")
        end)

        deleteButton:SetPoint("TOPRIGHT", -4, -4)
        deleteButton:SetText("Delete Set")
    else
        EMC.Flag.isEditingView = true
        ignores = {}
        local saveButton, editBox
        editBox = Widget:EditBox(parent, function() 
            saveButton:Click()    
        end)
        editBox:SetPoint("TOP", 0, -12)

        saveButton = Widget:Button(parent, function() 
            EMC.Temp.Ignores = {}
            for slot, isIgnored in pairs(ignores) do
                EMC.Temp.Ignores[slot] = isIgnored or false
            end

            EMC.Func:SaveSet(editBox:GetText())
            GUI:Show()
        end)
        saveButton:SetPoint("TOPRIGHT", -12, -12)
        saveButton:SetText("Save")

        imageButton = Widget:ImageButton(parent, function() 
            -- TODO Change icon for set
            EMC:Print("Icon will be last unignored item")
        end)
        --imageButton.frame:SetPoint("TOPLEFT", 4, -4)
        imageButton.frame:SetPoint("TOP", 0, -4)
        imageButton.frame:SetPoint("RIGHT", editBox, "LEFT", -4, 0)
        imageButton:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
        UIDropDownMenu_SetText(menuDropDownFrame, "Create new Set")
    end
    -- model
    dressUpModel = CreateFrame("DressUpModel", nil, parent)
    dressUpModel:SetPoint("CENTER")
    dressUpModel:SetSize(6*32, 8*32)
    dressUpModel:SetUnit("player")
    --dressUpModel:Undress()

    for slot = 1, 19 do
        local itemID
        itemID = (itemIDs and itemIDs[slot]) or (setID == nil and GetInventoryItemID("player", slot)) or nil

        local itemLink, itemTexture, itemWidget
        if itemID == -1 or itemID == nil then
            -- Ignored Slot (-1) and Empty Slot (nil)
            itemTexture = Utils:GetPaperDollSlotTexture(slot)
        else
            -- Normal Slot
            _, itemLink, _, _, _, _, _, _, _, itemTexture = C_Item.GetItemInfo(itemID)
            dressUpModel:UndressSlot(slot)
            dressUpModel:TryOn(itemLink, Utils:HandSlotNameBySlot(slot))
        end

        itemWidget = Widget:ItemSlot(parent, itemTexture, itemLink)
        itemWidget:SetPoint("CENTER", parent, "CENTER", Utils:ItemSlotMarginFromCenter(slot))
        itemWidget:Ignore(itemID == -1)
        itemWidget.tooltipAnchor = Utils:TooltipAnchorBySlot(slot)

        if EMC.Flag.isEditingView then
            itemWidget:SetScript("OnClick", function() 
                itemWidget:Ignore(not itemWidget:IsIgnored())
                ignores[slot] = itemWidget:IsIgnored()
                -- TODO remove below when proper iconChange implemented
                if not itemWidget:IsIgnored() then
                    EMC.Temp.iconFileID = itemTexture
                    imageButton:SetTexture(itemTexture)
                end
            end)
        end
    end
end
