require "sampfuncs" --- XYZ: 2886.5922851563, -1977.7844238281, 6.5110626220703
require "moonloader"
local sampev = require "lib.samp.events"
local imgui	= require "imgui"
local encoding = require "encoding"
encoding.default = 'CP1251'
u8 = encoding.UTF8

script_name("AutoPumpkin")
script_author("[ SALMAN ]")

toggle = 1
toggleall = 1

local infoWindow = imgui.ImBool(false)
local fsFont = nil
local jsfont = nil
local modfont = nil

function main()
	while not isSampAvailable() do wait(0) end
	sampRegisterChatCommand("aphelp", cmd_help)
	sampRegisterChatCommand("apInfo", cmd_info)
	style()
	sampAddChatMessage("{7700FF}SA:MP Squad {DFBD68}AutoPumpkin {FFFFFF}By [ SALMAN ] {ff00ff}[/aphelp]", -1)
	sampRegisterChatCommand("ap", cmd_toggleac)
	while true do
			imgui.Process = infoWindow.v
			if (toggle == 1 and toggleall == 1)then
				if isCharInArea2d(playerPed, 2889.2443847656, -1973.2196044922, 2886.5922851563, -1977.7844238281, false) then -- autopumpkin
                    sampSendChat("/takepumpkin")
                    wait(20000)
					toggle = 0
				end
			end
		wait(0)
	end
end

function sampev.onServerMessage(color, text)
	local Pumpkintaken, msg = string.find(text,"Drop the pumpkin off at the Flying Dutchman's ship (see checkpoint on radar)")
	if Pumpkintaken then
		lua_thread.create(function()
			wait(500)
			toggle = 0
		end)
	end
	local DeliPumpkin, msg = string.find(text, "You received $200 for delivering the pumpkin")
	if DeliPumpkin then
		toggle = 1
	end
	local kcp, msg = string.find(text, "All current checkpoints")
	if kcp then
		toggle = 1
	end
end

function cmd_toggleac()
    if (toggleall == 1) then
        toggleall = 0
        sampAddChatMessage("{DFBD68}AutoPumpkin: {ff0000}Disabled", -1)
    else
        toggleall = 1
        sampAddChatMessage("{DFBD68}AutoPumpkin: {00FF00}Enabled", -1)
    end
end

function cmd_help()
	sampAddChatMessage("==============================", -1)
	sampAddChatMessage("{FFFFFF} ---> {7700FF}SA:MP Squad {DFBD68}AutoPumpkin {FFFFFF}<---", -1)
	sampAddChatMessage("{FFFFFF}/ap{FFFF00} - {00FF00}Enables {FFFFFF}/ {FF0000}Disables{FFFF00} Auto Pumpkin", -1)
	sampAddChatMessage("{FFFFFF}/apinfo{FFFF00} - Information About SA:MP Squad", -1)
	sampAddChatMessage("{FFFFFF}Credits: {FF0000} [ SALMAN ]", -1)
	sampAddChatMessage("==============================", -1)
end

function imgui.BeforeDrawFrame()
    if fsFont == nil then
        fsFont = imgui.GetIO().Fonts:AddFontFromFileTTF(getFolderPath(0x14) .. '\\trebucbd.ttf', 30.0, nil, imgui.GetIO().Fonts:GetGlyphRangesCyrillic())
    end
    if jsfont == nil then
        jsfont = imgui.GetIO().Fonts:AddFontFromFileTTF(getFolderPath(0x14) .. '\\trebucbd.ttf', 20.0, nil, imgui.GetIO().Fonts:GetGlyphRangesCyrillic())
    end
    if modfont == nil then
        modfont = imgui.GetIO().Fonts:AddFontFromFileTTF(getFolderPath(0x14) .. '\\trebucbd.ttf', 19.0, nil, imgui.GetIO().Fonts:GetGlyphRangesCyrillic())
    end
end

function imgui.OnDrawFrame()
	local sw, sh = getScreenResolution()
	if infoWindow.v then
		imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
        imgui.SetNextWindowSize(imgui.ImVec2(500, 270), imgui.Cond.FirstUseEver)
		imgui.Begin(u8" ", infoWindow, imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoScrollbar + imgui.WindowFlags.NoResize)
     	imgui.PushFont(fsFont) imgui.CenterTextColoredRGB('{FFFFFF}SA:MP SQUAD') imgui.PopFont()
     	imgui.CenterTextColoredRGB("{AFAFAF}by Naruto, Salman, Arafat, Adib & Marowan")
     	imgui.NewLine()
     	imgui.PushFont(modfont) imgui.CenterTextColoredRGB(string.format("{9E9EFF}%s {FFFFFF}( {9E9EFF}%s {FFFFFF})", thisScript().name, table.concat(thisScript().authors, ", "))) imgui.PopFont()
     	imgui.NewLine()
     	imgui.PushFont(jsfont) imgui.CenterTextColoredRGB("{00FFFF}Join our {7789DA}DISCORD {00FFFF}server for future updates!") imgui.PopFont()
     	imgui.NewLine()

     	imgui.CenterTextColoredRGB("{FFFFFF}Check Below!")
     	imgui.NewLine()
	    imgui.PushStyleVar(imgui.StyleVar.ItemSpacing, imgui.ImVec2(1, 5))
	    sqdbtn()
	    imgui.PushFont(fontsize20)
	    if imgui.Button(u8'COPY THE LINK', imgui.ImVec2(240, 40)) then
	      	if setClipboardText("https://discord.gg/mkMy3Cd") then
				sampAddChatMessage("{7789DA}Server LINK {7700FF}has been set to your clipboard. You can now paste it somewhere.", -1)
			end
	    end
	    imgui.Hint("This will COPY the link.", -1)
	    imgui.SameLine()
	    if imgui.Button(u8'OPEN THE LINK IN BROWSER', imgui.ImVec2(240, 40)) then
	      	os.execute("explorer https://discord.gg/mkMy3Cd")
	    end
	    imgui.Hint("This will OPEN the link in your browser.", -1)
	    imgui.PopFont()
	    endbtn()
	    imgui.PopStyleVar()
		imgui.End()
	end
