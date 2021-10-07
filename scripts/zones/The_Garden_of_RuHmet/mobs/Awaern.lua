-----------------------------------
-- Area: The Garden of Ru'Hmet
--  Mob: Aw'aern
-- Note: PH for Ix'Aern DRK and DRG
-----------------------------------
mixins = {require("scripts/mixins/families/aern")}
local ID = require("scripts/zones/The_Garden_of_RuHmet/IDs")
require("scripts/globals/status")
-----------------------------------

function onMobSpawn(mob)
    local IxAernDRG_PH = GetServerVariable("[SEA]IxAernDRG_PH") -- Should be be the ID of the mob that spawns the actual PH

    -- Pick the Ix'Aern (DRG) PH if the server doesn't have one, and the if the actual PH/NM isn't up. Then, set it.
    if not GetMobByID(ID.mob.IXAERN_DRG):isSpawned() and GetServerVariable("[SEA]IxAernDRG_PH") == 0 then  -- This should be cleared when the mob is killed.
        local groups = ID.mob.AWAERN_DRG_GROUPS
        IxAernDRG_PH = groups[math.random(1, #groups)] + math.random(0, 2) -- The 4th mobid in each group is a pet. F that son
        SetServerVariable("[SEA]IxAernDRG_PH", IxAernDRG_PH)
    end
end

function onMobEngaged(mob, target)
    mob:setLocalVar("changeTime", 0)
end

function onMobFight(mob, target)
    local battleTime = mob:getBattleTime()
    local changeTime = mob:getLocalVar("changeTime")

    if mob:getHPP() < 100 then
        if mob:AnimationSub() == 0 then -- bracers trigger initially upon taking damage
            mob:AnimationSub(2)
            mob:addMod(tpz.mod.ATTP, 30)
            mob:setLocalVar("changeTime", mob:getBattleTime())
        elseif mob:AnimationSub() == 2 and battleTime - changeTime >= 30 then -- bracer mode lasts 30 seconds
            mob:AnimationSub(1)
            mob:delMod(tpz.mod.ATTP, 30)
            mob:setLocalVar("changeTime", mob:getBattleTime())
        elseif mob:AnimationSub() == 1 and battleTime - changeTime >= 120 then -- bracemode 2 minute cooldown
            mob:AnimationSub(2)
            mob:addMod(tpz.mod.ATTP, 30)
            mob:setLocalVar("changeTime", mob:getBattleTime())
        end
    end
end

function onMobDeath(mob, player, isKiller)
    -- Ix'Aern DRK animosity mechanic
    if (isKiller) then
        local qmDrk = GetNPCByID(ID.npc.QM_IXAERN_DRK)
        local hatedPlayer = qmDrk:getLocalVar("hatedPlayer")
        local isInTime = qmDrk:getLocalVar("hateTimer") > os.time()

        if (qmDrk:getStatus() ~= tpz.status.DISAPPEAR and (hatedPlayer == 0 or not isInTime)) then

            -- if hated player took too long, reset
            if (hatedPlayer ~= 0) then
                qmDrk:setLocalVar("hatedPlayer", 0)
                qmDrk:setLocalVar("hateTimer", 0)
            end

            -- if aern belongs to QM group, chance for sheer animosity
            local position = GetNPCByID(ID.npc.QM_IXAERN_DRK):getLocalVar("position")
            local offset = mob:getID() - ID.mob.AWAERN_DRK_GROUPS[position]
            if offset >= 0 and offset <= 2 then
                if (math.random(1, 8) == 1) then
                    qmDrk:setLocalVar("hatedPlayer", player:getID())
                    qmDrk:setLocalVar("hateTimer", os.time() + 600) -- player with animosity has 10 minutes to touch QM
                    player:messageSpecial(ID.text.SHEER_ANIMOSITY)
                end
            end
        end
    end

end

function onMobDespawn(mob)
    local currentMobID = mob:getID()

    -- Ix'Aern (DRG) Placeholder mobs
    local IxAernDRG_PH = GetServerVariable("[SEA]IxAernDRG_PH") -- Should be be the ID of the mob that spawns the actual PH.

    -- If the mob killed was the randomized PH, then Ix'Aern (DRG) in the specific spot, unclaimed and not aggroed.
    if (IxAernDRG_PH == currentMobID) then
        -- Select spawn location based on ID
        local offset = currentMobID - ID.mob.AWAERN_DRG_GROUPS[1]
        if (offset >=0 and offset <=3) then
            GetMobByID(ID.mob.IXAERN_DRG):setSpawn(-520, 5, -520, 225) -- Bottom Left
        elseif (offset >= 4 and offset <= 7) then
            GetMobByID(ID.mob.IXAERN_DRG):setSpawn(-520, 5, -359, 30) -- Top Left
        elseif (offset >= 8 and offset <= 11) then
            GetMobByID(ID.mob.IXAERN_DRG):setSpawn(-319, 5, -359, 95) -- Top Right
        elseif (offset >= 12 and offset <= 15) then
            GetMobByID(ID.mob.IXAERN_DRG):setSpawn(-319, 5, -520, 156) -- Bottom Right
        end
        SpawnMob(ID.mob.IXAERN_DRG)
        SetServerVariable("[SEA]IxAernDRG_PH", 0) -- Clear the variable because it is spawned!
    end

end
