-- Load Orion Library
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

-- Window
local Window = OrionLib:MakeWindow({
	Name = "SILVER RLY | v1.0",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "TapSimUI"
})

-- ======================
-- VARIABLES
-- ======================
local AutoTap = false
local TapDelay = 0.1
local AutoRebirth = false

-- ======================
-- MAIN TAB
-- ======================
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MainTab:AddSection({
	Name = "Auto Clicker"
})

-- Auto Tap Toggle
MainTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		AutoTap = Value
	end
})

-- Delay Slider
MainTab:AddSlider({
	Name = "Delay (ms)",
	Min = 50,
	Max = 500,
	Default = 100,
	Increment = 10,
	ValueName = "ms",
	Callback = function(Value)
		TapDelay = Value / 1000
	end
})

MainTab:AddSection({
	Name = "Auto Rebirth"
})

-- Auto Rebirth Toggle
MainTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		AutoRebirth = Value
	end
})

-- Rebirth Button
MainTab:AddButton({
	Name = "Rebirth (Manual)",
	Callback = function()
		print("Rebirth clicked")
		-- contoh:
		-- game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
	end
})

-- ======================
-- INFO TAB
-- ======================
local InfoTab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

InfoTab:AddParagraph("Creator","xena_rly")
InfoTab:AddParagraph("Game","Tap Simulator")
InfoTab:AddParagraph("Executor","Android Supported")

-- ======================
-- LOOP FUNCTION
-- ======================
task.spawn(function()
	while task.wait(TapDelay) do
		if AutoTap then
			-- GANTI DENGAN REMOTE TAP GAME
			-- contoh:
			-- game:GetService("ReplicatedStorage").Events.Tap:FireServer()
		end

		if AutoRebirth then
			-- GANTI DENGAN REMOTE REBIRTH GAME
			-- game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
		end
	end
end)

OrionLib:Init()
