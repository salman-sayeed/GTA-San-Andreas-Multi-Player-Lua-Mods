script_name("Auto Load Truck++")
script_author('[SALMAN]')

require "moonloader"
require "sampfuncs"
local sampev = require 'lib.samp.events'

local toggle = true

function main()
	while not isSampAvailable() do wait(50) end
		sampAddChatMessage("{DFBD68}Auto Load Truck {FFFFFF}by {9300ff}[SALMAN] {FFFFFF}has been loaded, {FF0000}/togtruck")
	sampRegisterChatCommand('togtruck', function() 
    toggle = not toggle
    sampAddChatMessage(toggle and '{DFBD68}Auto Load Truck++ {FFFFFF}::{00FF00} Enable' or '{DFBD68}Auto Load Truck++ {FFFFFF}::{FF0000} Disable', -1)
	end)
	while true do	
		wait(0)
	end
 end
 
 function sampev.onServerMessage(color, text)
    if toggle then
		local loadtruckText, msg = string.find(text, "TRUCKER JOB: To get goods type /loadtruck as the driver.")
		if (loadtruckText and color == -65366) then
			lua_thread.create(function()
				wait(3000) -- Delay for normal trucks.
				sampSendChat("/Loadtruck")
			end	)
		 
		end
		
		local delivertruckText, msg = string.find(text, "for delivering the goods and returning the truck.")
		if (delivertruckText and color == 869072810) then
			 if checkcar() then
				lua_thread.create(function()
					wait(1000) -- Delay for after delivering in personal truck            
					sampSendChat("/Loadtruck")
				end	)
			end
		    
		end
		local canceltruckText, msg = string.find(text, "* You have cancelled: truck.")
		if (canceltruckText and color == 869072810) then
			 if checkcar() then
				lua_thread.create(function()
					wait(1000) -- Delay for cancel truck      
					sampSendChat("/Loadtruck")
				end	)
			end
		    
		end
	end	
end

function checkcar()
	if isCharInModel(PLAYER_PED, 499) or isCharInModel(PLAYER_PED, 414) or isCharInModel(PLAYER_PED, 456) then
		local car = storeCarCharIsInNoSave(PLAYER_PED)
		if isCharInCar(PLAYER_PED, car) then
			local result, ownid = sampGetPlayerIdByCharHandle(PLAYER_PED)
			local car = storeCarCharIsInNoSave(PLAYER_PED)
			local driver = getDriverOfCar(car)
			local result, driverid = sampGetPlayerIdByCharHandle(driver)
			if ownid == driverid then
				return true
			end
		end
	end
end