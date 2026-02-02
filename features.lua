-- features.lua
local M = {}

function M.Start(Vars)
	task.spawn(function()
		while task.wait(Vars.Delay) do
			if Vars.AutoTap then
				print("Auto Tap Jalan")
				-- isi remote tap di sini
			end

			if Vars.AutoRebirth then
				print("Auto Rebirth Jalan")
				-- isi remote rebirth di sini
			end
		end
	end)
end

return M
