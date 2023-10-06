script_name("Auto Script")
script_author("[SALMAN]")

require 'moonloader'
require 'sampfuncs'

local sampev = require 'lib.samp.events'
local encoding = require 'encoding'
local inicfg = require 'inicfg'
local vkeys = require "vkeys"
encoding.default = 'CP1251'
u8 = encoding.UTF8

dir = getWorkingDirectory() .. "\\config\\Salman's Config\\"
dir2 = getWorkingDirectory() .. "\\config\\"
config = dir .. "Auto Script.ini"


if not doesDirectoryExist(dir2) then createDirectory(dir2) end
if not doesDirectoryExist(dir) then createDirectory(dir) end
if not doesFileExist(config) then
	file = io.open(config, "w")
	file:write(" ")
	file:close()
	local directIni = config
	local mainIni = inicfg.load(inicfg.load({
		main = {
			toggle = false,
			test = 1
		},
	}, directIni))
	
	inicfg.save(mainIni, directIni)
end

local directIni = config
local mainIni = inicfg.load(nil, directIni)
inicfg.save(mainIni, directIni)


function main()
	while not isSampAvailable() do wait(50) end
	sampAddChatMessage("{DFBD68}Auto Script {FFFFFF}by {FF0000} [SALMAN] {FF00FF}/togas", 0x01A0E9)
	sampRegisterChatCommand("togas", cmd_toggle)
 end

function sampev.onServerMessage(color, text)
	if mainIni.main.toggle then
		-- local whoreText, msg = string.match(text,"for $1 %(type /accept sex%) to accept.")
		-- if (whoreText and color == 869072810) then
			-- lua_thread.create(function()
			-- wait(50)
			-- sampSendChat("/accept sex")
			-- end)
		-- end
		local defendText, msg = string.match(text,"for $200, %(type /accept defense%) to accept.")
		if (defendText and color == 869072810) then
			lua_thread.create(function()
			wait(50)
			sampSendChat("/accept defense")
			end)
		end
		local repairText, msg = string.match(text,"for $1, %(type /accept repair%) to accept.")
		if (repairText and color == 869072810) then
			lua_thread.create(function()
			wait(50)
			sampSendChat("/accept repair")
			end)
		end
	end
end


function cmd_toggle()
		if mainIni.main.toggle then
		mainIni.main.toggle = false
		if inicfg.save(mainIni, directIni) then
			sampAddChatMessage("{DFBD68}Auto Script{ffffff}: {ff0000}Disabled", -1)
		end
	else
		mainIni.main.toggle = true
		if inicfg.save(mainIni, directIni) then
			sampAddChatMessage("{DFBD68}Auto Script{ffffff}: {00ff00}Enabled", -1)
		end
	end
end
