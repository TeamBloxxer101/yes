local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
    
local workspace = game:GetService('Workspace')

local player = game.Players.LocalPlayer
local Name = game.Players.LocalPlayer.Name


function aimbot()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()
local Camera = workspace.CurrentCamera
local Debris = game:GetService("Debris")
local UserInputService = game:GetService("UserInputService")
local target = false
local RunService = game:GetService("RunService")

local features = {
silentaim = true;
fov = 500;
}

function getnearest()
local nearestmagnitude = math.huge
local nearestenemy = nil
local vector = nil
for i,v in next, Players:GetChildren() do
if v ~= Players.LocalPlayer then
if v.Character and  v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
local vector, onScreen = Camera:WorldToScreenPoint(v.Character["HumanoidRootPart"].Position)
if onScreen then
local ray = Ray.new(
Camera.CFrame.p,
(v.Character["Head"].Position-Camera.CFrame.p).unit*500
)
local ignore = {
LocalPlayer.Character,
}
local hit,position,normal=workspace:FindPartOnRayWithIgnoreList(ray,ignore)
if hit and hit:FindFirstAncestorOfClass("Model") and Players:FindFirstChild(hit:FindFirstAncestorOfClass("Model").Name)then
local magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
if magnitude < nearestmagnitude and magnitude <= features["fov"] then
nearestenemy = v
nearestmagnitude = magnitude
end
end
end
end
end
end
return nearestenemy
end


local meta = getrawmetatable(game)
setreadonly(meta, false)
local oldNamecall = meta.__namecall
meta.__namecall = newcclosure(function(...)
local method = getnamecallmethod()
local args = {...}
if string.find(method,'Ray') then
if target then
args[2] = Ray.new(workspace.CurrentCamera.CFrame.Position, (target + Vector3.new(0,(workspace.CurrentCamera.CFrame.Position-target).Magnitude/500,0) - workspace.CurrentCamera.CFrame.Position).unit * 500)
end
end
return oldNamecall(unpack(args))
end)


RunService:BindToRenderStep("silentaim",1,function()
if UserInputService:IsMouseButtonPressed(0) and features["silentaim"] and Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("Humanoid") and Players.LocalPlayer.Character.Humanoid.Health > 0 then
local enemy = getnearest()
if enemy and enemy.Character and enemy.Character:FindFirstChild("Humanoid") and enemy.Character.Humanoid.Health > 0 then                
local vector, onScreen = Camera:WorldToScreenPoint(enemy.Character["Head"].Position)
local magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
target = workspace[enemy.Name]["Head"].Position
end
else
target = nil
end
end)
end    


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



local Window = Rayfield:CreateWindow({
    Name = "hippity hop kill that ni- | KAT",
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

 local MainTab = Window:CreateTab("Main Stuff", 4483362458) -- Title, Image
 local TeleportsTab = Window:CreateTab("Teleports", 4515645493) -- Title, Image
 local LocalPlayerTab = Window:CreateTab("LocalPlayer", 4483345998) -- Title, Image
 local CreditsTab = Window:CreateTab("Credits", 4503342956) -- Title, Image



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
 

 local Slider = LocalPlayerTab:CreateSlider({
    Name = "HipHeight",
    Range = {1.65, 1000},
    Increment = 1,
    Suffix = "HipHeight",
    CurrentValue = 0,
    Flag = "hipheight", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game:GetService('Workspace')[Name].Humanoid.HipHeight = Value
    end,
 })

 local Slider = LocalPlayerTab:CreateSlider({
    Name = "Gravity",
    Range = {196.2, 1000},
    Increment = 1,
    Suffix = "Gravity",
    CurrentValue = 200,
    Flag = "gravity", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        workspace.Gravity = Value
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


 local Button = MainTab:CreateButton({
    Name = "Aimbot",
    Callback = function()
        aimbot()
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


 Rayfield:LoadConfiguration()