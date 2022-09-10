-----------------------------------
-- Area: Lufaise_Meadows
--  Mob: Fomor Warrior
-----------------------------------
mixins = {require("scripts/mixins/fomor_hate")}
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end
