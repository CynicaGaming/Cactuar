-----------------------------------
-- Area: Lufaise Meadows
--  Mob: Defoliate Leshy
-----------------------------------
require("scripts/globals/settings")

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
    if (isKiller) then
        GetMobByID(mob:getID()-1):setLocalVar("timeToGrow", os.time() + math.random(43200, 86400)) -- Colorful in 12 to 24 hours
    end
end

function onMobDespawn(mob)
    local phIndex = mob:getLocalVar("phIndex")
    mob:setLocalVar("phIndex", 0)
    DisallowRespawn(mob:getID(), true)
    DisallowRespawn(phIndex, false)
    GetMobByID(phIndex):setRespawnTime(GetMobRespawnTime(phIndex))
end
