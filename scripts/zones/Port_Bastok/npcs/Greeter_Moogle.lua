-----------------------------------
-- Area: Port Bastok (236)
--  NPC: Greeter Moogle
-- !pos 40.5 8.5 -242.276 236
-----------------------------------
require("scripts/globals/events/login_campaign")
-----------------------------------

function onTrade (player, npc, trade)
end

function onTrigger (player, npc)
    local csid = 425
    tpz.events.loginCampaign.onTrigger(player, csid)
end

function onEventUpdate (player, csid, option)
    tpz.events.loginCampaign.onEventUpdate(player, csid, option)
end

function onEventFinish (player, csid, option)
end
