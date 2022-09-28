-- This file is called by login_campaign.lua and require()'s no file, it should not be require()'d by any
-- other lua scripts, which should instead require() login_campaign.lua directly.

-- TODO: Move this table somewhere untracked so it can be freely modified without polluting the
--       git workspace

-- TODO: Fill in with _commented out entries_ for all the things seen in each category
-- https://www.bg-wiki.com/ffxi/Repeat_Login_Campaign/Past_Login_Campaign_Rewards
local prizes =
{
    [1] =
    {
        ["price"] = 10,
        ["items"] =
        {
            1126, -- Beastmen's Seal
            1127, -- Kindred's Seal
            4107, -- Earth Cluster
            4109, -- Water Cluster
            4106, -- Wind Cluster
            4104, -- Fire Cluster
            4105, -- Ice Cluster
            4108, -- Lightning Cluster
            4110, -- Light Cluster
            4111, -- Dark Cluster
            -- 2955, -- Kindred's Crest
            -- 2956, -- High Kindred's Crest
            -- 2957, -- Sacred Kindred's Crest
        },
    },

    [5] = 
    {
        ["price"] = 100,
        ["items"] =
        {
            1456, -- 100 Byne Bill
            1453, -- M. Silverpiece
            1450, -- L. Jadeshell
            2488, -- Alexandrite
            
        },
    },

    [9] =
    {
        ["price"] = 250,
        ["items"] =
        {   
            558, -- Tarut:The Fool
            559, -- Tarut:The Death
            561, -- Tarut:The King
            562, -- Tarut:The Hermit

        },
    },

    [13] =
    {
        ["price"] = 500,
        ["items"] =
        {
            1418, -- Gem of the East
            1420, -- Gem of the South
            1422, -- Gem of the West
            1424, -- Gem of the North
            1850, -- First Virtue
            1853, -- Second Virtue
            1856, -- Third Virtue

    },
},

    [17] =
    {
        ["price"] = 750,
        ["items"] =
        {
            1419, -- Springstone
            1421, -- Summerstone
            1423, -- Autumnstone
            1425, -- Winterstone
            3339, -- Honey Wine
            3341, -- Beastly Shank
            3343, -- Blue Pondweed
            1873, -- Brigand's Chart
            1874, -- Pirate's Chart
        },

    },

    [21] =
    {
        ["price"] = 1500,
        ["items"] =
        {

            1907, -- Silver Chip
            1908, -- Cerulean Chip
            1909, -- Smalt Chip
            1910, -- Smoky Chip
            1986, -- Orchid Chip
            1987, -- Charcoal Chip
            1988, -- Magenta Chip
            1848, -- Fourth Virtue
            1847, -- Fifth Virtue
            1849, -- Sixth Virtue
            3340, -- Sweet Tea
            3342, -- Savory Shank
            3344, -- Red Pondweed
            

        },
    },

    [25] =
    {
        ["price"] = 2500,
        ["items"] =
        {
            10430, -- Decennial Crown 
            10431, -- Decennial Tiara
            10429, -- Moogle Masque
            10250, -- Moogle Suit
            25657, -- Wyrmking Masque
            25756, -- Wyrmking Suit
            27765, -- Chocobo Masque
            27911, -- Chocobo Suit
            18464, -- Ark Tachi
            18545, -- Ark Tabar
            18563, -- Ark Scythe
            18912, -- Ark Saber 
            18913, -- Ark Sword
            20573, -- Aern Dagger
            20674, -- Aern Sword
            21742, -- Aern Axe
            21860, -- Aern Spear
            22065, -- Aern Staff
        },
    },

    [29] =
    {
        ["price"] = 4000,
        ["items"] =
        {
            11538, -- Nexus Cape
        -- 26166, -- Invisible Ring
        -- 26167, -- Sneak Ring
        -- 26169, -- Reraise Ring
            10924, -- Chocobo Torque
            10925, -- Fisher's Torque
            10926, -- Field Torque 
            10948, -- Carver's Torque
            10949, -- Smith's Torque
            10950, -- Goldsm. Torque
            10951, -- Weaver's Torque
            10952, -- Taner's Torque 
            10953, -- Bone Torque 
            10954, -- Alchemist Torque 
            10955, -- Culin. Torque 
         -- 10050, -- ♪Tiger
         -- 10051, -- ♪Crab
         -- 10052, -- ♪Red Crab
         -- 10053, -- ♪Bomb
         -- 10054, -- ♪Sheep
         -- 10055, -- ♪Morbol
         -- 10056, -- ♪Crawler
         -- 10058, -- ♪Beetle
         -- 10059, -- ♪Moogle
         -- 10061, -- ♪Tulfaire
         -- 10062, -- ♪Warmachine
         -- 10063, -- ♪Xzmoit
         -- 10064, -- ♪Hippogryph
         -- 10065, -- ♪Spectral Chair
         -- 10066, -- ♪Spheroid
         -- 10068, -- ♪Coeurl
         -- 10071, -- ♪Levitus
         -- 10069, -- ♪Goobbue
         -- 10070, -- ♪Raaz
        },
    },

}

return prizes