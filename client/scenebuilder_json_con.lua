local filepath = "models/scene_building"
if file.Exists(filepath, "GAME") == false then return end

local _, folders = file.Find(filepath .. "/*", "GAME")
local to_json = {}

local ent = NULL

for _, fo in ipairs(folders) do
	to_json[fo] = {}
	
	local cur = ("%s/%s"):format(filepath, fo)
	local stuff = file.Find(cur .. "/*", "GAME")

	for i, v in ipairs(stuff) do
		if v:EndsWith(".mdl") == false then continue end

		local path = ("%s/%s"):format(cur, v)
		ent = ClientsideModel(path)

		local model_info = {}
		local mmin, mmax = ent:GetModelBounds()
		model_info.min = mmin:ToTable()
		model_info.max = mmax:ToTable()
		model_info.skins = ent:SkinCount()
		model_info.path = path
		model_info.control_points = {} -- sad

		local bodygroups = ent:GetNumBodyGroups()
		if bodygroups > 1 then
			model_info.bodygroups = bodygroups
		end

		local trimmed = stuff[i]:TrimRight(".mdl")
		to_json[fo][trimmed] = model_info
	end
end

ent:Remove()

local json = util.TableToJSON(to_json, true)
file.Write("scenebuilder.json", json)
