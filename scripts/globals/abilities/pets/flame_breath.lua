---------------------------------------------------
-- Flame Breath
---------------------------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")
require("scripts/globals/ability")
require("scripts/globals/magic")

---------------------------------------------------

function onAbilityCheck(player, target, ability)
    return 0, 0
end

function onUseAbility(pet, target, skill, action)
    local master = pet:getMaster()
    ---------- Deep Breathing ----------
    -- 0 for none
    -- 1 for first merit
    -- 0.25 for each merit after the first
    -- TODO: 0.1 per merit for augmented AF2 (10663 *w/ augment*)
    local deep = 1
    if (pet:hasStatusEffect(tpz.effect.MAGIC_ATK_BOOST) == true) then
        deep = deep + 1 + (master:getMerit(tpz.merit.DEEP_BREATHING)/30-1)*0.25
        pet:delStatusEffect(tpz.effect.MAGIC_ATK_BOOST)
    end
    
    local bonus = master:getMerit(tpz.merit.STRAFE)
    local tp = pet:getTP()
    local ftp

    if tp >= 3000 then
        ftp = 2.25
    elseif tp >= 2000 then
        ftp = 1.55 + ((0.75/3000) * tp)
    else
        ftp = 1.0 + ((0.25/3000) * tp)
    end

    local gear = master:getMod(tpz.mod.WYVERN_BREATH)/256 -- Master gear that enhances breath
    local bonusmatt = pet:getMod(tpz.mod.MATT)/64 + 1
    local dmgmod = MobBreathMove(pet, target, 0.185, pet:getMainLvl()*15, tpz.magic.ele.FIRE, nil, bonus) -- Works out to (hp/6) + 15, as desired
    dmgmod = (dmgmod * (1+gear))*deep*ftp*bonusmatt
    pet:setTP(0)

    local ele = tpz.damageType.FIRE
    local skillchainburst = 1.0
    local skillchainTier, skillchainCount = FormMagicBurst(ele - 5, target)
    if skillchainTier > 0 then
        if skillchainCount == 1 then -- two weaponskills
            skillchainburst = 1.5
        elseif skillchainCount == 2 then -- three weaponskills
            skillchainburst = 1.65
        elseif skillchainCount == 3 then -- four weaponskills
             skillchainburst = 1.75
        elseif skillchainCount == 4 then -- five weaponskills
            skillchainburst = 1.87
        elseif skillchainCount == 5 then -- six weaponskills
            skillchainburst = 2.25
        elseif skillchainCount == 6 then -- seven weaponskills
            skillchainburst = 2.5
        else
            skillchainburst = 1.5 -- eight or more? shouldn't be possible
        end
    end
        dmgmod = dmgmod * skillchainburst
    local dmg = AbilityFinalAdjustments(dmgmod, pet, skill, target, tpz.attackType.BREATH, tpz.damageType.FIRE, MOBPARAM_IGNORE_SHADOWS)
    if (skillchainTier > 0) then
        skill:setMsg(747)
    end
    target:takeDamage(dmg, pet, tpz.attackType.BREATH, tpz.damageType.FIRE)
    return dmg
end
