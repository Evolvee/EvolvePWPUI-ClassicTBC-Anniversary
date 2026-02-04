local _, fctf = ...

---------------------------------  STRINGS  ---------------------------------

local addonTitle = fctf.getLocalizedText("addonTitle")
local subtitleText = fctf.getLocalizedText("optionsInterfaceSubtitle")
local preferencesText = fctf.getLocalizedText("preferences")
local rememberFctStateLabel = fctf.getLocalizedText("rememberFctStateCheckBoxLabel")
local rememberFctStateTooltip = fctf.getLocalizedText("rememberFctStateCheckBoxTooltip")
local displayFctStateLabel = fctf.getLocalizedText("displayFctStateCheckBoxLabel")

---------------------------------  HORIZONTAL OFFSETS  ---------------------------------

local initialElementsXPosition = 13
local tooltipTextureXOffset = 5

-- CHECKBOXES
local checkButtonXPosition = initialElementsXPosition + 12

---------------------------------  VERTICAL OFFSETS  ---------------------------------

-- STRINGS
local addonTitleYPosition = -15
local subtitleYPosition = addonTitleYPosition - 25
local preferencesYPosition = subtitleYPosition -50

-- CHECKBOXES
local fctStateCheckBoxYPosition = -120
local fctMessageCheckBoxYPosition = fctStateCheckBoxYPosition - 35

---------------------------------  ELEMENT CREATION FUNCTIONS  ---------------------------------

local function createText(font, text, yPosition, xPosition)
    local fontString = fctf.frame:CreateFontString(nil, "ARTWORK", font)
    fontString:SetText(text)
    fontString:SetJustifyH("LEFT")
    local textXPosition = xPosition or initialElementsXPosition
    if yPosition then
        fontString:SetPoint("TOPLEFT", textXPosition, yPosition)
    end
    return fontString
end

local function createCheckButton(text, yPosition, relatedSavedVariable, xPosition)
    local button = CreateFrame("CheckButton", nil, fctf.frame, "InterfaceOptionsCheckButtonTemplate")
    local label = createText("GameFontHighlight", text)
    label:SetParent(button)
    label:SetPoint("LEFT", button, "RIGHT", 4, 1)
    button.label = label
    local buttonXPosition = xPosition or initialElementsXPosition
    button:SetPoint("TOPLEFT", buttonXPosition, yPosition)
    button:SetChecked(fctfPreferences[relatedSavedVariable])
    button:SetScript("OnClick", function(self) 
        fctfPreferences[relatedSavedVariable] = self:GetChecked()
    end)
    return button
end

local function createElementTooltip(element, tooltip)
    element:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:SetText(tooltip)
        GameTooltip:Show()
    end)
    element:SetScript("OnLeave", function(self)
        GameTooltip:Hide()
    end)
end

local function createQuestionMarkTooltip(tooltipText, anchorPoint, xOffset)
    local textureContainer = CreateFrame("Frame", nil, fctf.frame, "BackdropTemplate")
    textureContainer:SetSize(25, 25)
    textureContainer:SetPoint("LEFT", anchorPoint, "RIGHT", xOffset, 0)
    local texture = textureContainer:CreateTexture(nil)
    texture:SetTexture("interface/icons/inv_misc_questionmark")
    texture:SetAllPoints(textureContainer)
    createElementTooltip(textureContainer, tooltipText)
    return textureContainer
end

---------------------------------  ELEMENT CREATION  ---------------------------------

function fctf.createInterfaceElements()
    createText("GameFontNormalLarge", addonTitle, addonTitleYPosition)
    createText("GameFontHighlight", subtitleText, subtitleYPosition)
    createText("GameFontNormalMed1", preferencesText, preferencesYPosition)
    local fctStateButton = createCheckButton(
        rememberFctStateLabel,
        fctStateCheckBoxYPosition, 
        "rememberLastFctState",
        checkButtonXPosition
    )
    createQuestionMarkTooltip(
        rememberFctStateTooltip, 
        fctStateButton.label,
        tooltipTextureXOffset
    )
    createCheckButton(
        displayFctStateLabel, 
        fctMessageCheckBoxYPosition, 
        "displayFctStatusMessageOnLogin",
        checkButtonXPosition
    )
end
