-----------------------------------------
-- ID: 18088
-- Item: Dreizack 
-- Additional Effect: 10% Attack Down
-----------------------------------------
require("scripts/globals/magic")
require("scripts/globals/msg")
require("scripts/globals/status")

function onAdditionalEffect(player, target, damage)
    local chance = 15

    if math.random(100) <= chance and applyResistanceAddEffect(player, target, tpz.magic.ele.WATER, 0) > 0.5 then
        target:delStatusEffect(tpz.effect.ATTACK_BOOST)
        target:addStatusEffect(tpz.effect.ATTACK_DOWN, 12, 0, 60)
        return tpz.subEffect.ATTACK_DOWN, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.ATTACK_DOWN
    end

    return 0, 0, 0
end
