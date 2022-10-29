-----------------------------------------
-- ID: 16897
-- Item:  Kageboshi
-- Additional Effect: Bind
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

    function onAdditionalEffect(player, target, damage)
        local chance = 15
    
        if VanadielDayOfTheWeek() == tpz.day.ICEDAY then
            chance = chance+6
        end
    
        if player:getWeather() == tpz.weather.SNOW then
            chance = chance+4
        elseif player:getWeather() == tpz.weather.BLIZZARDS then
            chance = chance+6
        end
        if target:getMod(tpz.mod.STATUSRES) < 100 and target:getMod(tpz.mod.BINDRES) < 100 then
            if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.ICE, 0) <= 0.5) then
                return 0, 0, 0
            else
                target:addStatusEffect(tpz.effect.BIND, 1, 0, 60)
                return tpz.subEffect.EVASION_DOWN, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.BIND
            end
        end
    end
