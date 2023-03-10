-----------------------------------------
-- ID: 16425
-- Item: Venom Claws +1
-- Additional Effect: Poison
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player, target, damage)
    local chance = 15
    if target:getMod(tpz.mod.STATUSRES) < 100 and target:getMod(tpz.mod.POISONRES) < 100 then
        if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.WATER, 0) <= 0.5) then
            return 0, 0, 0
        else
            target:addStatusEffect(tpz.effect.POISON, 6, 3, 40)
            return tpz.subEffect.POISON, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.POISON
        end
    end
end
