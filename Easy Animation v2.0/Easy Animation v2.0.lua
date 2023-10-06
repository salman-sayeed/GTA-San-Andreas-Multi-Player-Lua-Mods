script_name('Easy Animation')
script_author('[SALMAN]')
script_version('2.0')

local vkeys = require "vkeys"
local sampev = require 'lib.samp.events'
local imgui = require('imgui')
local encoding = require 'encoding'
encoding.default = 'CP1251'
u8 = encoding.UTF8

local easy_animation = imgui.ImBool(false)
function imgui.OnDrawFrame()
  if easy_animation.v then
	imgui.ShowCursor = true;  
    imgui.SetNextWindowSize(imgui.ImVec2(445, 300), imgui.Cond.FirstUseEver)
	        if not window_pos then
            ScreenX, ScreenY = getScreenResolution()
            imgui.SetNextWindowPos(imgui.ImVec2(ScreenX / 1.2 , ScreenY / 2), imgui.Cond.FirsUseEver, imgui.ImVec2(0.5, 0.5))
            window_pos = true
        end
    imgui.Begin('Easy Animation v2.0 by [SALMAN]', easy_animation);
	imgui.BeginChild('child', imgui.ImVec2(435, 260), true);
			imgui.Spacing()
			imgui.Spacing()
				if imgui.Button('Stop Animation', imgui.ImVec2(410, 20)) then
				sampSendChat("/stopani")
				end
			imgui.Spacing()
			imgui.Spacing()
			
			imgui.Separator()
			imgui.Spacing()
			imgui.Spacing()
				if imgui.Button('Handsup', imgui.ImVec2(60, 20)) then
				sampSendChat("/handsup")
				end
				imgui.SameLine()
				if imgui.Button('RobMan', imgui.ImVec2(60, 20)) then
				sampSendChat("/robman")
				end
				imgui.SameLine()
				if imgui.Button('Rob', imgui.ImVec2(60, 20)) then
				sampSendChat("/rob")
				end
				imgui.SameLine()
				if imgui.Button('Drunk', imgui.ImVec2(60, 20)) then
				sampSendChat("/drunk")
				end
				imgui.SameLine()
				if imgui.Button('Bomb', imgui.ImVec2(60, 20)) then
				sampSendChat("/bomb")
				end
				imgui.SameLine()
				if imgui.Button('Laugh', imgui.ImVec2(60, 20)) then
				sampSendChat("/laugh")
				end
				--imgui.SameLine()
				imgui.Spacing()
				if imgui.Button('LookOut', imgui.ImVec2(60, 20)) then
				sampSendChat("/lookout")
				end
				imgui.SameLine()
				if imgui.Button('SitEat 1', imgui.ImVec2(60, 20)) then
				sampSendChat("/siteat 1")
				end
				imgui.SameLine()
				if imgui.Button('SitEat 2', imgui.ImVec2(60, 20)) then
				sampSendChat("/siteat 2")
				end
				imgui.SameLine()
				if imgui.Button('Vomit', imgui.ImVec2(60, 20)) then
				sampSendChat("/vomit")
				end
				imgui.SameLine()
				if imgui.Button('Hide', imgui.ImVec2(60, 20)) then
				sampSendChat("/hide")
				end
				imgui.SameLine()
				if imgui.Button('Eat', imgui.ImVec2(60, 20)) then
				sampSendChat("/eat")
				end
				--imgui.SameLine()
				imgui.Spacing()
				if imgui.Button('SlapAss', imgui.ImVec2(60, 20)) then
				sampSendChat("/slapass")
				end
				imgui.SameLine()
				if imgui.Button('Deal 1', imgui.ImVec2(60, 20)) then
				sampSendChat("/deal 1")
				end
				imgui.SameLine()
				if imgui.Button('Deal 2', imgui.ImVec2(60, 20)) then
				sampSendChat("/deal 2")
				end
				imgui.SameLine()
				if imgui.Button('Taichi', imgui.ImVec2(60, 20)) then
				sampSendChat("/taichi")
				end
				imgui.SameLine()
				if imgui.Button('Crack', imgui.ImVec2(60, 20)) then
				sampSendChat("/crack")
				end
				imgui.SameLine()
				if imgui.Button('FuckU', imgui.ImVec2(60, 20)) then
				sampSendChat("/fucku")
				end
				--imgui.SameLine()
				imgui.Spacing()
				if imgui.Button('Smoke 1', imgui.ImVec2(60, 20)) then
				sampSendChat("/Smoke 1")
				end
				imgui.SameLine()
				if imgui.Button('Smoke 2', imgui.ImVec2(60, 20)) then
				sampSendChat("/Smoke 2")
				end
				imgui.SameLine()
				if imgui.Button('Drink', imgui.ImVec2(60, 20)) then
				sampSendChat("/Drinkwater")
				end
				imgui.SameLine()
				if imgui.Button('FishIdle', imgui.ImVec2(60, 20)) then
				sampSendChat("/fishidle")
				end
				imgui.SameLine()
				if imgui.Button('Time', imgui.ImVec2(60, 20)) then
				sampSendChat("/checktime")
				end
				imgui.SameLine()
				if imgui.Button('Sleep', imgui.ImVec2(60, 20)) then
				sampSendChat("/sleep")
				end
				--imgui.SameLine()
				imgui.Spacing()
				if imgui.Button('Blob', imgui.ImVec2(60, 20)) then
				sampSendChat("/blob")
				end
				imgui.SameLine()
				if imgui.Button('OpenDoor', imgui.ImVec2(61, 20)) then
				sampSendChat("/opendoor")
				end
				imgui.SameLine()
				if imgui.Button('Reload 1', imgui.ImVec2(60, 20)) then
				sampSendChat("/reload 1")
				end
				imgui.SameLine()
				if imgui.Button('Reload 2', imgui.ImVec2(60, 20)) then
				sampSendChat("/reload 2")
				end
				imgui.SameLine()
				if imgui.Button('CPR', imgui.ImVec2(60, 20)) then
				sampSendChat("/cpr")
				end
				imgui.SameLine()
				if imgui.Button('Dive', imgui.ImVec2(60, 20)) then
				sampSendChat("/Dive")
				end
				--imgui.SameLine()
				imgui.Spacing()
				if imgui.Button('ShowOff', imgui.ImVec2(60, 20)) then
				sampSendChat("/showoff")
				end
				imgui.SameLine()
				if imgui.Button('Boxing', imgui.ImVec2(60, 20)) then
				sampSendChat("/box")
				end
				imgui.SameLine()
				if imgui.Button('Tag 1', imgui.ImVec2(60, 20)) then
				sampSendChat("/tag 1")
				end
				imgui.SameLine()
				if imgui.Button('Tag 2', imgui.ImVec2(60, 20)) then
				sampSendChat("/tag 2")
				end
				imgui.SameLine()
				if imgui.Button('Goggles', imgui.ImVec2(60, 20)) then
				sampSendChat("/goggles")
				end
				imgui.SameLine()
				if imgui.Button('Cry', imgui.ImVec2(60, 20)) then
				sampSendChat("/Cry")
				end
				--imgui.SameLine()
				imgui.Spacing()
				if imgui.Button('Throw', imgui.ImVec2(60, 20)) then
				sampSendChat("/throw")
				end
				imgui.SameLine()
				if imgui.Button('Robbed', imgui.ImVec2(60, 20)) then
				sampSendChat("/robbed")
				end
				imgui.SameLine()
				if imgui.Button('Hurt', imgui.ImVec2(60, 20)) then
				sampSendChat("/hurt")
				end
				imgui.SameLine()
				if imgui.Button('Piss', imgui.ImVec2(60, 20)) then
				sampSendChat("/piss")
				end
				imgui.SameLine()
				if imgui.Button('Salute', imgui.ImVec2(60, 20)) then
				sampSendChat("/salute")
				end
				imgui.SameLine()
				if imgui.Button('Crabs', imgui.ImVec2(60, 20)) then
				sampSendChat("/crabs")
				end
				--imgui.SameLine()
				imgui.Spacing()
				if imgui.Button('Wash', imgui.ImVec2(60, 20)) then
				sampSendChat("/Washhands")
				end
				imgui.SameLine()
				if imgui.Button('Stop', imgui.ImVec2(60, 20)) then
				sampSendChat("/Stop")
				end
				imgui.SameLine()
				if imgui.Button('Signal 1', imgui.ImVec2(60, 20)) then
				sampSendChat("/Signal 1")
				end
				imgui.SameLine()
				if imgui.Button('Signal 2', imgui.ImVec2(60, 20)) then
				sampSendChat("/Signal 2")
				end
				imgui.SameLine()
				if imgui.Button('JerkOff', imgui.ImVec2(60, 20)) then
				sampSendChat("/jerkoff")
				end
				imgui.SameLine()
				if imgui.Button('What', imgui.ImVec2(60, 20)) then
				sampSendChat("/what")
				end
				--imgui.SameLine()
				imgui.Spacing()
				if imgui.Button('BlowJob 1', imgui.ImVec2(60, 20)) then
				sampSendChat("/blowjob 1")
				end
				imgui.SameLine()
				if imgui.Button('Blowjob 2', imgui.ImVec2(60, 20)) then
				sampSendChat("/blowJob")
				end
				imgui.SameLine()
				if imgui.Button('Snatch 1', imgui.ImVec2(60, 20)) then
				sampSendChat("/Snatch 1")
				end
				imgui.SameLine()
				if imgui.Button('Snatch 2', imgui.ImVec2(60, 20)) then
				sampSendChat("/Snatch 2")
				end
				imgui.SameLine()
				if imgui.Button('Sneak', imgui.ImVec2(60, 20)) then
				sampSendChat("/sneak")
				end
				imgui.SameLine()
				if imgui.Button('BodyPush', imgui.ImVec2(60, 20)) then
				sampSendChat("/bodypush")
				end
				--imgui.SameLine()
				imgui.Spacing()
				if imgui.Button('LowPush', imgui.ImVec2(60, 20)) then
				sampSendChat("/lowbodypush")
				end
				imgui.SameLine()
				if imgui.Button('HeadButt', imgui.ImVec2(60, 20)) then
				sampSendChat("/headbutt")
				end
				imgui.SameLine()
				if imgui.Button('AirKick', imgui.ImVec2(60, 20)) then
				sampSendChat("/AirKick")
				end
				imgui.SameLine()
				if imgui.Button('Doorkick', imgui.ImVec2(60, 20)) then
				sampSendChat("/doorkick")
				end
				imgui.SameLine()
				if imgui.Button('LeftSlap', imgui.ImVec2(60, 20)) then
				sampSendChat("/leftslap")
				end
				imgui.SameLine()
				if imgui.Button('Elbow', imgui.ImVec2(60, 20)) then
				sampSendChat("/elbow")
				end
				--imgui.SameLine()
				imgui.Spacing()
				if imgui.Button('Coprun', imgui.ImVec2(60, 20)) then
				sampSendChat("/Coprun")
				end
				imgui.SameLine()
				if imgui.Button('Lean 1', imgui.ImVec2(60, 20)) then
				sampSendChat("/lean 1")
				end
				imgui.SameLine()
				if imgui.Button('Lean 2', imgui.ImVec2(60, 20)) then
				sampSendChat("/lean 2")
				end
				imgui.SameLine()
				if imgui.Button('FacePalm', imgui.ImVec2(60, 20)) then
				sampSendChat("/Facepalm")
				end
						
			imgui.Spacing()
			imgui.Spacing()
			imgui.Separator()
			
			imgui.Spacing()
			imgui.Spacing()
		if imgui.CollapsingHeader(u8'Cross Arms') then --=========================================== Cross Arms
			imgui.Spacing()	
				if imgui.Button('1##crossarms', imgui.ImVec2(25, 20)) then
				sampSendChat("/Crossarms 1")
				end
				imgui.SameLine()
				if imgui.Button('2##crossarms', imgui.ImVec2(25, 20)) then
				sampSendChat("/Crossarms 2")
				end
				imgui.SameLine()
				if imgui.Button('3##crossarms', imgui.ImVec2(25, 20)) then
				sampSendChat("/Crossarms 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##crossarms', imgui.ImVec2(25, 20)) then
				sampSendChat("/Crossarms 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##crossarms', imgui.ImVec2(25, 20)) then
				sampSendChat("/Crossarms 5")
				end
        end
		
			imgui.Spacing()
		if imgui.CollapsingHeader(u8'Sit & Sit on Chair') then --=========================================== Sit & Sit on Chair
			imgui.Spacing()		
				if imgui.Button('1##sit', imgui.ImVec2(25, 20)) then
				sampSendChat("/sit 1")
				end
				imgui.SameLine()
				if imgui.Button('2##sit', imgui.ImVec2(25, 20)) then
				sampSendChat("/sit 2")
				end
				imgui.SameLine()
				if imgui.Button('3##sit', imgui.ImVec2(25, 20)) then
				sampSendChat("/sit 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##sit', imgui.ImVec2(25, 20)) then
				sampSendChat("/sit 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##sit', imgui.ImVec2(25, 20)) then
				sampSendChat("/sit 5")
				end
			imgui.Spacing()
			imgui.Text('-- Sit on Chair --')
			imgui.Spacing()
				if imgui.Button('1##sitonchair', imgui.ImVec2(25, 20)) then
				sampSendChat("/sitonchair 1")
				end
				imgui.SameLine()
				if imgui.Button('2##sitonchair', imgui.ImVec2(25, 20)) then
				sampSendChat("/sitonchair 2")
				end
				imgui.SameLine()
				if imgui.Button('3##sitonchair', imgui.ImVec2(25, 20)) then
				sampSendChat("/sitonchair 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##sitonchair', imgui.ImVec2(25, 20)) then
				sampSendChat("/sitonchair 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##sitonchair', imgui.ImVec2(25, 20)) then
				sampSendChat("/sitonchair 5")
				end
				imgui.SameLine()	
				if imgui.Button('6##sitonchair', imgui.ImVec2(25, 20)) then
				sampSendChat("/sitonchair 6")
				end		
				imgui.SameLine()
				if imgui.Button('7##sitonchair', imgui.ImVec2(25, 20)) then
				sampSendChat("/sitonchair 7")
				end	
        end		
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Wave') then --=========================================== Wave
			imgui.Spacing()	
				if imgui.Button('1##wave', imgui.ImVec2(25, 20)) then
				sampSendChat("/wave 1")
				end
				imgui.SameLine()
				if imgui.Button('2##wave', imgui.ImVec2(25, 20)) then
				sampSendChat("/wave 2")
				end
				imgui.SameLine()
				if imgui.Button('3##wave', imgui.ImVec2(25, 20)) then
				sampSendChat("/wave 3")
				end
				imgui.SameLine()
				if imgui.Button('WaveDown', imgui.ImVec2(70, 20)) then
				sampSendChat("/wavedown")
				end
			
        end	
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Chat & Car Chat') then --=========================================== Chat
			imgui.Spacing()	
				if imgui.Button('1##chat', imgui.ImVec2(25, 20)) then
				sampSendChat("/chat 1")
				end
				imgui.SameLine()
				if imgui.Button('2##chat', imgui.ImVec2(25, 20)) then
				sampSendChat("/chat 2")
				end
				imgui.SameLine()
				if imgui.Button('3##chat', imgui.ImVec2(25, 20)) then
				sampSendChat("/chat 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##chat', imgui.ImVec2(25, 20)) then
				sampSendChat("/chat 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##chat', imgui.ImVec2(25, 20)) then
				sampSendChat("/chat 5")
				end
			imgui.Spacing()
			imgui.Text('-- Car Chat --')
			imgui.Spacing()
				if imgui.Button('1##carchat', imgui.ImVec2(25, 20)) then
				sampSendChat("/carchat 1")
				end
				imgui.SameLine()
				if imgui.Button('2##carchat', imgui.ImVec2(25, 20)) then
				sampSendChat("/carchat 2")
				end
				imgui.SameLine()
				if imgui.Button('3##carchat', imgui.ImVec2(25, 20)) then
				sampSendChat("/carchat 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##carchat', imgui.ImVec2(25, 20)) then
				sampSendChat("/carchat 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##carchat', imgui.ImVec2(25, 20)) then
				sampSendChat("/carchat 5")
				end
				imgui.SameLine()	
				if imgui.Button('6##carchat', imgui.ImVec2(25, 20)) then
				sampSendChat("/carchat 6")
				end		
				imgui.SameLine()
				if imgui.Button('7##carchat', imgui.ImVec2(25, 20)) then
				sampSendChat("/carchat 7")
				end	
        end
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Dance') then --=========================================== Dance
			imgui.Spacing()	
				if imgui.Button('1##dance', imgui.ImVec2(25, 20)) then
				sampSendChat("/dance 1")
				end
				imgui.SameLine()
				if imgui.Button('2##dance', imgui.ImVec2(25, 20)) then
				sampSendChat("/dance 2")
				end
				imgui.SameLine()
				if imgui.Button('3##dance', imgui.ImVec2(25, 20)) then
				sampSendChat("/dance 3")
				end
				imgui.SameLine()
				if imgui.Button('4##dance', imgui.ImVec2(25, 20)) then
				sampSendChat("/dance 4")
				end
			
        end	
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Cheer') then --=========================================== Cheer
			imgui.Spacing()	
				if imgui.Button('1##cheer', imgui.ImVec2(25, 20)) then
				sampSendChat("/cheer 1")
				end
				imgui.SameLine()
				if imgui.Button('2##cheer', imgui.ImVec2(25, 20)) then
				sampSendChat("/cheer 2")
				end
				imgui.SameLine()
				if imgui.Button('3##cheer', imgui.ImVec2(25, 20)) then
				sampSendChat("/cheer 3")
				end
				imgui.SameLine()
				if imgui.Button('4##cheer', imgui.ImVec2(25, 20)) then
				sampSendChat("/cheer 4")
				end
				imgui.SameLine()
				if imgui.Button('5##cheer', imgui.ImVec2(25, 20)) then
				sampSendChat("/cheer 5")
				end
				imgui.SameLine()
				if imgui.Button('6##cheer', imgui.ImVec2(25, 20)) then
				sampSendChat("/cheer 6")
				end
				imgui.SameLine()
				if imgui.Button('7##cheer', imgui.ImVec2(25, 20)) then
				sampSendChat("/cheer 7")
				end
				imgui.SameLine()
				if imgui.Button('8##cheer', imgui.ImVec2(25, 20)) then
				sampSendChat("/cheer 8")
				end

        end	
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Get Jiggy') then --=========================================== Get Jiggy
			imgui.Spacing()	
				if imgui.Button('1##getjiggy', imgui.ImVec2(25, 20)) then
				sampSendChat("/getjiggy 1")
				end
				imgui.SameLine()
				if imgui.Button('2##getjiggy', imgui.ImVec2(25, 20)) then
				sampSendChat("/getjiggy 2")
				end
				imgui.SameLine()
				if imgui.Button('3##getjiggy', imgui.ImVec2(25, 20)) then
				sampSendChat("/getjiggy 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##getjiggy', imgui.ImVec2(25, 20)) then
				sampSendChat("/getjiggy 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##getjiggye', imgui.ImVec2(25, 20)) then
				sampSendChat("/getjiggy 5")
				end
				imgui.SameLine()	
				if imgui.Button('6##getjiggy', imgui.ImVec2(25, 20)) then
				sampSendChat("/getjiggy 6")
				end		
				imgui.SameLine()
				if imgui.Button('7##getjiggy', imgui.ImVec2(25, 20)) then
				sampSendChat("/getjiggy 7")
				end	
				imgui.SameLine()
				if imgui.Button('8##getjiggy', imgui.ImVec2(25, 20)) then
				sampSendChat("/getjiggy 8")
				end	
        end	
		
				imgui.Spacing()
		if imgui.CollapsingHeader(u8'Bat') then --=========================================== Bat
			imgui.Spacing()	
				if imgui.Button('1##bat', imgui.ImVec2(25, 20)) then
				sampSendChat("/bat 1")
				end
				imgui.SameLine()
				if imgui.Button('2##bat', imgui.ImVec2(25, 20)) then
				sampSendChat("/bat 2")
				end
				imgui.SameLine()
				if imgui.Button('3##bat', imgui.ImVec2(25, 20)) then
				sampSendChat("/bat 3")
				end
        end	
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Wank') then --=========================================== Wank
			imgui.Spacing()	
				if imgui.Button('1##wank', imgui.ImVec2(25, 20)) then
				sampSendChat("/wank 1")
				end
				imgui.SameLine()
				if imgui.Button('2##wank', imgui.ImVec2(25, 20)) then
				sampSendChat("/bat 2")
				end
				imgui.SameLine()
				if imgui.Button('3##wank', imgui.ImVec2(25, 20)) then
				sampSendChat("/Wank 3")
				end
        end	
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'DJ & Rap') then --=========================================== DJ & Rap
			imgui.Spacing()	
				if imgui.Button('1##dj', imgui.ImVec2(25, 20)) then
				sampSendChat("/dj 1")
				end
				imgui.SameLine()
				if imgui.Button('2##dj', imgui.ImVec2(25, 20)) then
				sampSendChat("/dj 2")
				end
				imgui.SameLine()
				if imgui.Button('3##dj', imgui.ImVec2(25, 20)) then
				sampSendChat("/dj 3")
				end
				imgui.SameLine()
				if imgui.Button('4##dj', imgui.ImVec2(25, 20)) then
				sampSendChat("/dj 4")
				end
			imgui.Spacing()
			imgui.Text('-- Rap --')
			imgui.Spacing()
				if imgui.Button('1##rap', imgui.ImVec2(25, 20)) then
				sampSendChat("/rap 1")
				end
				imgui.SameLine()
				if imgui.Button('2##rap', imgui.ImVec2(25, 20)) then
				sampSendChat("/rap 2")
				end
				imgui.SameLine()
				if imgui.Button('3##rap', imgui.ImVec2(25, 20)) then
				sampSendChat("/rap 3")
				end
        end	
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Bar') then --=========================================== Bar
			imgui.Spacing()	
				if imgui.Button('1##bar', imgui.ImVec2(25, 20)) then
				sampSendChat("/bar 1")
				end
				imgui.SameLine()
				if imgui.Button('2##bar', imgui.ImVec2(25, 20)) then
				sampSendChat("/bar 2")
				end
				imgui.SameLine()
				if imgui.Button('3##bar', imgui.ImVec2(25, 20)) then
				sampSendChat("/bar 3")
				end
				imgui.SameLine()
				if imgui.Button('4##bar', imgui.ImVec2(25, 20)) then
				sampSendChat("/bar 4")
				end
				imgui.SameLine()
				if imgui.Button('5##bar', imgui.ImVec2(25, 20)) then
				sampSendChat("/bar 5")
				end
        end	
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Fall Over') then --=========================================== Fall Over
			imgui.Spacing()	
				if imgui.Button('1##fallover', imgui.ImVec2(25, 20)) then
				sampSendChat("/fallover 1")
				end
				imgui.SameLine()
				if imgui.Button('2##fallover', imgui.ImVec2(25, 20)) then
				sampSendChat("/fallover 2")
				end
				imgui.SameLine()
				if imgui.Button('3##fallover', imgui.ImVec2(25, 20)) then
				sampSendChat("/fallover 3")
				end
				imgui.SameLine()
				if imgui.Button('4##fallover', imgui.ImVec2(25, 20)) then
				sampSendChat("/fallover 4")
				end
				imgui.SameLine()
				if imgui.Button('5##fallover', imgui.ImVec2(25, 20)) then
				sampSendChat("/fallover 5")
				end
        end	
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Spank') then --=========================================== Spank
			imgui.Spacing()	
				if imgui.Button('1##spank', imgui.ImVec2(25, 20)) then
				sampSendChat("/spank 1")
				end
				imgui.SameLine()
				if imgui.Button('2##spank', imgui.ImVec2(25, 20)) then
				sampSendChat("/spank 2")
				end
				imgui.SameLine()
				if imgui.Button('3##spank', imgui.ImVec2(25, 20)) then
				sampSendChat("/spank 3")
				end
				imgui.SameLine()
				if imgui.Button('4##spank', imgui.ImVec2(25, 20)) then
				sampSendChat("/spank 4")
				end
        end	
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Kiss') then --=========================================== Kiss
			imgui.Spacing()	
				if imgui.Button('1##kiss', imgui.ImVec2(25, 20)) then
				sampSendChat("/kiss 1")
				end
				imgui.SameLine()
				if imgui.Button('2##kiss', imgui.ImVec2(25, 20)) then
				sampSendChat("/kiss 2")
				end
				imgui.SameLine()
				if imgui.Button('3##kiss', imgui.ImVec2(25, 20)) then
				sampSendChat("/kiss 3")
				end
				imgui.SameLine()
				if imgui.Button('4##kiss', imgui.ImVec2(25, 20)) then
				sampSendChat("/kiss 4")
				end
        end
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Sexy') then --=========================================== Sexy
			imgui.Spacing()	
				if imgui.Button('1##sexy', imgui.ImVec2(25, 20)) then
				sampSendChat("/sexy 1")
				end
				imgui.SameLine()
				if imgui.Button('2##sexy', imgui.ImVec2(25, 20)) then
				sampSendChat("/sexy 2")
				end
				imgui.SameLine()
				if imgui.Button('3##sexy', imgui.ImVec2(25, 20)) then
				sampSendChat("/sexy 3")
				end
				imgui.SameLine()
				if imgui.Button('4##sexy', imgui.ImVec2(25, 20)) then
				sampSendChat("/sexy 4")
				end
				imgui.SameLine()
				if imgui.Button('5##sexy', imgui.ImVec2(25, 20)) then
				sampSendChat("/sexy 5")
				end
				imgui.SameLine()
				if imgui.Button('6##sexy', imgui.ImVec2(25, 20)) then
				sampSendChat("/sexy 6")
				end
        end
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Copa') then --=========================================== Copa
			imgui.Spacing()	
				if imgui.Button('1##copa', imgui.ImVec2(25, 20)) then
				sampSendChat("/copa 1")
				end
				imgui.SameLine()
				if imgui.Button('2##copa', imgui.ImVec2(25, 20)) then
				sampSendChat("/copa 2")
				end
				imgui.SameLine()
				if imgui.Button('3##copa', imgui.ImVec2(25, 20)) then
				sampSendChat("/copa 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##copa', imgui.ImVec2(25, 20)) then
				sampSendChat("/copa 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##copa', imgui.ImVec2(25, 20)) then
				sampSendChat("/copa 5")
				end
				imgui.SameLine()	
				if imgui.Button('6##copa', imgui.ImVec2(25, 20)) then
				sampSendChat("/copa 6")
				end		
				imgui.SameLine()
				if imgui.Button('7##copa', imgui.ImVec2(25, 20)) then
				sampSendChat("/copa 7")
				end	
				imgui.SameLine()
				if imgui.Button('8##copa', imgui.ImVec2(25, 20)) then
				sampSendChat("/copa 8")
				end	
				imgui.SameLine()
				if imgui.Button('9##copa', imgui.ImVec2(25, 20)) then
				sampSendChat("/copa 9")
				end	
        end
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Idles') then --=========================================== Idles
			imgui.Spacing()	
				if imgui.Button('1##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 1")
				end
				imgui.SameLine()
				if imgui.Button('2##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 2")
				end
				imgui.SameLine()
				if imgui.Button('3##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 5")
				end
				imgui.SameLine()	
				if imgui.Button('6##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 6")
				end		
				imgui.SameLine()
				if imgui.Button('7##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 7")
				end	
				imgui.SameLine()
				if imgui.Button('8##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 8")
				end	
				imgui.SameLine()
				if imgui.Button('9##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 9")
				end	
				imgui.SameLine()
				if imgui.Button('10##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 10")
				end	
				imgui.SameLine()
				if imgui.Button('11##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 11")
				end	
				imgui.SameLine()
				if imgui.Button('12##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 12")
				end
				imgui.Spacing()
				--imgui.SameLine()
				if imgui.Button('13##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 13")
				end
				imgui.SameLine()
				if imgui.Button('14##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 14")
				end
				imgui.SameLine()
				if imgui.Button('15##idles', imgui.ImVec2(25, 20)) then
				sampSendChat("/idles 15")
				end
        end
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Gesture') then --=========================================== Gesture
			imgui.Spacing()	
				if imgui.Button('1##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 1")
				end
				imgui.SameLine()
				if imgui.Button('2##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 2")
				end
				imgui.SameLine()
				if imgui.Button('3##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 5")
				end
				imgui.SameLine()	
				if imgui.Button('6##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 6")
				end		
				imgui.SameLine()
				if imgui.Button('7##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 7")
				end	
				imgui.SameLine()
				if imgui.Button('8##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 8")
				end	
				imgui.SameLine()
				if imgui.Button('9##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 9")
				end	
				imgui.SameLine()
				if imgui.Button('10##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 10")
				end	
				imgui.SameLine()
				if imgui.Button('11##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 11")
				end	
				imgui.SameLine()
				if imgui.Button('12##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 12")
				end
				imgui.Spacing()
				--imgui.SameLine()
				if imgui.Button('13##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 13")
				end
				imgui.SameLine()
				if imgui.Button('14##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 14")
				end
				imgui.SameLine()
				if imgui.Button('15##gesture', imgui.ImVec2(25, 20)) then
				sampSendChat("/gesture 15")
				end
        end
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Sunbathe') then --=========================================== Sunbathe
			imgui.Spacing()	
				if imgui.Button('1##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 1")
				end
				imgui.SameLine()
				if imgui.Button('2##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 2")
				end
				imgui.SameLine()
				if imgui.Button('3##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 5")
				end
				imgui.SameLine()	
				if imgui.Button('6##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 6")
				end		
				imgui.SameLine()
				if imgui.Button('7##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 7")
				end	
				imgui.SameLine()
				if imgui.Button('8##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 8")
				end	
				imgui.SameLine()
				if imgui.Button('9##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 9")
				end	
				imgui.SameLine()
				if imgui.Button('10##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 10")
				end	
				imgui.SameLine()
				if imgui.Button('11##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 11")
				end	
				imgui.SameLine()
				if imgui.Button('12##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 12")
				end
				imgui.Spacing()
				--imgui.SameLine()
				if imgui.Button('13##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 13")
				end
				imgui.SameLine()
				if imgui.Button('14##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 14")
				end
				imgui.SameLine()
				if imgui.Button('15##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 15")
				end
				imgui.SameLine()
				if imgui.Button('16##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 16")
				end
				imgui.SameLine()
				if imgui.Button('17##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 17")
				end
				imgui.SameLine()
				if imgui.Button('18##sunbathe', imgui.ImVec2(25, 20)) then
				sampSendChat("/sunbathe 18")
				end
        end	
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Ped Move') then --=========================================== Ped Move
			imgui.Spacing()	
				if imgui.Button('1##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 1")
				end
				imgui.SameLine()
				if imgui.Button('2##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 2")
				end
				imgui.SameLine()
				if imgui.Button('3##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 5")
				end
				imgui.SameLine()	
				if imgui.Button('6##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 6")
				end		
				imgui.SameLine()
				if imgui.Button('7##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 7")
				end	
				imgui.SameLine()
				if imgui.Button('8##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 8")
				end	
				imgui.SameLine()
				if imgui.Button('9##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 9")
				end	
				imgui.SameLine()
				if imgui.Button('10##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 10")
				end	
				imgui.SameLine()
				if imgui.Button('11##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 11")
				end	
				imgui.SameLine()
				if imgui.Button('12##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 12")
				end
				imgui.Spacing()
				--imgui.SameLine()
				if imgui.Button('13##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 13")
				end
				imgui.SameLine()
				if imgui.Button('14##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 14")
				end
				imgui.SameLine()
				if imgui.Button('15##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 15")
				end
				imgui.SameLine()
				if imgui.Button('16##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 16")
				end
				imgui.SameLine()
				if imgui.Button('17##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 17")
				end
				imgui.SameLine()
				if imgui.Button('18##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 18")
				end
				imgui.SameLine()
				if imgui.Button('19##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 19")
				end
				imgui.SameLine()
				if imgui.Button('20##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 20")
				end
				imgui.SameLine()
				if imgui.Button('21##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 21")
				end
				imgui.SameLine()
				if imgui.Button('22##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 22")
				end
				imgui.SameLine()
				if imgui.Button('23##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 23")
				end
				imgui.SameLine()
				if imgui.Button('24##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 24")
				end
				imgui.Spacing()
				--imgui.SameLine()
				if imgui.Button('25##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 25")
				end
				imgui.SameLine()
				if imgui.Button('26##pedmove', imgui.ImVec2(25, 20)) then
				sampSendChat("/pedmove 26")
				end
        end	
		
		imgui.Spacing()
		if imgui.CollapsingHeader(u8'Low Rider') then --=========================================== Low Rider
			imgui.Spacing()	
				if imgui.Button('1##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 1")
				end
				imgui.SameLine()
				if imgui.Button('2##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 2")
				end
				imgui.SameLine()
				if imgui.Button('3##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 3")
				end
				imgui.SameLine()	
				if imgui.Button('4##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 4")
				end
				imgui.SameLine()	
				if imgui.Button('5##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 5")
				end
				imgui.SameLine()	
				if imgui.Button('6##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 6")
				end		
				imgui.SameLine()
				if imgui.Button('7##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 7")
				end	
				imgui.SameLine()
				if imgui.Button('8##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 8")
				end	
				imgui.SameLine()
				if imgui.Button('9##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 9")
				end	
				imgui.SameLine()
				if imgui.Button('10##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 10")
				end	
				imgui.SameLine()
				if imgui.Button('11##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 11")
				end	
				imgui.SameLine()
				if imgui.Button('12##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 12")
				end
				imgui.Spacing()
				--imgui.SameLine()
				if imgui.Button('13##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 13")
				end
				imgui.SameLine()
				if imgui.Button('14##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 14")
				end
				imgui.SameLine()
				if imgui.Button('15##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 15")
				end
				imgui.SameLine()
				if imgui.Button('16##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 16")
				end
				imgui.SameLine()
				if imgui.Button('17##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 17")
				end
				imgui.SameLine()
				if imgui.Button('18##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 18")
				end
				imgui.SameLine()
				if imgui.Button('19##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 19")
				end
				imgui.SameLine()
				if imgui.Button('20##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 20")
				end
				imgui.SameLine()
				if imgui.Button('21##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 21")
				end
				imgui.SameLine()
				if imgui.Button('22##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 22")
				end
				imgui.SameLine()
				if imgui.Button('23##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 23")
				end
				imgui.SameLine()
				if imgui.Button('24##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 24")
				end
				imgui.Spacing()
				--imgui.SameLine()
				if imgui.Button('25##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 25")
				end
				imgui.SameLine()
				if imgui.Button('26##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 26")
				end
				imgui.SameLine()
				if imgui.Button('27##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 27")
				end
				imgui.SameLine()
				if imgui.Button('28##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 28")
				end
				imgui.SameLine()
				if imgui.Button('29##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 29")
				end
				imgui.SameLine()
				if imgui.Button('30##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 30")
				end
				imgui.SameLine()
				if imgui.Button('31##lowrider', imgui.ImVec2(25, 20)) then
				sampSendChat("/lowrider 31")
				end
        end	
		
	imgui.EndChild();
    imgui.End()
	else
        imgui.ShowCursor = false;
    end
end

function main()
	while not isSampAvailable() do wait(50) end
		sampAddChatMessage("{1E90FF}Easy Animation v2.0 {FFFFFF}by {FF4545}[SALMAN]{FFFFFF}. Key: {1E90FF}[ Left Shift + X ] {FFFFFF}Cmd: {1E90FF}[ /Ani ]", -1)
		sampRegisterChatCommand("ani", cmd_ani)
	while true do
		if isKeyDown(vkeys.VK_LSHIFT) and isKeyJustPressed(vkeys.VK_X) and not sampIsDialogActive() and not sampIsScoreboardOpen() and not isSampfuncsConsoleActive() then 
            easy_animation.v = not easy_animation.v;
            imgui.Process = easy_animation.v;
        end
		imgui.Process = easy_animation.v
		wait(0)
	end
end

function cmd_ani()
	if not (sampIsDialogActive() or isSampfuncsConsoleActive() or sampIsScoreboardOpen()) then
		easy_animation.v = not easy_animation.v
	end
end

function style()
	imgui.SwitchContext()
	local style  = imgui.GetStyle()
	local colors = style.Colors
	local clr    = imgui.Col
	local ImVec4 = imgui.ImVec4
	local ImVec2 = imgui.ImVec2

    style.WindowPadding      = ImVec2(6, 4)
    style.WindowRounding     = 5.0
    style.FramePadding       = ImVec2(3, 3)
    style.FrameRounding      = 5.0
    style.ItemSpacing        = ImVec2(10, 3)
    style.ItemInnerSpacing   = ImVec2(10, 10)
    style.TouchExtraPadding  = ImVec2(10, 10)
    style.IndentSpacing      = 6.0
    style.ScrollbarSize      = 12.0
    style.ScrollbarRounding  = 5.0
    style.GrabMinSize        = 20.0
    style.GrabRounding       = 2.0
  
    style.WindowTitleAlign = ImVec2(0.5, 0.5)


	colors[clr.Text]                 = ImVec4(1.00, 1.00, 1.00, 1.00)
	colors[clr.TextDisabled]         = ImVec4(0.73, 0.75, 0.74, 1.00)
	colors[clr.WindowBg]             = ImVec4(0.09, 0.09, 0.09, 0.94)
	colors[clr.ChildWindowBg]        = ImVec4(0.00, 0.00, 0.00, 0.00)
	colors[clr.PopupBg]              = ImVec4(0.08, 0.08, 0.08, 0.94)
	colors[clr.Border]               = ImVec4(0.20, 0.20, 0.20, 0.50)
	colors[clr.BorderShadow]         = ImVec4(0.00, 0.00, 0.00, 0.00)
	colors[clr.FrameBg]              = ImVec4(0.71, 0.39, 0.39, 0.54)
	colors[clr.FrameBgHovered]       = ImVec4(0.37, 0.43, 0.40, 0.40)
	colors[clr.FrameBgActive]        = ImVec4(0.84, 0.66, 0.66, 0.67)
	colors[clr.TitleBg]              = ImVec4(0.00, 0.00, 0.00, 0.79)
	colors[clr.TitleBgActive]        = ImVec4(0.00, 0.00, 0.00, 0.79)
	colors[clr.TitleBgCollapsed]     = ImVec4(0.00, 0.00, 0.00, 0.79)
	colors[clr.MenuBarBg]            = ImVec4(0.04, 0.04, 0.04, 0.96)
	colors[clr.ScrollbarBg]          = ImVec4(0.02, 0.02, 0.02, 0.53)
	colors[clr.ScrollbarGrab]        = ImVec4(0.31, 0.31, 0.31, 1.00)
	colors[clr.ScrollbarGrabHovered] = ImVec4(0.41, 0.41, 0.41, 1.00)
	colors[clr.ScrollbarGrabActive]  = ImVec4(0.51, 0.51, 0.51, 1.00)
	colors[clr.ComboBg]              = ImVec4(0.20, 0.20, 0.20, 0.99)
	colors[clr.CheckMark]            = ImVec4(1.00, 1.00, 1.00, 1.00)
	colors[clr.SliderGrab]           = ImVec4(0.05, 0.27, 0.47, 1.00)
	colors[clr.SliderGrabActive]     = ImVec4(0.84, 0.66, 0.66, 1.00)
	colors[clr.Button]               = ImVec4(0.13, 0.27, 0.70, 1.00)
	colors[clr.ButtonHovered]        = ImVec4(0.06, 0.17, 0.51, 1.00)
	colors[clr.Header]               = ImVec4(0.71, 0.39, 0.39, 0.54)
	colors[clr.HeaderHovered]        = ImVec4(0.84, 0.66, 0.66, 0.65)
	colors[clr.HeaderActive]         = ImVec4(0.84, 0.66, 0.66, 0.00)
	colors[clr.CloseButton]          = ImVec4(0.41, 0.41, 0.41, 1.00)
	colors[clr.CloseButtonHovered]   = ImVec4(0.18, 0.47, 0.73, 1.00)
	colors[clr.CloseButtonActive]    = ImVec4(0.05, 0.27, 0.47, 1.00)
    colors[clr.HeaderHovered]        = ImVec4(0.06, 0.17, 0.51, 1.00)
    colors[clr.HeaderActive]         = ImVec4(0.13, 0.27, 0.70, 1.00)
	colors[clr.Header]               = ImVec4(0.13, 0.27, 0.70, 1.00)
end
style()
