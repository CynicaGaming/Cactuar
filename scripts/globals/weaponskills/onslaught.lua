-----------------------------------
-- Onslaught
-- Axe weapon skill
-- Skill Level: N/A
-- Lowers target's params.accuracy. Additional effect: temporarily increases Attack.
-- Available only when equipped with the Relic Weapons Ogre Killer (Dynamis use only) or Guttler or Cleofun Axe (with Latent active).
-- These Relic Weapons are only available to Beastmasters, so only they can use this Weapon Skill.
-- One hit attack despite of non single-hit animation
-- The attack increase seems to be 10%.
-- Aligned with the Shadow Gorget & Soil Gorget.
-- Aligned with the Shadow Belt & Soil Belt.
-- Element: None
-- Modifiers: DEX:80%
-- 100%TP    200%TP    300%TP
-- 2.75      2.75      2.75
-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------

function onUseWeaponSkill(player, target, wsID, tp, primary, action, taChar)
    local params = {}
    params.numHits = 1
    params.ftp100 = 2.75 params.ftp200 = 2.75 params.ftp300 = 2.75
    params.str_wsc = 0.6 params.dex_wsc = 0.6 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    if damage > 0 then
        if not target:hasStatusEffect(tpz.effect.ACCURACY_DOWN) then
            local duration = tp / 1000 * 20 * applyResistanceAddEffect(player, target, tpz.magic.ele.EARTH, 0)
            target:addStatusEffect(tpz.effect.ACCURACY_DOWN, 40, 0, duration)
        end
    end
	if damage > 0 then player:trySkillUp(target, tpz.skill.AXE, tpHits+extraHits) end
	if damage > 0 then target:tryInterruptSpell(player, tpHits+extraHits) end
    return tpHits, extraHits, criticalHit, damage
end
