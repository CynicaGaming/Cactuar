---------------------------------------------------
-- Camisado M=3.5
---------------------------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/summon")
require("scripts/globals/magic")
---------------------------------------------------

function onAbilityCheck(player, target, ability)
    return 0, 0
end

function onPetAbility(target, pet, skill)
    local mpCost = 20
    local ele = tpz.damageType.DARK
    local params = {}
    params.str_wsc = 0.15 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.15 params.chr_wsc = 0.0
    local numhits = 1
    local accmod = 0
    local dmgmod = 3.5
    local totaldamage = 0

    local damage = AvatarPhysicalMove(pet, target, skill, numhits, accmod, dmgmod, 0, TP_NO_EFFECT, 1, 2, 3, 0, params)
    totaldamage = AvatarFinalAdjustments(damage.dmg, pet, skill, target, tpz.attackType.PHYSICAL, tpz.damageType.BLUNT, numhits)

    target:takeDamage(totaldamage, pet, tpz.attackType.PHYSICAL, tpz.damageType.BLUNT)
    target:updateEnmityFromDamage(pet, totaldamage)
    
    if totaldamage > 0 then
        target:addStatusEffect(tpz.effect.STUN,1,0,1) -- knockback workaround for now
    end
    
    pet:getMaster():addMP(-mpCost)
    return totaldamage
end
