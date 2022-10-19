----------------------------------------
-- ID: ...
-- New Years Gift
-- 
-----------------------------------------

require("scripts/globals/npc_util")
require("scripts/globals/status")

function onItemCheck(target)
    local result = 0
    if target:getFreeSlotsCount() == 0 then
        result = tpz.msg.basic.ITEM_NO_USE_INVENTORY
    end
    return result
end


function pickItemRandom(target, itemgroup) -- selects an item from a weighted result table
    -- possible results
    local items = itemgroup

    -- sum weights
    local sum = 0
    for i = 1, #items do
        sum = sum + items[i][1]
    end

    -- pick the weighted result
    local item = 0
    local pick = math.random(sum)
    sum = 0
    for i = 1, #items do
        sum = sum + items[i][1]
        if sum >= pick then
            item = items[i][2]
            break
        end
    end

    return item
end

function onItemUse(target)
    roll = math.random(0,100)

    if roll >= 0 and roll <= 79 then
        quantity = 12
	    lottery_items = {
        -- Smithing --
        {20, 648},  -- Copper Ingot
        {15, 651},  -- Iron Ingot
        {10, 657},  -- Tama-Hagane
        {5, 654},   -- Darksteel Ingot
        {1, 655},   -- Adaman Ingot
        -- Goldsmithing --
        {20, 744},  -- Silver Ingot
        {15, 653},  -- Mythril Ingot
        {10, 745},  -- Gold Ingot
        {5, 746},   -- Platinum Ingot
        {1, 747},   -- Orichalcum Ingot
        -- Clothcraft --
        {20, 825},  -- Cotton Cloth
        {15, 826},  -- Linen Cloth
        {10, 829},  -- Silk Cloth
        {5, 828},   -- Velvet Cloth
        {1, 830},   -- Rainbow Cloth
        -- Leathcraft -- 
        {20, 857},  -- Dhalmel Hide
        {15, 1628}, -- Buffalo Hide
        {10, 855},  -- Tiger Hide
        {5, 2151},  -- Marid Hide
        {1, 1116},  -- Manticore Hide
        -- Bonecraft --
        {20, 895},  -- Ram Horn
        {15, 884},  -- Blk. Tiger Fang
        {10, 887},  -- Coral Fragment  
        {5, 2147},  -- Marid Tusk
        {1, 866},   -- Wyvern Scales
        -- Woodworking --
        {20, 697},  -- Holly Log
        {15, 696},  -- Yew Log
        {10, 699},  -- Oak Log
        {5, 702},   -- Ebony Log
        {1, 2532},  -- Teak Log
        -- Alchemy --
        {20, 937},  -- Animal Glue
        {15, 947},  -- Firesand
        {10, 637},  -- Slime Oil
        {5, 1109},  -- Artificial Lens
        {1, 931},   -- Cermet Chunk
        -- Cooking --
        {20, 4359}, -- Dhalmel Meat 
        {15, 4377}, -- Coeurl Meat 
        {10, 4435}, -- Cockatrice Meat 
        {5, 5152},  -- Buffalo Meat
        {1, 4272},  -- Dragon Meat
        }
    elseif roll >= 80 and roll <= 90 then
        quantity = 2
        lottery_items = {
            {20, 1464}, -- Lancewood Log
            {20, 1466}, -- Relic Iron
            {20, 1469}, -- Wootz Ore
            {20, 1516}, -- Griffon Hide
            {20, 1517}, -- Giant Frozen Head
            {20, 1518}, -- Colossal Skull
            {20, 1519}, -- Fresh Orc Liver
            {20, 1520}, -- Goblin Grease
            {20, 1521}, -- Slime Juice
            {5, 1299}, -- Fire Bead
            {5, 1330}, -- Ice Bead
            {5, 1331}, -- Wind Bead 
            {5, 1332}, -- Earth Bead
            {5, 1333}, -- Lightning Bead
            {5, 1334}, -- Water Bead
            {5, 1335}, -- Light Bead
            {5, 1306}, -- Dark Bead
    }
    elseif roll >= 91 and roll <= 100 then
        quantity = 1
        lottery_items = {
            {20, 3339},-- Honey Wine
            {20, 3341},-- Beastly Shank
            {20, 3343},-- Blue Pondweed
            {1, 3340}, -- Sweet Tea
            {1, 3342}, -- Savory Shank
            {1, 3344}, -- Red Pondweed
    }
    end
npcUtil.giveItem(target, { {pickItemRandom(target, lottery_items), quantity } })
end