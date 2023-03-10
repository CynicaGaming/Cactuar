-----------------------------------
-- Area: Sealion's Den
-- Name: The Warrior's Path
-----------------------------------
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/titles")
-----------------------------------

function onBattlefieldTick(battlefield, tick)
    if battlefield:getLocalVar("gameover") - battlefield:getRemainingTime() >= 10 then -- loss condition with enough delay that the full cosmic elucidation animation can go off
        battlefield:lose()
        return
    end
    tpz.battlefield.onBattlefieldTick(battlefield, tick)
end

function onBattlefieldRegister(player, battlefield)
end

function onBattlefieldEnter(player, battlefield)
end

function onBattlefieldLeave(player, battlefield, leavecode)
    if leavecode == tpz.battlefield.leaveCode.WON then
        local name, clearTime, partySize = battlefield:getRecord()
        local arg8 = (player:getCurrentMission(COP) ~= tpz.mission.id.cop.THE_WARRIOR_S_PATH) and 1 or 0
        player:startEvent(32001, battlefield:getArea(), clearTime, partySize, battlefield:getTimeInside(), 1, battlefield:getLocalVar("[cs]bit"), arg8)
    elseif leavecode == tpz.battlefield.leaveCode.LOST then
        player:startEvent(32002)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    if csid == 32001 then
        if player:getCurrentMission(COP) == tpz.mission.id.cop.THE_WARRIOR_S_PATH then
            player:completeMission(COP, tpz.mission.id.cop.THE_WARRIOR_S_PATH)
            player:addMission(COP, tpz.mission.id.cop.GARDEN_OF_ANTIQUITY)
            player:setCharVar("PromathiaStatus", 0)
            player:addTitle(tpz.title.THE_CHEBUKKIS_WORST_NIGHTMARE)
            player:setPos(-25, -1, -620, 208, 33) -- Al'Taieu
        end
        player:addExp(1000)
    end
end
