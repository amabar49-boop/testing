-- ui.lua
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

local Window = OrionLib:MakeWindow({
	Name = "SILVER Rly | v1.0.0",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "TapSim"
})

local Vars = {
	AutoTap = false,
	Delay = 0.1,
	AutoRebirth = false
}

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998"
})

MainTab:AddSection({ Name = "Auto Clicker" })

MainTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(v)
		Vars.AutoTap = v
	end
})

MainTab:AddSlider({
	Name = "Delay (ms)",
	Min = 50,
	Max = 500,
	Default = 100,
	Increment = 10,
	ValueName = "ms",
	Callback = function(v)
		Vars.Delay = v / 1000
	end
})

MainTab:AddSection({ Name = "Auto Rebirth" })

MainTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(v)
		Vars.AutoRebirth = v
	end
})

OrionLib:Init()

return Vars
