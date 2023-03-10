-----------------------------------
-- Area: Phomiuna_Aqueducts
--   NM: Tres Duendes
-----------------------------------
require("scripts/globals/settings")

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    local respawn = math.random(75600, 86400)
    mob:setRespawnTime(respawn) -- 21 to 24 hours
    SetServerVariable("Tres_Duendes_Respawn", (os.time() + respawn))
end
