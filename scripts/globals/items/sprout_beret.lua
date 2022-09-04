-----------------------------------------
-- ID: 15198
-- Sprout Beret
-- Enchantment: 60Min, Costume - Mandragora (white)
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onItemCheck(target)
    if not target:canUseMisc(tpz.zoneMisc.COSTUME) then
        return tpz.msg.basic.CANT_BE_USED_IN_AREA
    end
    return 0
end

function onItemUse(target)
    local num = math.random(0,100)

    if num == 0  then 
        target:addStatusEffect(tpz.effect.COSTUME, 301, 0, 3600)
    elseif num == 100 then 
        target:addStatusEffect(tpz.effect.COSTUME, 2101, 0, 3600)
    elseif num >= 1 and num <= 49 then
        target:addStatusEffect(tpz.effect.COSTUME, 31, 0, 3600)
    elseif num >= 50 and num <= 99 then
        target:addStatusEffect(tpz.effect.COSTUME, 2247, 0, 3600)
    end
end
