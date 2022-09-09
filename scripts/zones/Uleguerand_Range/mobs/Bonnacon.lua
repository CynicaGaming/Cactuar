-----------------------------------
-- Area: Uleguerand Range
--   NM: Bonnacon
-----------------------------------
require("scripts/globals/hunts")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.ADD_EFFECT, 1)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (25 + COP_EXP_SCALING))
end

function onAdditionalEffect(mob, target, damage)
    return tpz.mob.onAddEffect(mob, target, damage, tpz.mob.ae.STUN, {chance = 65, duration = math.random(5, 15)})
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 319)
end
