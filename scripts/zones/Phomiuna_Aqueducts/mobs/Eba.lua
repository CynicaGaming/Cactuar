-----------------------------------
-- Area: Phomiuna_Aqueducts
--   NM: Eba
-----------------------------------
mixins = {require("scripts/mixins/fomor_hate")}
require("scripts/globals/settings")

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
    mob:setLocalVar("fomorHateAdj", 4)
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    local respawn = math.random(28800, 43200)
    mob:setRespawnTime(respawn) -- 8 to 12 hours 
    SetServerVariable("Eba_Respawn", (os.time() + respawn))
end
