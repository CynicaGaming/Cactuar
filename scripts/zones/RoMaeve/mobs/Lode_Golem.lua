-----------------------------------
-- Area: RoMaeve
--   NM: Lode Golem
--   A Shantotto Ascension NM
-----------------------------------
require("scripts/globals/status")
local ID = require("scripts/zones/RoMaeve/IDs")
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(tpz.mod.UDMGPHYS, -100)
    mob:setMod(tpz.mod.UDMGMAGIC, 0)
    mob:setMod(tpz.mod.UDMGRANGE, -100)
end

function onMobEngaged(mob, target)
    mob:setLocalVar("Disengage", os.time()+195)
end

function onMobFight(mob, target)
    local disengage = mob:getLocalVar("Disengage")
    if os.time() > disengage then
        DespawnMob(mob:getID())
    end
end

function onMobDeath(mob, player, isKiller)
    for _, member in pairs(player:getParty()) do
        local chance = math.random(1,10)
        if chance < 5 and member:hasKeyItem(tpz.ki.LUMINOUS_BLUE_FRAGMENT) == false and member:getCurrentMission(ASA) == tpz.mission.id.asa.SHANTOTTO_IN_CHAINS then
            member:addKeyItem(tpz.ki.LUMINOUS_BLUE_FRAGMENT)
            member:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.LUMINOUS_BLUE_FRAGMENT)
        end
    end
end