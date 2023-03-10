-----------------------------------------
-- Spell: Teleport-Vahzl
-----------------------------------------
require("scripts/globals/teleports")
require("scripts/globals/keyitems")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    if target:getObjType() == tpz.objType.PC then
        if target:hasKeyItem(tpz.ki.VAHZL_GATE_CRYSTAL) then
            target:addStatusEffectEx(tpz.effect.TELEPORT, 0, tpz.teleport.id.VAHZL, 0, 4.7)
            target:setCharVar("Teleport", tpz.ki.VAHZL_GATE_CRYSTAL)    -- Used KI as common entity between LUA requires
            spell:setMsg(tpz.msg.basic.MAGIC_TELEPORT)
        else
            spell:setMsg(tpz.msg.basic.NONE)
        end
    end
    return 0
end
