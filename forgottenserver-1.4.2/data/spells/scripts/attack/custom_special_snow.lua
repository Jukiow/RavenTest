-- combat - 1st spell
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat:setArea(createCombatArea(S_SNOW_0))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- combat1 - 2nd spell
local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat1:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat1:setArea(createCombatArea(S_SNOW_1))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- combat2 - 3th spell
local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat2:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat2:setArea(createCombatArea(S_SNOW_2))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- combat3 - 4th spell
local combat3 = Combat()
combat3:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat3:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat3:setArea(createCombatArea(S_SNOW_3))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat3:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- combat4 - 5th spell
local combat4 = Combat()
combat4:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat4:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat4:setArea(createCombatArea(S_SNOW_4))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat4:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- combat5 - 6th spell
local combat5 = Combat()
combat5:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat5:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat5:setArea(createCombatArea(S_SNOW_5))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat5:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- combat6 - 7th spell
local combat6 = Combat()
combat6:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat6:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat6:setArea(createCombatArea(S_SNOW_6))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat6:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- combat7 - 8th spell
local combat7 = Combat()
combat7:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat7:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat7:setArea(createCombatArea(S_SNOW_7))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat7:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- combat8 - 9th spell
local combat8 = Combat()
combat8:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat8:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat8:setArea(createCombatArea(S_SNOW_8))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat8:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- combat9 - 10th spell
local combat9 = Combat()
combat9:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat9:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat9:setArea(createCombatArea(S_SNOW_9))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat9:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- combat10 - 11th spell
local combat10 = Combat()
combat10:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat10:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat10:setArea(createCombatArea(S_SNOW_10))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat10:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- combat11 - 12th spell
local combat11 = Combat()
combat11:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat11:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat11:setArea(createCombatArea(S_SNOW_11))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 2.5) + (maglevel * 20) + 50
    local max = (level / 2.5) + (maglevel * 18.4) + 50
    return -min, -max
end

combat11:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- Core functions

function callSpell(cid, varid, combat)
    local player = Player(cid)
    local comb = combat

    if not player then
        return
    end

    local variant = Variant(varid)

    if variant then
        comb:execute(player, variant)
    end
end

function onCastSpell(creature, variant)
    local player = Player(creature)

    if not player then
        return false
    end
    
	-- We should play spell by spell - time after time to make the popping up (boiling) effect
    addEvent(callSpell, 0, player:getId(), variant:getNumber(), combat)
    addEvent(callSpell, 200, player:getId(), variant:getNumber(), combat1)
    addEvent(callSpell, 400, player:getId(), variant:getNumber(), combat2)
    addEvent(callSpell, 600, player:getId(), variant:getNumber(), combat3)
    addEvent(callSpell, 800, player:getId(), variant:getNumber(), combat4)
    addEvent(callSpell, 1000, player:getId(), variant:getNumber(), combat5)
    addEvent(callSpell, 1100, player:getId(), variant:getNumber(), combat6)
    addEvent(callSpell, 1300, player:getId(), variant:getNumber(), combat7)
    addEvent(callSpell, 1400, player:getId(), variant:getNumber(), combat8)
    addEvent(callSpell, 1600, player:getId(), variant:getNumber(), combat9)
    addEvent(callSpell, 1800, player:getId(), variant:getNumber(), combat10)
    addEvent(callSpell, 2100, player:getId(), variant:getNumber(), combat11)

    return true
end

