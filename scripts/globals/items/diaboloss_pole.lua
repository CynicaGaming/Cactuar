-----------------------------------------
-- ID: 17599
-- Item: Diabolos's Pole
-- Additional Effect: Slow
-----------------------------------------
require("scripts/globals/magic")
require("scripts/globals/msg")
require("scripts/globals/status")

function onAdditionalEffect(player, target, damage)
    local chance = 30

    if math.random(100) <= chance and applyResistanceAddEffect(player, target, tpz.magic.ele.EARTH, 0) > 0.5 then
        target:delStatusEffect(tpz.effect.HASTE)
        target:addStatusEffect(tpz.effect.SLOW, 30, 0, 60)
        return tpz.subEffect.ATTACK_DOWN, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.SLOW
    end

    return 0, 0, 0
end
