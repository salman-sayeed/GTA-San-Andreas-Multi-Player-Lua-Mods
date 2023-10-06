script_name("Aim Frisk")
script_author("[ SALMAN ]")

require "moonloader"
require "sampfuncs"
local vkeys = require "vkeys"
local sampev = require 'samp.events'
local inicfg = require "inicfg"
local path = "aimfrisk.ini" 


function main()
    while not isSampAvailable() do wait(50) end
	sampAddChatMessage("{33CCFF}Aim Frisk {FFFFFF}By {FF4545}[SALMAN] {FFFFFF}loaded {00FF00}successfully", -1)
	sampRegisterChatCommand("aimfrisk", cmd_state)
    while true do
        if not (sampIsChatInputActive() or sampIsDialogActive() or isSampfuncsConsoleActive()) then
            local res, tPlayer = getCharPlayerIsTargeting(playerHandle)
            if res and isKeyJustPressed(vkeys.VK_U) then
                local result, playerid = sampGetPlayerIdByCharHandle(tPlayer)
                if result then
                    sampSendChat("/b Mod test: works " .. playerid .. "")
                end
            end
        end
        wait(0)


    end
end


function cmd_state()
	modstate = not modstate
	if modstate == true then
		sampAddChatMessage("{33CCFF}Aim Frisk is {00ff18}Enabled{ffffff}.", 0xffffff)
	end
	if modstate == false then
		sampAddChatMessage("{33CCFF}Aim Frisk is {ff0000}Disabled{ffffff}.", 0xffffff)
	end
end

function sampev.onServerMessage(color, text)
	if not modstate then
		if color == -65366 then
			if string.match(text, "LSPD MOTD:") or string.match(text, "FBI MOTD:") or string.match(text, "ARES MOTD:") then
				modstate = true
				lua_thread.create(function()
				wait(50)
				sampAddChatMessage("{33CCFF}Aim Frisk is {00ff18}Enabled{ffffff}.", 0xffffff)
				end)
			end
		end
	end
	if modstate then 
		if color == -65366 then
			if string.match(text, "Family MOTD:") or string.match(text, "LSFMD MOTD:") then
				modstate = false
				lua_thread.create(function()
				wait(50)
				sampAddChatMessage("{33CCFF}Aim Frisk is {ff0000}Disabled{ffffff}.", 0xffffff)
				end)
			end
		end
	end
end