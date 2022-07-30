---------------------------------------------------------------------------------------------------
-- func: !spawnhnm <hnm>
-- auth: Cynica
-- desc: Spawns a HNM
---------------------------------------------------------------------------------------------------

cmdprops =
{
  permission = 5,
  parameters = "s"
};
function onTrigger(player, input)
	if (input == "0" or input == nil) then
		player:PrintToPlayer("!spawnhnm <Fafnir,Nidhog,Behemoth,King Behemoth,Adamantoise,Aspidochelone,Khimaera,Hydra,Cerberus,Jormungand,Tiamat,Vrtra,Bismarck,Dark Ixion>");

	elseif (input == "Fafnir" or input == "Faf") then
		 SpawnMob(17408018); --Fafnir
		player:PrintToPlayer("Fafnir");
	elseif (input == "Nidhogg" or input == "Nid") then
		 SpawnMob(17408019); --Nidhogg
		player:PrintToPlayer("Spawning Nidhogg.");
	elseif (input == "Behemoth" or input == "Behe") then
		 SpawnMob(17297440); --Behemoth
		player:PrintToPlayer("Spawning Behemoth.");
	elseif (input == "King Behemoth" or input == "KB") then
		 SpawnMob(17297441); --King Behemoth
		player:PrintToPlayer("Spawning King Behemoth.");
	elseif (input == "Adamantoise" or input == "Ada") then
		 SpawnMob(17301537); --Adamantoise
		player:PrintToPlayer("Spawning Adamantoise.");
	elseif (input == "Aspidochelone" or input == "Aspid") then
		 SpawnMob(17301538); --Aspidochelone
		player:PrintToPlayer("Spawning Aspidochelone.");
	elseif (input == "Cerberus" or input == "Cerb") then
		 SpawnMob(17027458); --Cerberus
		player:PrintToPlayer("Spawning Cerberus.");
	elseif (input == "Khimaira" or input == "Khim") then
		 SpawnMob(17101201); --Khimaira
		player:PrintToPlayer("Spawning Khimaira.");
    elseif (input == "Jormungand" or input == "Jorm") then
		 SpawnMob(16797969); --Jormungand
		player:PrintToPlayer("Spawning Jormungand.");
	elseif (input == "Tiamat" or input == "Tia") then
		 SpawnMob(16806227); --Tiamat
		player:PrintToPlayer("Spawning Tiamat.");
	elseif (input == "Vrtra" or input == "Vtr") then
		 SpawnMob(17555890); --Vrtra
		player:PrintToPlayer("Spawning Vrtra.");
	elseif (input == "Bismarck" or input == "Bis") then
		 SpawnMob(16793862); --Bismarck
		player:PrintToPlayer("Spawning Bismarck");
	elseif (input == "Dark Ixion" or input == "DI") then
		 SpawnMob(17109367); --Dark Ixion
		player:PrintToPlayer("Spawning Dark Ixion.");
	else
		player:PrintToPlayer("!spawnhnm <Fafnir,Nidhog,Behemoth,King Behemoth,Adamantoise,Aspidochelone,Khimaera,Hydra,Cerberus,Jormungand,Tiamat,Vrtra,Bismarck,Dark Ixion>");
  end
end