end


function cmd_info()
	if not (sampIsDialogActive() or isSampfuncsConsoleActive()) then
		infoWindow.v = not infoWindow.v
	end
end

function style()
    imgui.SwitchContext()
    local style = imgui.GetStyle()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    local ImVec2 = imgui.ImVec2

   	style.WindowPadding 		= imgui.ImVec2(8, 8)
    style.WindowRounding 		= 6
    style.ChildWindowRounding 	= 5
    style.FramePadding 			= imgui.ImVec2(5, 3)
    style.FrameRounding 		= 3.0
    style.ItemSpacing 			= imgui.ImVec2(5, 4)
    style.ItemInnerSpacing 		= imgui.ImVec2(4, 4)
    style.IndentSpacing 		= 21
    style.ScrollbarSize 		= 10.0
    style.ScrollbarRounding 	= 13
    style.GrabMinSize 			= 8
    style.GrabRounding			= 1
    style.WindowTitleAlign 		= imgui.ImVec2(0.5, 0.5)
    style.ButtonTextAlign 		= imgui.ImVec2(0.5, 0.5)

    colors[clr.Text]                                = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextDisabled]                        = ImVec4(0.30, 0.30, 0.30, 1.00)
    colors[clr.WindowBg]                            = ImVec4(0.09, 0.09, 0.09, 1.00)
    colors[clr.ChildWindowBg]                       = ImVec4(1.00, 1.00, 1.00, 0.00)
    colors[clr.PopupBg]                             = ImVec4(0.05, 0.05, 0.05, 1.00)
    colors[clr.ComboBg]                             = ImVec4(0.00, 0.53, 0.76, 1.00)
    colors[clr.Border]                              = ImVec4(0.43, 0.43, 0.50, 0.10)
    colors[clr.BorderShadow]                        = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.FrameBg]                             = ImVec4(0.30, 0.30, 0.30, 0.10)
    colors[clr.FrameBgHovered]                      = ImVec4(0.00, 0.53, 0.76, 0.30)
    colors[clr.FrameBgActive]                       = ImVec4(0.00, 0.53, 0.76, 0.80)
    colors[clr.TitleBg]                				= ImVec4(0.09, 0.09, 0.09, 1.00)
    colors[clr.TitleBgActive]          				= ImVec4(0.09, 0.09, 0.09, 1.00)
    colors[clr.TitleBgCollapsed]       				= ImVec4(0.09, 0.09, 0.09, 1.00)
    colors[clr.MenuBarBg]                           = ImVec4(0.13, 0.13, 0.13, 0.99)
    colors[clr.ScrollbarBg]                         = ImVec4(0.02, 0.02, 0.02, 0.53)
    colors[clr.ScrollbarGrab]                       = ImVec4(0.31, 0.31, 0.31, 1.00)
    colors[clr.ScrollbarGrabHovered]                = ImVec4(0.41, 0.41, 0.41, 1.00)
    colors[clr.ScrollbarGrabActive]                 = ImVec4(0.51, 0.51, 0.51, 1.00)
    colors[clr.CheckMark]                           = ImVec4(0.00, 0.53, 0.76, 1.00)
    colors[clr.SliderGrab]                          = ImVec4(0.28, 0.28, 0.28, 1.00)
    colors[clr.SliderGrabActive]                    = ImVec4(0.00, 0.53, 0.76, 1.00)
    colors[clr.Button]                              = ImVec4(0.26, 0.26, 0.26, 0.30)
    colors[clr.ButtonHovered]                       = ImVec4(0.00, 0.53, 0.76, 1.00)
    colors[clr.ButtonActive]                        = ImVec4(0.00, 0.43, 0.76, 1.00)
    colors[clr.Header]                              = ImVec4(0.12, 0.12, 0.12, 0.94)
    colors[clr.HeaderHovered]                       = ImVec4(0.34, 0.34, 0.35, 0.89)
    colors[clr.HeaderActive]                        = ImVec4(0.12, 0.12, 0.12, 0.94)
    colors[clr.Separator]                           = ImVec4(0.30, 0.30, 0.30, 1.00)
    colors[clr.SeparatorHovered]                    = ImVec4(0.26, 0.59, 0.98, 0.78)
    colors[clr.SeparatorActive]                     = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.ResizeGrip]                          = ImVec4(0.26, 0.59, 0.98, 0.25)
    colors[clr.ResizeGripHovered]                   = ImVec4(0.26, 0.59, 0.98, 0.67)
    colors[clr.ResizeGripActive]                    = ImVec4(0.26, 0.59, 0.98, 0.95)
    colors[clr.CloseButton]           				= ImVec4(0.50, 0.00, 0.00, 1.00)
    colors[clr.CloseButtonHovered]     				= ImVec4(1.70, 0.70, 0.90, 0.60)
    colors[clr.CloseButtonActive]     				= ImVec4(1.70, 0.70, 0.70, 1.00)
    colors[clr.PlotLines]                           = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered]                    = ImVec4(1.00, 0.43, 0.35, 1.00)
    colors[clr.PlotHistogram]                       = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered]                = ImVec4(1.00, 0.60, 0.00, 1.00)
    colors[clr.TextSelectedBg]                      = ImVec4(0.00, 0.43, 0.76, 1.00)
    colors[clr.ModalWindowDarkening]                = ImVec4(0.20, 0.20, 0.20,  0.0)
