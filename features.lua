local Library = getgenv().Library
if not Library then return end

local Window = Library.CreateLib("SilverRly", "DarkTheme")

local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Player Menu")

MainSection:NewButton("Speed 50", "Set WalkSpeed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

MainSection:NewButton("Reset Speed", "Default", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
