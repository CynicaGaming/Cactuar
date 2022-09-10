-----------------------------------
-- Area: Manaclipper
--   NM: Zoredonite
-----------------------------------
mixins = {
    require("scripts/mixins/job_special"),
    require("scripts/mixins/families/uragnite")
}
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(7200) -- Default:12 hours Nobody has time to camp this thing for 12 hours on a boat. Changed to 2 hours -Umeboshi
end
