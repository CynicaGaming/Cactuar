-----------------------------------
-- Area: Uleguerand Range
--   NM: Frost Flambeau
-----------------------------------
require("scripts/globals/hunts")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.MAGIC_COOL, 15)
    mob:setMod(tpz.mod.UFASTCAST, 50)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (20 + COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 320)
end

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(7200, 9000)) -- 2 to 2.5 hours
end
