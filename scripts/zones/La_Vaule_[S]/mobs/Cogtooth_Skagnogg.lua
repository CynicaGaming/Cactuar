-----------------------------------
-- Area: La Vaule [S]
--   NM: Cogtooth Skagnogg
-- pos 142.595 -0.377 -176.132
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end
