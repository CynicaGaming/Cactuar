-----------------------------------
-- Area: Bastok Mines
--  NPC: Parraggoh
-- Finishes Quest: Beauty and the Galka
-----------------------------------
require("scripts/globals/quests")
require("scripts/globals/settings")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Bastok_Mines/IDs")
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    local BeautyAndTheGalka = player:getQuestStatus(BASTOK, tpz.quest.id.bastok.BEAUTY_AND_THE_GALKA)

local BeautyAndTheGalka       = player:getQuestStatus(BASTOK,tpz.quest.id.bastok.BEAUTY_AND_THE_GALKA)
local PalboroughMinesLogs     = player:hasKeyItem(tpz.ki.PALBOROUGH_MINES_LOGS)

    if (PalboroughMinesLogs == true) then
        player:startEvent(10)
    elseif (BeautyAndTheGalka == QUEST_ACCEPTED) then
        Message = math.random(0,1)

        if (Message == 1) then
            player:startEvent(8)
        else
            player:startEvent(9)
        end
    elseif player:getCharVar("BeautyAndTheGalkaDenied") == 1 then
        player:startEvent(7)
    elseif BeautyAndTheGalka == QUEST_COMPLETED then
        player:startEvent(12)
    else
        player:startEvent(11)
    end
end

function onEventUpdate(player, csid, option)
    -- printf("CSID2: %u",csid);
    -- printf("RESULT2: %u",option);
end

function onEventFinish(player,csid,option)

    if csid == 7 and option == 0 then
        player:addQuest(BASTOK,tpz.quest.id.bastok.BEAUTY_AND_THE_GALKA)
    elseif csid == 10 then
        FreeSlots = player:getFreeSlotsCount()

        if FreeSlots >= 1 then
            player:completeQuest(BASTOK,tpz.quest.id.bastok.BEAUTY_AND_THE_GALKA)
            player:setCharVar("BeautyAndTheGalkaDenied", 0)
            player:delKeyItem(tpz.ki.PALBOROUGH_MINES_LOGS)
            player:addFame(BASTOK, 75)
            player:addItem(16465)
            player:messageSpecial(ID.text.ITEM_OBTAINED, 16614) -- Default: 16465 Bronze Knife
            player:addExp(EXP_RATE_QUEST*200) 

        else
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, 16614)
        end
    end
end
