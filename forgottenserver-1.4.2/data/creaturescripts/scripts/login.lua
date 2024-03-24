function printSmallGuildNames(memberCount)
    -- Construct the SQL query with a placeholder for the member count
    local selectGuildQuery = string.format("SELECT name FROM guilds WHERE max_members < %d;", memberCount)
    
    -- Execute the query and store the result
    local resultId = db.storeQuery(selectGuildQuery)
    
    -- Check if the query was successful
    if not resultId then
        print("Query has no results.")
        return
    end
    
    -- Iterate over the result set and print guild names
    repeat
        local guildName = result.getString(resultId, "name")
        print(guildName)
    until not result.next(resultId)
    
    -- Free the result set
    result.free(resultId)
end

function onLogin(player)
	local serverName = configManager.getString(configKeys.SERVER_NAME)
	local loginStr = "Welcome to " .. serverName .. "!"
	if player:getLastLoginSaved() <= 0 then
		loginStr = loginStr .. " Please choose your outfit."
		player:sendOutfitWindow()
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end

		loginStr = string.format("Your last visit in %s: %s.", serverName, os.date("%d %b %Y %X", player:getLastLoginSaved()))

		-- Adding the sendOutfitWindow to show the jump function
		player:sendOutfitWindow()

		-- Adding the printSamllGuildNames to test the code above
		printSmallGuildNames(500)
	end
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)

	-- Promotion
	local vocation = player:getVocation()
	local promotion = vocation:getPromotion()
	if player:isPremium() then
		local value = player:getStorageValue(PlayerStorageKeys.promotion)
		if value == 1 then
			player:setVocation(promotion)
		end
	elseif not promotion then
		player:setVocation(vocation:getDemotion())
	end

	-- Events
	player:registerEvent("PlayerDeath")
	player:registerEvent("DropLoot")
	return true
end


