local key = _G.Key
local check = "https://raw.githubusercontent.com/XeroHub021/XeroHub/main/check.php?token=GHSAT0AAAAAACBZ5CFQ5GC2HA2CLREEWRB6ZCGTQHA?key=" .. key
if game:HttpGet(check) == "Whitelisted" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/XeroHub021/XeroHub/main/script.lua?token=GHSAT0AAAAAACBZ5CFQGNDLTMLGQBBBI5GCZCGTUOQ"))()
else
game.Players.LocalPlayer:Kick("คีย์ผิดคับน้อง")
end
