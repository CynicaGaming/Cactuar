------------------------------
-- Area: Oldton Movalpolos
--   NM: Bugbear Strongman
------------------------------
require("scripts/globals/hunts")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (15 + COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 244)
end
