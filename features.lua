-- features.lua
local Vars = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/amabar49-boop/testing/main/ui.lua"
))()

local M = {}

function M.Start()
	task.spawn(function()
		while task.wait(Vars.Delay) do
			if Vars.AutoTap then
				-- GANTI remote tap
				-- contoh:
				-- game.ReplicatedStorage.Events.Tap:FireServer()
			end

			if Vars.AutoRebirth then
				-- GANTI remote rebirth
				-- game.ReplicatedStorage.Events.Rebirth:FireServer()
			end
		end
	end)
end

return M
