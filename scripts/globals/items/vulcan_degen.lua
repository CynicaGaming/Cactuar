-----------------------------------------
-- ID: 17705
-- Item: Vulcan Degen
-- Additional Effect: Fire Damage
-- Enchantment: Enfire
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player, target, damage)
    local chance = 5
    local dmg = math.random(9, 25)
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

function onItemCheck(target)
    return 0
end

function onItemUse(target)
    local effect = tpz.effect.ENFIRE
    doEnspell(target, target, nil, effect)
end
