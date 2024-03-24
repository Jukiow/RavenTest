function removePlayerFromParty(cid, memberName)
    local player = Player(cid)

    -- Check if memberName is provided
    if not memberName then
        player:sendCancelMessage("Usage: !kickfromparty [memberName]")
        return
    end
    
    -- Check if player is valid
    if not player then
        player:sendCancelMessage("Player is not valid.")
        return
    end
    
    local party = player:getParty()
    
    -- Check if player is in a party
    if not party then
        player:sendCancelMessage("You are not in a party.")
        return
    end

    -- Check if the player is the leader of the party
    local partyLeader = party:getLeader()
    if partyLeader and partyLeader:getName() ~= player:getName() then
        player:sendCancelMessage("You are not the leader of the party.")
        return
    end

    -- Check if the player is attempting to remove themselves
    if memberName == player:getName() then
        player:sendCancelMessage("You cannot remove yourself from the party. Instead use command: xxxxxxx")
        return
    end

   -- Check for monsters nearby
    local position = player:getPosition()
    local x, y, z = position.x, position.y, position.z

    local radius = 5 -- Change the radius as needed
    for i = -radius, radius do
        for j = -radius, radius do
            local tile = Tile(Position(x + i, y + j, z))
            if tile then
                local creatures = tile:getCreatures()
                if creatures then
                    for _, creature in ipairs(creatures) do
                        if creature:isMonster() and not creature:isPlayer() then
                            player:sendCancelMessage("Cannot kick members while in combat or nearby of a monster")
                            return
                        end
                    end
                end
            end
        end
    end

    -- Iterate over party members and remove the specified member
    for _, partyMember in ipairs(party:getMembers()) do 
        if partyMember:getName() == memberName then 
            party:removeMember(partyMember)
            player:sendCancelMessage("Removed player " .. memberName .. " from the party.")
            return  -- Exit the loop after removing the member
        end
    end

    -- If the loop completes without finding the member
    player:sendCancelMessage("Player " .. memberName .. " is not a member of the party.")
end

function onSay(cid, words, param)
    -- Check if the command has the expected parameters
    local player = Player(cid)
    local memberName = param

    if not player or not player:getId() or not memberName then
        player:sendCancelMessage("Usage: !kickParty [memberName]")
        return false
    end
    
    -- Call the function to remove the player from the party
    removePlayerFromParty(cid, memberName)
    return false
end
