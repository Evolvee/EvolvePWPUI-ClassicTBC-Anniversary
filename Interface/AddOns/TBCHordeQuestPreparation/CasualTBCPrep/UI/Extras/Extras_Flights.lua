CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.Extras_Flights = CasualTBCPrep.Extras_Flights or {}

local content, texts = {},{}
local routeCleanup = {}
local selectedRouteID = nil

---@param routeCode string
---@param hasUnlockedAll boolean
---@param taxiList any
---@param missingCount number
---@param parent Frame
---@param txtFlightHeader FontString
local function SelectRoute(routeCode, hasUnlockedAll, taxiList, missingCount, parent, txtFlightHeader)
    if selectedRouteID == routeCode or not parent or not txtFlightHeader then return end
    if #routeCleanup > 0 then
        for _, fontString in ipairs(routeCleanup) do
            fontString:Hide()
            fontString:SetText("")
            fontString:SetSize(0, 0)
            fontString:SetParent(nil)
        end
    end

    txtFlightHeader:SetText(routeCode.." Flight Paths")
    local yPos = -10
    local yPosDiff = -5
    local nextParent = txtFlightHeader

    for _, taxi in ipairs(taxiList) do
        local txtTaxi = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        txtTaxi:SetPoint("TOP", nextParent, "BOTTOM", 0, yPos)
        local taxiText = ""
        if taxi.discovered == true then
            taxiText = CasualTBCPrep.Themes.SelectedTheme.colors.questReady.hex..taxi.name.."|r"
            CasualTBCPrep.UI.HookTooltip(txtTaxi, taxiText, { "You have this flightpath" }, nil,nil,nil)
        else
            taxiText = CasualTBCPrep.Themes.SelectedTheme.colors.questCompleted.hex..taxi.name.."|r"
            CasualTBCPrep.UI.HookTooltip(txtTaxi, taxiText, { "You need to unlock this flightpath" }, nil,nil,nil)
        end
        txtTaxi:SetText(taxiText)
        table.insert(routeCleanup, txtTaxi)
        nextParent = txtTaxi
        yPos = yPosDiff
    end

    selectedRouteID = routeCode
end

---@param frame Frame
function CasualTBCPrep.Extras_Flights.Clean(frame)
    if not frame then return end

    if #texts > 0 then
        for _, fontString in ipairs(texts) do
            fontString:Hide()
            fontString:SetText("")
            fontString:SetSize(0, 0)
            fontString:SetParent(nil)
        end
    end

    if #content > 0 then
        for _, c in ipairs(content) do
            c:Hide()
            c:SetSize(0, 0)
            c:SetParent(nil)
        end
    end

    if #routeCleanup > 0 then
        for _, c in ipairs(routeCleanup) do
            c:Hide()
            c:SetSize(0, 0)
            c:SetParent(nil)
        end
    end

    content = {}
    texts = {}
    routeCleanup = {}
end

