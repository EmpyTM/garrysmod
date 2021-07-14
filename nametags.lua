if hooks.ShouldDrawNameTag then
	hooks.ShouldDrawNameTag.tagremove = function() return false end
end

-- TODO: use the player's steamID for the hue instead of a random value
local function HueRand()
	
	local golden_ratio_conjugate = 0.6180339887
	local h = math.random()
	
	h = h + golden_ratio_conjugate
	h = h % 1
	
	return h * 360
end

local fonts = {
	arial = true,
	consolas = true,
	coolvetica = true
}

local font_data_background = {
	font = "coolvetica",
	extended = true,
	size = 30,
	weight = 100,
	blursize = 2,
	scanlines = 0,
	antialias = true
}

local font_data_foreground = {
	font = "coolvetica",
	extended = true,
	size = 30,
	weight = 100,
	blursize = 0,
	scanlines = 0,
	antialias = true
}

local afk_font_foreground = {
	font = "coolvetica",
	extended = true,
	size = 18,
	weight = 100,
	blursize = 0,
	scanlines = 0,
	antialias = true
}

surface.CreateFont("nametags_bg", font_data_background)
surface.CreateFont("nametags_fg", font_data_foreground)
surface.CreateFont("nametags_fg_afk", afk_font_foreground)

local foreground_alpha, background_alpha = 255, 255
local black_alpha = Color(0, 0, 0, background_alpha)

local idToColorTable = {}
local function ToCol(ply)

    if idToColorTable[ply] then return idToColorTable[ply] end
    local hue = HueRand()
    idToColorTable[ply] = ColorAlpha(HSLToColor(hue, 0.6, 0.5), foreground_alpha)

	return idToColorTable[ply]
	
end

local cache = cache or {}

for i, v in ipairs(player.GetHumans()) do
	if not IsValid(v) then continue end
	
	local userID = Player(v:UserID())
	if table.HasValue(cache, userID) then continue end
	
	table.insert(cache, userID)
end

gameevent.Listen("player_connect_client")

hook.Add("player_connect_client", "connect", function(data)
	if data.bot == 1 then return end
	local userID = Player(data.userid)
	if table.HasValue(cache, userID) then return end
	table.insert(cache, userID)
end)

gameevent.Listen("player_disconnect")

hook.Add("player_disconnect", "disconnect", function(data)
	local userID = Player(data.userid)
	if table.HasValue(cache, userID) then
		table.RemoveByValue(cache, userID)
	end
end)

hook.Add("HUDPaint", "nametags", function()

	for i, ply in ipairs(cache) do
		if ply == LocalPlayer() then continue end

		local center = ply:InVehicle()
			and ply:GetPos() + ply:OBBCenter()
			or ply:GetPos() + ply:OBBCenter()*2
		
		local data2d = center:ToScreen()
		if not(data2d.visible) then continue end
		
		-- background shadow font
		draw.SimpleText(
			UndecorateNick(ply:Name()),
			"nametags_bg",
			data2d.x + 3, data2d.y + 3,
			black_alpha,
			TEXT_ALIGN_CENTER,
			TEXT_ALIGN_CENTER
		)

		-- foreground normal font
		draw.SimpleText(
			UndecorateNick(ply:Name()),
			"nametags_fg",
			data2d.x, data2d.y,
			ToCol(ply),
			TEXT_ALIGN_CENTER,
			TEXT_ALIGN_CENTER
		)

		if ply.IsAFK and ply:IsAFK() then

			-- AFK font
			draw.SimpleTextOutlined(
				"[AFK]",
				"nametags_fg_afk",
				data2d.x, data2d.y - font_data_foreground.size + afk_font_foreground.size / 2,
				color_white,
				TEXT_ALIGN_CENTER,
				TEXT_ALIGN_CENTER,
				1,
				color_black
			)

		end
	end

end)

local nametags_font_size_min = 20
local nametags_font_size_max = 48

local nametags_font_alpha_min = 34
local nametags_font_alpha_max = 221

CreateClientConVar("nametags_font", "coolvetica", true, false, nil)

CreateClientConVar("nametags_font_size",
	30, true, false, nil,
	nametags_font_size_min,
	nametags_font_size_max
)

CreateClientConVar("nametags_font_alpha",
	255, true, false, nil,
	nametags_font_alpha_min,
	nametags_font_alpha_max
)

-- we enclose everything here around a do .. end to make sure we can reload when finished, since this is called post-entity
local ran = false
do
	hook.Add("AddToolMenuCategories", "nametags_category", function()
		spawnmenu.AddToolCategory("Options", "NameTags", "Name Tags")
	end)

	hook.Add("PopulateToolMenu", "nametags_populate", function()

		spawnmenu.AddToolMenuOption("Options", "NameTags", "NameTag_Options", "#Appearance", "", "", function(panel)

			panel:ClearControls()
			
			local slider_fontsize = panel:NumSlider("Font Size", "nametags_font_size", nametags_font_size_min, nametags_font_size_max)
			slider_fontsize:SetDecimals(0)
			slider_fontsize:SetDefaultValue(30)

			function slider_fontsize:OnValueChanged(v)
				font_data_foreground.size = v
				font_data_background.size = v
				
				-- recreate the font
				surface.CreateFont("nametags_bg", font_data_background)
				surface.CreateFont("nametags_fg", font_data_foreground)
			end

			local slider_fontalpha = panel:NumSlider("Font Alpha", "nametags_font_alpha", nametags_font_alpha_min, nametags_font_alpha_max)
			slider_fontalpha:SetDecimals(0)

			function slider_fontalpha:OnValueChanged(v)
				foreground_alpha = v
				background_alpha = v

				surface.CreateFont("nametags_bg", font_data_background)
				surface.CreateFont("nametags_fg", font_data_foreground)
			end

			local dropdown_fontstyle = panel:ComboBox("Font", "nametags_font")
			for fnt, v in pairs(fonts) do
				dropdown_fontstyle:AddChoice(fnt)
			end

			function dropdown_fontstyle:OnSelect(_, value)
				font_data_foreground.font = value
				font_data_background.font = value

				surface.CreateFont("nametags_bg", font_data_background)
				surface.CreateFont("nametags_fg", font_data_foreground)
			end

		end)

	end)

	ran = true
end

if ran then RunConsoleCommand("spawnmenu_reload") end