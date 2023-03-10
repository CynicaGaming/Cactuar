-----------------------------------------
-- ID: 5322
-- Item: Flask of Healing Powder
-- Item Effect: Restores 25% HP (AOE)
-----------------------------------------
require("scripts/globals/settings")
require("scripts/globals/msg")

function onItemCheck(target)
    return 0
end

function onItemUse(target)
    target:forMembersInRange(10, function(member)
        member:messageBasic(tpz.msg.basic.RECOVERS_HP, 0, member:addHP((member:getMaxHP() / 100) * 25))
    end)
end

