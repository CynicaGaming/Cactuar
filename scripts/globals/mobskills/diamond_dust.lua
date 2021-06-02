---------------------------------------------------
-- Diamond Dust
-- Deals ice elemental damage to enemies within area of effect.
---------------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/summon")
---------------------------------------------------

function onMobSkillCheck(target, mob, skill)
    mob:messageBasic(tpz.msg.basic.READIES_WS, 0, skill:getID())
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    local dINT = math.floor(mob:getStat(tpz.mod.INT) - target:getStat(tpz.mod.INT))
    
    local level = mob:getMainLvl()
    local damage = 48 + (level * 8)
    damage = damage + (dINT * 1.5)
    damage = MobMagicalMove(mob, target, skill, damage, tpz.magic.ele.ICE, 1, TP_NO_EFFECT, 0)
    damage = mobAddBonuses(mob, nil, target, damage.dmg, tpz.magic.ele.ICE)
    damage = AvatarFinalAdjustments(damage, mob, skill, target, tpz.attackType.MAGICAL, tpz.damageType.ICE, MOBPARAM_WIPE_SHADOWS)

    target:takeDamage(damage, mob, tpz.attackType.MAGICAL, tpz.damageType.ICE)
    return damage
end
