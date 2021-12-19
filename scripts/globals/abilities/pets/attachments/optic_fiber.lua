-----------------------------------
-- Attachment: Optic Fiber
-- Increases the performance of other attachments by a percentage
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEquip(pet)
    pet:addMod(tpz.mod.AUTO_PERFORMANCE_BOOST, 10)
end

function onUnequip(pet)
    pet:delMod(tpz.mod.AUTO_PERFORMANCE_BOOST, 10)
end

function onManeuverGain(pet, maneuvers)
    if maneuvers == 1 then
        pet:addMod(tpz.mod.AUTO_PERFORMANCE_BOOST, 10)
    elseif maneuvers == 2 then
        pet:addMod(tpz.mod.AUTO_PERFORMANCE_BOOST, 5)
    elseif maneuvers == 3 then
        pet:addMod(tpz.mod.AUTO_PERFORMANCE_BOOST, 5)
    end
    local master = pet:getMaster()
    if master then
        master:updateAttachments(true)
    end
end

function onManeuverLose(pet, maneuvers)
    if maneuvers == 1 then
        pet:delMod(tpz.mod.AUTO_PERFORMANCE_BOOST, 10)
    elseif maneuvers == 2 then
        pet:delMod(tpz.mod.AUTO_PERFORMANCE_BOOST, 5)
    elseif maneuvers == 3 then
        pet:delMod(tpz.mod.AUTO_PERFORMANCE_BOOST, 5)
    end
    local master = pet:getMaster()
    if master then
        master:updateAttachments(false)
    end
end
