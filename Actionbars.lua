-- Kris3XIQ ActionBars
-- v1.0.0

local a = CreateFrame("Frame")
a:RegisterEvent("PLAYER_ENTERING_WORLD")
a:SetScript("OnEvent", function(self)

    --------------------------
    -- Styling of ActionBars
    --------------------------
    -- Hide PageScrollingButtons
    ActionBarUpButton:Hide()
    ActionBarDownButton:Hide()

    --------------------------
    -- ExtraActionButton
    --------------------------
    -- ExtraActionButton
    ExtraActionButton1:ClearAllPoints()
    ExtraActionButton1:SetPoint("CENTER",UIParent,0,-320)
    ExtraActionButton1:SetScale(1.5)
    ExtraActionButton1.SetPoint = function() end

    --------------------------
    -- Pet Bar
    --------------------------
    -- Pet bar cleanup
    PetActionButton1:ClearAllPoints()
    PetActionButton1:SetPoint("CENTER", UIParent, "BOTTOM", -170, 150)
    for i=1, 10 do _G["PetActionButton"..i]:SetParent(PlayerFrame) end
    RegisterStateDriver(PetActionBarFrame,"visibility", "hide")

    --------------------------
    -- Miscellaneous
    --------------------------
    -- Interface
    CharacterMicroButton:ClearAllPoints()
    CharacterMicroButton:SetPoint("BOTTOMRIGHT",UIParent,-260,0)
    CharacterMicroButton.SetPoint = function() end
    MicroButtonAndBagsBar:Hide()
    -- MicroButtonAndBagsBar:Hide()
    -- CharacterMicroButton:Hide()
    -- SpellbookMicroButton:Hide()
    -- TalentMicroButton:Hide()
    -- AchievementMicroButton:Hide()
    -- QuestLogMicroButton:Hide()
    -- GuildMicroButton:Hide()
    -- LFDMicroButton:Hide()
    -- CollectionsMicroButton:Hide()
    -- EJMicroButton:Hide()
    -- MainMenuMicroButton:Hide()
    -- StoreMicroButton:SetScript("OnShow",StoreMicroButton.Hide)
    -- StoreMicroButton.Show = function() end
    -- StoreMicroButton:Hide()

    --------------------------
    -- MainMenuBar
    --------------------------
    -- ActionButton 1-12
    for i = 1, 12 do _G["ActionButton"..i]:SetScale(1.5) end

    --------------------------
    -- MultiBarBottomLeft
    --------------------------
    -- MultiBarBottomLeft
    -- MultiBarBottomLeftButton1:SetPoint("BOTTOMLEFT",ActionButton1,"TOPLEFT",-106,45)
    MultiBarBottomLeftButton1:SetPoint("BOTTOMLEFT",MultiBarBottomRightButton1,"TOPLEFT",-29,10)
    MultiBarBottomLeftButton1.SetPoint = function() end
    MultiBarBottomLeft.SetPoint = function() end
    MultiBarBottomLeft:ClearAllPoints()
    MultiBarBottomLeft:SetPoint("BOTTOM", UIParent, "BOTTOM",0,200)
    for i = 1, 12 do _G["MultiBarBottomLeftButton"..i]:SetScale(1.5) end
    -- Individual Keys for MultiBarBottomLeft
    for i = 5, 8 do _G["MultiBarBottomLeftButton"..i]:SetScale(2) end

    --------------------------
    -- MultiBarBottomRight
    --------------------------
    -- MultiBarBottomRight
    MultiBarBottomRightButton1:ClearAllPoints()
    MultiBarBottomRightButton1:SetPoint("BOTTOMLEFT",ActionButton1,"TOPLEFT",0,5)
    MultiBarBottomRightButton1.SetPoint = function() end
    MultiBarBottomRight.SetPoint = function() end
    MultiBarBottomRightButton7:ClearAllPoints()
    MultiBarBottomRightButton7:SetPoint("LEFT",MultiBarBottomRightButton6,"RIGHT",6,0)
    MultiBarBottomRightButton7.SetPoint = function() end
    for i = 1, 12 do _G["MultiBarBottomRightButton"..i]:SetScale(1.5) end

    --------------------------
    -- MultiBarLeft
    --------------------------
    MultiBarLeftButton1:ClearAllPoints()
    MultiBarLeftButton1:SetPoint("CENTER",UIParent,"RIGHT",-60,200)
    MultiBarLeftButton1.SetPoint = function() end
    MultiBarLeft.SetPoint = function() end
    for i = 1, 12 do _G["MultiBarLeftButton"..i]:SetScale(1.4) end

    --------------------------
    -- MultiBarRight
    --------------------------
    MultiBarRightButton1:ClearAllPoints()
    MultiBarRightButton1:SetPoint("CENTER",UIParent,"RIGHT",-20,200)
    MultiBarRightButton1.SetPoint = function() end
    MultiBarRight.SetPoint = function() end
    -- MultiBarRight:SetScale(1.0)
    for i = 1, 12 do _G["MultiBarRightButton"..i]:SetScale(1.4) end

    --------------------------
    -- StanceBar
    --------------------------
    -- Set Stance Bar
    StanceBarFrame:SetMovable(true)
    StanceBarFrame:SetUserPlaced(true)
    StanceBarFrame:ClearAllPoints()
    StanceBarFrame:SetPoint("BOTTOM", CharacterMicroButton, "TOP",-7,170)
    StanceBarFrame:Hide()

    --------------------------
    -- ZoneAbility
    --------------------------
    -- ZoneAbility
    ZoneAbilityFrame:ClearAllPoints()
    ZoneAbilityFrame:SetPoint("CENTER",UIParent,0,-420)
    ZoneAbilityFrame:SetScale(2.0)
    ZoneAbilityFrame.SetPoint = function() end

    self:UnregisterAllEvents()
end)

--------------------------
-- ActionBarFont
--------------------------
-- ActionBarFont
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("UPDATE_BINDINGS")
f:SetScript("OnEvent", function(self)
    function updateHotKeyText()
        local ActionBars = {'Action','MultiBarBottomLeft','MultiBarBottomRight','MultiBarRight','MultiBarLeft'}
        local DefaultFont, DefaultFontSize, DefaultFontOutline = "Interface\\AddOns\\Kris3XIQUI\\Media\\Fonts\\Expressway.ttf", 14, "OUTLINE"
        for _, barName in pairs(ActionBars) do
            for i = 1, 12 do
                local button = _G[barName .. 'Button' .. i]
                local hotkey = button['HotKey']
                local text = hotkey:GetText()
                hotkey:SetFont(DefaultFont, DefaultFontSize, DefaultFontOutline)
            end
        end
    end

    updateHotKeyText()
end)

DEFAULT_CHAT_FRAME:AddMessage("|cffFF7D0AKris3XIQ: |r|cFF33FF22ActionBars loaded successfully|r")
