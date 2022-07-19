---------------------------------------------------------------------------------------------------
-- func: hnm <nm>
-- auth: Cynica
-- desc: Warps a player to HNM
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 5,
    parameters = "s"
};


function onTrigger(player, nm)
	if (nm == "Nidhogg") then
		player:setPos( 55, 6, 20, 238, 154 ); -- Fafnir/Nidhogg
	elseif (nm == "King Behemoth") then
		player:setPos( -257, -19, 69, 196, 127 ); -- Behemoth/King Behemoth
	elseif (nm == "Aspidochelone") then
		player:setPos( -53, -3, 55, 41, 128 ); -- Adamantoise/Aspid
	elseif (nm == "Khimaera") then
		player:setPos( 821, -10, 388, 99, 79 ); -- Khimaera
	elseif (nm == "Hydra") then
		player:setPos( -277, -27, 22, 66, 51 ); -- Hydra
	elseif (nm == "Cerberus") then
		player:setPos( 287, -23, -45, 10, 61 ); -- Cerberus
	elseif (nm == "Jormungand") then
		player:setPos( -160, -176, 117, 126, 5 ); -- Jormungand
	elseif (nm == "Tiamat") then
		player:setPos(-561, -11, -33, 16, 7); -- Tiamat
	elseif (nm == "Vrtra") then
		player:setPos(249, 6, -330, 162, 190); -- Vrtra
	elseif (nm == "Bismarck") then
		player:setPos(-622, 0, -657, 209, 4); -- Bismarck
	elseif (nm == "Dark Ixion") then
		player:setPos(379, -26, -54, 192, 81); -- Dark Ixion
	else
		player:PrintToPlayer("!hnm <Fafnir, King Behemoth, Aspidochelone, Khimaera, Hydra, Cerberus, Jormungand, Tiamat, Vrtra, Bismarck, Dark Ixion>");
	end
end; 