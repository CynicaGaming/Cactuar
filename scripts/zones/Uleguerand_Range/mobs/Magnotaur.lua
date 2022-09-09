-----------------------------------
-- Area: Uleguerand Range
--   NM: Magnotaur
-----------------------------------
require("scripts/globals/hunts")
require("scripts/globals/status")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(tpz.mod.REGAIN, 50)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (15 + COP_EXP_SCALING))

end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 322)
end
