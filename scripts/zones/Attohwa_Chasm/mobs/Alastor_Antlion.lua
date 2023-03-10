-----------------------------------
-- Area: Attohwa Chasm
--   NM: Alastor Antlion
-----------------------------------
mixins = {require("scripts/mixins/families/antlion_ambush_noaggro")}
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.ADD_EFFECT, 1)
    mob:setMobMod(tpz.mobMod.GA_CHANCE, 50)
    mob:setMobMod(tpz.mobMod.MUG_GIL, 10000)
    mob:addMod(tpz.mod.FASTCAST, 10)
    mob:addMod(tpz.mod.BINDRES, 40)
    mob:addMod(tpz.mod.SILENCERES, 40)
    
    mob:setMod(tpz.mod.STUNRESTRAIT,200)
    mob:setMod(tpz.mod.SLOWRESTRAIT,200)
    mob:setMod(tpz.mod.BLINDRESTRAIT,200)
    mob:setMod(tpz.mod.SUSC_TO_WS_STUN,1)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onAdditionalEffect(mob, target, damage)
    return tpz.mob.onAddEffect(mob, target, damage, tpz.mob.ae.PETRIFY)
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    --local qm = GetNPCByID(16806296)

    --qm:queue(900000, function(qm)
        --qm:setStatus(0)
    --end)
end
