-----------------------------------
-- Shadow of Death
-- Scythe weapon skill
-- Skill Level: 70
-- Delivers a dark elemental attack. Damage varies with TP.
-- Aligned with the Snow Gorget & Aqua Gorget.
-- Aligned with the Snow Belt & Aqua Belt.
-- Element: Dark
-- Modifiers: STR:40%  INT:40%
-- 100%TP    200%TP    300%TP
-- 1.00      2.50      3.00
-----------------------------------
require("scripts/globals/magic")
require("scripts/globals/status")
require("scripts/globals/settings")
require("scripts/globals/weaponskills")
-----------------------------------

function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)

    local params = {}
    params.ftp100 = 1.5 params.ftp200 = 2.5 params.ftp300 = 5
    params.str_wsc = 0.4 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.4 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.ele = tpz.magic.ele.DARK
    params.skill = tpz.skill.SCYTHE
    params.includemab = true

    if (USE_ADOULIN_WEAPON_SKILL_CHANGES == true) then
        params.str_wsc = 0.4 params.int_wsc = 0.4
    end

    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, params, tp, action, primary)
	if damage > 0 then player:trySkillUp(target, tpz.skill.SCYTHE, tpHits+extraHits) end
    return tpHits, extraHits, criticalHit, damage

end
