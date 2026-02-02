-- main.lua

local Vars = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/amabar49-boop/testing/main/ui.lua"
))()

local Features = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/amabar49-boop/testing/main/features.lua"
))()

Features.Start(Vars)
