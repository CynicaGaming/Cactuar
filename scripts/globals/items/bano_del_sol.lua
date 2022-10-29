-----------------------------------------
-- ID: 17981
-- Item: Bano Del Sol
-- Additional Effect vs Slimes: Holy Damage
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 100
    local slime = target:getFamily()

    if (slime == 228 or slime == 229 or slime == 230 or slime == 66 or slime == 67) then

    if (math.random(0,99) >= chance) then
        return 0,0,0
    else
        local dmg = math.random(20,40)
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