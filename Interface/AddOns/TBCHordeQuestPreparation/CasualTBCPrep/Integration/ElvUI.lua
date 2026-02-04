CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.Integration.ElvUI = CasualTBCPrep.Integration.ElvUI or {}

--[Variables]
local bankOpenedRegistryID = 0
local elements = {}

function CasualTBCPrep.Integration.ElvUI.RegisterBankOpen(tooltipHeader, ttCompanion, funcCallHoverEnter, funcCallHoverLeave, funcToggleCompanion)
    if bankOpenedRegistryID > 0 then return end

    bankOpenedRegistryID = CasualTBCPrep.MessageBroker.Register(CasualTBCPrep.MessageBroker.TYPE.BANK_INTERACT, function(data)
        if data.open == true and _G.ElvUI then
            C_Timer.After(0, function()
                local bank = _G.ElvUI_BankContainerFrame
                if not bank then return end

                if _G.MyElvUIBankButton then
                    _G.MyElvUIBankButton:Show()
                    return
                end

                local btnBankElvui = CreateFrame("Button", "MyElvUIBankButton", bank)
                btnBankElvui:SetPoint("TOPLEFT", bank, "TOPRIGHT", 0, 0)
                btnBankElvui:SetSize(42, 42)
                local btnBankElvuiTexture = btnBankElvui:CreateTexture(nil, "BORDER")
                btnBankElvuiTexture:SetAllPoints(btnBankElvui)
                btnBankElvuiTexture:SetTexture(CasualTBCPrep.AddonLogoTexture)
                btnBankElvui.textureObj = btnBankElvuiTexture
                CasualTBCPrep.UI.HookTooltip(btnBankElvui, tooltipHeader, ttCompanion, nil, funcCallHoverEnter, funcCallHoverLeave)
                btnBankElvui:SetScript("OnClick", funcToggleCompanion)

                table.insert(elements, btnBankElvui)
                table.insert(elements, btnBankElvuiTexture)
            end)
        else
            if elements then
                for _, borderFrame in ipairs(elements) do
                    borderFrame:Hide()
                    borderFrame = nil
                end
            end
        end
    end)
end