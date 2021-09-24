-----------------------------------
-- Area: Bastok Markets [S]
--  NPC: Kevan
-- !pos -308.590 -012.000 -094.227 189
-----------------------------------

local ID = require("scripts/zones/Bastok_Markets_[S]/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/settings")

function onTrade(player, npc, trade)
    -- Trade boxes from Beadeaux (S)
    if (trade:hasItemQty(2686, 1) and trade:getItemCount() == 1) then -- Bronze Letterbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.THE_WORDS_OF_DONHU_I)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.THE_WORDS_OF_DONHU_I)
        npc:showText(npc, 13549)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2687, 1) and trade:getItemCount() == 1) then -- Brass Letterbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.THE_WORDS_OF_DONHU_II)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.THE_WORDS_OF_DONHU_II)
        npc:showText(npc, 13549)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2688, 1) and trade:getItemCount() == 1) then -- Shakudo Letterbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.THE_WORDS_OF_DONHU_III)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.THE_WORDS_OF_DONHU_III)
        npc:showText(npc, 13549)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2689, 1) and trade:getItemCount() == 1) then -- Paktong Letterbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.THE_WORDS_OF_DONHU_IV)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.THE_WORDS_OF_DONHU_IV)
        npc:showText(npc, 13549)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2690, 1) and trade:getItemCount() == 1) then -- Pig Iron Letterbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.THE_WORDS_OF_DONHU_V)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.THE_WORDS_OF_DONHU_V)
        npc:showText(npc, 13549)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2691, 1) and trade:getItemCount() == 1) then -- Iron Letterbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.THE_WORDS_OF_DONHU_VI)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.THE_WORDS_OF_DONHU_VI)
        npc:showText(npc, 13549)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2692, 1) and trade:getItemCount() == 1) then -- Cast Iron Letterbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.THE_WORDS_OF_DONHU_VII)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.THE_WORDS_OF_DONHU_VII)
        npc:showText(npc, 13549)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2693, 1) and trade:getItemCount() == 1) then -- Wrought Iron Letterbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.THE_WORDS_OF_DONHU_VIII)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.THE_WORDS_OF_DONHU_VIII)
        npc:showText(npc, 13549)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end
end

function onTrigger(player, npc)
    player:startEvent(340)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end