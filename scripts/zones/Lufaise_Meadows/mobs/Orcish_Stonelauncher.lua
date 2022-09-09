-----------------------------------
-- Area: Lufaise_Meadows
--  Mob: Orcish Stonelauncher
-----------------------------------
mixins = {require("scripts/mixins/fomor_hate")}
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
    mob:setLocalVar("fomorHateDecrease", 1)
    mob:setLocalVar("fomorHateAdj", 1)
end

function onMobDeath(mob, player, isKiller)
end
