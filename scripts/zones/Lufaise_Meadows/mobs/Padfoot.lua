-----------------------------------
-- Area: Lufaise Meadows
--   NM: Padfoot
-- !pos -43.689 0.487 -328.028 24
-- !pos 260.445 -1.761 -27.862 24
-- !pos 412.447 -0.057 -200.161 24
-- !pos -378.950 -15.742 144.215 24
-- !pos -141.523 -15.529 91.709 24
-----------------------------------
local ID = require("scripts/zones/Lufaise_Meadows/IDs")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
    if mob:getID() == ID.mob.PADFOOT[GetServerVariable("realPadfoot")] then
        mob:setDropID(2911)
    else
        mob:setDropID(1972)
    end
    mob:setMobMod(tpz.mobMod.CLAIM_SHIELD, 1)
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    local mobId = mob:getID()

    if mobId == ID.mob.PADFOOT[GetServerVariable("realPadfoot")] then
        local respawn = 75600 + math.random(0, 6) * 1800 -- 21 - 24 hours with half hour windows

        for _, v in pairs(ID.mob.PADFOOT) do
            if v ~= mobId and GetMobByID(v):isSpawned() then
                DespawnMob(v)
            end
            GetMobByID(v):setRespawnTime(respawn)
        end

        SetServerVariable("realPadfoot", math.random(1, 5))
        SetServerVariable("PadfootRespawn",(os.time() + respawn))
    end
end
