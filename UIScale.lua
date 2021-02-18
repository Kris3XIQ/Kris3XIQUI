-- Kris3XIQ UIScale
-- v1.0.0

local f = CreateFrame("Frame", nil, UIParent)
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function(self, event)
    UIScale = 0.53
    UIParent:SetScale(UIScale)
    f:UnregisterAllEvents()
end)

DEFAULT_CHAT_FRAME:AddMessage("|cffFF7D0AKris3XIQ: |r|cFF33FF22UIscale loaded successfully, set to 0.53|r")
