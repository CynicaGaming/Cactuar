-----------------------------------
-- Area: Riverne - Site A01
--   NM: Aiatar
-----------------------------------
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------
function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
end

function onMobDespawn(mob)
    UpdateNMSpawnPoint(mob:getID())
end 
