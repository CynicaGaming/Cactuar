-----------------------------------
-- Area: Riverne - Site B01
--  Mob: 
-----------------------------------
-----------------------------------
require("scripts/globals/mobs")
-- require("scripts/globals/world")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (20 + COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end