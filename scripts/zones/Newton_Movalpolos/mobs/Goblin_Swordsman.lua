-----------------------------------
-- Area: Newton Movalpolos
--  Mob: Goblin Swordsman
-- Note: PH for Swashstox Beadblinker
-----------------------------------
local ID = require("scripts/zones/Newton_Movalpolos/IDs")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.SWASHSTOX_BEADBLINKER_PH, 15, 10800)
end
