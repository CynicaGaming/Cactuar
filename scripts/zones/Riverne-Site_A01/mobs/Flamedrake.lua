-----------------------------------
-- Area: Riverne - Site A01
--  Mob: Flamedrake
-- Note: PH for Aiatar
-----------------------------------
local ID = require("scripts/zones/Riverne-Site_A01/IDs")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------
function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (20 + COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.AIATAR_PH, 10, 75600) -- 21 hours
end
