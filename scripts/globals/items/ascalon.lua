-----------------------------------------
-- ID: 16943
-- Item: Ascalon
-- Additional Effect: Light Damage vs. Dragons (100% against dragons.)
-- Gweivyth
----------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------
function onAdditionalEffect(player,target,damage)
    local chance = 100

	if math.random(100) >= chance or target:getSystem() ~= tpz.ecosystem.DRAGON then
        return 0,0,0
    else
        local dmg = math.random(19,38)
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
        end

        return tpz.subEffect.LIGHT_DAMAGE,message,dmg
    end
end