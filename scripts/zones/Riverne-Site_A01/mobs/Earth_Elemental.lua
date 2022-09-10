-----------------------------------
-- Area: Riverne-Site_A01
-- Notes: Assists Ouryu in Ouryu Cometh
-----------------------------------
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.ROAM_DISTANCE, 500)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
    mob:setMod(tpz.mod.RESBUILD_SLEEP, 10)
end

function onMobFight(mob, target)
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(120) -- Respawns every 2 minutes, based on in-era video
end