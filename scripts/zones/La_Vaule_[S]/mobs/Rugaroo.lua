-----------------------------------
-- Area: La Vaule [S]
--   NM: Rugaroo
-- pos 17.596, -0.289, -259.902
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(14400) -- 4 hours
end
