local function releaseStorage(player)
    -- Set storage value to -1 to release storage
    player:setStorageValue(1000, -1)
end


function onLogout(player)
	local playerId = player:getId()
	if nextUseStaminaTime[playerId] then
		nextUseStaminaTime[playerId] = nil
	end

	if player:getStorageValue(1000) == 1 then
        releaseStorage(player)  -- Call releaseStorage immediately instead of scheduling an event
    end

	return true
end