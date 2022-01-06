------------------------------
-- Area: Garlaige Citadel [S]
--   NM: Buarainech
------------------------------
require("scripts/globals/hunts")
require("scripts/globals/status")
------------------------------

function onMobSpawn(mob)
    -- All Mods Here Are Assigned For Initial Difficulty Tuning
    mob:addMod(tpz.mod.MAIN_DMG_RATING, 50)
    mob:addMod(tpz.mod.STR, 40)
    mob:addMod(tpz.mod.VIT, 20)
    mob:addMod(tpz.mod.INT, 50)
    mob:addMod(tpz.mod.MND, 20)
    mob:addMod(tpz.mod.CHR, 20)
    mob:addMod(tpz.mod.AGI, 20)
    mob:addMod(tpz.mod.DEX, 40)
    mob:addMod(tpz.mod.DEFP, 75)
    mob:addMod(tpz.mod.RATTP, 75)
    mob:addMod(tpz.mod.ACC, 100)
    -- Resistances Based On https://ffxiclopedia.fandom.com/wiki/Buarainech
    mob:setMod(tpz.mod.EARTHDEF, 128)
    mob:setMod(tpz.mod.DARKDEF, 240)
    mob:setMod(tpz.mod.LIGHTDEF, 240)
    mob:setMod(tpz.mod.ICEDEF, 200)
    mob:setMod(tpz.mod.FIREDEF, 200)
    mob:setMod(tpz.mod.WATERDEF, 200)
    mob:setMod(tpz.mod.THUNDERDEF, 200)
    mob:setMod(tpz.mod.WINDDEF, 200)
    mob:setMod(tpz.mod.SILENCERES, 100)
    mob:setMod(tpz.mod.STUNRES, 100)
    mob:setMod(tpz.mod.BINDRES, 100)
    mob:setMod(tpz.mod.GRAVITYRES, 100)
    mob:setMod(tpz.mod.SLEEPRES, 100)
    mob:setMod(tpz.mod.POISONRES, 100)
    mob:setMod(tpz.mod.PARALYZERES, 100)
    mob:setMod(tpz.mod.LULLABYRES, 100)
    -- Status Effecs Based On https://ffxiclopedia.fandom.com/wiki/Buarainech
    mob:addStatusEffect(tpz.effect.SHOCK_SPIKES, 50, 0, 0)
    mob:addStatusEffect(tpz.effect.REGEN, 30, 3, 0)
    mob:addStatusEffect(tpz.effect.ENTHUNDER_II, 25, 0, 0)
    mob:addStatusEffect(tpz.effect.REFRESH, 50, 3, 0)
end

function onAdditionalEffect(mob, target, damage)
    -- 100% En-Doom Kek
    if target:hasStatusEffect(tpz.effect.DOOM) == false then
        return tpz.mob.onAddEffect(mob, target, damage, tpz.mob.ae.DOOM, {chance = 100})
    end
end

