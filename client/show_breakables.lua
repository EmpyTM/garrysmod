local tag = "breakables_visualizer"

local breakables = {}
setmetatable(breakables, {__mode = "v"})

local breakables_color = Color(255, 127, 0)

local function is_breakable(ent)
	return ent:GetMaxHealth() >= 1 and ent:Health() ~= 0
end

for i, v in ipairs(ents.FindByClass("prop_physics")) do
	if is_breakable(v) then
		breakables[#breakables + 1] = v
	end
end

hook.Add("OnEntityCreated", tag, function(ent)
	if not (ent:IsValid() and is_breakable(ent)) then return end
	
	timer.Simple(0, function()
		if ent:GetClass() ~= "prop_physics" then return end
		breakables[#breakables + 1] = ent
	end)
end)

local function draw_halos()
	halo.Add(breakables, breakables_color, 3, 3, 1, true, false)
end

local showing = false

concommand.Add("toggle_breakables_show", function(ply, cmd, args)
	if not showing then
		hook.Add("PreDrawHalos", tag, draw_halos)
		showing = true
	else
		hook.Remove("PreDrawHalos", tag, draw_halos)
		showing = false
	end
end)
