-----------------------------------------
-- ID: 16867
-- Item: Orc Piercer
-- Additional Effect vs Orcs: Holy Damage
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 30
    local orc = target:getFamily()

    if VanadielDayOfTheWeek() == tpz.day.LIGHTSDAY then
        chance = chance+6
    end

    if player:getWeather() == tpz.weather.AURORAS then
        chance = chance+4
    elseif player:getWeather() == tpz.weather.STELLAR_GLARE then
        chance = chance+6
    end
    if (orc == 189 or orc == 190 or orc == 334 or orc == 407) then
    if (math.random(0,99) >= chance) then
        return 0,0,0
    else
        local dmg = math.random(25,40)
        local params = {}
        params.bonusmab = 0
        params.includemab = false
        dmg = addBonusesAbility(player, tpz.magic.ele.LIGHT, target, dmg, params)
        dmg = dmg * applyResistanceAddEffect(player,target,tpz.magic.ele.LIGHT,0)
        dmg = adjustForTarget(target,dmg,tpz.magic.ele.LIGHT)
        dmg = finalMagicNonSpellAdjustments(player,target,tpz.magic.ele.LIGHT,dmg)

        local message = tpz.msg.basic.ADD_EFFECT_DMG
        if (dmg < 0) then
            message = tpz.msg.basic.ADD_EFFECT_HEAL
            dmg = -dmg
        end

        return tpz.subEffect.LIGHT_DAMAGE,message,dmg
        end
    end
end