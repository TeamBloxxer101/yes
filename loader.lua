local input
local key = loadstring(game:HttpGet('https://pastebin.com/raw/sjGEXJmp'))()

function loadscript()
   if game.PlaceId == 3956818381 then
      loadstring(game:HttpGet('https://raw.githubusercontent.com/TeamBloxxer101/yes/main/ninja-legends.lua'))()
   else if game.PlaceId == 2639416308 then
      loadstring(game:HttpGet('https://raw.githubusercontent.com/TeamBloxxer101/yes/main/ace-attourney.lua'))()
   else
      loadstring(game:HttpGet('https://raw.githubusercontent.com/TeamBloxxer101/yes/main/universal.lua'))()
   end
   end
end

function begin()
   rconsoleprint('@@WHITE@@')
   rconsolename("Big N Hub - Key System")
   rconsoleprint("Get Key: https://pastebin.com/raw/sjGEXJmp \n")
   rconsoleprint("Enter Key: ")
   input = rconsoleinput()

   if input == key then
      rconsoleclear()
      rconsoleprint('@@LIGHT_GREEN@@')
      rconsolename("Big N Hub - Key Authorized")
      rconsoleprint("Correct Key, Welcome!\n")
      rconsoleprint("Loading Script..\n")
      wait(1.2)
      loadscript()
      wait(1.5)
      rconsoleprint('@@WHITE@@')
      rconsoleprint("If the console hasn't yet closed please minimize it.")

   elseif input ~= key then
      rconsoleprint("@@RED@@")
      rconsoleprint("Incorrect Key! Please try again.\n")
      rconsolename("Big N Hub - Incorrect Key!")
      wait(1.2)
      rconsoleclear()
      begin()
   end

end

begin()