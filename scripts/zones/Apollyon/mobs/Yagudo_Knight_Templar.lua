-----------------------------------
-- Area: Apollyon CS
--  Mob: Yagudo Knight Templar
-----------------------------------
mixins = {require("scripts/mixins/job_special")}

function onMobSpawn(mob)
    mob:setMobMod(tpz.mobMod.ALLI_HATE, 30)
end

function onMobDeath(mob, player, isKiller)
end
