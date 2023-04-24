local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Xero Hub",
   LoadingTitle = "Xero Key",
   LoadingSubtitle = "by Zero",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Xero Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "discord.gg/APuTdtXaBr", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key System | Zero",
      Subtitle = "Key System",
      Note = "By ZeroKung",
      FileName = "Key System", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"ZeroKeyTEST"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("MAIN")
local Section = Tab:CreateSection("Script GAME")

local Button = Tab:CreateButton({
   Name = "กำลังทำ",
   Callback = function()
   
   end,
})


-- ESP

local Tab = Window:CreateTab("CS:B")
local Section = Tab:CreateSection("CS:B")

local Button = Tab:CreateButton({
   Name = "Aim lock",
   Callback = function()
   local dwCamera = workspace.CurrentCamera
local dwRunService = game:GetService("RunService")
local dwUIS = game:GetService("UserInputService")
local dwEntities = game:GetService("Players")
local dwLocalPlayer = dwEntities.LocalPlayer
local dwMouse = dwLocalPlayer:GetMouse()

local settings = {
    Aimbot = true,
    Aiming = false,
    Aimbot_AimPart = "Head",
    Aimbot_TeamCheck = true,
    Aimbot_Draw_FOV = true,
    Aimbot_FOV_Radius = 200,
    Aimbot_FOV_Color = Color3.fromRGB(255,255,255)
}


dwUIS.InputBegan:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton2 then
        settings.Aiming = true
    end
end)

dwUIS.InputEnded:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton2 then
        settings.Aiming = false
    end
end)

dwRunService.RenderStepped:Connect(function()
    
    local dist = math.huge
    local closest_char = nil

    if settings.Aiming then

        for i,v in next, dwEntities:GetChildren() do 

            if v ~= dwLocalPlayer and
            v.Character and
            v.Character:FindFirstChild("HumanoidRootPart") and
            v.Character:FindFirstChild("Humanoid") and
            v.Character:FindFirstChild("Humanoid").Health > 0 then

                if settings.Aimbot_TeamCheck == true and
                v.Team ~= dwLocalPlayer.Team or
                settings.Aimbot_TeamCheck == false then

                    local char = v.Character
                    local char_part_pos, is_onscreen = dwCamera:WorldToViewportPoint(char[settings.Aimbot_AimPart].Position)

                    if is_onscreen then

                        local mag = (Vector2.new(dwMouse.X, dwMouse.Y) - Vector2.new(char_part_pos.X, char_part_pos.Y)).Magnitude

                        if mag < dist and mag < settings.Aimbot_FOV_Radius then

                            dist = mag
                            closest_char = char

                        end
                    end
                end
            end
        end

        if closest_char ~= nil and
        closest_char:FindFirstChild("HumanoidRootPart") and
        closest_char:FindFirstChild("Humanoid") and
        closest_char:FindFirstChild("Humanoid").Health > 0 then

            dwCamera.CFrame = CFrame.new(dwCamera.CFrame.Position, closest_char[settings.Aimbot_AimPart].Position)
        end
    end
end)
    end)
   end,
})

local Section = Tab:CreateSection("Set ปุ่ม")

local Keybind = Tab:CreateKeybind({
   Name = "Keybind",
   CurrentKeybind = "Q",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
   Keybind:Set("RightCtrl") -- Keybind 
   end,
})

Rayfield:LoadConfiguration()
