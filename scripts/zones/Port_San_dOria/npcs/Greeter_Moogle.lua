-----------------------------------
-- Area: Port San d'Oria (232)
--  NPC: Greeter Moogle
-- !pos 62.5 -16 -126.713 232
-----------------------------------
require("scripts/globals/events/login_campaign")
-----------------------------------

function onTrade (player, npc, trade)
end

function onTrigger (player, npc)
    local csid = 806
    tpz.events.loginCampaign.onTrigger(player, csid)
end

function onEventUpdate (player, csid, option)
    tpz.events.loginCampaign.onEventUpdate(player, csid, option)
end

function onEventFinish (player, csid, option)
end
