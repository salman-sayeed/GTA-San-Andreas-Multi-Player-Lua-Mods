require "moonloader"
require "sampfuncs"
local vkeys = require "vkeys"
local sampev = require "lib.samp.events"

script_name("Auto Short Commands")
script_author("[SALMAN]")

function main()
	while not isSampAvailable() do wait(50) end
	sampAddChatMessage("{1E90FF}Auto Short Commands {FFFFFF}by {FF4545}[SALMAN] {FFFFFF}loaded {00FF00}successfully", -1)
	sampRegisterChatCommand("ce", cmd_engine)
	sampRegisterChatCommand("ch", cmd_hood)
	
	while true do
		wait(0)
	end
end

function cmd_engine()
		sampSendChat("/car engine")
end
function cmd_hood()
		sampSendChat("/car hood")
end
