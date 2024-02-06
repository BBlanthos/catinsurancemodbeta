local CatinsuranceCharacter = RegisterMod("CATINSURANCE CHARACTER REAL", 1)

local catinsuranceType = Isaac.GetPlayerTypeByName("Catinsurance", false) -- Exactly as in the xml. The second argument is if you want the Tainted variant.
local hairCostume = Isaac.GetCostumeIdByPath("gfx/characters/gabriel_hair.anm2") 
local stolesCostume = Isaac.GetCostumeIdByPath("gfx/characters/gabriel_stoles.anm2") 




--------------------------------------------------------------------------------------------------

function CatinsuranceCharacter:SetTearColor(player)
    if player:GetPlayerType() ~= catinsuranceType then
        return
    end

   local player.TearColor = 1,0.75,0.79,1,0,0,0
end

CatinsuranceCharacter:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, CatinsuranceCharacter.SetTearColor)