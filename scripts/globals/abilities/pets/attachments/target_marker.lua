-----------------------------------
-- Attachment: Target Marker
-----------------------------------
require("scripts/globals/status")
-----------------------------------
-- Needs a rework to remove level diff calcs http://wiki.ffo.jp/html/9133.html
-- Same link as above:  In addition, the effect of increasing the hit rate is also applied to the ranged attack of the shooting battle as well as the stabilizer series

function onEquip(pet)
    pet:addListener("ENGAGE", "AUTO_TARGETMARKER_ENGAGE", function(pet, target)
        local ignored = pet:getLocalVar("targetmarker")
        if ignored > 0 then
            pet:delMod(tpz.mod.ACC, ignored)
            pet:delMod(tpz.mod.RACC, ignored)
            pet:setLocalVar("targetmarker", 0)
        end

        if pet:getMainLvl() < target:getMainLvl() then
            local master = pet:getMaster()
            local maneuvers = master:countEffect(tpz.effect.THUNDER_MANEUVER)
            local eva = target:getEVA()
            local percentage = 0.05
            if maneuvers == 1 then
                percentage = 0.15
            elseif maneuvers == 2 then
                percentage = 0.30
            elseif maneuvers == 3 then
                percentage = 0.45
            end
            local accbonus = math.floor(eva * percentage)
            pet:addMod(tpz.mod.ACC, accbonus)
            pet:addMod(tpz.mod.RACC, accbonus)
            pet:setLocalVar("targetmarker", accbonus)
        end
    end)
    pet:addListener("DISENGAGE", "AUTO_TARGETMARKER_DISENGAGE", function(pet)
        local ignored = pet:getLocalVar("targetmarker")
        if ignored > 0 then
            pet:delMod(tpz.mod.ACC, ignored)
            pet:delMod(tpz.mod.RACC, ignored)
            pet:setLocalVar("targetmarker", 0)
        end
    end)
end

function onUnequip(pet)
    pet:removeListener("AUTO_TARGETMARKER_ENGAGE")
    pet:removeListener("AUTO_TARGETMARKER_DISENGAGE")
end

function onManeuverGain(pet, maneuvers)
    local ignored = pet:getLocalVar("targetmarker")
    local target = pet:getTarget()
    if ignored > 0 and target then
        local eva = target:getEVA()
        local percentage = 0.05
        if maneuvers == 1 then
            percentage = 0.15
        elseif maneuvers == 2 then
            percentage = 0.30
        elseif maneuvers == 3 then
            percentage = 0.45
        end
        local accbonus = math.floor(eva * percentage)
        pet:addMod(tpz.mod.ACC, accbonus - ignored)
        pet:addMod(tpz.mod.RACC, accbonus - ignored)
        pet:setLocalVar("targetmarker", accbonus)
    end
end

function onManeuverLose(pet, maneuvers)
    local ignored = pet:getLocalVar("targetmarker")
    local target = pet:getTarget()
    if ignored > 0 and target then
        local eva = target:getEVA()
        local percentage = 0.05
        if maneuvers == 1 then
            percentage = 0.05
        elseif maneuvers == 2 then
            percentage = 0.15
        elseif maneuvers == 3 then
            percentage = 0.30
        end
        local accbonus = math.floor(eva * percentage)
        pet:delMod(tpz.mod.ACC, ignored - accbonus)
        pet:delMod(tpz.mod.RACC, ignored - accbonus)
        pet:setLocalVar("targetmarker", accbonus)
    end
end
