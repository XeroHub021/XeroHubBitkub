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



-- ESP

local Tab = Window:CreateTab("CS:B")
local Section = Tab:CreateSection("CS:B")









Rayfield:LoadConfiguration()
