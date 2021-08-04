-----------------------------------
-- Area: Garden
--  NPC: Quasilumin
-- Type: Standard NPC
-- !pos -27.443 -1 -636.850 33
-----------------------------------
local ID = require("scripts/zones/Grand_Palace_of_Huxzoi/IDs")
require("scripts/globals/pathfind")
require("scripts/globals/utils")
-----------------------------------

local path = 
        {   540, -1, 296.5,
            539.95, 0, 260.12,
            481.10, 0, 260.02,
            460.10, 0, 260.03,
            460.45, 0, 219.95,
            380.06, 0, 220.10,
            380.08, 0, 260.06,
            361.44, 0, 259.94,
            300.034, 0, 260.1,
            300.02, -1, 296.71
        }

        

function onSpawn(npc)
    npc:initNpcAi()
    npc:speed(18)
    npc:setPos(540, -1, 296.5)
    npc:hideNPC(5000)
    GetNPCByID(16916929):setLocalVar("checkpoint", 0) 
    GetNPCByID(16916929):setLocalVar("quasiStatus", 0)
    local checkpoint = GetNPCByID(16916929):getLocalVar("checkpoint")
    npc:pathTo(539.95, 0, 260.12)
end


function onTrade(player, npc, trade)
end

function onTrigger(player, npc) 
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end

function onPath(npc, player)

    local quasiStatus = GetNPCByID(16916929):getLocalVar("quasiStatus")
    local checkpoint = GetNPCByID(16916929):getLocalVar("checkpoint")

    if checkpoint == 0 and npc:checkDistance(540, -1, 296.5) == 0 then
        npc:pathTo(539.95, 0, 260.12)  
        GetNPCByID(16916929):setLocalVar("checkpoint", 1)
    elseif checkpoint == 1 and npc:checkDistance(539.95, 0, 260.12) == 0 then
        npc:pathTo(481.10, 0, 260.02)
        GetNPCByID(16916929):setLocalVar("checkpoint", 2)
    elseif checkpoint == 2 and npc:checkDistance(481.10, 0, 260.02) == 0 then
        if quasiStatus == 1 then
            print('DistanceCheck')
            print(npc:checkDistance(481.10, 0, 260.02))
            GetNPCByID(16916877):openDoor(15)
        end
        npc:pathTo(460.10, 0, 260.03)
        GetNPCByID(16916929):setLocalVar("checkpoint", 3)
    elseif checkpoint == 3 and npc:checkDistance(460.10, 0, 260.03) == 0 then
        npc:pathTo(460.45, 0, 219.95)
        GetNPCByID(16916929):setLocalVar("checkpoint", 4)
    elseif checkpoint == 4 and npc:checkDistance(460.45, 0, 219.95) == 0 then
        npc:pathTo(380.06, 0, 220.10)
        GetNPCByID(16916929):setLocalVar("checkpoint", 5)
    elseif checkpoint == 5 and npc:checkDistance(380.06, 0, 220.10) == 0 then

        npc:pathTo(380.08, 0, 260.06)
        GetNPCByID(16916929):setLocalVar("checkpoint", 6)
    elseif checkpoint == 6 and npc:checkDistance(380.08, 0, 260.06) == 0 then
        npc:pathTo(361.44, 0, 259.94)
        GetNPCByID(16916929):setLocalVar("checkpoint", 7)
    elseif checkpoint == 7 and npc:checkDistance(361.44, 0, 259.94) == 0 then
        if quasiStatus == 1 then
            GetNPCByID(16916878):openDoor(15)
        end
        npc:pathTo(300.034, 0, 260.1)
        GetNPCByID(16916929):setLocalVar("checkpoint", 8)
    elseif checkpoint == 8 and npc:checkDistance(300.034, 0, 260.1) == 0 then
        npc:pathTo(300.02, -1, 296.71)
        GetNPCByID(16916929):setLocalVar("checkpoint", 9)
    elseif checkpoint == 9 and npc:checkDistance(300.02, -1, 296.71) == 0 then
        GetNPCByID(16916929):setLocalVar("checkpoint", 0)

        npc:hideNPC(7000)
        npc:setPos(540, -1, 296.5)
        if quasiStatus == 1 then
            GetNPCByID(16916875):openDoor(25)
            GetNPCByID(16916929):setLocalVar("quasiStatus", 0) 
            npc:showText(npc, 7358)
            npc:showText(npc, 7362)
        end
        npc:pathTo(539.95, 0, 260.12)   
    end

    if quasiStatus == 0 then
        npc:updateNPCHideTime(25000)
    end

    print(checkpoint)
    print(quasiStatus)

end