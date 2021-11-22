---------------------------------------------
--  Trembling
--
--  Description: Deals physical damage to enemies within an area of effect. Additional effect: Dispel
--  Type: Physical
--  Wipes Shadows
--  Range: 10' radial
---------------------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")

---------------------------------------------
function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)

    local numhits = 3
    local accmod = 1
    local dmgmod = .7
    local info = MobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, TP_NO_EFFECT)
    local dmg = MobFinalAdjustments(info.dmg, mob, skill, target, tpz.attackType.PHYSICAL, tpz.damageType.BLUNT, info.hitslanded)
    local dispelled = math.random(2, 3)

    if info.hitslanded ~= 0 then
        for i=1, dispelled do 
            target:dispelStatusEffect() 
        end
    end

    if effect ~= tpz.effect.NONE then
        --TODO: Dispelled messages. No examples of damage+dispel working currently.      
    else
        skill:setMsg(tpz.msg.basic.SKILL_NO_EFFECT)
    end

    target:takeDamage(dmg, mob, tpz.attackType.PHYSICAL, tpz.damageType.BLUNT)
	if dmg > 0 and skill:getMsg() ~= 31 then target:tryInterruptSpell(mob, info.hitslanded) end
    return dmg
end
