-----------------------------------
-- Area: Carpenters' Landing
--  Mob: Birdtrap
-- Note: Placeholder Orctrap
-----------------------------------
local ID = require("scripts/zones/Carpenters_Landing/IDs")
require("scripts/globals/mobs")
-- require("scripts/globals/world")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.ORCTRAP_PH, 10, 3600) -- 1 hour minimum
end