function onMobFight(mob, target)

    -- Arena Style Draw-In
    -- Should Draw Into A Single Point In the Room (https://www.youtube.com/watch?v=7sjZoknSXRw&ab_channel=RainbowChaser)
    if (target:getZPos() < -146.66) then
        target:setPos(121.70, 7.00, -122.45)
        mob:messageBasic(232, 0, 0, target)
    end

    -- Combat Tick Logic
    mob:addListener("COMBAT_TICK", "BUARAINECH_CTICK", function(mob)
        local retaliate = mob:getLocalVar("BRetaliate")
        local levelup = mob:getLocalVar("LevelUp")

        if mob:AnimationSub() == 1 then
            -- Retaliation Should Always Be Thunder IV And Instant Cast (https://ffxiclopedia.fandom.com/wiki/Buarainech)
            if retaliate > 0 and not mob:hasStatusEffect(tpz.effect.SILENCE) then
                mob:setMod(tpz.mod.UFASTCAST, 100)
                mob:castSpell(167)
                mob:setLocalVar("BRetaliate", 0)
                mob:AnimationSub(0)
            -- Uses Level Up Ability
            elseif levelup > 0 then
                mob:useMobAbility(2460)
                mob:setLocalVar("LevelUp", 0)
                mob:AnimationSub(0)
            -- Resets States And Mods
            else
                mob:setLocalVar("BRetaliate", 0)
                mob:setLocalVar("LevelUp", 0)
                mob:setMod(tpz.mod.UFASTCAST, 0)
                mob:AnimationSub(0)
            end
        end
    end)

    -- Spirit Surge
    -- Should Be Used Every 5 Minutes, Set to 50% Health As Baseline (https://ffxiclopedia.fandom.com/wiki/Buarainech)
    local timer = mob:getLocalVar("BSpiritSurgeTimer")
    if mob:getHPP() <= 50 then
        if os.time() > timer then
            mob:useMobAbility(1893)
            mob:setLocalVar("BSpiritSurgeTimer", os.time() + 300)
        end
    end

    -- En-doom When Spirit Surge Active (https://ffxiclopedia.fandom.com/wiki/Buarainech)
    if (mob:hasStatusEffect(tpz.effect.SPIRIT_SURGE) == true) then
        mob:setMobMod(tpz.mobMod.ADD_EFFECT, 1)
    else
        mob:setMobMod(tpz.mobMod.ADD_EFFECT, 0)
    end

    -- Level Up Function
    -- Starts Level Up Sequence When Any Buff Is Gained (https://ffxiclopedia.fandom.com/wiki/Buarainech)
    mob:addListener("EFFECT_GAIN", "BUARAINECH_EFFECT_GAIN", function(mob, effect)
        if (effect:getType() == tpz.effect.SPIRIT_SURGE) then
            mob:setLocalVar("LevelUp", 0)
        else
            if mob:AnimationSub() == 0 then
                local levelupsum = mob:getLocalVar("TotalLevelUp")
                if levelupsum <= 30 then
                    mob:setLocalVar("LevelUp", 1)
                    mob:setLocalVar("TotalLevelUp", levelupsum + 1)
                    mob:AnimationSub(1)
                else
                    mob:setLocalVar("LevelUp", 0)
                end
            end
        end
    end)

    -- Magic Retaliation
    -- Should Always Retaliate When Taking Magic Damage (https://ffxiclopedia.fandom.com/wiki/Buarainech)
    mob:addListener("MAGIC_TAKE", "BUARAINECH_MAGIC_TAKE", function(target, caster, spell)
        if
            target:AnimationSub() == 0 and
            spell:tookEffect() and
            (caster:isPC() or caster:isPet())
        then
            target:setLocalVar("BRetaliate", 1)
            caster:addEnmity(caster, 1000, 1000)
            target:AnimationSub(1)
        end
    end)

    -- Enmity Handling
    -- Mob Should Have Little To No Enmity Control (https://ffxiclopedia.fandom.com/wiki/Buarainech)
    mob:addListener("TAKE_DAMAGE", "BUARAINECH_TAKE_DAMAGE", function(mob, amount, attacker, attackType, damageType)
        mob:addEnmity(attacker, 1000, 1000)
    end)

end

function OnSpellPrecast(caster, target, spell)
    -- AOE Stun (https://ffxiclopedia.fandom.com/wiki/Buarainech)
    if spell:getID() == 252 then
        caster:addStatusEffect(tpz.effect.MANIFESTATION, 1, 0, 60)
    end
end

function onMobDisengage(mob)
    local levelupsum = mob:getLocalVar("TotalLevelUp")
    if mob:getHPP() < 100 or levelupsum > 0 then
        mob:DespawnMob(17449017, 0)
        mob:setLocalVar("TotalLevelUp", 0)
    end
end

function onMobDespawn(mob)
    mob:messageBasic(tpz.zone.GARLAIGE_CITADEL_S.NM_DESPAWN) -- Despawn Message
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 534)
    player:setTitle(tpz.title.BUARAINECH_EXORCIST)
end