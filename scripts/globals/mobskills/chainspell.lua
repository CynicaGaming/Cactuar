---------------------------------------------
-- Chainspell
---------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/status")
require("scripts/globals/msg")
---------------------------------------------

function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)

    local duration = 60

    if mob:getID() == 16941057 then
        duration = 30
    end

    MobBuffMove(mob, tpz.effect.CHAINSPELL, 1, 0, duration)

    skill:setMsg(tpz.msg.basic.USES)

    return tpz.effect.CHAINSPELL
end
