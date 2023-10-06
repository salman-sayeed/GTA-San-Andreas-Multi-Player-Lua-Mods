script_name("Auto Accept Vehicle Repair")
script_author("[SALMAN]")

require 'moonloader'
require 'sampfuncs'

local sampev = require 'lib.samp.events'
local encoding = require 'encoding'
local vkeys = require "vkeys"
encoding.default = 'CP1251'
u8 = encoding.UTF8

function main()
	while not isSampAvailable() do wait(50) end
	sampAddChatMessage("{1E90FF}}Auto Accept Vehicle Repair {FFFFFF}by {FF4545}[SALMAN]", 0x01A0E9)
 end
 
 function sampev.onServerMessage(color, text)
		local repairText, msg = string.match(text,"for $1, %(type /accept repair%) to accept.")
		if (repairText and color == 869072810) then
			lua_thread.create(function()
			wait(50)
			sampSendChat("/accept repair")
			end)
		end
end