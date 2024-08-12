local filepath = "models/scene_building"
if not file.Exists( filepath, "GAME" ) then return end

local _, folders = file.Find( filepath .. "/*", "GAME" )
local to_json = {}

local ent = NULL

for _, fo in ipairs( folders ) do
	to_json[fo] = {}
	
	local cur = string.format( "%s/%s", filepath, fo )
	local stuff = file.Find( cur .. "/*", "GAME" )

	for i, v in ipairs( stuff ) do
		if not v:EndsWith( ".mdl" ) then continue end

		local path = string.format( "%s/%s", cur, v )
		
		ent = ClientsideModel(path)
		
		local model_info = {}
		local mmin, mmax = ent:GetModelBounds()
		model_info[ "min" ] = mmin:ToTable()
		model_info[ "max" ] = mmax:ToTable()
		model_info[ "skin_count" ] = ent:SkinCount()
		model_info[ "model_path" ] = path
		model_info[ "attachments" ] = {} -- sad
		model_info[ "bodygroup_count" ] = ent:GetNumBodyGroups()

		to_json[ fo ][ stuff[ i ]:TrimRight( ".mdl" ) ] = model_info
	end
end

ent:Remove()
file.Write( "scenebuilder.json", util.TableToJSON( to_json, true ) )
