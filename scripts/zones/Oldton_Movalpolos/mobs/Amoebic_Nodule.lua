-----------------------------------
-- Area: Oldton Movalpolos
--  Mob: 
-----------------------------------
local ID = require("scripts/zones/Oldton_Movalpolos/IDs")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
end
