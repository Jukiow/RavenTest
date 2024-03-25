local config = {
    sqmQtd = 6,
    effects = {CONST_ME_POFF}
}

function onCastSpell(cid, var)
    local player = Player(cid)
    local v, pos, dir = 0, getCreaturePosition(player:getId()), getCreatureLookDirection(player:getId())

    for i = 1, config.sqmQtd do
        local cur = {
            x = pos.x +
                (dir == DIRECTION_NORTH and 0 or dir == DIRECTION_EAST and i or dir == DIRECTION_SOUTH and 0 or -i),
            y = pos.y +
                (dir == DIRECTION_NORTH and -i or dir == DIRECTION_WEST and 0 or dir == DIRECTION_SOUTH and i or 0),
            z = pos.z
        }

        for _, k in ipairs(config.effects) do

            -- Get player's direction
            local playerDir = getCreatureLookDirection(player)

            -- Check the tile where the player is standing
            local tile = Tile(cur)

            -- Check if the tile is walkable
            if tile:isWalkable() then

                -- Apply delayed shadow effect after a short delay
                addEvent(applyShadowEffect, 100, player:getId(), cur, dir)

                -- Teleport player
                doTeleportThing(player:getId(), cur, true)

                -- Set its look position
                doCreatureSetLookDirection(player:getId(), playerDir)
            else
                doPlayerSendCancel(cid, "You cannot dash here.")
                return false
            end

        end

        v = v + 1
    end
    return v > 0
end

-- Function to apply shadow effect after player dashes
function applyShadowEffect(cid, pos, dir)
    -- Calculate the position behind the player based on direction
    local shadowPos
    if dir == DIRECTION_NORTH then
        shadowPos = {
            x = pos.x,
            y = pos.y + 1,
            z = pos.z
        }
    elseif dir == DIRECTION_EAST then
        shadowPos = {
            x = pos.x - 1,
            y = pos.y,
            z = pos.z
        }
    elseif dir == DIRECTION_SOUTH then
        shadowPos = {
            x = pos.x,
            y = pos.y - 1,
            z = pos.z
        }
    elseif dir == DIRECTION_WEST then
        shadowPos = {
            x = pos.x + 1,
            y = pos.y,
            z = pos.z
        }
    end
    
    -- Apply shadow effect behind the player
    doSendMagicEffect(shadowPos, CONST_ME_POFF)
end
