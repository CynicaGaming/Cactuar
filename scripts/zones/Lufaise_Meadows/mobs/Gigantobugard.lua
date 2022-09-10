-----------------------------------
-- Area: Lufaise_Meadows
--  Mob: Gigantobugard
-- Note: PH for Megalobugard
-----------------------------------
local ID = require("scripts/zones/Lufaise_Meadows/IDs")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end


function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.MEGALOBUGARD_PH, 10, 3600) -- 1 hour
end
