-----------------------------------
-- Area: Bibiki Bay
--  Mob: Shen's Filtrate - Shen Elemental
-----------------------------------
require("scripts/globals/mobs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
    mob:addMod(tpz.mod.REGEN, 120)
end

function onMobDeath(mob, player, isKiller)
    SetServerVariable("[Shen]Filtrate Death", 1)
end