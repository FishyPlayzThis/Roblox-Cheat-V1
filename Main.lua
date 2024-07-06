local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Lukes Cheating Hub", "DarkTheme")

--Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main Section")


MainSection:NewButton("Infinite Yeild", "The best admin system.", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

--Settings
local Settings = Window:NewTab("Settings")
local SettingsPanel = Settings:NewSection("Main Settings")

--Keybinds
SettingsPanel:NewKeybind("Hide UI", "Hide the UI with a keybind.", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
