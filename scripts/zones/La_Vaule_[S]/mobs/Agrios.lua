-----------------------------------
-- Area: La Vaule [S]
--   NM: Agrios
-- pos 101.244 -0.570 60.608
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end
