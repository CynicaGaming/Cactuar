-----------------------------------
-- func: setcontainer
-- desc: Sets the players specified container size.
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/quests")

cmdprops =
{
    permission = 3,
    parameters = "iis"
}

function error(player, msg)
    player:PrintToPlayer(msg)
    player:PrintToPlayer("!setcontainer {container} {size} {player}")
    player:PrintToPlayer("Inventories: 4 (Mog Locker), 5 (Mog Satchel), 6 (Mog Sack), 7 (Mog Case)")
    player:PrintToPlayer("Wardroves: 8 (inventory 1), 10 (inventory 2), 11 (inventory 3), 12 (inventory 4)")
end

function onTrigger(player, inventory, inventorySize, target)
    -- Validate inventory and inventory size.
    if inventory == nil and inventorySize == nil then
        player:PrintToPlayer("!setcontainer {container} {size} {player}")
        player:PrintToPlayer("Inventories: 4 (Mog Locker), 5 (Mog Satchel), 6 (Mog Sack), 7 (Mog Case)")
        player:PrintToPlayer("Wardroves: 8 (inventory 1), 10 (inventory 2), 11 (inventory 3), 12 (inventory 4)")
        return
    elseif inventorySize == nil then
        player:PrintToPlayer("Please specify a inventory size.")
        return
    elseif inventory == nil then
        player:PrintToPlayer("Please specify a inventory.")
        return
    end

    if (target == nil) then
        targ = player
    else
        targ = GetPlayerByName(target)
        if (targ == nil) then
            error(player, string.format("Player named '%s' not found!", target))
            return
        end
    end

    local currentinventorySize = targ:getContainerSize(inventory)
    local adjustment = inventorySize - currentinventorySize

    -- Inform player and set bag size
    player:PrintToPlayer(string.format("Old inventory Size: %u", currentinventorySize))
    player:PrintToPlayer(string.format("New inventory Size: %u", inventorySize))
    targ:changeContainerSize(inventory, adjustment)
end