-- 3XIQUI NamePlates
-- v2.1.1 Shadowlands

--------------------------
-- SetCVar
--------------------------
local CVarSetter = CreateFrame("Frame")
CVarSetter:RegisterEvent("VARIABLES_LOADED")
CVarSetter:SetScript("OnEvent", function(_, event)
    SetCVar("nameplateGlobalScale", 1)
    -- SetCVar("nameplateLargerScale", 0)
    -- SetCVar("NamePlateHorizontalScale", 1)
    --SetCVar("NamePlateVerticalScale", 1.5)
    SetCVar("nameplateSelectedScale", 1.1)
    SetCVar("NamePlatePersonalShowWithTarget", 1)
    SetCVar("NameplateOverlapV", 0.4)
end)

--------------------------
-- Variables
--------------------------
-- Library (Shortcuts)
-- Fonts
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
-- Textures
local healthBarTexture = [[Interface\AddOns\3XIQUI\Media\Textures\NormTex2]]

local n = CreateFrame("Frame")
n:RegisterEvent("NAME_PLATE_CREATED")
n:SetScript("OnEvent", function(n, event, ...)
    
    local DefaultFont, DefaultFontSize, DefaultFontOutline = OpenSansCondensedBold, 8, "OUTLINE"
    
    if event == "NAME_PLATE_CREATED" then
        hooksecurefunc("DefaultCompactNamePlateFrameSetupInternal", function(frame, setupOptions, frameOptions, ...)
            -- Health Bar
            frame.healthBar:SetStatusBarTexture(healthBarTexture)

            -- Health Bar My Heal Prediction
            frame.healthBar.myHealPrediction:SetTexture(healthBarTexture)

            -- BuffFrame Position
            -- castBar´
            -- setupOptions.castBarHeight = 8
            setupOptions.castBarHeight = 16 -- Default 8
            setupOptions.castIconWidth = 20 -- Default 10
	        setupOptions.castIconHeight = 20 -- Default 10

            -- Removes the issue with having a collection of raid icons above nameplates when generated
            frame.SoftTargetFrame.Icon:Hide()
            frame.RaidTargetFrame.RaidTargetIcon:Hide()
            -- NamePlate Font
            -- frame.name:SetFont(DefaultFont, DefaultFontSize, DefaultFontOutline)

            -- NamePlate Size
            setupOptions.healthBarHeight = 8 -- 4 Default
        end)
    end
    -- Mana Bar
    ClassNameplateManaBarFrame:SetStatusBarTexture(healthBarTexture)
    ClassNameplateManaBarFrame.ManaCostPredictionBar:SetTexture(healthBarTexture)
end)

DEFAULT_CHAT_FRAME:AddMessage("|cffFF7D0A3XIQUI: |r|cFF33FF22Nameplates loaded successfully|r")

-- hooksecurefunc("DefaultCompactNamePlateFrameAnchorInternal", function(frame, setupOptions)
-- 	setupOptions.healthBarHeight = 8 -- 4 Default
-- end)