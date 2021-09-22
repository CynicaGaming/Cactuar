-----------------------------------
-- Area: Windurst Waters (S)
--  NPC: Pogigi
-- Type: Sealed Container
-- !pos -29.787 -4.499 42.603 94
-----------------------------------
local ID = require("scripts/zones/Windurst_Waters_[S]/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/settings")

function onTrade(player, npc, trade)
    -- Trade boxes from Castle Oztroja (S)
    if (trade:hasItemQty(2694, 1) and trade:getItemCount() == 1) then -- Bamboo Grass Basket
        player:tradeComplete()
        player:addKeyItem(tpz.ki.HABALOS_ECLOGUE_VERSE_I)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.HABALOS_ECLOGUE_VERSE_I)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2695, 1) and trade:getItemCount() == 1) then -- Bamboo Medicine Basket
        player:tradeComplete()
        player:addKeyItem(tpz.ki.HABALOS_ECLOGUE_VERSE_II)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.HABALOS_ECLOGUE_VERSE_II)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2696, 1) and trade:getItemCount() == 1) then -- Bamboo Bugcage
        player:tradeComplete()
        player:addKeyItem(tpz.ki.HABALOS_ECLOGUE_VERSE_III)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.HABALOS_ECLOGUE_VERSE_III)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2697, 1) and trade:getItemCount() == 1) then -- Bamboo Flower Basket
        player:tradeComplete()
        player:addKeyItem(tpz.ki.HABALOS_ECLOGUE_VERSE_IV)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.HABALOS_ECLOGUE_VERSE_IV)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end
    
    if (trade:hasItemQty(2698, 1) and trade:getItemCount() == 1) then -- Bamboo Birdcage
        player:tradeComplete()
        player:addKeyItem(tpz.ki.HABALOS_ECLOGUE_VERSE_V)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.HABALOS_ECLOGUE_VERSE_V)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2699, 1) and trade:getItemCount() == 1) then -- Bamboo Charcoal Basket
        player:tradeComplete()
        player:addKeyItem(tpz.ki.HABALOS_ECLOGUE_VERSE_VI)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.HABALOS_ECLOGUE_VERSE_VI)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2700, 1) and trade:getItemCount() == 1) then -- Bamboo Tea Basket
        player:tradeComplete()
        player:addKeyItem(tpz.ki.HABALOS_ECLOGUE_VERSE_VII)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.HABALOS_ECLOGUE_VERSE_VII)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

    if (trade:hasItemQty(2701, 1) and trade:getItemCount() == 1) then -- Bamboo Snakecage
        player:tradeComplete()
        player:addKeyItem(tpz.ki.HABALOS_ECLOGUE_VERSE_VIII)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.HABALOS_ECLOGUE_VERSE_VIII)
 -- correct onTradeEvent here, possibly 1 or multiple events per strongbox     player:startEvent(number here)
    end

end

function onTrigger(player, npc)
    player:startEvent(330)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
