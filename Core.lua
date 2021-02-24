local a = CreateFrame("Frame")
a:RegisterEvent("PLAYER_ENTERING_WORLD")
a:SetScript("OnEvent", function(self)

    local statusBarTexture = [[Interface\AddOns\Kris3XIQUI\Media\Textures\NormTex2]]
    m="MainMenuBarArtFrame";_G[m.."Background"]:Hide();_G[m].PageNumber:Hide();_G[m].LeftEndCap:Hide();_G[m].RightEndCap:Hide();ActionButton1:ClearAllPoints() ActionButton1:SetPoint('BOTTOM',_G[m.."Background"],-231,35)
    m="MultiBarBottomRight" _G[m.."Button7"]:SetPoint("BOTTOMLEFT",_G[m.."Button1"],"TOPLEFT",0,4) UIPARENT_MANAGED_FRAME_POSITIONS[m].xOffset=6; MainMenuBar.GetYOffset=function() return -30 end UIParent_ManageFramePositions()
    m="MultiBarBottomLeft" _G[m.."Button1"]:SetPoint("BOTTOMLEFT","ActionButton1","TOPLEFT",-20,10) UIPARENT_MANAGED_FRAME_POSITIONS[m].xOffset=6; MainMenuBar.GetYOffset=function() return -30 end UIParent_ManageFramePositions()

    --remove keybinds
    --   for i = 1, 12 do _G["ActionButton"..i.."HotKey"]:SetAlpha(0) end
    --   for i = 1, 12 do _G["MultiBarBottomLeftButton"..i.."HotKey"]:SetAlpha(0) end

    -- resize bars
    --for i = 1, 12 do _G["ActionButton"..i]:SetScale(1.0) end

    GameTooltipStatusBarTexture:SetTexture(statusBarTexture)
    --------------------------
    -- BuffFrames
    --------------------------
    BuffFrame:SetScale(2)

    --------------------------
    -- CastBar
    --------------------------
    -- Set Cast Bar Scale / Position
    CastingBarFrame:ClearAllPoints()
    CastingBarFrame:SetPoint("CENTER",UIParent,"CENTER", -7,-238)
    CastingBarFrame.SetPoint = function() end
    CastingBarFrame:SetScale(1.5)

    -- Friendly Nameplates
    C_NamePlate.SetNamePlateFriendlySize(100, 30)

    --------------------------
    -- PlayerFrame
    --------------------------
    -- Player frame setup
    PlayerFrame:ClearAllPoints()
    PlayerFrame:SetPoint("RIGHT", UIParent, "CENTER", -365, 50)
    PlayerFrame:SetUserPlaced(true);
    PlayerFrame:SetScale(1.3)

    --------------------------
    -- TargetFrame
    --------------------------
    -- Target frame setup
    TargetFrame:ClearAllPoints()
    TargetFrame:SetPoint("RIGHT", UIParent, "CENTER", -140, 50)
    TargetFrame:SetUserPlaced(true);
    TargetFrame:SetScale(1.3)
    TargetFrameSpellBar:SetScale(1.25)

    --------------------------
    -- FocusFrame
    --------------------------
    -- Focus frame setup
    FocusFrame:SetScale(1.4);
    FocusFrameSpellBar:ClearAllPoints()
    FocusFrameSpellBar:SetPoint("TOP", FocusFrame, "TOP", 0,10)
    FocusFrameSpellBar.SetPoint = function() end
    FocusFrameSpellBar:SetScale(1.4)
    FocusFrameToT:SetScale(1.2)
    FocusFrameToT:SetPoint("CENTER",FocusFrame,"RIGHT",-50,-30)

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
