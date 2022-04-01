-----------------------------------------
-- Spell: Aero
-- Deals wind damage to an enemy.
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    local spellParams = {}
    spellParams.hasMultipleTargetReduction = false
    spellParams.resistBonus = 1.0
    if caster:getName() == "Shantotto" then
        spellParams.resistBonus = 1.0
        spellParams.V = 472
        spellParams.V0 = 520
        spellParams.V50 = 730
        spellParams.V100 = 915
        spellParams.V200 = 1200
        spellParams.M = 2
        spellParams.M0 = 4.2
        spellParams.M50 = 3.7
        spellParams.M100 = 2.85
        spellParams.M200 = 2
        spellParams.I = 506
    else
        spellParams.V = 25
        spellParams.V0 = 40
        spellParams.V50 = 120
        spellParams.V100 = 170
        spellParams.V200 = 170
        spellParams.M = 1
        spellParams.M0 = 1.6
        spellParams.M50 = 1
        spellParams.M100 = 0
        spellParams.M200 = 0
        spellParams.I = 35
    end

    return doElementalNuke(caster, spell, target, spellParams)
end
