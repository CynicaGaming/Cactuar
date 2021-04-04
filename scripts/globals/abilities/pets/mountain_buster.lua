---------------------------------------------------
-- Mountain Buster M=12 BIND
---------------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")
require("scripts/globals/utils")
require("scripts/globals/magic")
require("scripts/globals/summon")

---------------------------------------------------

function onAbilityCheck(player, target, ability)
    return 0, 0
end

function onPetAbility(target, pet, skill)
    local ele = tpz.damageType.EARTH
    local coe = getAvatarEcosystemCoefficient(target, ele)
    local numhits = 1
    local accmod = -4
    local dmgmod = 12 * coe * (1 + 0.18*skill:getTP()/3000)
    local dmgmodsubsequent = 0
    local totaldamage = 0
    local damage = AvatarPhysicalMove(pet, target, skill, numhits, accmod, dmgmod, dmgmodsubsequent, TP_NO_EFFECT, 1, 2, 3)
    totaldamage = AvatarFinalAdjustments(damage.dmg, pet, skill, target, tpz.attackType.PHYSICAL, tpz.damageType.BLUNT, numhits)
    
    local dVIT = pet:getStat(tpz.mod.VIT) - target:getStat(tpz.mod.VIT)
    local bonus = dVIT
    if pet:getMaster() ~= nil and (pet:getMaster()):isPC() then
        bonus = bonus + (pet:getMaster()):getMerit(1284) * 2 + getSummoningSkillOverCap(pet) + 5
    end
    local resist = applyResistanceAbility(pet,target,tpz.magic.element.EARTH,tpz.skill.ENFEEBLING_MAGIC,bonus)
    local duration = math.ceil(60 * resist * tryBuildResistance(tpz.mod.RESBUILD_BIND, target))
    if resist >= 0.5 and totaldamage > 0 then
        target:addStatusEffect(tpz.effect.BIND, 1, 0, duration)
    end
    
    target:takeDamage(totaldamage, pet, tpz.attackType.PHYSICAL, tpz.damageType.BLUNT)
    target:updateEnmityFromDamage(pet, totaldamage)

    return totaldamage
end
