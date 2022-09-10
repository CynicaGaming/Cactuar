------------------------------
-- Area: Misareaux Coast
--   NM: Okyupete
------------------------------
require("scripts/globals/hunts")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end


function onMobSpawn(mob)
    mob:setMod(tpz.mod.REGAIN, 500)
end

function onMobWeaponSkill(target, mob, skill)
    if skill:getID() == 400 then
        mob:useMobAbility(401)
    end
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 446)
end
