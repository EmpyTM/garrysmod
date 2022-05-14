local filepath = "models/scene_building"
if not file.Find(filepath, "GAME") then return end

local to_json = {}
local _, sub_directories = file.Find(filepath .. "/*", "GAME")

local ent

for i = 1, #sub_directories do

    local model_family = sub_directories[i]
    local path = filepath .. "/" .. model_family
    to_json[model_family] = {}

    local searchspace = file.Find(path .. "/*.mdl", "GAME")
    
    for i, v in ipairs(searchspace) do

        ent = ClientsideModel(path .. "/" .. v)
        local bounds_model = {}
            bounds_model.min, bounds_model.max = ent:GetModelBounds()
            bounds_model.min = bounds_model.min:ToTable()
            bounds_model.max = bounds_model.max:ToTable()
        local bounds_modeloffset = Vector(0, 0, bounds_model.max[3]):ToTable()
        local skins = ent:SkinCount()
        
        to_json[model_family][v:TrimRight(".mdl")] = {
            ["model"] = path .. "/" .. v,
            ["model_bounds"] = {["min"] = bounds_model.min, ["max"] = bounds_model.max},
            ["model_offset"] = bounds_modeloffset,
            ["skins"] = skins,
            ["control_points"] = {}
        }
        
        ent:SetModel(searchspace[i+1] or "")
        
    end

end

ent:Remove()

local json = util.TableToJSON(to_json, true)
file.Write("scenebuilder.json", json)