-----------------------------------
-- Area: Attohwa Chasm
--  Mob: Feeler Antlion
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/settings")

function onMobInitialize(mob)
    mob:addMod(tpz.mod.REGAIN, 40) -- Don't know exact value
    mob:addMod(tpz.mod.REGEN, 30)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
    mob:setLocalVar("SAND_BLAST", 1)
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    local qm = GetNPCByID(16806296)

    qm:queue(900000, function(qm)
        qm:setStatus(0)
    end)
end