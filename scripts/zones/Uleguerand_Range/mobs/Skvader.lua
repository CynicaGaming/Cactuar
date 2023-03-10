-----------------------------------
-- Area: Uleguerand Range
--   NM: Skvader
-----------------------------------
require("scripts/globals/hunts")
require("scripts/globals/status")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMod(tpz.mod.DOUBLE_ATTACK, 20)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))

end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 321)
end
