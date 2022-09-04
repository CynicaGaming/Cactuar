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
    if (target:hasStatusEffect(tpz.effect.INVISIBLE)) then
        target:delStatusEffect(tpz.effect.INVISIBLE)
        target:addStatusEffect(tpz.effect.INVISIBLE, 0, 10, 360)
    else
        target:addStatusEffect(tpz.effect.INVISIBLE, 0, 10, 360)
    end
end
