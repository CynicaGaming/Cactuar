-----------------------------------
-- Area: Apollyon CS
--  Mob: Grognard Neckchopper
-----------------------------------
mixins = {require("scripts/mixins/job_special")}

function onMobDeath(mob, player, isKiller)
end

function onMobSpawn(mob)
    mob:setMobMod(tpz.mobMod.ALLI_HATE, 30)
end