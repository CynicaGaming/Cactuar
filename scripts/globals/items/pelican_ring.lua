-----------------------------------------
-- ID: 15553 and 15556
-- Item: pelican ring
-- Increases chance of additional skill up rolls after catching fish.
-----------------------------------------
-- Duration: 20:00 min
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:getMod(tpz.mod.PELICAN_RING_EFFECT) ~= 0) then
        result = tpz.msg.basic.ITEM_UNABLE_TO_USE_2
    end
    return result
end

function onItemUse(target)
    target:addStatusEffectEx(tpz.effect.NA, tpz.effect.ENCHANTMENT, 0, 3, 1200)
    target:addMod(tpz.mod.PELICAN_RING_EFFECT, 1)
end