-----------------------------------
-- Area: La Vaule [S]
--   NM: Draketrader Zlodgodd
-- pos -17.291 0.243 -57.281
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
-----------------------------------

function onMobInitialize(mob)
    -- "Spams Jump constantly"
    mob:addMod(tpz.mod.REGAIN, 1000)
end

function onMobFight(mob, target)
    --  "Jump gets stronger as Draketrader Zlodgodd gets weaker"
    local power = 20 + math.floor(utils.clamp(100 - mob:getHPP(), 0, 75) * 2.4)
    mob:setMod(tpz.mod.ATT, power)
end


function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(7200, 18000)) -- 2 to 5 hours
end
