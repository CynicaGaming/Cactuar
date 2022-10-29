-----------------------------------------
-- ID: 16533
-- Item: Ancient Sword
-- Additional Effect: Curse
-----------------------------------------
require("scripts/globals/magic")
require("scripts/globals/msg")
require("scripts/globals/status")

function onAdditionalEffect(player, target, damage)
    local chance = 15

    if VanadielDayOfTheWeek() == tpz.day.DARKSDAY then
        chance = chance+6
    end

    if player:getWeather() == tpz.weather.GLOOM then
        chance = chance+4
    elseif player:getWeather() == tpz.weather.DARKNESS then
        chance = chance+6
    end
    if target:getMod(tpz.mod.STATUSRES) < 100 and target:getMod(tpz.mod.CURSERES) < 100 then
        if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.DARK, 0) <= 0.5) then
            return 0, 0, 0
        else
            target:addStatusEffect(tpz.effect.CURSE_I, 5, 0, 30)
            return tpz.subEffect.CURSE, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.CURSE_I
        end
    end
end
