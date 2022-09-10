-----------------------------------
-- Area: Uleguerand Range
--  Mob: King Buffalo
-----------------------------------
-----------------------------------
local ID = require("scripts/zones/Uleguerand_Range/IDs")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (25 + COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end