script_name("Faction Backup")
script_author("[SALMAN]")

require 'moonloader'
require 'sampfuncs'
local encoding = require 'encoding'
local vkeys = require 'vkeys'
encoding.default = 'CP1251'
u8 = encoding.UTF8


function main()
	while not isSampAvailable() do wait(50) end
	sampAddChatMessage("{DFBD68}Faction Backup {FFFFFF}by {FF0000}[SALMAN] {FFFFFF}loaded. {FFFFFF}Key: {FF00FF}HOME", 0x01A0E9)
	sampRegisterChatCommand("respond", cmd_respond)
	while true do
		if isKeyJustPressed(vkeys.VK_HOME) and not sampIsChatInputActive() and not sampIsDialogActive() and not sampIsScoreboardOpen() and not isSampfuncsConsoleActive()then
			if (tonumber(getActiveInterior()) == 0) then
				local zone = getNameOfZone(select(1, getCharCoordinates(playerPed)), select(2, getCharCoordinates(playerPed)), select(3, getCharCoordinates(playerPed)))
				local final = getGxtText(zone)
				sampProcessChatInput("/d I need immediate backup at " .. final .. ", over.")	
				sampProcessChatInput("/backup")	
			else
				sampProcessChatInput("/d I need immediate backup at my 10-20, over.")
				sampProcessChatInput("/backup")
			end
		end
	wait(0)
	end
 end
 
 function cmd_respond()
		sampSendChat(" Responding to your backup call & '76 to your '20, over.")
end