-----------------------------------------
-- ID: 18709
-- Item: Snakeeye+1
-- Additional Effect: Poison
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player, target, damage)
    local chance = 100

    if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.WATER, 0) <= 0.5) then
        return 0, 0, 0
    else
        target:addStatusEffect(tpz.effect.POISON, 2, 3, 30)
        return tpz.subEffect.POISON, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.POISON
    end
end