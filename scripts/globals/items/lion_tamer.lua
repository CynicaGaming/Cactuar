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
    local duration = 180
    local magicskill = target:getSkillLevel(tpz.skill.ENHANCING_MAGIC)
    local potency = 0

    if magicskill <= 200 then
        potency = 12 + math.floor(6 * magicskill / 100)
    elseif magicskill > 200 then
        potency = 14 + math.floor(5 * magicskill / 100)
    end

    potency = utils.clamp(potency, 3, 25)

    target:addStatusEffect(effect, potency, 0, 180)
    end
end