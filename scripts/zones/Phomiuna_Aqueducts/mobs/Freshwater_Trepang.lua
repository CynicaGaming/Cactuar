-----------------------------------
-- Area: Phomiuna_Aqueducts
--   Mob:
-----------------------------------
require("scripts/globals/mobs")
require("scripts/globals/settings")

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
end
