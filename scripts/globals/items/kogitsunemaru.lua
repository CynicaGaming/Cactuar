-----------------------------------------
-- ID: 17561
-- Item: Revenging Staff
-- Additional effect: HP Drain
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 10

    if VanadielDayOfTheWeek() == tpz.day.DARKSDAY then
        chance = chance+6
    end

    if player:getWeather() == tpz.weather.GLOOM then
        chance = chance+4
    elseif player:getWeather() == tpz.weather.DARKNESS then
        chance = chance+6
    end
    if (target:getSystem() == 20) then

    if (math.random(0,99) >= chance or target:isUndead()) then
        return 0,0,0
    else
        local drain = math.random(40,60)
        local params = {}
        params.bonusmab = 0
        params.includemab = false
        drain = addBonusesAbility(player, tpz.magic.ele.DARK, target, drain, params)
        drain = drain * applyResistanceAddEffect(player,target,tpz.magic.ele.DARK,0)
        drain = adjustForTarget(target,drain,tpz.magic.ele.DARK)
        drain = finalMagicNonSpellAdjustments(player,target,tpz.magic.ele.DARK,drain)

        return tpz.subEffect.HP_DRAIN, tpz.msg.basic.ADD_EFFECT_HP_DRAIN, player:addHP(drain)
    end
    end 
end