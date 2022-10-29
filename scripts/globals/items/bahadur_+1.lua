-----------------------------------------
-- ID: 19152
-- Item: Bahadur +1
-- Additional Effect: Fire Damage
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player, target, damage)
    local chance = 20

    if VanadielDayOfTheWeek() == tpz.day.FIRESDAY then
        chance = chance+6
    end

    if player:getWeather() == tpz.weather.HOT_SPELL then
        chance = chance+4
    elseif player:getWeather() == tpz.weather.HEAT_WAVE then
        chance = chance+6
    end
    if (math.random(0, 99) >= chance) then
        return 0, 0, 0
    else
        local dmg = math.random(20, 40)
        local params = {}
        params.bonusmab = 0
        params.includemab = false
        dmg = addBonusesAbility(player, tpz.magic.ele.FIRE, target, dmg, params)
        dmg = dmg * applyResistanceAddEffect(player, target, tpz.magic.ele.FIRE, 0)
        dmg = adjustForTarget(target, dmg, tpz.magic.ele.FIRE)
        dmg = finalMagicNonSpellAdjustments(player, target, tpz.magic.ele.FIRE, dmg)

        local message = tpz.msg.basic.ADD_EFFECT_DMG
        if (dmg < 0) then
            message = tpz.msg.basic.ADD_EFFECT_HEAL
            dmg = -dmg
        end

        return tpz.subEffect.FIRE_DAMAGE, message, dmg
    end
end
