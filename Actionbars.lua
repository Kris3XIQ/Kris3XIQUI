-- 3XIQUI ActionBars
-- v2.1.1 Shadowlands

local a = CreateFrame("Frame")
a:RegisterEvent("ADDON_LOADED")
a:RegisterEvent("PLAYER_TALENT_UPDATE")
a:RegisterEvent("PLAYER_TARGET_CHANGED")
a:RegisterEvent("UNIT_TARGET")
a:SetScript("OnEvent", function(self)
    -- Miscellaneous
    -- ActionBarUpButton:Hide()
    -- ActionBarDownButton:Hide()
    -- CharacterMicroButton:ClearAllPoints()
    -- CharacterMicroButton:SetPoint("BOTTOMRIGHT",UIParent,-260,0)
    -- CharacterMicroButton.SetPoint = function() end
    -- MainMenuBarArtFrame.LeftEndCap:Hide()
    -- MainMenuBarArtFrame.RightEndCap:Hide()
    -- MainMenuBarArtFrameBackground:Hide()
    -- MainMenuBarArtFrame.PageNumber:Hide()
    -- MicroButtonAndBagsBar:Hide()
    -- PetActionButton1:ClearAllPoints()
    -- StatusTrackingBarManager:Hide()
    -- MainMenuBarVehicleLeaveButton:ClearAllPoints()
    -- MainMenuBarVehicleLeaveButton:SetPoint("CENTER", UIParent, -500, -400)
    -- MainMenuBarVehicleLeaveButton.SetPoint= function() end
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

    -- Move ActionBar
    -- ActionButton1:ClearAllPoints()
    -- ActionButton1:SetPoint("CENTER",-231,22)
    -- ActionButton1.SetPoint = function() end

    -- Move MultiBarBottomLeft
    -- MultiBarBottomLeft:ClearAllPoints()
    -- MultiBarBottomLeft:SetPoint("LEFT", ActionButton1, "LEFT", 0, 47)
    -- MultiBarBottomLeft.SetPoint = function() end

    -- Move MutltiBarBottomRight and make it one bar
    -- MultiBarBottomRight:ClearAllPoints()
    -- MultiBarBottomRight:SetPoint("LEFT", MultiBarBottomLeft, "LEFT", 0, 47)
    -- MultiBarBottomRight.SetPoint = function() end
    -- MultiBarBottomRightButton1:ClearAllPoints() 
    -- MultiBarBottomRightButton1:SetPoint("LEFT", MultiBarBottomLeft, "LEFT", -38, 52)      
    -- MultiBarBottomRightButton1.SetPoint = function() end
    -- MultiBarBottomRightButton7:ClearAllPoints() 
    -- MultiBarBottomRightButton7:SetPoint("LEFT", MultiBarBottomRightButton6, "LEFT", 42, 0)      
    -- MultiBarBottomRightButton7.SetPoint = function() end

    -- Move MultiBarLeft & Right
    -- MultiBarLeftButton1:ClearAllPoints()
    -- MultiBarLeftButton1:SetPoint("CENTER", UIParent,"RIGHT",-60,200)
    -- MultiBarLeftButton1.SetPoint = function() end
    -- MultiBarRightButton1:ClearAllPoints()
    -- MultiBarRightButton1:SetPoint("CENTER", UIParent,"RIGHT",-20,200)
    -- MultiBarRightButton1.SetPoint = function() end

    -- Move StanceBar
    -- StanceBarFrame:SetMovable(true)
    -- StanceBarFrame:SetUserPlaced(true)
    -- StanceBarFrame:ClearAllPoints()
    -- StanceBarFrame:SetPoint("BOTTOM", CharacterMicroButton, "TOP",-7,170)
    -- StanceBarFrame:Hide()

    -- Move PetBar
    -- MainMenuBar:EnableMouse(false) -- To override MainMenuBar that is otherwise sharing the petbar space
    -- PetActionButton1:ClearAllPoints()
    -- PetActionButton1:SetPoint("BOTTOM", UIParent, -172, 10)
    -- PetActionButton1.SetPoint = function() end

    -- Hide Blizzard Art
    -- MainMenuBarArtFrame.LeftEndCap:Hide()
    -- MainMenuBarArtFrame.RightEndCap:Hide()
    -- MainMenuBarArtFrameBackground:Hide()
    -- MainMenuBarArtFrame.PageNumber:Hide()
    -- StatusTrackingBarManager:Show()
    -- StatusTrackingBarManager:Hide()

    -- Extra Action Button
    -- ExtraActionButton1:ClearAllPoints()
    -- ExtraActionButton1:SetPoint("BOTTOM", UIParent, 0, 230)
    -- ExtraActionButton1:SetScale(1.2)
    -- ExtraActionButton1.SetPoint = function() end

    -- Zone Ability
    -- ZoneAbilityFrame:ClearAllPoints()
    -- ZoneAbilityFrame:SetPoint("CENTER",UIParent,0,-300)
    -- ZoneAbilityFrame.SetPoint = function() end

    -- Rescaling actionbuttons
    -- for i = 1, 12 do _G["ActionButton"..i]:SetScale(1.4) end
    -- for i = 1, 12 do _G["MultiBarRightButton"..i]:SetScale(1.2) end
    -- for i = 1, 12 do _G["MultiBarLeftButton"..i]:SetScale(1.2) end
    -- for i = 1, 12 do _G["MultiBarBottomLeftButton"..i]:SetScale(1.4) end
    -- for i = 1, 12 do _G["MultiBarBottomRightButton"..i]:SetScale(1.4) end
    for i = 5, 8 do _G["MultiBarBottomRightButton"..i]:SetScale(1.5) end
    -- for i = 1, 10 do _G["PetActionButton"..i]:SetScale(1.2) end

    -- Test to move name of button
    -- ActionButton2Name:ClearAllPoints()
    -- ActionButton2Name:SetPoint("CENTER", ActionButton2Icon, "CENTER", 0, -10)

    local ACTION_BARS = {
        "MultiBarBottomRightButton"
        }
    for barNum = 1, #ACTION_BARS do
        local ButtonName = ACTION_BARS[barNum]
        for i = 2,4,1 do
            local ButtonsOntoBar = ButtonName .. i
            local PreviousButton = ButtonName .. i-1
            _G[ButtonsOntoBar]:SetPoint("BOTTOMLEFT", PreviousButton, "BOTTOMRIGHT", -2, 0)
        end
        for i = 5,9,1 do
            local ButtonsOntoBar = ButtonName .. i
            local PreviousButton = ButtonName .. i-1
            _G[ButtonsOntoBar]:SetPoint("BOTTOMLEFT", PreviousButton, "BOTTOMRIGHT", 0, 0)
        end
        for i = 10,12,1 do
            local ButtonsOntoBar = ButtonName .. i
            local PreviousButton = ButtonName .. i-1
            _G[ButtonsOntoBar]:SetPoint("BOTTOMLEFT", PreviousButton, "BOTTOMRIGHT", -2, 0)
        end
    end

    self:UnregisterAllEvents()
end)

