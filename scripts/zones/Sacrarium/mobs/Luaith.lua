-----------------------------------
-- Area: Sacrarium
--  Mob: Luaith
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
require("scripts/globals/settings")

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end
