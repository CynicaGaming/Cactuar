-----------------------------------------
-- ID: 5322
-- Item: Flask of Mana Powder
-- Item Effect: Restores 25% MP (AOE)
-----------------------------------------
require("scripts/globals/settings")
require("scripts/globals/msg")

function onItemCheck(target)
    return 0
end

function onItemUse(target)
    target:forMembersInRange(10, function(member)
        member:messageBasic(tpz.msg.basic.RECOVERS_HP, 0, member:addMP((member:getMaxMP() / 100) * 25))
    end)
end