-- Library (Shortcuts)
local Expressway = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\Expressway.ttf"
local BrutalBlack = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\BrutalType-Black.ttf"
local BrutalBold = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\BrutalType-Bold.ttf"
local BrutalExtraBold = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\BrutalType-ExtraBold.ttf"
local BrutalLight = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\BrutalType-Light.ttf"
local BrutalMedium = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\BrutalType-Medium.ttf"
local BrutalRegular = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\BrutalType-Regular.ttf"
local BrutalThin = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\BrutalType-Thin.ttf"
local OpenSansCondensedBold = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\OpenSansCondensed-Bold.ttf"
local PTSansNarrow = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\PTSansNarrow.ttf"
local RobotoBold = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\Roboto-Bold.ttf"
local RobotoMedium = "Interface\\AddOns\\3XIQUI\\Media\\Fonts\\Roboto-Medium.ttf"
-- ActionBarFont
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("UPDATE_BINDINGS")
f:SetScript("OnEvent", function(self)
    function updateHotKeyText()
        local ActionBars = {'Action','MultiBarBottomLeft','MultiBarBottomRight','MultiBarRight','MultiBarLeft'}
        local DefaultFont, DefaultFontSize, DefaultFontOutline = Expressway, 14, "OUTLINE"
        -- local DefaultFont, DefaultFontSize, DefaultFontOutline = "Interface\\AddOns\\Kris3XIQUI\\Media\\Fonts\\OpenSansCondensed-Bold.ttf", 14, "OUTLINE"
        for _, barName in pairs(ActionBars) do
            for i = 1, 12 do
                local button = _G[barName .. 'Button' .. i]
                local hotkey = button['HotKey']
                local text = hotkey:GetText()
                hotkey:SetFont(DefaultFont, DefaultFontSize, DefaultFontOutline)
                local macro = button['Name']
                local macroText = macro:GetText()
                macro:SetFont(DefaultFont, DefaultFontSize, DefaultFontOutline)
                
            end
        end
    end

    updateHotKeyText()
end)

DEFAULT_CHAT_FRAME:AddMessage("|cffFF7D0A3XIQUI: |r|cFF33FF22ActionBars loaded successfully|r")