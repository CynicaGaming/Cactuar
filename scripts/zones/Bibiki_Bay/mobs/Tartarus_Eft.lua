-----------------------------------
-- Area: Bibiki Bay
--  Mob: Tartarus Eft
-- Note: PH for Splacknuck
-----------------------------------
local ID = require("scripts/zones/Bibiki_Bay/IDs")
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.SPLACKNUCK_PH, 10, 3600) -- 1 hour
end
