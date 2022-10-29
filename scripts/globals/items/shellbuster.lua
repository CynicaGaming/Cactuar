-----------------------------------------
-- ID: 17415
-- Item:  Shellbuster
-- Additional Effect vs Quadav: Lightning Damage
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

    function onAdditionalEffect(player, target, damage)
        local chance = 30
        local quadav = target:getFamily()
    
        if VanadielDayOfTheWeek() == tpz.day.LIGHTNINGDAY then
            chance = chance+6
        end
    
        if player:getWeather() == tpz.weather.THUNDER then
            chance = chance+4
        elseif player:getWeather() == tpz.weather.THUNDERSTORMS then
            chance = chance+6
        end
        if (quadav == 200 or quadav == 201 or quadav == 202 or quadav == 337 or quadav == 408) then
            if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.LIGHTNING, 0) <= 0.5) then
                return 0, 0, 0
            else
                local dmg = math.random(15,30)
                local params = {}
                params.bonusmab = 0
                params.includemab = false
                dmg = addBonusesAbility(player, tpz.magic.ele.LIGHTNING, target, dmg, params)
                dmg = dmg * applyResistanceAddEffect(player,target,tpz.magic.ele.LIGHTNING,0)
                dmg = adjustForTarget(target,dmg,tpz.magic.ele.LIGHTNING)
                dmg = finalMagicNonSpellAdjustments(player,target,tpz.magic.ele.LIGHTNING,dmg)
        
                local message = tpz.msg.basic.ADD_EFFECT_DMG
                if (dmg < 0) then
                    message = tpz.msg.basic.ADD_EFFECT_HEAL
                    dmg = -dmg
                end
        
                return tpz.subEffect.LIGHTNING_DAMAGE,message,dmg
            end
        end
    end
