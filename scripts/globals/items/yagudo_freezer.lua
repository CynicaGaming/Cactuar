-----------------------------------------
-- ID: 17293
-- Item:  Yagudo Freezer
-- Additional Effect vs Yagudo: Ice Damage
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

    function onAdditionalEffect(player, target, damage)
        local chance = 30
        local yagudo = target:getFamily()
    
        if VanadielDayOfTheWeek() == tpz.day.ICEDAY then
            chance = chance+6
        end
    
        if player:getWeather() == tpz.weather.SNOW then
            chance = chance+4
        elseif player:getWeather() == tpz.weather.BLIZZARDS then
            chance = chance+6
        end
        if (yagudo == 270 or yagudo == 360 or yagudo == 409) then
            if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.ICE, 0) <= 0.5) then
                return 0, 0, 0
            else
                local dmg = math.random(15,30)
                local params = {}
                params.bonusmab = 0
                params.includemab = false
                dmg = addBonusesAbility(player, tpz.magic.ele.ICE, target, dmg, params)
                dmg = dmg * applyResistanceAddEffect(player,target,tpz.magic.ele.ICE,0)
                dmg = adjustForTarget(target,dmg,tpz.magic.ele.ICE)
                dmg = finalMagicNonSpellAdjustments(player,target,tpz.magic.ele.ICE,dmg)
        
                local message = tpz.msg.basic.ADD_EFFECT_DMG
                if (dmg < 0) then
                    message = tpz.msg.basic.ADD_EFFECT_HEAL
                    dmg = -dmg
                end
        
                return tpz.subEffect.ICE_DAMAGE,message,dmg
            end
        end
    end
