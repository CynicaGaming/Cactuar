-----------------------------------
-- Area: Rabao
--  NPC: Irmilant
-- Starts and Ends Quests: The Immortal Lu Shang and Indomitable Spirit
-- !pos 3.78 9.54 56.21 247
-----------------------------------
require("scripts/globals/titles")
require("scripts/globals/settings")
require("scripts/globals/quests")
require("scripts/globals/npc_util")
require("scripts/globals/keyitems")
-----------------------------------

function onTrade(player, npc, trade)
    local Indomitable = player:getQuestStatus(OUTLANDS, tpz.quest.id.outlands.INDOMITABLE_SPIRIT)
    local ImmortalLuShang = player:getQuestStatus(OUTLANDS, tpz.quest.id.outlands.THE_IMMORTAL_LU_SHANG)

    if (ImmortalLuShang == QUEST_ACCEPTED or ImmortalLuShang == QUEST_COMPLETED) and npcUtil.tradeHas(trade, {720, 489, 4102}) then
        player:startEvent(78)
    elseif (Indomitable == QUEST_ACCEPTED or Indomitable == QUEST_COMPLETED) and npcUtil.tradeHas(trade, {1837, 1826}) then
        player:startEvent(132)
    end
end

function onTrigger(player, npc)
    local Indomitable = player:getQuestStatus(OUTLANDS, tpz.quest.id.outlands.INDOMITABLE_SPIRIT)
    local ImmortalLuShang = player:getQuestStatus(OUTLANDS, tpz.quest.id.outlands.THE_IMMORTAL_LU_SHANG)
    local indomitableTimer = player:getCharVar("IndomitableSpiritTimer")

    if player:hasItem(489) == true and (ImmortalLuShang == QUEST_AVAILABLE or ImmortalLuShang == QUEST_COMPLETED) then
        player:startEvent(77) --Offer the quest if the player has the broken rod
    elseif player:hasKeyItem(tpz.ki.SERPENT_RUMORS) == true and Indomitable == QUEST_AVAILABLE then
        player:startEvent(131) --Begins Indomitable Spirit
    elseif indomitableTimer ~= 0 and indomitableTimer == getConquestTally() then
        player:startEvent(133) --Asks the player to wait (next CQ tally)
    elseif indomitableTimer ~= 0 then
        player:startEvent(134) --Ends the Quest
    elseif Indomitable == QUEST_COMPLETED then
        player:startEvent(135) --Dialogue for those who have completed Indomitable Spirit
    else
        player:startEvent(76) --Standard Dialogue
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    if csid == 77 then
        player:addQuest(OUTLANDS, tpz.quest.id.outlands.THE_IMMORTAL_LU_SHANG)
    elseif csid == 78 and npcUtil.completeQuest(player, OUTLANDS, tpz.quest.id.outlands.THE_IMMORTAL_LU_SHANG, {item=17386, fameArea=RABAO, fame=60, title=tpz.title.THE_IMMORTAL_FISHER_LU_SHANG}) then
        player:confirmTrade()
    elseif csid == 131 then
        player:addQuest(OUTLANDS, tpz.quest.id.outlands.INDOMITABLE_SPIRIT)
    elseif csid == 132 then
        player:confirmTrade()
        player:setCharVar("IndomitableSpiritTimer", getConquestTally()) -- Player must wait until next CQ tally
    elseif csid == 134 then
        player:addExp(EXP_RATE_QUEST*15000)
        npcUtil.completeQuest(player, OUTLANDS, tpz.quest.id.outlands.INDOMITABLE_SPIRIT, {item=17011, fameArea=RABAO, fame=100, title=tpz.title.INDOMITABLE_FISHER, var="IndomitableSpiritTimer"})
    end
end
