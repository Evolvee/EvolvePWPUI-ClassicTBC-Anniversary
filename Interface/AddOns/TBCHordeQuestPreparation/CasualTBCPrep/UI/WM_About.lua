CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.WM_About = CasualTBCPrep.WM_About or {}

--[Variables]
---@class Frame|nil
local frameAbout = nil;

local clrHeader = "|cff8585AA"
local clrNormal = "|cff95A8FC"
local clrSpecial = "|cffC9BE7B"
local clrHyperlink = "|cffBBAACC"
local clrHorde = "|cffD32D1F"
local clrAlly = "|cff0070DD"
local clrConsita = "|cffA483C9"
local clrPawa = "|cff83C8C9"

local discordLink = "https://discord.gg/V6AAXKf"

---@param wMain Frame|nil
function CasualTBCPrep.WM_About.Create(wMain)
	if wMain == nil then
		return
	end

	frameAbout = CreateFrame("Frame", nil, wMain)
	frameAbout:SetAllPoints(wMain)

	frameAbout.scrollFrame, frameAbout.scrollChild = CasualTBCPrep.UI.CreateTBCPrepScrollFrame(frameAbout)
end

function CasualTBCPrep.WM_About.Hide()
	if frameAbout ~= nil then
		frameAbout:Hide()
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_About.Show(wMain)
	if frameAbout == nil then
		CasualTBCPrep.WM_About.Create(wMain)
	end

	if frameAbout ~= nil then
		frameAbout:Show()
	end
end

