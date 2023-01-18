

if game.PlaceId == 3956818381 then
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local workspace = game:GetService('Workspace')

local player = game.Players.LocalPlayer
local Name = game.Players.LocalPlayer.Name


_G.autoClick = true
_G.noclipValue = true


function noclipFunction()
   game:GetService("RunService").Stepped:Connect(function()
       if _G.noclipValue == true then
           pcall(function()
               game.Players.LocalPlayer.Character:FindFirstChild("Head").CanCollide = false
               game.Players.LocalPlayer.Character:FindFirstChild("Torso").CanCollide = false
               if _G.noclipValue == false then
                   pcall(function()
                       game.Players.LocalPlayer.Character:FindFirstChild("Head").CanCollide = true
                       game.Players.LocalPlayer.Character:FindFirstChild("Torso").CanCollide = true
                   end)
               end
           end)
       end
   end)
end	


function autoClick()
    while _G.autoClick == true do
        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
        wait(.0001)
     end
    end



function Teleport(teleportPlace)
    local player = game.Players.LocalPlayer
    player.Character.HumanoidRootPart.CFrame = teleportPlace
end


local Window = Rayfield:CreateWindow({
    Name = "hippity hop kill that ni-",
    LoadingTitle = "Pornhub",
    LoadingSubtitle = "Now Loading..",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = game, -- Create a custom folder for your hub/game
       FileName = "Big ni-"
    },
    Discord = {
       Enabled = true,
       Invite = "https://discord.gg/7PGnXKGP2P", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "hola hub",
       Subtitle = "Key System",
       Note = "Join my discord (https://discord.gg/7PGnXKGP2P)",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "https://pastebin.com/raw/sjGEXJmp"
    }
 })

 local AutoTab = Window:CreateTab("Auto Stuff", 4483362458) -- Title, Image
 local TeleportsTab = Window:CreateTab("Teleports", 4515645493) -- Title, Image
 local LocalPlayerTab = Window:CreateTab("LocalPlayer", 4483345998) -- Title, Image
 local CreditsTab = Window:CreateTab("Credits", 4503342956) -- Title, Image


 local Toggle = AutoTab:CreateToggle({
    Name = "AutoClick",
    CurrentValue = false,
    Flag = "AutoClick", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.autoClick = Value
        autoClick()
    end,
 })

 local Button = TeleportsTab:CreateButton({
    Name = "Sell",
    Callback = function()
        Teleport(game:GetService("Workspace").sellAreaCircles.sellAreaCircle.circleInner.CFrame)
    end,
 })


 local Slider = LocalPlayerTab:CreateSlider({
   Name = "Walkspeed",
   Range = {16, 1000},
   Increment = 1,
   Suffix = "Walkspeed",
   CurrentValue = 16,
   Flag = "walkspeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game:GetService('Workspace')[Name].Humanoid.WalkSpeed = Value
   end,
})

local Slider = LocalPlayerTab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 1000},
   Increment = 1,
   Suffix = "Walkspeed",
   CurrentValue = 50,
   Flag = "jumppower", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game:GetService('Workspace')[Name].Humanoid.JumpPower = Value
   end,
})


 local Toggle = LocalPlayerTab:CreateToggle({
   Name = "NoClip (R6 Only)",
   CurrentValue = false,
   Flag = "nocliptoggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      _G.noclipValue = Value
      noclipFunction()
   end,
})


local CreditsLabel = CreditsTab:CreateLabel("Made by traz#9518")


local CopyDiscord = CreditsTab:CreateButton({
   Name = "Copy Discord Link",
   Callback = function()
      setclipboard('https://discord.gg/ysYqhjcMwv')
      discordcopied()
   end,
})

local DestroyGUIButton = CreditsTab:CreateButton({
   Name = "Destroy GUI",
   Callback = function()
      Rayfield:Destroy()
   end,
})


function discordcopied()
   Rayfield:Notify({
      Title = "Discord Link Copied!",
      Content = "The link to the discord has been copied successfully to your clipboard.",
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

else if game.PlaceId == 2639416308 then
   local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local workspace = game:GetService('Workspace')

local player = game.Players.LocalPlayer
local Name = game.Players.LocalPlayer.Name


_G.breakServer = true
_G.chatSpam = true
_G.ChatInput = "string"


function breakserver()
    while _G.breakServer == true do
      workspace.Main.General.Speak:FireServer(_G.ChatInput,"Judge","Order","",false)
        wait(.0001)
     end
    end

 function chatspam()
   while _G.chatspam == true do
    workspace.Main.General.Speak:FireServer("i was born in north korea","Judge","Order","",false)
         wait(.0001)
       end
      end



function Teleport(teleportPlace)
    local player = game.Players.LocalPlayer
    player.Character.HumanoidRootPart.CFrame = teleportPlace
end


local Window2 = Rayfield:CreateWindow({
    Name = "hippity hop kill that ni-",
    LoadingTitle = "Pornhub",
    LoadingSubtitle = "Now Loading..",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = game, -- Create a custom folder for your hub/game
       FileName = "Big ni-"
    },
    Discord = {
       Enabled = true,
       Invite = "https://discord.gg/7PGnXKGP2P", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "hippity hop hub",
       Subtitle = "Key System",
       Note = "Join my discord (https://discord.gg/7PGnXKGP2P)",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "https://pastebin.com/raw/sjGEXJmp"
    }
 })

 local MainTab = Window2:CreateTab("Main", 4483362458) -- Title, Image
 local TeamTab = Window2:CreateTab("Team", 4483362458) -- Title, Image
 local CreditsTab2 = Window2:CreateTab("Credits", 4503342956) -- Title, Image



 local Toggle = MainTab:CreateToggle({
    Name = "Break Server",
    CurrentValue = false,
    Flag = "BreakServer", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.breakServer = Value
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


local CreditsLabel2 = CreditsTab2:CreateLabel("Made by traz#9518")


local CopyDiscord = CreditsTab2:CreateButton({
   Name = "Copy Discord Link",
   Callback = function()
      setclipboard('https://discord.gg/ysYqhjcMwv')
      discordcopied()
   end,
})

local DestroyGUIButton = CreditsTab2:CreateButton({
   Name = "Destroy GUI",
   Callback = function()
      Rayfield:Destroy()
   end,
})


function discordcopied()
   Rayfield:Notify({
      Title = "Discord Link Copied!",
      Content = "The link to the discord has been copied successfully to your clipboard.",
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


 Rayfield:LoadConfiguration()
end
end