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
        Name = "hippity hop kill that ni- | Ninja Legends",
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
           Title = "hola hub",
           Subtitle = "Key System",
           Note = "",
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
       Suffix = "JumpPower",
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
    
    local DestroyGUIButton = CreditsTab:CreateButton({
       Name = "Destroy GUI",
       Callback = function()
          Rayfield:Destroy()
       end,
    })