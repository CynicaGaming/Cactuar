-----------------------------------
-- Area: Bibiki Bay
--   NM: Splacknuck
-----------------------------------
require("scripts/globals/hunts")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.ADD_EFFECT, 1)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onAdditionalEffect(mob, target, damage)
    local params = {}
	params.power = 30
	return tpz.mob.onAddEffect(mob, target, damage, tpz.mob.ae.ENWATER, params)
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 267)
end
