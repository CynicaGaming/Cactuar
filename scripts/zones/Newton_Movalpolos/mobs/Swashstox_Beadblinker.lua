------------------------------
-- Area: Newton Movalpolos
--   NM: Swashstox Beadblinker
------------------------------
local ID = require("scripts/zones/Newton_Movalpolos/IDs")
require("scripts/globals/hunts")
require("scripts/globals/settings")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.EXP_BONUS, (COP_EXP_SCALING))
end

function onMobSpawn(mob)
    local mobId = mob:getID()
    for i = 1, 2 do
        local guardID = mobId+i
        local pos = mob:getPos()

        SpawnMob(guardID)
        GetMobByID(guardID):setSpawn(pos.x + i, pos.y - 0.5, pos.z - i, pos.rot)
    end
end

function onMobFight(mob, target)
    local mobId = mob:getID()
    for i = 1, 2 do
        local guardID = GetMobByID(mobId+i)
        guardID:updateEnmity(target)
    end
end

function onMobRoam(mob)
    local guard1 = GetMobByID(mob:getID() + 1)
    local guard2 = GetMobByID(mob:getID() + 2)

    if guard1:isSpawned() then
        guard1:pathTo(mob:getXPos() + 1, mob:getYPos(), mob:getZPos())
    end
    if guard2:isSpawned() then
        guard2:pathTo(mob:getXPos() + 3, mob:getYPos(), mob:getZPos() + 1)
    end
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 247)
end

function onMobDespawn(mob)
    UpdateNMSpawnPoint(mob:getID())
    local mobId = mob:getID()
    for i = 1, 2 do
        local guardID = mobId+i
        DespawnMob(guardID)
    end
end