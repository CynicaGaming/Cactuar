---------------------------------------------
--  Impalement
--
--  Description: Deals damage to a single target reducing their HP to 5%. Resets enmity.
--  Type: Physical
--  Utsusemi/Blink absorb: No
--  Range: Single Target
---------------------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")
require("scripts/globals/magic")

---------------------------------------------
function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
	MobStatusEffectMove(mob, target, tpz.effect.SLOW, 1250, 0, 120)

    MobStatusEffectMove(mob, target, tpz.effect.SLOW, 128, 0, 120)
    local currentHP = target:getHP()
    -- remove all by 5%
    local stab = currentHP * .95

    local dmg = MobFinalAdjustments(stab, mob, skill, target, tpz.attackType.PHYSICAL, tpz.damageType.PIERCING, MOBPARAM_IGNORE_SHADOWS)

    target:takeDamage(dmg, mob, tpz.attackType.PHYSICAL, tpz.damageType.PIERCING)
	target:tryInterruptSpell(mob, 1)

    mob:resetEnmity(target)
    return dmg
end
