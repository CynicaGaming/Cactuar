-----------------------------------
-- Area: La Vaule [S]
--   NM: Coinbiter Cjaknokk
-- pos -128.493 3.745 20.947
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end
