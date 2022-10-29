-----------------------------------------
-- ID: 18026
-- Item:  Magnet Knife
-- Additional Effect: Gravity
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

    function onAdditionalEffect(player, target, damage)
        local chance = 12
    
        if VanadielDayOfTheWeek() == tpz.day.WINDSDAY then
            chance = chance+6
        end
    
        if player:getWeather() == tpz.weather.WIND then
            chance = chance+4
        elseif player:getWeather() == tpz.weather.GALES then
            chance = chance+6
        end
        if target:getMod(tpz.mod.STATUSRES) < 100 and target:getMod(tpz.mod.GRAVITYRES) < 100 then
            if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.WIND, 0) <= 0.5) then
                return 0, 0, 0
            else
                target:addStatusEffect(tpz.effect.WEIGHT, 50, 0, 60)
                return tpz.subEffect.EVASION_DOWN, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.WEIGHT
            end
        end
    end
