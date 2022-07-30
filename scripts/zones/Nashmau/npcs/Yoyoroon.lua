-----------------------------------
-- Area: Nashmau
--  NPC: Yoyoroon
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Nashmau/IDs")
require("scripts/globals/shop")

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    local stock =
    {
        2239,  4940,    -- Tension Spring
        2243,  4940,    -- Loudspeaker
        2246,  4940,    -- Accelerator
        2251,  4940,    -- Armor Plate
        2254,  4940,    -- Stabilizer
        2258,  4940,    -- Mana Jammer
        2262,  4940,    -- Auto-Repair Kit
        2266,  4940,    -- Mana Tank
        2240,  9925,    -- Inhibitor
        --8462,  9925,    -- Speedloader
        2242,  9925,    -- Mana Booster
        2247,  9925,    -- Scope
        2250,  9925,    -- Shock Absorber
        2255,  9925,    -- Volt Gun
        2260,  9925,    -- Stealth Screen
        2264,  9925,    -- Damage Gauge
        2268,  9925,    -- Mana Conserver
        2238, 19890,    -- Strobe
        2409, 19890,    -- Flame Holder
        2410, 19890,    -- Ice Maker
        2248, 19890,    -- Pattern Reader
        2411, 19890,    -- Replicator
        2252, 19890,    -- Analyzer
        2256, 19890,    -- Heat Seeker
        2259, 19890,    -- Heatsink
        2263, 19890,    -- Flashbulb
        2267, 19890,    -- Mana Converter
        2241, 29640,    --Ten. Spring II
		2244, 29640,    --Scanner
		2245, 29640,    --Loudspeaker II
		2249, 29640,    --Accelerator II
		2253, 29640,    --Armor Plate II
		2257, 29640,    --Stabalizer II
		2261, 29640,    --Mana Jammer II
		9068, 41496,    --Barrier Module
		2265, 41496,    --Auto-Rep. Kit II
		2269, 41496,    --Mana Tank II
		2412, 41496,    --Hammermill
		9032, 53352,    --Strobe II
		2322, 118560,   --Attuner
		2323, 118560,   --Tact. Processor
		2324, 118560,   --Drum Magazine
		2325, 118560,   --Equalizer
		2326, 118560,   --Target Marker
		2327, 118560,   --Mana Channeler
		2328, 118560,   --Eraser
		2329, 118560,   --Smoke Screen
		3313, 118560,   --Vivi-Valve
		3314, 118560,   --Disruptor
		2413, 185250,   --Coiler
		2414, 185250,   --Steam Jacket
		2347, 222300,   --Reactive Shield
		2348, 222300,   --Tranquilizer
		2349, 222300,   --Turbo Charger
		2350, 222300,   --Schurzen
		2351, 222300,   --Dynamo
		2352, 222300,   --Condenser
		2354, 222300,   --Economizer
		2353, 222300,    --Optic Fiber

    }

    player:showText(npc, ID.text.YOYOROON_SHOP_DIALOG)
    tpz.shop.general(player, stock, JEUNO)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