local function CreateCopyLink(parent, text, xOffset, yPos, width)
	local linkButton = CreateFrame("Button", nil, parent)
	linkButton:SetPoint("TOPLEFT", parent, "TOPLEFT", xOffset, yPos)
	linkButton:SetSize(width, 20)
	table.insert(frameAbout.elements, linkButton)

	local linkFont = frameAbout:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	linkFont:SetAllPoints(linkButton)
	linkFont:SetJustifyH("LEFT")
	linkFont:SetJustifyV("TOP")
	linkFont:SetSpacing(3)
	linkFont:SetText(clrHyperlink .. text .. "|r")
	table.insert(frameAbout.texts, linkFont)

	local editBox = CreateFrame("EditBox", nil, parent, "InputBoxTemplate")
	editBox:SetPoint("TOPLEFT", parent, "TOPLEFT", xOffset + 5, yPos)
	editBox:SetSize(linkFont:GetStringWidth(), 20)
	editBox:SetAutoFocus(false)
	editBox:SetJustifyH("LEFT")
	editBox:SetJustifyV("TOP")
	editBox:SetSpacing(3)
	editBox:Hide()
	table.insert(frameAbout.elements, editBox)

	linkButton:SetScript("OnClick", function()
		linkButton:Hide()
		linkFont:Hide()
		editBox:Show()
		editBox:SetText(text)
		editBox:HighlightText()
		editBox:SetFocus()
	end)

	editBox:SetScript("OnEscapePressed", function()
		editBox:ClearFocus()
		editBox:Hide()
		linkButton:Show()
		linkFont:Show()
	end)

	editBox:SetScript("OnEditFocusLost", function()
		editBox:Hide()
		linkButton:Show()
		linkFont:Show()
	end)

	linkButton:SetScript("OnEnter", function()
		linkFont:SetTextColor(1, 1, 0.5)
	end)

	linkButton:SetScript("OnLeave", function()
		linkFont:SetTextColor(0.5, 0.5, 1)
	end)
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_About.Load(wMain)
	if wMain == nil then
		return
	end
	local selectedRoute = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.SelectedRoute)
	if selectedRoute == nil or selectedRoute == "" then
		CasualTBCPrep.UI.CreateRouteSelection(wMain, frameAbout)
		frameAbout.scrollFrame:Hide()
		return
	end
	CasualTBCPrep.UI.ClearRouteSelectionUI(frameAbout)
	frameAbout.scrollFrame:Show()

	if frameAbout.texts then
		for _, fontString in ipairs(frameAbout.texts) do
			fontString:Hide()
			fontString:SetText("")
			fontString:SetSize(0, 0)
		end
	end
	if frameAbout.elements then
		for _, fontString in ipairs(frameAbout.elements) do
			fontString:Hide()
			fontString:SetSize(0, 0)
		end
	end
	frameAbout.texts = {}
	frameAbout.elements = {}

	if not frameAbout.headerText then
		frameAbout.headerText = frameAbout:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		frameAbout.headerText:SetPoint("TOP", frameAbout, "TOP", 0, -31)
		frameAbout.headerText:SetText("About")
	end

	local _, class = UnitClass("player")
	local ccR,ccG,ccB,hex = GetClassColor(class) --rgb+hex
	local playerName = "|c" .. hex .. UnitName("player") .. "|r"

	local xOffset = 9

	local msg = clrNormal.."Version: "..clrSpecial..tostring(CasualTBCPrep.Settings.CurrentMajorVersionValue).."|r\n"
	msg = msg .. clrNormal .. "Created by: " .. clrSpecial .. "<Casual> " .. clrConsita .. "Consita|r & " .. clrPawa .. "Pawaox|r on Spineshatter-EU\n\n"
	msg = msg .. clrNormal .. "Currently only supports " .. clrHorde .. "HORDE|r characters\n"
	msg = msg .. clrNormal .. "Join our guild's discord to ask questions or suggest changes... or say hi\n"

	local specialThanks = clrSpecial .. "Thanks to everyone who helped test the addon\n"
	specialThanks = specialThanks .. clrSpecial .. "And special thanks to you, " .. playerName .. ", for using our guide!\n\n"
	specialThanks = specialThanks .. clrSpecial .. "We hope you enjoy TBC as much as we will!"

	local yPos = 10
	local txtIntro = frameAbout:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	txtIntro:SetPoint("TOPLEFT", frameAbout.scrollChild, "TOPLEFT", xOffset, -yPos)
	txtIntro:SetWidth(frameAbout.scrollFrame:GetWidth() - 2)
	txtIntro:SetJustifyH("LEFT")
	txtIntro:SetJustifyV("TOP")
	txtIntro:SetSpacing(3)
	txtIntro:SetText(msg)
	txtIntro:SetTextColor(1, 1, 0.9)
	table.insert(frameAbout.texts, txtIntro)
	local yPos = yPos + txtIntro:GetStringHeight() + 5

	CreateCopyLink(frameAbout.scrollChild, discordLink, xOffset, -yPos, 190)
	yPos = yPos + 35

	local txtThanksHeader = frameAbout:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	txtThanksHeader:SetPoint("TOPLEFT", frameAbout.scrollChild, "TOPLEFT", xOffset, -yPos)
	txtThanksHeader:SetWidth(frameAbout.scrollFrame:GetWidth() - 2)
	txtThanksHeader:SetJustifyH("LEFT")
	txtThanksHeader:SetJustifyV("TOP")
	txtThanksHeader:SetSpacing(3)
	txtThanksHeader:SetText(clrHeader .. "SPECIAL THANKS")
	txtThanksHeader:SetTextColor(1, 1, 0.9)
	table.insert(frameAbout.texts, txtThanksHeader)
	yPos = yPos + txtThanksHeader:GetStringHeight() + 4

	local txtThanks = frameAbout:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	txtThanks:SetPoint("TOPLEFT", frameAbout.scrollChild, "TOPLEFT", xOffset, -yPos)
	txtThanks:SetWidth(frameAbout.scrollFrame:GetWidth() - 2)
	txtThanks:SetJustifyH("LEFT")
	txtThanks:SetJustifyV("TOP")
	txtThanks:SetSpacing(3)
	txtThanks:SetText(specialThanks)
	txtThanks:SetTextColor(1, 1, 0.9)
	table.insert(frameAbout.texts, txtThanks)
	yPos = yPos + txtThanks:GetStringHeight() + 15
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_About.Selected(wMain)
	if frameAbout == nil then
    	CasualTBCPrep.WM_About.Create(wMain)
	end

    CasualTBCPrep.WM_About.Load(wMain)
    CasualTBCPrep.WM_About.Show(wMain)
end
