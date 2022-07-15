---------------------------------------------------------------------------------------------------
-- func: dw
-- desc: Temporarily sets the player's subjob to Ninja to allow equipping weapons on sub.
---------------------------------------------------------------------------------------------------

require("scripts/globals/status");

cmdprops =
{
    permission = 0,
    parameters = ""
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!dw");
end;

function onTrigger(player)

	if player:isCustomizationEnabled(2) == false then
		player:PrintToPlayer("Global dual wield is not enabled on this server.")
		return
	end
	
    ret = player:flip(18);
	
	if (ret == 0) then
		error(player, "... an error occurred.");
	end
end
