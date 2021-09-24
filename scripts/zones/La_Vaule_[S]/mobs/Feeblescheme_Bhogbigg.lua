-----------------------------------
-- Area: La Vaule [S]
--   NM: Feeblescheme Bhogbigg
-- pos -176.207 -0.384 -298.763
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end
