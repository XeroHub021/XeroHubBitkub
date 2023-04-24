local keychecked = false

if _G.Key == "ZeroKeyTEST" then
    keychecked = true
end

if keychecked == true then
       print("Whitelisted")
   else
       print("Not Whitelisted")
   end
end
