------------------------------
-- Area: Newton Movalpolos
--   NM: Goblin Collector
------------------------------
require("scripts/globals/hunts")
require("scripts/globals/status")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end
function onMobSpawn(mob)
    mob:setMod(tpz.mod.MATT, 150)
    mob:setMod(tpz.mod.BINDRES, 40)
    mob:setMod(tpz.mod.GRAVITYRES, 40)
end

function onMobFight(mob, target)
    mob:addListener("ATTACK","COLLECTOR_ATTACK", function(mob)
        mob:resetEnmity(target)
    end)
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 248)
end
