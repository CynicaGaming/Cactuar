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
        8449, 4940, -- Tension Spring
        8450, 4940, -- Loudspeaker
        8451, 4940, -- Accelerator
        8452, 4940, -- Armor Plate
        8453, 4940, -- Stabilizer
        8455, 4940, -- Mana Jammer
        8456, 4940, -- Auto-Repair Kit
        8457, 4940, -- Mana Tank
        8458, 9925, -- Inhibitor
        8459, 9925, -- Speedloader
        8462, 9925, -- Mana Booster
        8463, 9925, -- Scope
        8481, 9925, -- Shock Absorber
        8482, 9925, -- Volt Gun
        8483, 9925, -- Stealth Screen
        8484, 9925, -- Damage Gauge
        8485, 9925, -- Mana Conserver
        8487, 19890, -- Strobe
        8488, 19890, -- Flame Holder
        8489, 19890, -- Ice Maker
        8491, 19890, -- Pattern Reader
        8513, 19890, -- Replicator
        8514, 19890, -- Analyzer
        8515, 19890, -- Heat Seeker
        8516, 19890, -- Heatsink
        8517, 19890, -- Flashbulb
        8519, 19890, -- Mana Converter
        8520, 29640, -- Tension Spring II
        8522, 29640, -- Scanner
        8523, 29640, -- Loudspeaker II
        8524, 29640, -- Accelerator II
        8545, 29640, -- Armor Plate II
        8546, 29640, -- Stabilizer II
        8547, 29640, -- Mana Jammer II
        8548, 41496, -- Hammermill
        8549, 41496, -- Barrier Module
        8551, 41496, -- Resister
        8552, 41496, -- Auto-Repair Kit II
        8554, 41496, -- Arcanic Cell
        8555, 41496, -- Mana Tank II
        8577, 53352, -- Strobe II
        8578, 65208, -- Tension Spring III
        8579, 65208, -- Loudspeaker III
        8580, 65208, -- Amplifier
        8581, 65208, -- Accelerator III
        8584, 65208, -- Scope II
        8585, 65208, -- Armor Plate III
        8609, 65208, -- Stabilizer III
        8610, 65208, -- Mana Jammer III
        8611, 82992, -- Inhibitor II
        8612, 82992, -- Speedloader II
        8613, 82992, -- Repeater
        8616, 82992, -- Stealth Screen II
        8617, 118560, -- Attuner
        8618, 118560, -- Heat Capacitor
        8619, 118560, -- Tactical Processor
        8641, 118560, -- Power Cooler
        8642, 118560, -- Drum Magazine
        8643, 118560, -- Barrage Turbine
        8644, 118560, -- Equalizer
        8645, 118560, -- Barrier Module II
        8648, 118560, -- Target Marker
        8651, 118560, -- Galvanizer
        8673, 118560, -- Mana Channeler
        8674, 118560, -- Percolator
        8675, 118560, -- Eraser
        8676, 118560, -- Vivi-Valve
        8677, 118560, -- Smoke Screen
        8680, 118560, -- Disruptor
        
    }

    player:showText(npc, ID.text.YOYOROON_SHOP_DIALOG)
    tpz.shop.general(player, stock, JEUNO)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
