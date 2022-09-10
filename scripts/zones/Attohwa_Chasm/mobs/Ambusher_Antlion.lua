-----------------------------------
-- Area: Attohwa Chasm
--  Mob: Ambusher Antlion
-----------------------------------
require("scripts/globals/hunts")
mixins = {require("scripts/mixins/families/antlion_ambush")}
require("scripts/globals/settings")
-----------------------------------
function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 277)
end
