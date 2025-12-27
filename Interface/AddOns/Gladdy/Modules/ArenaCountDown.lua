local str_find, pairs, math_floor = string.find, pairs, math.floor
local CreateFrame = CreateFrame

local Gladdy = LibStub("Gladdy")
local L = Gladdy.L
local ACDFrame = Gladdy:NewModule("Arena Countdown", nil, {
    countdown = true,
    arenaCountdownSize = 256,
    arenaCountdownFrameStrata = "HIGH",
    arenaCountdownFrameLevel = 50,
})

function ACDFrame:OnEvent(event, ...)
    self[event](self, ...)
end

function ACDFrame:HideAll()
    if self.ACDAnchorFrame then self.ACDAnchorFrame:Hide() end
    if self.animGroup then self.animGroup:Stop() end
end

function ACDFrame:Initialize()
    self.locale = Gladdy:GetArenaTimer()
    self.countdown = -1
    self.texturePath = "Interface\\AddOns\\TextureScript\\Gladdy\\Countdown\\";

    local ACDAnchorFrame = CreateFrame("Frame", "ACDAnchorFrame", UIParent)
    self.ACDAnchorFrame = ACDAnchorFrame
    self.ACDAnchorFrame:SetSize(1, 1)
    self.ACDAnchorFrame:SetPoint("CENTER", 0, 128)
    self.ACDAnchorFrame:Hide()

    local ACDNumFrame = CreateFrame("Frame", "ACDNumFrame", ACDAnchorFrame)
    self.ACDNumFrame = ACDNumFrame
    self.ACDNumFrame:SetPoint("CENTER", 0, 0) 
    self.ACDNumFrame:SetSize(Gladdy.db.arenaCountdownSize, Gladdy.db.arenaCountdownSize)
    self.ACDNumFrame:EnableMouse(false)

    local ag = ACDNumFrame:CreateAnimationGroup()
    local scale = ag:CreateAnimation("Scale")
    scale:SetScale(3, 3) 
    scale:SetDuration(0.6)
    scale:SetSmoothing("OUT") 
    scale:SetOrigin("CENTER", 0, 0)

    local alpha = ag:CreateAnimation("Alpha")
    alpha:SetFromAlpha(0)
    alpha:SetToAlpha(1)
    alpha:SetDuration(0.6)
    
    -- Keep number visible after animation ends
    ag:SetScript("OnFinished", function()
        ACDNumFrame:SetAlpha(1)
        -- Set the final scale explicitly so it doesn't "snap" back to 0.4
        ACDNumFrame:SetScale(1.2) 
    end)

    self.animGroup = ag

    self.ACDNumTens = ACDNumFrame:CreateTexture(nil, "OVERLAY")
    self.ACDNumOnes = ACDNumFrame:CreateTexture(nil, "OVERLAY")
    self.ACDNumOne = ACDNumFrame:CreateTexture(nil, "OVERLAY")

    self:UpdateFrameOnce()

    if Gladdy.db.countdown then
        self:RegisterMessage("JOINED_ARENA")
        self:RegisterMessage("ENEMY_SPOTTED")
        self:RegisterMessage("UNIT_SPEC")
    end
    self.faction = UnitFactionGroup("player")
    self:SetScript("OnEvent", ACDFrame.OnEvent)
end

function ACDFrame:UpdateFrameOnce()
    if not self.ACDAnchorFrame then return end
    
    self.ACDAnchorFrame:SetFrameStrata(Gladdy.db.arenaCountdownFrameStrata)
    self.ACDAnchorFrame:SetFrameLevel(Gladdy.db.arenaCountdownFrameLevel)
    self.ACDAnchorFrame:SetPoint("CENTER", 0, 128)

    local size = Gladdy.db.arenaCountdownSize
    self.ACDNumFrame:SetSize(size, size)
    self.ACDNumTens:SetSize(size, size)
    self.ACDNumOnes:SetSize(size, size)
    self.ACDNumOne:SetSize(size, size)

    local offset = (size/8 + size/8/2)
    self.ACDNumTens:SetPoint("CENTER", self.ACDNumFrame, "CENTER", -offset, 0)
    self.ACDNumOnes:SetPoint("CENTER", self.ACDNumFrame, "CENTER", offset, 0)
    self.ACDNumOne:SetPoint("CENTER", self.ACDNumFrame, "CENTER", 0, 0)
end

