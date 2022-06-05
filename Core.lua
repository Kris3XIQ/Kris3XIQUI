local a = CreateFrame("Frame")
a:RegisterEvent("PLAYER_ENTERING_WORLD")
a:SetScript("OnEvent", function(self)
    local statusBarTexture = [[Interface\AddOns\3XIQUI\Media\Textures\NormTex2]]

    -- Miscellaneous
    BuffFrame:SetScale(2)
    GameTooltipStatusBarTexture:SetTexture(statusBarTexture)
    C_NamePlate.SetNamePlateFriendlySize(100, 30)
    --remove keybinds
    --   for i = 1, 12 do _G["ActionButton"..i.."HotKey"]:SetAlpha(0) end
    --   for i = 1, 12 do _G["MultiBarBottomLeftButton"..i.."HotKey"]:SetAlpha(0) end

    -- Player frame setup
    PlayerFrame:ClearAllPoints()
    PlayerFrame:SetPoint("RIGHT", UIParent, "CENTER", -500, 200)
    PlayerFrame:SetUserPlaced(true);
    PlayerFrame:SetScale(1.3)
    PlayerFrame.SetPoint = function() end
    PlayerPowerBarAlt:ClearAllPoints()
    PlayerPowerBarAlt:SetMovable(true)
    PlayerPowerBarAlt:SetUserPlaced(true)
    PlayerPowerBarAlt:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 250)
    PlayerPowerBarAlt.SetPoint = function() end

    -- Target frame setup
    TargetFrame:ClearAllPoints()
    TargetFrame:SetPoint("RIGHT", UIParent, "CENTER", -275, 200)
    TargetFrame:SetUserPlaced(true);
    TargetFrame:SetScale(1.3)
    TargetFrameSpellBar:SetScale(1.25)

    -- Set Cast Bar Scale / Position
    CastingBarFrame:ClearAllPoints()
    CastingBarFrame:SetPoint("CENTER", UIParent, "CENTER", 0, -350)
    CastingBarFrame.SetPoint = function() end
    CastingBarFrame:SetHeight(14)
    CastingBarFrame:SetWidth(282)
    CastingBarFrame:SetStatusBarColor(1,1,1)
    CastingBarFrame.SetStatusBarColor = function() end
    CastingBarFrame.Border:SetScale(1.5)
    CastingBarFrame.Text:ClearAllPoints()
    CastingBarFrame.Text:SetScale(1.2)
    CastingBarFrame.Text:SetPoint("TOP", CastingBarFrame, "TOP", 0, 3)
    CastingBarFrame.Flash:SetScale(1.5)

    -- Focus frame setup
    FocusFrame:SetScale(1.4);
    FocusFrameSpellBar:ClearAllPoints()
    FocusFrameSpellBar:SetPoint("TOP", FocusFrame, "TOP", 0,10)
    FocusFrameSpellBar.SetPoint = function() end
    FocusFrameSpellBar:SetScale(1.4)
    FocusFrameToT:SetScale(1.2)
    FocusFrameToT:SetPoint("CENTER",FocusFrame,"RIGHT",-50,-30)
    FocusFrameToT.SetPoint = function() end

    -- Raid/Party Frame Setup
    CompactUnitFrameProfilesGeneralOptionsFrameWidthSlider:SetMinMaxValues(72, 500)
    CompactUnitFrameProfilesGeneralOptionsFrameHeightSlider:SetMinMaxValues(36, 250)
    -- PartyMemberFrame1:ClearAllPoints()
    -- PartyMemberFrame1:SetPoint("CENTER",50,50)

    -- Arena 1 / 2 / 3 above nameplates
    local U=UnitIsUnit hooksecurefunc("CompactUnitFrame_UpdateName",function(F)if IsActiveBattlefieldArena()and F.unit:find("nameplate")then for i=1,5 do if U(F.unit,"arena"..i)then F.name:SetText(i)F.name:SetTextColor(1,1,0)break end end end end)

    -- Move Tooltip
    function GameTooltip_SetDefaultAnchor(tooltip,parent)
        tooltip:SetOwner(parent,"ANCHOR_NONE")
        -- tooltip:SetPoint("BOTTOMRIGHT","UIParent","BOTTOMRIGHT",-100,230)
        tooltip:SetPoint("BOTTOMRIGHT","UIParent","BOTTOMRIGHT",-150,275)
        tooltip.default=1
    end

    -- Move Objective Tracker
    ObjectiveTrackerFrame:SetMovable(true)
    ObjectiveTrackerFrame:SetUserPlaced(true)
    ObjectiveTrackerFrame:ClearAllPoints()
    ObjectiveTrackerFrame:SetHeight(500)
    ObjectiveTrackerFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -150,-300)

    self:UnregisterAllEvents()
end)

DEFAULT_CHAT_FRAME:AddMessage("|cffFF7D0AKris3XIQ: |r|cFF33FF22Core loaded successfully|r")
