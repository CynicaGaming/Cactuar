------------------------------
-- Area: Lufaise Meadows
--   NM: Megalobugard
------------------------------
require("scripts/globals/hunts")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMod(tpz.mod.REGEN, 25)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 439)
end
