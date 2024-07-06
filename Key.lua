local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Key System", "DarkTheme")

local Main = Window:NewTab("Check Key")
local Section = Main:NewSection("Key System")

_G.Key = "nothing yet"

Section:NewButton("Copy Key Link", "Paste link in browser", function()
   setclipboard("https://work.ink/1Voo/lyaast9u")
end)

local KeyLabel = Section:NewLabel("Key 1 | ".. _G.Key)
local KeyInput = Section:NewTextBox("Key", "Key",
   function(txt) 
      KeyLabel:UpdateLabel("Key > ".. txt) 
      _G.Key = txt
      CheckKey()
   end)

_G.CheckKey = false
local OutputLabel = Section:NewLabel("")

       function CheckKey()
         if _G.CheckedKey == true then
            return
         end
         local key game:HttpGet("https://redirect-api.work.ink/tokenValid/".. _G.Key .. "?linkId=6453")
         if key == 'false' then
            OutputLabel:UpdateLabel("Key Invalid")
            return
         end

         _G.CheckKey = true
            local script = loadstring(game:HttpGet('https://raw.githubusercontent.com/FishyPlayzThis/Roblox-Cheat-V1/main/Main.lua'))()
            if script then
               script()
            else
               OutputLabel:UpdateLabel("Failed To Load")
            end
      end