---@param frame Frame
function CasualTBCPrep.Extras_Flights.Load(frame)
    if not frame then return end

    CasualTBCPrep.Extras_Flights.Clean(frame)
    selectedRouteID = nil
	local parent = frame.scrollChild
	local yPos = 1

	local txtFlightHeader = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	txtFlightHeader:SetPoint("TOP", parent, "TOP", 0, -105)
	txtFlightHeader:SetText("Flight Paths")
	table.insert(texts, txtFlightHeader)

	local parentW = parent:GetWidth()
	local availableWidth = parentW
	local columnWidth = availableWidth / 3 + 1
	local columnHeight = 100
	local bottomHeight = 337

	local x1 = (columnWidth * 0) - 1
	local x2 = (columnWidth * 1) - 1
	local x3 = (columnWidth * 2) - 1

	local dR,dG,dB,dA = 1,1,1,0.05 -- Uneven background
	local dR2,dG2,dB2,dA2 = 1,1,1,0.08 -- Even background
	local dRh,dGh,dBh,dAh = 0.5,1,1,0.1 -- Hover background

	local bgBox1 = parent:CreateTexture(nil, "BACKGROUND")
	bgBox1:SetColorTexture(dR,dG,dB,dA)
	bgBox1:SetPoint("TOPLEFT", parent, "TOPLEFT", x1, yPos)
	bgBox1:SetSize(columnWidth, columnHeight)
	bgBox1:SetVertTile(true)
	bgBox1:SetScript("OnEnter", function(self) self:SetColorTexture(dRh,dGh,dBh,dAh) end)
	bgBox1:SetScript("OnLeave", function(self) self:SetColorTexture(dR,dG,dB,dA) end)

	local bgBox2 = parent:CreateTexture(nil, "BACKGROUND")
	bgBox2:SetColorTexture(dR2,dG2,dB2,dA2)
	bgBox2:SetPoint("TOPLEFT", parent, "TOPLEFT", x2, yPos)
	bgBox2:SetSize(columnWidth, columnHeight)
	bgBox2:SetVertTile(true)
	bgBox2:SetScript("OnEnter", function(self) self:SetColorTexture(dRh,dGh,dBh,dAh) end)
	bgBox2:SetScript("OnLeave", function(self) self:SetColorTexture(dR2,dG2,dB2,dA2) end)

	local bgBox3 = parent:CreateTexture(nil, "BACKGROUND")
	bgBox3:SetColorTexture(dR,dG,dB,dA)
	bgBox3:SetPoint("TOPLEFT", parent, "TOPLEFT", x3, yPos)
	bgBox3:SetSize(columnWidth, columnHeight)
	bgBox3:SetVertTile(true)
	bgBox3:SetScript("OnEnter", function(self) self:SetColorTexture(dRh,dGh,dBh,dAh) end)
	bgBox3:SetScript("OnLeave", function(self) self:SetColorTexture(dR,dG,dB,dA) end)

	local bgBox4 = parent:CreateTexture(nil, "BACKGROUND")
	bgBox4:SetColorTexture(0.45,0.4,0.65,0.15)
	bgBox4:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, yPos - columnHeight)
	bgBox4:SetSize(parentW, bottomHeight)
	bgBox4:SetVertTile(true)

	yPos = yPos - 5
	local txtRouteHeader1 = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	txtRouteHeader1:SetPoint("TOPLEFT", parent, "TOPLEFT", x1, yPos)
	txtRouteHeader1:SetWidth(columnWidth)
	txtRouteHeader1:SetJustifyH("CENTER")
	txtRouteHeader1:SetText(CasualTBCPrep.Routing.RouteCodeSolo)

	local txtRouteHeader2 = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	txtRouteHeader2:SetPoint("TOPLEFT", parent, "TOPLEFT", x2, yPos)
	txtRouteHeader2:SetWidth(columnWidth)
	txtRouteHeader2:SetJustifyH("CENTER")
	txtRouteHeader2:SetText(CasualTBCPrep.Routing.RouteCodeMain)

	local txtRouteHeader3 = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	txtRouteHeader3:SetPoint("TOPLEFT", parent, "TOPLEFT", x3, yPos)
	txtRouteHeader3:SetWidth(columnWidth)
	txtRouteHeader3:SetJustifyH("CENTER")
	txtRouteHeader3:SetText(CasualTBCPrep.Routing.RouteCodeStrat)

	table.insert(content, bgBox1)
	table.insert(content, bgBox2)
	table.insert(content, bgBox3)
	table.insert(content, bgBox4)
	table.insert(texts, txtRouteHeader1)
	table.insert(texts, txtRouteHeader2)
	table.insert(texts, txtRouteHeader3)

	-- Now data
	local yPos = -10
	local soloHasUnlockedAll, soloTaxiList, soloMissingCount = CasualTBCPrep.Flights.GetPlayerFlightPathState(CasualTBCPrep.Routing.RouteCodeSolo)
	local mainHasUnlockedAll, mainTaxiList, mainMissingCount = CasualTBCPrep.Flights.GetPlayerFlightPathState(CasualTBCPrep.Routing.RouteCodeMain)
	local stratHasUnlockedAll, stratTaxiList, stratMissingCount = CasualTBCPrep.Flights.GetPlayerFlightPathState(CasualTBCPrep.Routing.RouteCodeStrat)

    local soloMissingText = "Missing "..tostring(soloMissingCount).." flightpath"..(soloMissingCount == 1 and "" or "s").."\r\rClick for details"
    local mainMissingText = "Missing "..tostring(mainMissingCount).." flightpath"..(soloMissingCount == 1 and "" or "s").."\r\rClick for details"
    local stratMissingText = "Missing "..tostring(stratMissingCount).." flightpath"..(soloMissingCount == 1 and "" or "s").."\r\rClick for details"

    if not soloHasUnlockedAll and soloMissingCount == 0 then
        soloMissingText = "No Data\r\rYou must talk to flightmasters first"
    end
    if not mainHasUnlockedAll and mainMissingCount == 0 then
        mainMissingText = "No Data\r\rYou must talk to flightmasters first"
    end
    if not stratHasUnlockedAll and stratMissingCount == 0 then
        stratMissingText = "No Data\r\rYou must talk to flightmasters first"
    end

	local txtSoloDone = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	txtSoloDone:SetPoint("TOP", txtRouteHeader1, "BOTTOM", 0, yPos)
	txtSoloDone:SetWidth(columnWidth)
	txtSoloDone:SetJustifyH("CENTER")

	table.insert(texts, txtSoloDone)
	local txtMainDone = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	txtMainDone:SetPoint("TOP", txtRouteHeader2, "BOTTOM", 0, yPos)
	txtMainDone:SetWidth(columnWidth)
	txtMainDone:SetJustifyH("CENTER")
	table.insert(texts, txtMainDone)

	local txtStratDone = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	txtStratDone:SetPoint("TOP", txtRouteHeader3, "BOTTOM", 0, yPos)
	txtStratDone:SetWidth(columnWidth)
	txtStratDone:SetJustifyH("CENTER")
	table.insert(texts, txtStratDone)

	local happyClr = { r=0.1,g=0.75,b=0.1,a=1 }
	local sadClr = { r=0.85,g=0.15,b=0.15,a=1 }
	if soloHasUnlockedAll == true then
		txtSoloDone:SetText("All flights unlocked")
		txtSoloDone:SetTextColor(happyClr.r,happyClr.g,happyClr.b,happyClr.a)
	else
		txtSoloDone:SetText(soloMissingText)
		txtSoloDone:SetTextColor(sadClr.r,sadClr.g,sadClr.b,sadClr.a)
	end
	if mainHasUnlockedAll == true then
		txtMainDone:SetText("All flights unlocked")
		txtMainDone:SetTextColor(happyClr.r,happyClr.g,happyClr.b,happyClr.a)
	else
		txtMainDone:SetText(mainMissingText)
		txtMainDone:SetTextColor(sadClr.r,sadClr.g,sadClr.b,sadClr.a)
	end
	if stratHasUnlockedAll == true then
		txtStratDone:SetText("All flights unlocked")
		txtStratDone:SetTextColor(happyClr.r,happyClr.g,happyClr.b,happyClr.a)
	else
		txtStratDone:SetText(stratMissingText)
		txtStratDone:SetTextColor(sadClr.r,sadClr.g,sadClr.b,sadClr.a)
	end

    bgBox1:SetScript("OnMouseUp", function(self, btn)
        if "LeftButton" == btn then
            SelectRoute(CasualTBCPrep.Routing.RouteCodeSolo, soloHasUnlockedAll, soloTaxiList, soloMissingCount, frame, txtFlightHeader)
        end
    end)
    bgBox2:SetScript("OnMouseUp", function(self, btn)
        if "LeftButton" == btn then
            SelectRoute(CasualTBCPrep.Routing.RouteCodeMain, mainHasUnlockedAll, mainTaxiList, mainMissingCount, frame, txtFlightHeader)
        end
    end)
    bgBox3:SetScript("OnMouseUp", function(self, btn)
        if "LeftButton" == btn then
            SelectRoute(CasualTBCPrep.Routing.RouteCodeStrat, stratHasUnlockedAll, stratTaxiList, stratMissingCount, frame, txtFlightHeader)
        end
    end)
end