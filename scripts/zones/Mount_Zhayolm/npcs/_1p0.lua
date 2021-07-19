-----------------------------------
-- Area: Mount Zhayolm
-- Door: Heavy Iron Gate
-- !pos 660 -27 328 61
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    if player:getZPos() < 332 then
        player:startEvent(106)
    else
        player:startEvent(107)
    end
end

function onEventUpdate(player, csid, option)
	if csid == 106 and option == 0 then
		for _, entry in pairs(player:getNotorietyList()) do
			entry:disengage() -- resetEnmity(player) is not consistently working on all mobs.
		end
	end
end

function onEventFinish(player, csid, option)

end
