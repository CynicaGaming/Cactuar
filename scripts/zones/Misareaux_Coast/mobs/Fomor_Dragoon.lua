-----------------------------------
-- Area: Misareaux_Coast
--  Mob: Fomor Dragoon
-----------------------------------
mixins = {require("scripts/mixins/fomor_hate")}
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    local petID = mob:getID() + 1
    DespawnMob(petID)
end