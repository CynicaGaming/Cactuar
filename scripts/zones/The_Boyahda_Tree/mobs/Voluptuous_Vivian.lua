-----------------------------------
-- Area: The Boyahda Tree
--   NM: Voluptuous Vivian
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
require("scripts/globals/status")
require("scripts/globals/titles")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.DRAW_IN, 1)
end

function onMobSpawn(mob)
    mob:setMod(tpz.mod.ZANSHIN, 15)
end

function onMobDeath(mob, player, isKiller)
    player:addTitle(tpz.title.THE_VIVISECTOR)
end
