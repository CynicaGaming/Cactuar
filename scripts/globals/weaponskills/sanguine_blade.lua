-----------------------------------
-- Sanguine Blade
-- Sword weapon skill
-- Skill Level: 300
-- Drains a percentage of damage dealt to HP varies with TP.
-- Will not stack with Sneak Attack.
-- Not aligned with any "elemental gorgets" or "elemental belts" due to it's absence of Skillchain properties.
-- Element: Dark
-- Modifiers: STR:30%  MND:50%
-- 100%TP    200%TP    300%TP
-- 2.75      2.75      2.75
-- HP Drained by TP:
-- 100%TP    200%TP    300%TP
-- 50%       75%    100%
-----------------------------------
require("scripts/globals/magic")
require("scripts/globals/status")
require("scripts/globals/settings")
require("scripts/globals/weaponskills")
-----------------------------------

function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)

    local drain = 0

    if (tp >= 1000 and tp <=1999) then
        drain = 75
    elseif (tp >= 2000 and tp <= 2999) then
        drain = 100
    elseif (tp == 3000) then
        drain = 160
    end

    local params = {}
    params.ftp100 = 1.5 params.ftp200 = 1.5 params.ftp300 = 1.5
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.5 params.mnd_wsc = 0.5 params.chr_wsc = 0.0
    params.ele = tpz.magic.ele.DARK
    params.skill = tpz.skill.SWORD
    params.includemab = true


    if (USE_ADOULIN_WEAPON_SKILL_CHANGES == true) then
        if (tp >= 2000 and tp <= 2999) then
            drain = 100
        elseif (tp == 3000) then
            drain = 160
        end
    end

    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, params, tp, action, primary)

    if (target:isUndead() == false) then
        player:addHP((damage/100) * drain)
    end
	if damage > 0 then player:trySkillUp(target, tpz.skill.SWORD, tpHits+extraHits) end
    return tpHits, extraHits, criticalHit, damage
end
