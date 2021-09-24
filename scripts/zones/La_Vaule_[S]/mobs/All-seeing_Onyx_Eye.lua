-----------------------------------
-- Area: La Vaule [S]
--   NM: All-seeing Onyx Eye
-- pos 173.407 3.171 -374.932
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end
