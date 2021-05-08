-----------------------------------
-- Area: East Ronfaure [S]
--  Mob: Battrap
-- Note: PH for Goblintrap
-----------------------------------
local ID = require("scripts/zones/East_Ronfaure_[S]/IDs")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.GOBLINTRAP_PH, 15, 3600) -- 1 hour
end
