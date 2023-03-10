-----------------------------------------
-- ID: 17464
-- Item: Purgatory Mace
-- Additional Effect: Stun
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player, target, damage)
    local chance = 5
    if target:getMod(tpz.mod.STATUSRES) < 100 and target:getMod(tpz.mod.STUNRES) < 100 then
        if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.LIGHTNING, 0) <= 0.5) then
            return 0, 0, 0
        else
            target:addStatusEffect(tpz.effect.STUN, 1, 0, 3)
            return tpz.subEffect.STUN, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.STUN
        end
    end
end
