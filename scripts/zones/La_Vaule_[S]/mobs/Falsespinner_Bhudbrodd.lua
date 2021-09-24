-----------------------------------
-- Area: La Vaule [S]
--   NM: Falsespinner Bhudbrodd
-- pos -221.122 -0.915 -96.614
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end
