-----------------------------------------
-- ID: 17694
-- Item: Guespiere
-- Additional Effect: 12% Defense Down
-----------------------------------------
require("scripts/globals/magic")
require("scripts/globals/msg")
require("scripts/globals/status")

function onAdditionalEffect(player, target, damage)
    local chance = 15

    if VanadielDayOfTheWeek() == tpz.day.WINDSDAY then
        chance = chance+6
    end

    if player:getWeather() == tpz.weather.WIND then
        chance = chance+4
    elseif player:getWeather() == tpz.weather.GALES then
        chance = chance+6
    end
        if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.WIND, 0) <= 0.5) then
            return 0, 0, 0
        else
            target:delStatusEffect(tpz.effect.DEFENSE_BOOST)
            target:addStatusEffect(tpz.effect.DEFENSE_DOWN, 12, 0, 60)
            return tpz.subEffect.DEFENSE_DOWN, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.DEFENSE_DOWN
        end
    end


