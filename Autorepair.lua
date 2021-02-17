local a = CreateFrame("Frame")
a:RegisterEvent("MERCHANT_SHOW")
a:SetScript("OnEvent", function(self)
    local fetchCopper = GetRepairAllCost();
    local repaircost = (fetchCopper / 100) / 100
    if (repaircost == 0) then
        print("|cffffd200Kris3XIQRepair|r: No repair needed");
    end
    if (repaircost > 0) then
        if (IsInGuild() and CanGuildBankRepair() ) then
            RepairAllItems(true);
            print("|cffffd200Kris3XIQRepaired items for|r: " .. repaircost .. "G");
         else
            RepairAllItems(false);
            print("|cffffd200Kris3XIQRepaired items for|r: " .. repaircost .. "G");
         end
    end    
end)
