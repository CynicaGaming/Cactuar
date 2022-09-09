------------------------------
-- Area: Newton Movalpolos
--   NM: Bugbear Matman
------------------------------
require("scripts/globals/hunts")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (15 + COP_EXP_SCALING))
end
function onMobSpawn(mob)
    mob:addMod(tpz.mod.REGAIN, 50)
end

function onMobWeaponSkillPrepare(mob, target)
	local rnd = math.random()

	if mob:getHPP() <= 30 and rnd > 0.4 then
	    return 358
	end
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 248)
end
