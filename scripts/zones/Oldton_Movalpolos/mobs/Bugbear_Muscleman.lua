------------------------------
-- Area: Oldton Movalpolos
--   NM: Bugbear Muscleman
------------------------------
require("scripts/globals/hunts")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (15 + COP_EXP_SCALING))
end

function onMobSpawn(mob)
    mob:addMod(tpz.mod.REGAIN, 500)
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 246)
end

function onMobDespawn(mob)
    local respawn = 5700
    mob:setRespawnTime(respawn) -- 95 minutes
    SetServerVariable("Bugbear_Muscleman_Respawn", (os.time() + respawn))
end
