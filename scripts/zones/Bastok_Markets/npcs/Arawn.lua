-----------------------------------
-- Area: Bastok Markets
--  NPC: Arawn
-- Starts & Finishes Quest: Stamp Hunt
-- !pos -121.492 -4.000 -123.923 235
-----------------------------------
local ID = require("scripts/zones/Bastok_Markets/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/settings")
require("scripts/globals/quests")
require("scripts/globals/titles")
require("scripts/globals/utils")
require("scripts/globals/events/starlight_festivals")
-----------------------------------

function onTrade(player, npc, trade)
    onStarlightSmilebringersTrade(player, trade, npc)
end

function onTrigger(player, npc)
    local StampHunt = player:getQuestStatus(BASTOK, tpz.quest.id.bastok.STAMP_HUNT)
    local WildcatBastok = player:getCharVar("WildcatBastok")

    if (player:getQuestStatus(BASTOK, tpz.quest.id.bastok.LURE_OF_THE_WILDCAT) == QUEST_ACCEPTED and not utils.mask.getBit(WildcatBastok, 11)) then
        player:startEvent(429)
    elseif (StampHunt == QUEST_AVAILABLE) then
        player:startEvent(225)
    elseif StampHunt == QUEST_ACCEPTED and utils.mask.isFull(player:getCharVar("StampHunt_Mask"), 7) then
        player:startEvent(226)
    else
        player:startEvent(114)
    end

end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)

    if (csid == 225 and option == 0) then
        player:addQuest(BASTOK, tpz.quest.id.bastok.STAMP_HUNT)
        player:addKeyItem(tpz.ki.STAMP_SHEET)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.STAMP_SHEET)
    elseif (csid == 226) then
        if (player:getFreeSlotsCount(0) >= 1) then
            player:addTitle(tpz.title.STAMPEDER)
            player:addItem(13081)
            player:messageSpecial(ID.text.ITEM_OBTAINED, 13082) -- Leather Gorget +1
            player:addExp(EXP_RATE_QUEST*500) 
            player:delKeyItem(tpz.ki.STAMP_SHEET)
            player:setCharVar("StampHunt_Mask", 0)
            player:addFame(BASTOK, 50)
            player:completeQuest(BASTOK, tpz.quest.id.bastok.STAMP_HUNT)
        else
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, 13082)
        end
    elseif (csid == 429) then
        player:setCharVar("WildcatBastok", utils.mask.setBit(player:getCharVar("WildcatBastok"), 11, true))
    end

end
