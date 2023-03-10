-----------------------------------
-- Area: Behemoth's Dominion
--  NPC: qm2 (???)
-- Spawns Behemoth or King Behemoth
-- !pos -267 -19 74 127
-----------------------------------
local ID = require("scripts/zones/Behemoths_Dominion/IDs")
require("scripts/globals/npc_util")
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------

function onSpawn(npc)
    if LandKingSystem_NQ < 2 and LandKingSystem_HQ < 2 then
    end
end

function onTrade(player, npc, trade)
    if not GetMobByID(ID.mob.BEHEMOTH):isSpawned() and not GetMobByID(ID.mob.KING_BEHEMOTH):isSpawned() then
        if LandKingSystem_NQ ~= 0 and npcUtil.tradeHas(trade, 3341) and npcUtil.popFromQM(player, npc, ID.mob.BEHEMOTH) then
            player:confirmTrade()
        elseif LandKingSystem_HQ ~= 0 and npcUtil.tradeHas(trade, 3342) and npcUtil.popFromQM(player, npc, ID.mob.KING_BEHEMOTH) then
            player:confirmTrade()
        end
    end
end

function onTrigger(player, npc)
    if player:getCharVar("AnnyEvent2020") == 11 and player:getCharVar("AnnyEvent2020_behe") == 0 and Anniversary_Event_2021 == 1 then
        if player:getFreeSlotsCount() > 0 then
            player:setCharVar("AnnyEvent2020_behe", 1)
            player:addItem(6405)
            player:PrintToPlayer("You hear the thundering cry of a behemoth off in the distance...", 0xD)
            player:messageSpecial((ID.text.ITEM_OBTAINED), 6405)
        else
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, 6405)
        end
    else
        player:messageSpecial(ID.text.IRREPRESSIBLE_MIGHT)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
