-----------------------------------------
-- ID: 17961
-- Item: Lion Tamer
-- Additional Effect: Fire Damage
-- Enchantment: Enfire
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player, target, damage)

function onItemCheck(target)
    return 0
end

function onItemUse(target)
    local effect = tpz.effect.ENFIRE
    doEnspell(target, target, nil, effect)
end
