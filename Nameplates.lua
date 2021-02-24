-- Kris3XIQ NamePlates
-- v1.0.0

--------------------------
-- SetCVar
--------------------------
local CVarSetter = CreateFrame("Frame")
CVarSetter:RegisterEvent("VARIABLES_LOADED")
CVarSetter:SetScript("OnEvent", function(_, event)
    SetCVar("nameplateGlobalScale", 1.5)
    SetCVar("nameplateLargerScale", 1)
    SetCVar("NamePlateHorizontalScale", 1)
    SetCVar("NamePlateVerticalScale", 1.5)
    SetCVar("NamePlatePersonalShowWithTarget", 1)
end)

--------------------------
-- Variables
--------------------------
local healthBarTexture = [[Interface\AddOns\Kris3XIQUI\Media\Textures\NormTex2]]

local n = CreateFrame("Frame")
n:RegisterEvent("NAME_PLATE_CREATED")
n:SetScript("OnEvent", function(n, event, ...)
    if event == "NAME_PLATE_CREATED" then
        hooksecurefunc("DefaultCompactNamePlateFrameSetupInternal", function(frame, setupOptions, frameOptions, ...)
            -- Health Bar
            frame.healthBar:SetStatusBarTexture(healthBarTexture)

            -- Health Bar My Heal Prediction
            frame.healthBar.myHealPrediction:SetTexture(healthBarTexture)

            -- BuffFrame Position
        end)
    end
    -- Mana Bar
    ClassNameplateManaBarFrame:SetStatusBarTexture(healthBarTexture)
    ClassNameplateManaBarFrame.ManaCostPredictionBar:SetTexture(healthBarTexture)
end)

DEFAULT_CHAT_FRAME:AddMessage("|cffFF7D0AKris3XIQ: |r|cFF33FF22Nameplates loaded successfully|r")
