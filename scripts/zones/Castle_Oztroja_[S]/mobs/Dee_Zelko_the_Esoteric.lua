-----------------------------------
-- Area: Castle Oztroja [S]
--   NM: Dee Zelko the Esoteric
-- pos -91.983 -40.245 -62.989
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.MAGIC_COOL, 14)
end

function onMobFight(mob, target)
    -- Starts out with tier-1 Aero and Aeroga, but gradually increases magic tier
    -- as its HP declines, until it starts spamming insta-cast Tornado II.
    local hpp = mob:getHPP()

    if hpp < 25 then
        mob:setSpellList(244)
        mob:setMod(tpz.mod.UFASTCAST, 100)
        mob:setMobMod(tpz.mobMod.MAGIC_COOL, 2)
    elseif hpp < 40 then
        mob:setSpellList(243)
        mob:setMod(tpz.mod.UFASTCAST, 85)
        mob:setMobMod(tpz.mobMod.MAGIC_COOL, 3)
    elseif hpp < 55 then
        mob:setSpellList(242)
        mob:setMod(tpz.mod.UFASTCAST, 60)
        mob:setMobMod(tpz.mobMod.MAGIC_COOL, 4)
    elseif hpp < 70 then
        mob:setSpellList(241)
        mob:setMod(tpz.mod.UFASTCAST, 45)
        mob:setMobMod(tpz.mobMod.MAGIC_COOL, 5)
    elseif hpp < 85 then
        mob:setSpellList(240)
        mob:setMod(tpz.mod.UFASTCAST, 30)
        mob:setMobMod(tpz.mobMod.MAGIC_COOL, 6)
    else
        mob:setSpellList(239)
        mob:setMod(tpz.mod.UFASTCAST, 15)
        mob:setMobMod(tpz.mobMod.MAGIC_COOL, 7)
    end
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end
