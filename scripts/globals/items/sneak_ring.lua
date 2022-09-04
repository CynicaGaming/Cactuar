-----------------------------------
-- ID: 26166
-- Item: Invisible Ring
-- Item Effect: gives invisible
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------

function onItemCheck(target)
    return 0
end

function onItemUse (target)
    if (target:hasStatusEffect(tpz.effect.SNEAK)) then
        target:messageBasic(tpz.msg.basic.NO_EFFECT)
    else
        target:addStatusEffect(tpz.effect.SNEAK, 0, 10, 360)
    end
end
