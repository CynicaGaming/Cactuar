-----------------------------------
-- Area: Riverne - Site A01
--  Mob: Carmine Dobsonfly
-----------------------------------
local ID = require("scripts/zones/Riverne-Site_A01/IDs")
require("scripts/globals/status")
require("scripts/globals/settings")
-----------------------------------
function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
    mob:setMobMod(tpz.mobMod.SUPERLINK, ID.mob.CARMINE_DOBSONFLY_OFFSET)
    mob:SetMagicCastingEnabled(false) -- does not cast spells while idle
end

function onMobEngaged(mob, target)
    mob:SetMagicCastingEnabled(true)
end

function onMobDisengage(mob)
    mob:SetMagicCastingEnabled(false)
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    -- each dead dobsonfly should stay despawned until all 10 are killed. then they respawn as a group.

    local allFliesDead = true
    for i = ID.mob.CARMINE_DOBSONFLY_OFFSET, ID.mob.CARMINE_DOBSONFLY_OFFSET + 9 do
        if (GetMobByID(i):isAlive()) then
            allFliesDead = false
        end
    end

    if (allFliesDead) then
        local respawn = math.random(75600, 86400) -- 21 to 24 hours
        for i = ID.mob.CARMINE_DOBSONFLY_OFFSET, ID.mob.CARMINE_DOBSONFLY_OFFSET + 9 do
            DisallowRespawn(i, false)
            GetMobByID(i):setRespawnTime(respawn)
        end
        SetServerVariable("Carmine_Dobsonfly_Respawn", (os.time() + respawn))
    else
        DisallowRespawn(mobID, true)
    end
end
