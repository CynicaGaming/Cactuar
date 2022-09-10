-----------------------------------
-- Area: Uleguerand Range
--  Mob: Doom Mage
-----------------------------------
-----------------------------------
local ID = require("scripts/zones/Uleguerand_Range/IDs")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end