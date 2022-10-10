-----------------------------------------
-- ID: 6381
-- Item: Fishermans Feast
-- Food Effect: 30Min, All Races
-----------------------------------------
-- Fishing Skill Gain +5%
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if target:hasStatusEffect(tpz.effect.FOOD) or target:hasStatusEffect(tpz.effect.FIELD_SUPPORT_FOOD) then
        result = tpz.msg.basic.IS_FULL
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 1800, 6381)
end

function onEffectGain(target, effect)
    target:addMod(tpz.mod.FISHING_SKILL_GAIN, 5)
end

function onEffectLose(target, effect)
    target:addMod(tpz.mod.FISHING_SKILL_GAIN, 5)
end
