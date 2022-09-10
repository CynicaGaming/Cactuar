-----------------------------------
-- Area: Uleguerand Range
--  MOB: Black Coney
-- Note: uses normal rabbit attacks. has double/triple attack.
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

function onMobDespawn(mob)
    GetNPCByID(ID.npc.RABBIT_FOOTPRINT):setLocalVar("activeTime", os.time()+math.random(60*9, 60*15))
end
