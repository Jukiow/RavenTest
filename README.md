
# RavenTest

The following project consists of the Ravendawn tech trial.

* Considerations: It was really fun and challenging for me to do this trial. A lot of study and research. Please, take a minute to read this README file and check each Question comment, etc.

* Description: "Our Lead Developer has prepared the following technical tests. Please complete it by 03/27 in a tidy manner.  Make sure to include comments in your code as to why you did certain things. Additionally, please know, we will not provide feedback on how to improve your code, we expect what you send us to be your best performance and show your full ability".

* Q1-Q4 - Fix or improve the implementation of the below methods.
* Q1 - Fix or improve the implementation of the below methods:
Commit -> 81a6ea6d319bfc1cad666c8b7532da8ea74cfbfa \
Comment -> Implementation trigger when the character logs out.

```lua
local function releaseStorage(player)
player:setStorageValue(1000, -1)
end

function onLogout(player)
if player:getStorageValue(1000) == 1 then
addEvent(releaseStorage, 1000, player)
end
return true
end
```


* Q2 - Fix or improve the implementation of the below method:
Commit -> bd8a5bfd9ceb6ca8ba8df9767412118ca441a804 \
Comment -> Implementation trigger when the character logs in - you can see it printed on the server's console.

```lua
function printSmallGuildNames(memberCount)
-- this method is supposed to print names of all guilds that have less than memberCount max members
local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))
local guildName = result.getString("name")
print(guildName)
end
```

* Q3 - Fix or improve the name and the implementation of the below method:
Commit: e567854bae0aec630afb0c5d8aa84990cdadf664 \
Comment -> Implementation trigger when the character says the word: !kickParty [character_name] - You can check the code files for more information and code additions/implementations.

```lua
function do_sth_with_PlayerParty(playerId, membername)
player = Player(playerId)
local party = player:getParty()

for k,v in pairs(party:getMembers()) do 
    if v == Player(membername) then 
        party:removeMember(Player(membername))
    end
end
end
```

* Q4 - Assume all method calls work fine. Fix the memory leak issue in the below method:
Commit: ebea3e891f420fae9ca1e1d2c79f247b594e636e \
Comment -> Memory leak fixed on code. You can check the code files for more information.

```c++
void Game::addItemToPlayer(const std::string& recipient, uint16_t itemId)
{
Player* player = g_game.getPlayerByName(recipient);
if (!player) {
player = new Player(nullptr);
if (!IOLoginData::loadPlayerByName(player, recipient)) {
return;
}
}

Item* item = Item::CreateItem(itemId);
if (!item) {
    return;
}

g_game.internalAddItem(player->getInbox(), item, INDEX_WHEREEVER, FLAG_NOLIMIT);

if (player->isOffline()) {
    IOLoginData::savePlayer(player);
}
}
```

* The last 3 tests require setting up & utilizing Open Source TFS & OTC, this is part of the trial itself to confirm your ability to set up a local environment and basic navigation of Github.

* Here you can find the base for TFS & OTC:
    https://github.com/otland/forgottenserver
    https://github.com/edubart/otclient

* Please reproduce the following 3 examples in a clean manner with comments as to why you programmed it the way you did. Please make sure to pay special attention to Question 6 video, we are wanting replication of the shaders in this ability. Additionally please make sure to send videos of reproduction as well as the source code cleanly in their own files and/or open a Git with the edits/additions made.

* Q5 - frigo spell -> Commit: 7883e1d3b8067e496bdc60cc9b85dbb5dc97a6ab & 2f5961370ae68fa67fb2e2080e9e685ea574f694  --- Comment -> New custom spell with new custom spell areas.

* Q6 - dash spell -> Commit: b2fcc3fa855c3a75dc40917d0b801129884bdc6a --- Comment -> New custom spell. This one I honestly couldn't implement the "shade" effect. After a lot of study and research, I found out that a good way to accomplish this is to use OTCv8 (which already has auras, wings, and SHADERS included) or implement the shade effects in the edubart OTC. The first option I could understand and learn about the custom effects but what I got from the otland.net forum is that I would need to create by hand a shade from scratch which is (unfortunately) very far from what I know at the moment with no assist and/or someone to guide me in. The second option I tried really hard but with my current knowledge and experience the most I got was a broken client (LOL). So, instead of putting a shade effect behind the character, I added a normal "poff" effect (tibia native) when the character dashes. I know this is not what you want but I hope you at least enjoy the custom spell "dash" :D

* Q7 - window pop-up with jump button -> Commit: 75246a4e0222195d6898794e972a557450019516 --- Comment -> I put this inside the outfit window just for the trial perspective. You can see in the commit that even the file name is outfit(something).


Thanks for the opportunity to show you my code.
I appreciate it. :DDD


## Author

- [@Jukiow](https://www.github.com/Jukiow)

