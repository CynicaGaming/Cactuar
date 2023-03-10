-----------------------------------
-- Raiden Thrust
-- Polearm weapon skill
-- Skill Level: 70
-- Deals lightning elemental damage to enemy. Damage varies with TP.
-- Aligned with the Light Gorget & Thunder Gorget.
-- Aligned with the Light Belt & Thunder Belt.
-- Element: Lightning
-- Modifiers: STR:40%  INT:40%
-- 100%TP    200%TP    300%TP
-- 1.00      2.00      3.00
-----------------------------------
require("scripts/globals/magic")
require("scripts/globals/status")
require("scripts/globals/settings")
require("scripts/globals/weaponskills")
-----------------------------------

function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)

    local params = {}
    params.ftp100 = 1.25 params.ftp200 = 2.2 params.ftp300 = 3.25
    params.str_wsc = 0.4 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.55 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.ele = tpz.magic.ele.LIGHTNING
    params.skill = tpz.skill.POLEARM
    params.includemab = true

    if (USE_ADOULIN_WEAPON_SKILL_CHANGES == true) then
        params.str_wsc = 0.4 params.int_wsc = 0.4
    end

    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, params, tp, action, primary)
	if damage > 0 then player:trySkillUp(target, tpz.skill.POLEARM, tpHits+extraHits) end
    return tpHits, extraHits, criticalHit, damage

end
