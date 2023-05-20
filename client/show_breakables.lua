-- crappy hack
_R.Entity.IsBreakable = function(self)
	return self:GetMaxHealth() >= 1 and self:Health() ~= 0
end

local tag = "breakables_visualizer"
local breakables = { color = Color(255, 127, 0) }

for i, v in ipairs(ents.FindByClass("prop_physics")) do
	if v:IsBreakable() then breakables[#breakables + 1] = v end
end

local function on_ent_create(ent)
	if not ent:IsBreakable() then return end
	if not ent:IsValid() then return end
	
	timer.Simple(0, function()
		if ent:GetClass() ~= "prop_physics" then return end
		breakables[#breakables + 1] = ent
	end)
end

local function on_ent_remove(ent)
	if table.HasValue(breakables, ent) then table.RemoveByValue(breakables, ent) end
end

hook.Add("OnEntityCreated", tag, on_ent_create)
hook.Add("EntityRemoved", tag, on_ent_remove)

local function halo_draw()
	halo.Add(breakables, breakables.color, 3, 3, 1, true, false)
end

local command = {
	showbreak = function(bool)
		if bool == 1 then
			hooks.PreDrawHalos[tag] = halo_draw
		elseif bool == 0 then
			hooks.PreDrawHalos[tag] = nil
		else
			return
		end
	end
}

hook.Add("OnPlayerChat", tag, function(ply, txt)
	if ply ~= LocalPlayer() then return end
    
	local args = txt:Split(" ")
	local a = args[1]:TrimLeft(args[1]:sub(1, 1))
	
	if not command[a] then return end
    
	command[a](tonumber(args[2]))
end)
