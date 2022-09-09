-----------------------------------
-- Area: Oldton Movalpolos
--  Mob: Bugbear Bondman
-- Note: PH for Bugbear Strongman
-----------------------------------
local ID = require("scripts/zones/Oldton_Movalpolos/IDs")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (15 + COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.BUGBEAR_STRONGMAN_PH, 10, 1) -- no cooldown
end
