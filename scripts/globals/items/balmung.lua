-----------------------------------------
-- ID: 16942
-- Item: Balmung
-- Additional Effect: Dispel
-----------------------------------------
require("scripts/globals/msg")
require("scripts/globals/status")
-----------------------------------

function onAdditionalEffect(player, target, damage)
    local chance = 25
    if math.random(100) <= chance then
        local effect = target:dispelStatusEffect()
        if effect ~= tpz.effect.NONE then
            return tpz.subEffect.DISPEL, tpz.msg.basic.ADD_EFFECT_DISPEL, effect
        end
    end

    return 0, 0, 0
end