end

function imgui.CenterTextColoredRGB(text)
    local width = imgui.GetWindowWidth()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local ImVec4 = imgui.ImVec4

    local explode_argb = function(argb)
        local a = bit.band(bit.rshift(argb, 24), 0xFF)
        local r = bit.band(bit.rshift(argb, 16), 0xFF)
        local g = bit.band(bit.rshift(argb, 8), 0xFF)
        local b = bit.band(argb, 0xFF)
        return a, r, g, b
    end

    local getcolor = function(color)
        if color:sub(1, 6):upper() == 'SSSSSS' then
            local r, g, b = colors[1].x, colors[1].y, colors[1].z
            local a = tonumber(color:sub(7, 8), 16) or colors[1].w * 255
            return ImVec4(r, g, b, a / 255)
        end
        local color = type(color) == 'string' and tonumber(color, 16) or color
        if type(color) ~= 'number' then return end
        local r, g, b, a = explode_argb(color)
        return imgui.ImColor(r, g, b, a):GetVec4()
    end

    local render_text = function(text_)
        for w in text_:gmatch('[^\r\n]+') do
            local textsize = w:gsub('{.-}', '')
            local text_width = imgui.CalcTextSize(u8(textsize))
            imgui.SetCursorPosX( width / 2 - text_width .x / 2 )
            local text, colors_, m = {}, {}, 1
            w = w:gsub('{(......)}', '{%1FF}')
            while w:find('{........}') do
                local n, k = w:find('{........}')
                local color = getcolor(w:sub(n + 1, k - 1))
                if color then
                    text[#text], text[#text + 1] = w:sub(m, n - 1), w:sub(k + 1, #w)
                    colors_[#colors_ + 1] = color
                    m = n
                end
                w = w:sub(1, n - 1) .. w:sub(k + 1, #w)
            end
            if text[0] then
                for i = 0, #text do
                    imgui.TextColored(colors_[i] or colors[1], u8(text[i]))
                    imgui.SameLine(nil, 0)
                end
                imgui.NewLine()
            else
                imgui.Text(u8(w))
            end
        end
    end
    render_text(text)
end

function sqdbtn()
    imgui.PushStyleColor(imgui.Col.Text, imgui.ImVec4(0, 0, 0, 0.8))
    imgui.PushStyleColor(imgui.Col.Button, imgui.ImVec4(0.467, 0.00, 1, 1))
    imgui.PushStyleColor(imgui.Col.ButtonHovered, imgui.ImVec4(0.5, 0.00, 1, 0.6))
    imgui.PushStyleColor(imgui.Col.ButtonActive, imgui.ImVec4(0.467, 0.00, 1, 0.8))
end
function endbtn()
    imgui.PopStyleColor(4)
    style()
end

function imgui.Hint(text, delay)
    if imgui.IsItemHovered() then
        if go_hint == nil then go_hint = os.clock() + (delay and delay or 0.0) end
        local alpha = (os.clock() - go_hint) * 5 --spawn rate
        if os.clock() >= go_hint then 
            imgui.PushStyleVar(imgui.StyleVar.Alpha, (alpha <= 1.0 and alpha or 1.0))
                imgui.PushStyleColor(imgui.Col.PopupBg, imgui.GetStyle().Colors[imgui.Col.ButtonHovered])
                    imgui.BeginTooltip()
                    imgui.PushTextWrapPos(450)
                    imgui.TextUnformatted(text)
                    if not imgui.IsItemVisible() and imgui.GetStyle().Alpha == 1.0 then go_hint = nil end
                    imgui.PopTextWrapPos()
                    imgui.EndTooltip()
                imgui.PopStyleColor()
            imgui.PopStyleVar()
        end
    end
end
