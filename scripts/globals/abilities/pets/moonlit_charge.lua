---------------------------------------------------
-- Moonlit Charge M=4
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
    local mpCost = 17
    local ele = tpz.damageType.DARK
    local params = {}
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.3 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    local numhits = 1
    local accmod = 3
    local dmgmod = 4
    local totaldamage = 0

    local damage = AvatarPhysicalMove(pet, target, skill, numhits, accmod, dmgmod, 0, TP_NO_EFFECT, 1, 2, 3, 0, params)
    totaldamage = AvatarFinalAdjustments(damage.dmg, pet, skill, target, tpz.attackType.PHYSICAL, tpz.damageType.BLUNT, numhits)

    if totaldamage > 0 then
        local resist = applyResistanceAbility(pet, target, tpz.magic.element.DARK, tpz.skill.ENFEEBLING_MAGIC)
        local duration = math.ceil((60 + 60 * skill:getTP()/3000) * resist * tryBuildResistance(tpz.mod.RESBUILD_BLIND, target))
        if (target:getMod(tpz.mod.STATUSRES) < 100 and target:getMod(tpz.mod.BLINDRES) < 100) then
            if (resist >= 0.5 and target:hasStatusEffect(tpz.effect.BLINDNESS) == false) then
                target:addStatusEffect(tpz.effect.BLINDNESS, 20, 0, duration)
            end
        end
    end
    
    target:takeDamage(totaldamage, pet, tpz.attackType.PHYSICAL, tpz.damageType.BLUNT)
    target:updateEnmityFromDamage(pet, totaldamage)
    
    pet:getMaster():addMP(-mpCost)
    return totaldamage
end
