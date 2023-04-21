local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local workspace = game:GetService('Workspace')

local player = game.Players.LocalPlayer
local Name = game.Players.LocalPlayer.Name


_G.chatSpam = true
_G.ChatInput = "i was born in north korea"


function chatspam()
    while _G.chatSpam == true do
         workspace.Main.General.Speak:FireServer(_G.ChatInput,"Judge","Order","",false)
        wait(.0001)
     end
    end

 function breakserver()
   while true do
      workspace.Main.General.Speak:FireServer("         ","Judge","Slam","",false)
         wait(.00000000000000000000000000000001)
       end
      end



function Teleport(teleportPlace)
    local player = game.Players.LocalPlayer
    player.Character.HumanoidRootPart.CFrame = teleportPlace
end


local Window2 = Rayfield:CreateWindow({
    Name = "hippity hop kill that ni- | Ace Attourney",
    LoadingTitle = "Pornhub",
    LoadingSubtitle = "Now Loading..",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = game, -- Create a custom folder for your hub/game
       FileName = "Big ni-"
    },
    Discord = {
       Enabled = false,
       Invite = "", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "hippity hop hub",
       Subtitle = "Key System",
       Note = "",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "https://pastebin.com/raw/sjGEXJmp"
    }
 })

 local MainTab = Window2:CreateTab("Main", 4483362458) -- Title, Image
 local TeamTab = Window2:CreateTab("Team", 4483345998) -- Title, Image
 local CreditsTab = Window2:CreateTab("Credits", 4503342956) -- Title, Image



 local Button = MainTab:CreateButton({
   Name = "Break Server",
   Callback = function()
      breakserver()
   end,
})

 local Toggle = MainTab:CreateToggle({
   Name = "Chat Spam",
   CurrentValue = false,
   Flag = "ChatSpam", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       _G.chatSpam = Value
       chatspam()
   end,
})


 function ProsecutorAvailable()
   Rayfield:Notify({
      Title = "Team Available",
      Content = "Successfully made Prosecutor Available.",
      Duration = 6.5,
      Image = 4483362458,
      Actions = { -- Notification Buttons
         Ignore = {
            Name = "Okay!",
            Callback = function()
            print("The user tapped Okay!")
         end
      },
   },
   })
end

function JudgeAvailable()
      Rayfield:Notify({
         Title = "Team Available",
         Content = "Successfully made Judge Available.",
         Duration = 6.5,
         Image = 4483362458,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user tapped Okay!")
            end
         },
      },
      })
end

function DefendentAvailable()
      Rayfield:Notify({
         Title = "Team Available",
         Content = "Successfully made Defendent Available.",
         Duration = 6.5,
         Image = 4483362458,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user tapped Okay!")
            end
         },
      },
      })
end

function WitnessAvailable()
   Rayfield:Notify({
      Title = "Team Available",
      Content = "Successfully made Witness Available.",
      Duration = 6.5,
      Image = 4483362458,
      Actions = { -- Notification Buttons
         Ignore = {
            Name = "Okay!",
            Callback = function()
            print("The user tapped Okay!")
         end
      },
   },
   })
end

 
 local Button = TeamTab:CreateButton({
   Name = "Make Judge Team Available",
   Callback = function()
      game.Workspace.Main.Taken.Judge.Function:FireServer()
      JudgeAvailable()
   end,
})

local Button = TeamTab:CreateButton({
   Name = "Make Witness Team Available",
   Callback = function()
      game.Workspace.Main.Taken.Witness.Function:FireServer()
      WitnessAvailable()
   end,
})

local Button = TeamTab:CreateButton({
   Name = "Make Defendent Team Available",
   Callback = function()
      game.Workspace.Main.Taken.Defense.Function:FireServer()
      DefendentAvailable()
   end,
})

local Button = TeamTab:CreateButton({
   Name = "Make Prosecutor Team Available",
   Callback = function()
      game.Workspace.Main.Taken.Prosecutor.Function:FireServer()
      ProsecutorAvailable()
   end,
})


local CreditsLabel = CreditsTab:CreateLabel("Made by traz#9518")

local DestroyGUIButton = CreditsTab:CreateButton({
   Name = "Destroy GUI",
   Callback = function()
      Rayfield:Destroy()
   end,
})