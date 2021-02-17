local f = CreateFrame("Frame", nil, UIParent)
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function(self, event)
    UIScale = 0.53
    UIParent:SetScale(UIScale)  -- change the size and reload your ui (/reloadui) or restart the game
    f:UnregisterAllEvents()
end)

DEFAULT_CHAT_FRAME:AddMessage("|cffFF7D0AKris3XIQ: |r|cFF33FF22UIscale loaded successfully, set to 0.53|r")