function ACDFrame:CreateTicker(countdown)
    self.countdown = countdown
    if self.ticker and not self.ticker:IsCancelled() then
        self.ticker:Cancel()
    end
    self.ticker = C_Timer.NewTicker(1, ACDFrame.Ticker)
end

function ACDFrame.Ticker()
    local self = ACDFrame
    if (Gladdy.db.countdown) then
        self.ACDAnchorFrame:Show()
        
        if self.animGroup then
            self.animGroup:Stop()
        end

        if (self.countdown and self.countdown >= 10 and self.countdown <= 60) then
            local ones = self.countdown % 10
            local tens = math_floor(self.countdown / 10) % 10
            self.ACDNumOne:Hide()
            self.ACDNumTens:Show()
            self.ACDNumOnes:Show()
            self.ACDNumTens:SetTexture(self.texturePath .. tens)
            self.ACDNumOnes:SetTexture(self.texturePath .. ones)
            
            self.ACDNumFrame:SetScale(0.7)
            self.ACDNumFrame:SetAlpha(1) 
            
        elseif (self.countdown and self.countdown < 10 and self.countdown > 0) then
            PlaySoundFile("Interface\\AddOns\\TextureScript\\Gladdy\\Countdown.ogg", "Master")
            
            self.ACDNumOne:Show()
            self.ACDNumOne:SetTexture(self.texturePath .. self.countdown)
            self.ACDNumOnes:Hide()
            self.ACDNumTens:Hide()
            
            -- Starting state for animation
            self.ACDNumFrame:SetAlpha(0) 
            self.ACDNumFrame:SetScale(0.4) 

            if self.animGroup then
                self.animGroup:Play()
            end
        else
            self:HideAll()
            if (self.ticker) then
                self.ticker:Cancel()
            end
            return
        end

        self.countdown = self.countdown and self.countdown - 1
    else
        self:HideAll()
    end
end

-- [The rest of the glue logic: JOINED_ARENA, Reset, ENEMY_SPOTTED, etc., remains the same]
function ACDFrame:JOINED_ARENA()
    if Gladdy.db.countdown then
        -- Reset state; do NOT start a blank ticker here
        self.countdown = nil 
        self:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL")
    end
end

function ACDFrame:Reset()
    if self.ticker and not self.ticker:IsCancelled() then self.ticker:Cancel() end
    self.countdown = nil
    self:UnregisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL")
    self:HideAll()
end

function ACDFrame:ENEMY_SPOTTED() if not Gladdy.frame.testing then self:Reset() end end
function ACDFrame:UNIT_SPEC() if not Gladdy.frame.testing then self:Reset() end end

function ACDFrame:CHAT_MSG_BG_SYSTEM_NEUTRAL(msg)
    for k, v in pairs(self.locale) do
        if str_find(msg, v) then
            -- Prevent restarting if we are already at 0
            if self.countdown and self.countdown == 0 then return end
            
            self.countdown = k
            
            -- 1. Start/Restart the ticker with the new time
            self:CreateTicker(self.countdown)
            
            -- 2. IMMEDIATE UPDATE: Force the Ticker to run once right now
            -- This removes the 1-second delay of waiting for the first tick.
            ACDFrame.Ticker() 
        end
    end
end

function ACDFrame:TestOnce() self:CreateTicker(15) end

function ACDFrame:GetOptions()
    return {
        headerArenaCountdown = { type = "header", name = L["Arena Countdown"], order = 2 },
        countdown = Gladdy:option({ type = "toggle", name = L["Enabled"], order = 3, width = "full" }),
        arenaCountdownSize = Gladdy:option({
            type = "range", name = L["Size"], order = 4, min = 64, max = 512, step = 16, width = "full",
            disabled = function() return not Gladdy.db.countdown end,
        }),
        headerAuraLevel = { type = "header", name = L["Frame Strata and Level"], order = 5 },
        arenaCountdownFrameStrata = Gladdy:option({
            type = "select", name = L["Frame Strata"], order = 6, values = Gladdy.frameStrata, sorting = Gladdy.frameStrataSorting,
            disabled = function() return not Gladdy.db.countdown end,
        }),
        arenaCountdownFrameLevel = Gladdy:option({
            type = "range", name = L["Frame Level"], min = 0, max = 500, step = 1, order = 7, width = "full",
            disabled = function() return not Gladdy.db.countdown end,
        }),
    }
end