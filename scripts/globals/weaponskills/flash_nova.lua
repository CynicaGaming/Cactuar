-----------------------------------
-- Flash Nova
-- Skill level: 290
-- Delivers light elemental damage. Additional effect: Flash. Chance of effect varies with TP.
-- Generates a significant amount of Enmity.
-- Does not stack with Sneak Attack
-- Aligned with Aqua Gorget.
-- Aligned with Aqua Belt.
-- Properties:
-- Element: Light
-- Skillchain Properties:Induration Reverberation
-- Modifiers: STR:30% MND:30%
-- Damage Multipliers by TP:
--     100%TP    200%TP     300%TP
--      3.00     3.00     3.00
-----------------------------------
require("scripts/globals/magic")
require("scripts/globals/status")
require("scripts/globals/settings")
require("scripts/globals/weaponskills")
-----------------------------------

function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)

    local params = {}
    params.ftp100 = 3 params.ftp200 = 3 params.ftp300 = 3
    params.str_wsc = 0.5 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.5 params.chr_wsc = 0.0
    params.ele = tpz.magic.ele.LIGHT
    params.skill = tpz.skill.CLUB
    params.includemab = true

    if (USE_ADOULIN_WEAPON_SKILL_CHANGES == true) then
        params.str_wsc = 0.5 params.mnd_wsc = 0.5
    end

    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, params, tp, action, primary)
	if damage > 0 then player:trySkillUp(target, tpz.skill.CLUB, tpHits+extraHits) end
    return tpHits, extraHits, criticalHit, damage

end
