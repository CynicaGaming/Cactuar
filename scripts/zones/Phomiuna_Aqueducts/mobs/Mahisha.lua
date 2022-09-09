-----------------------------------
-- Area: Phomiuna_Aqueducts
--   NM: Mahisha
-----------------------------------
mixins = {require("scripts/mixins/fomor_hate")}
require("scripts/globals/settings")

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
    mob:setLocalVar("fomorHateDecrease", 1)
    mob:setLocalVar("fomorHateAdj", 1)
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    local respawn = math.random(28800, 43200)
    mob:setRespawnTime(respawn) -- 8 to 12 hours 
    SetServerVariable("Mahisha_Respawn", (os.time() + respawn))
end
