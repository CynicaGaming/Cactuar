---------------------------------------------------
-- BrainJack
-- Charms a player and inflicts a 25/tick dot while charmed
---------------------------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")
require("scripts/globals/msg")
---------------------------------------------------

function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = tpz.effect.CHARM_I
    local power = 0

    if (not target:isPC()) then
        skill:setMsg(tpz.msg.basic.SKILL_MISS)
        return typeEffect
    end

    local msg = MobStatusEffectMove(mob, target, typeEffect, power, 3, 90)
    if (msg == tpz.msg.basic.SKILL_ENFEEB_IS) then
        target:addStatusEffectEx(tpz.effect.REGEN, 0, -25, 3, 90)
        mob:charm(target)
        mob:resetEnmity(target)
    end
    skill:setMsg(msg)

    return typeEffect
end
