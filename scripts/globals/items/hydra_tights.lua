-----------------------------------------
-- ID: 15596
-- Item: Hydra Tights
-- Item Effect: Haste
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")

function onItemCheck(target)
    return 0
end

function onItemUse(target)
    if (target:hasStatusEffect(tpz.effect.HASTE)) then
        target:messageBasic(tpz.msg.basic.NO_EFFECT)
    else
        target:addStatusEffect(tpz.effect.HASTE, 1000, 0, 180)
    end
end
