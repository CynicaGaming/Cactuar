-----------------------------------
-- Area: Lufaise_Meadows
--  Mob: Gigas Wrestler
-----------------------------------
mixins = {require("scripts/mixins/fomor_hate")}

function onMobSpawn(mob)
    mob:setLocalVar("fomorHateDecrease", 1)
    mob:setLocalVar("fomorHateAdj", 1)
end

function onMobDeath(mob, player, isKiller)
end
