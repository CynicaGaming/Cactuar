-----------------------------------
-- Area: Misareaux_Coast
--  Mob: Cluster
-----------------------------------
require("scripts/globals/mobs")
require("scripts/globals/world")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDisengage(mob)
    -- Spawns during 02:00 to 07:00
    local hour = VanadielHour()
    if hour >= 7 or hour < 2 then
        DespawnMob(mob:getID())
    end
end

function onMobRoam(mob)
    -- Spawns during 02:00 to 07:00
    local hour = VanadielHour()
    if hour >= 7 or hour < 2 then
        DespawnMob(mob:getID())
    end
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
end