-----------------------------------
-- Area: Southern SandOria [S]
--  NPC: Lurouillat
-- !pos 44 2 -35 80
-----------------------------------

local ID = require("scripts/zones/Southern_San_dOria_[S]/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/settings")

function onTrade(player, npc, trade)
    -- Trade boxes from La Vaule (S)
    if (trade:hasItemQty(2678, 1) and trade:getItemCount() == 1) then -- Maple Strongbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.IMPERIAL_LINEAGE_CHAPTER_I)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.IMPERIAL_LINEAGE_CHAPTER_I)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2679, 1) and trade:getItemCount() == 1) then -- Magnolia Strongbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.IMPERIAL_LINEAGE_CHAPTER_II)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.IMPERIAL_LINEAGE_CHAPTER_II)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2680, 1) and trade:getItemCount() == 1) then -- Beech Strongbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.IMPERIAL_LINEAGE_CHAPTER_III)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.IMPERIAL_LINEAGE_CHAPTER_III)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2681, 1) and trade:getItemCount() == 1) then -- Evergreen Strongbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.IMPERIAL_LINEAGE_CHAPTER_IV)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.IMPERIAL_LINEAGE_CHAPTER_IV)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2682, 1) and trade:getItemCount() == 1) then -- Holly Strongbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.IMPERIAL_LINEAGE_CHAPTER_V)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.IMPERIAL_LINEAGE_CHAPTER_V)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2683, 1) and trade:getItemCount() == 1) then -- Oak Strongbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.IMPERIAL_LINEAGE_CHAPTER_VI)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.IMPERIAL_LINEAGE_CHAPTER_VI)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2684, 1) and trade:getItemCount() == 1) then -- Elm Strongbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.IMPERIAL_LINEAGE_CHAPTER_VII)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.IMPERIAL_LINEAGE_CHAPTER_VII)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2685, 1) and trade:getItemCount() == 1) then -- Willow Strongbox
        player:tradeComplete()
        player:addKeyItem(tpz.ki.IMPERIAL_LINEAGE_CHAPTER_VIII)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.IMPERIAL_LINEAGE_CHAPTER_VIII)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end
end

function onTrigger(player, npc)
    player:startEvent(350)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
