------------------------------
-- Area: Misareaux Coast
--   NM: Ziphius
------------------------------
require("scripts/globals/hunts")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end


function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 445)
end
