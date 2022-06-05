--Just a function to reduce redundant code
    local function RemoveActionbarBorders()
        --remove borders at action buttons
        for slotNum = 3, 9 do
            local button = ZO_ActionBar_GetButton(slotNum).button
            button:SetNormalTexture("")
            button:SetPressedTexture("")
            button:SetDisabledTexture("")
        end
        --Remove the border texturs now until next ReloadUI or zone change
        RedirectTexture("/esoui/art/actionbar/ability_ultimate_framedecobg.dds", "")
        RedirectTexture("/esoui/art/actionbar/abilityinset.dds", "")
        RedirectTexture("/esoui/art/actionbar/abilityframe64_up.dds", "")
    end
     
    --Callback function for the player activated event (upon zone change or logging in new)
    local function Callback_Player_Activated(...)
        RemoveActionbarBorders()
    end
     
    --Put this somewhere where your addon gets initialized, e.g. inside callback function of EVENT_ADDON_ON_LOAD or just at the bottom of your addon
    --Register for the zone change/player ready event
    EVENT_MANAGER:RegisterForEvent("NoActionbarBorders", EVENT_PLAYER_ACTIVATED, Callback_Player_Activated)
     
    --Callback function for the addon loaded event (executes for EVERY addon that loads!)
    local function Addon_Loaded(eventCode, addOnName)
    --Is THIS addon HERE found?
        if(addOnName ~= "NoActionbarBorders") then
            return
        end
        --If you got here your addon is found so execute the following code lines:
        --Unregister this event again so it isn't fired again after this addon has beend loaded
        EVENT_MANAGER:UnregisterForEvent("NoActionbarBorders", EVENT_ADD_ON_LOADED)
        --Register for the zone change/player ready event
        EVENT_MANAGER:RegisterForEvent("NoActionbarBorders", EVENT_PLAYER_ACTIVATED, Callback_Player_Activated)
    end
     
    --Register the event ADD_ON_LOADED to get started with your addon. As this event will be called for EVERY addon you need to
    --check your addon#s name inside the cllback function so it won't execute your code for EVERY addon!
    EVENT_MANAGER:RegisterForEvent("NoActionbarBorders", EVENT_ADD_ON_LOADED, Addon_Loaded)