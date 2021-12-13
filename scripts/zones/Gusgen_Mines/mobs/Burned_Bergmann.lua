------------------------------
-- Area: Gusgen Mines
--   NM: Burned Bergmann
------------------------------
require("scripts/globals/hunts")
------------------------------

function onMobRoam(mob)
    local totd = VanadielTOTD()
    if totd ~= tpz.time.NEW_DAY and totd ~= tpz.time.MIDNIGHT then
        DespawnMob(mob:getID())
    end
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 233)
    mob:setLocalVar("cooldown", os.time() + (144 * 13)) -- 13 vanadiel hours guarantees it will not spawn twice in the same night
end
