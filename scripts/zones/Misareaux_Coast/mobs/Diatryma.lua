-----------------------------------
-- Area: Misareaux_Coast
--  Mob: Diatryma
-- Note: PH for Okyupete
-----------------------------------
local ID = require("scripts/zones/Misareaux_Coast/IDs")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (10 + COP_EXP_SCALING))
end
function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.OKYUPETE_PH, 10, 3600) -- 1 hour
end
