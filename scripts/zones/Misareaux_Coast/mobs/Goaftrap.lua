-----------------------------------
-- Area: Misareaux Coast
--   NM: Goaftrap
-----------------------------------
require("scripts/globals/hunts")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMod(tpz.mod.DOUBLE_ATTACK, 20)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 444)
end

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(5400, 7200)) -- 90 to 120 min
    UpdateNMSpawnPoint(mob:getID())
end
