-----------------------------------
-- Area: Southern San d'Oria
--  NPC: Ailevia
-- Adventurer's Assistant
-- Only recieving Adv.Coupon and simple talk event are scripted
-- This NPC participates in Quests and Missions
-- !pos -8 1 1 230
-------------------------------------
local ID = require("scripts/zones/Southern_San_dOria/IDs")
require("scripts/globals/settings")
-----------------------------------

function onTrade(player, npc, trade)
    -- Adventurer coupon
    if (trade:getItemCount() == 1 and trade:hasItemQty(536, 1) == true) then
        player:startEvent(655)
    end
end

function onTrigger(player, npc)
    if player:getCharVar("AnnyEvent2020") == 0 and player:getNation() == 0 and Anniversary_Event_2021 == 1 then
        if player:getFreeSlotsCount() > 0 and player:hasItem(536) == false then
            player:setCharVar("AnnyEvent2020", 1)
            player:PrintToPlayer("Alevia : Oh its you! Its been quite awhile since i've seen you.", 0xD)
            player:PrintToPlayer("Alevia : You seem to have some a long way since then, I have something for you.", 0xD)
            player:PrintToPlayer("Alevia : The mage who is always full of herself has been looking for this...", 0xD)
            player:addItem(536)
            player:messageSpecial(ID.text.ITEM_OBTAINED, 536)
        else
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, 536)
            player:PrintToPlayer("Alevia : Come back after sorting that mess of an inventory...", 0xD)
        end
    else
        player:startEvent(615) -- i know a thing or 2 about these streets
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    if (csid == 655) then
        player:addGil(GIL_RATE*1000)
        player:tradeComplete()
        player:messageSpecial(ID.text.GIL_OBTAINED, GIL_RATE*1000)
    end
end
