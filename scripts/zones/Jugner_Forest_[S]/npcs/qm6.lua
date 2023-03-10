-----------------------------------
-- Area: Jugner Forest (S)
--  NPC: ???
-- Type: Quest NPC
-- !pos 68 -0.5 324 82
-----------------------------------
local ID = require("scripts/zones/Jugner_Forest_[S]/IDs")
require("scripts/globals/npc_util")
require("scripts/globals/quests")
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    local cotgStat = player:getCharVar("ClawsOfGriffonProg")

    if cotgStat == 2 then
        player:startEvent(201)
    elseif player:getCharVar("FingerfilcherKilled") == 1 then
        player:startEvent(203)
    elseif cotgStat == 3 and not GetMobByID(ID.mob.FINGERFILCHER_DRADZAD):isSpawned() then
        player:startEvent(202)
    else
        player:messageSpecial(ID.text.NOTHING_HAPPENS)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    if csid == 201 then
        player:setCharVar("ClawsOfGriffonProg", 3)
    elseif csid == 202 then
        SpawnMob(ID.mob.FINGERFILCHER_DRADZAD):updateClaim(player)
    elseif csid == 203 then
        npcUtil.completeQuest(player, CRYSTAL_WAR, tpz.quest.id.crystalWar.CLAWS_OF_THE_GRIFFON, {item=813, var={"ClawsOfGriffonProg", "FingerfilcherKilled"}})
        player:addExp(EXP_RATE_QUEST*3000) 
    end
end
