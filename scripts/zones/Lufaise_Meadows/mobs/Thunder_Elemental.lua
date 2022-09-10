-----------------------------------
-- Area: Lufaise Meadows
--  Mob: 
-----------------------------------
-----------------------------------
local ID = require("scripts/zones/Lufaise_Meadows/IDs")
require("scripts/globals/mobs")
-- require("scripts/globals/world")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end