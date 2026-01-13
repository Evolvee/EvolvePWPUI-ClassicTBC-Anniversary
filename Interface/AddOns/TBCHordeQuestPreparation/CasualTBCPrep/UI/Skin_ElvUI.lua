-- Only run if ElvUI is loaded
local E, _, _, _, _ = _G.ElvUI and unpack(ElvUI)
if not E then return end

local S = E:GetModule("Skins")

CasualTBCPrep_SkinCallback = function(frame)
    if not frame or frame.isSkinned then return end
    frame.isSkinned = true

    -- Frame
    S:HandleFrame(frame)

    -- Inset
    if frame.Inset then
        S:HandleFrame(frame.Inset)
    end

    -- Title
    if frame.title then
        frame.title:SetFontObject("GameFontNormalLarge")
    end

    -- Tabs
    if frame.tabs then
        for _, tab in ipairs(frame.tabs) do
            S:HandleTab(tab)
        end
    end

    -- scrollwheel

    -- dropwdown



end
