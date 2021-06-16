-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Sanraku
-- Type: Zeni NM pop item and trophy management.
-- !pos -125.724 0.999 22.136 50
-----------------------------------
require("scripts/globals/besieged")
require("scripts/globals/znm")
local ID = require("scripts/zones/Aht_Urhgan_Whitegate/IDs")
-----------------------------------

entity.onTrade = function(player, npc, trade)
    xi.znm.sanraku.onTrade(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    xi.znm.sanraku.onTrigger(player, npc)
end

entity.onEventUpdate = function(player, csid, option)
    xi.znm.sanraku.onEventUpdate(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    xi.znm.sanraku.onEventFinish(player, csid, option)
end

function onEventFinish(player,csid,option)
    -- printf("finishRESULT: %u",option)
    --[[
    if csid == 908 then
        player:setCharVar("ZeniStatus",1)
        player:addCurrency("zeni_point", 2000)
    end
    ]]
end
