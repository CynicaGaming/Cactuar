-----------------------------------
-- Area: Windurst Walls (239)
--  NPC: Greeter Moogle
-- !pos -203 -0.276 -139 239
-----------------------------------
require("scripts/globals/events/login_campaign")
-----------------------------------

function onTrade (player, npc, trade)
end

function onTrigger (player, npc)
    local csid = 528
    tpz.events.loginCampaign.onTrigger(player, csid)
end

function onEventUpdate (player, csid, option)
    tpz.events.loginCampaign.onEventUpdate(player, csid, option)
end

function onEventFinish (player, csid, option)
end
