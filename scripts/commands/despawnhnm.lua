---------------------------------------------------------------------------------------------------
-- func: !despawnhnm <hnm>
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
        player:PrintToPlayer("!despawnhnm <Fafnir,Nidhog,Behemoth,King Behemoth,Adamantoise,Aspidochelone,Khimaera,Hydra,Cerberus,Jormungand,Tiamat,Vrtra,Bismarck,Dark Ixion>>");

	elseif (input == "Fafnir" or input == "Faf") then
		DespawnMob(17408018); --Fafnir
		player:PrintToPlayer("Fafnir");
	elseif (input == "Nidhogg" or input == "Nid") then
		DespawnMob(17408019); --Nidhogg
		player:PrintToPlayer("Despawning Nidhogg.");
	elseif (input == "Behemoth" or input == "Behe") then
		DespawnMob(17297440); --Behemoth
		player:PrintToPlayer("Despawning Behemoth.");
	elseif (input == "King Behemoth" or input == "KB") then
		DespawnMob(17297441); --King Behemoth
		player:PrintToPlayer("Despawning King Behemoth.");
	elseif (input == "Adamantoise" or input == "Ada") then
		DespawnMob(17301537); --Adamantoise
		player:PrintToPlayer("Despawning Adamantoise.");
	elseif (input == "Aspidochelone" or input == "Aspid") then
		DespawnMob(17301538); --Aspidochelone
		player:PrintToPlayer("Despawning Aspidochelone.");
	elseif (input == "Cerberus" or input == "Cerb") then
		DespawnMob(17027458); --Cerberus
		player:PrintToPlayer("Despawning Cerberus.");
	elseif (input == "Khimaira" or input == "Khim") then
		DespawnMob(17101201); --Khimaira
		player:PrintToPlayer("Despawning Khimaira.");
    elseif (input == "Jormungand" or input == "Jorm") then
		DespawnMob(16797969); --Jormungand
		player:PrintToPlayer("Despawning Jormungand.");
	elseif (input == "Tiamat" or input == "Tia") then
		DespawnMob(16806227); --Tiamat
		player:PrintToPlayer("Despawning Tiamat.");
	elseif (input == "Vrtra" or input == "Vtr") then
		DespawnMob(17555890); --Vrtra
		player:PrintToPlayer("Despawning Vrtra.");
	elseif (input == "Bismarck" or input == "Bis") then
		DespawnMob(16793862); --Bismarck
		player:PrintToPlayer("Despawning Bismarck");
	elseif (input == "Dark Ixion" or input == "DI") then
		DespawnMob(17109367); --Dark Ixion
		player:PrintToPlayer("Despawning Dark Ixion.");
	else
		player:PrintToPlayer("!despawnhnm <Fafnir,Nidhog,Behemoth,King Behemoth,Adamantoise,Aspidochelone,Khimaera,Hydra,Cerberus,Jormungand,Tiamat,Vrtra,Bismarck,Dark Ixion>");
    end
end
