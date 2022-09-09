-----------------------------------
-- Area: Riverne - Site B01
--  Mob: Imdugud
-- !pos 655.263 20.664 651.320 29
-----------------------------------
require("scripts/globals/settings")

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (20 + COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end
