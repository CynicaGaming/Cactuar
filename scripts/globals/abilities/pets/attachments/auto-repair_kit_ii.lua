-----------------------------------
-- Attachment: Auto-repair Kit II
-----------------------------------
require("scripts/globals/automaton")
require("scripts/globals/status")
-----------------------------------

function onEquip(pet)
    -- We do not have support to do a fraction of a percent so we rounded
    local frame = pet:getAutomatonFrame()
    if frame == tpz.frames.HARLEQUIN then
        pet:addMod(tpz.mod.HPP, 10)
    elseif frame == tpz.frames.VALOREDGE then
        pet:addMod(tpz.mod.HPP, 8)
    elseif frame == tpz.frames.SHARPSHOT then
        pet:addMod(tpz.mod.HPP, 11)
    elseif frame == tpz.frames.STORMWAKER then
        pet:addMod(tpz.mod.HPP, 12)
    end
    pet:updateHealth()
    pet:setHP(pet:getMaxHP())
end

function onUnequip(pet)
    local frame = pet:getAutomatonFrame()
    if frame == tpz.frames.HARLEQUIN then
        pet:delMod(tpz.mod.HPP, 10)
    elseif frame == tpz.frames.VALOREDGE then
        pet:delMod(tpz.mod.HPP, 8)
    elseif frame == tpz.frames.SHARPSHOT then
        pet:delMod(tpz.mod.HPP, 11)
    elseif frame == tpz.frames.STORMWAKER then
        pet:delMod(tpz.mod.HPP, 12)
    end
    pet:updateHealth()
end

function onManeuverGain(pet, maneuvers)
    onUpdate(pet, maneuvers)
end

function onManeuverLose(pet, maneuvers)
    onUpdate(pet, maneuvers - 1)
end

function onUpdate(pet, maneuvers)
    local power = 0
    if maneuvers > 0 then
        power = math.floor((1 + maneuvers) * (1 + (pet:getMaxHP() * (0.22 / 100))))
    end
    updateModPerformance(pet, tpz.mod.REGEN, 'autorepair_kit_ii_mod', power)
end
