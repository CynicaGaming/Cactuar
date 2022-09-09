-----------------------------------
-- Area: Sacrarium
--  Mob: Fomor's Avatar
-----------------------------------
mixins = {require("scripts/mixins/families/avatar")}
require("scripts/globals/settings")

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end
