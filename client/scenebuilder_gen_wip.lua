-- NOTE: this script is meant to create the json file that the eventual script will read off for reference

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
        local bounds_model = {ent:GetModelBounds()}
        local bounds_modeloffset = Vector(0, 0, bounds_model[2].z)
        local skins = ent:SkinCount()
        
        to_json[model_family][v:TrimRight(".mdl")] = {
            ["model"] = path .. "/" .. v,
            ["model_bounds"] = {["min"] = bounds_model[1], ["max"] = bounds_model[2]},
            ["model_offset"] = model_offset,
            ["skins"] = skins,
            ["control_points"] = {}
        }
        
        ent:SetModel(searchspace[i+1] or "")
        
    end

end

ent:Remove()

local json = util.TableToJSON(to_json, true)
file.Write("scenebuilder.json", json)
