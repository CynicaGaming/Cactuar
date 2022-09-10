-----------------------------------
-- Area: Carpenters' Landing
--   NM: Orctrap
-- !pos 180.087 -5.484 -532.799 2
-----------------------------------
require("scripts/globals/hunts")
-- require("scripts/globals/world")
require("scripts/globals/settings")
-----------------------------------
function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 167)
end
