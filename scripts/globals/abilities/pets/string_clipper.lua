---------------------------------------------------
-- String Clipper
---------------------------------------------------
require("scripts/globals/status")
require("scripts/globals/settings")
require("scripts/globals/automatonweaponskills")

---------------------------------------------------

function onMobSkillCheck(target, automaton, skill)
    local master = automaton:getMaster()
    return master:countEffect(tpz.effect.THUNDER_MANEUVER)
end

function onPetAbility(target, automaton, skill, master, action)
    local params = {
        numHits = 2,
        atkmulti = 1.25,
        damageType = tpz.damageType.SLASHING,
        ftp100 = 2.0,
        ftp200 = 2.0,
        ftp300 = 2.0,
        acc100 = 0.0,
        acc200 = 0.0,
        acc300 = 0.0,
        str_wsc = 0.3,
        dex_wsc = 0.3,
        vit_wsc = 0.0,
        agi_wsc = 0.0,
        int_wsc = 0.0,
        mnd_wsc = 0.0,
        chr_wsc = 0.0
    }

    if USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.ftp100 = 3.5
        params.ftp200 = 3.5
        params.ftp300 = 3.5
        params.accBonus = 0.05 * skill:getTP()
    end

    local damage, criticalHit, tpHits, extraHits = doAutoPhysicalWeaponskill(automaton, target, 0, skill:getTP(), true, action, false, params, skill, action)
    if damage > 0 then
        master:trySkillUp(target, tpz.skill.AUTOMATON_MELEE, tpHits+extraHits)
        target:tryInterruptSpell(automaton, tpHits+extraHits)
    end
    return damage
end
