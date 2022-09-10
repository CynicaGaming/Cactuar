------------------------------
-- Area: Carpenters Landing
--   NM: Hercules Beetle
------------------------------
require("scripts/globals/hunts")
-- require("scripts/globals/world")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
    -- High resistance to physical damage.
    mob:addMod(tpz.mod.DMGPHYS,-70)
    mob:addMod(tpz.mod.DMGRANGE,-70)
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 165)
end
