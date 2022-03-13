local function fetch_toolmode_convars(toolmode)
	local ret = {}
	local callbacks = cvars.GetConVarCallbacks
	local vars = debug.getupvalues(callbacks).ConVars

	for key in pairs(vars) do
		if key:StartWith(toolmode) then
			table.insert(ret, key)
		end
	end

	return ret
end

local tool_categories = {
	[1] = {
		category = "Constraints",
		toolmodes = {
			[1] = {
				mode = "rope",
				convars = {},
				functions = {}
			}
		}
	},
	[2] = {
		category = "Construction",
		toolmodes = {
			[1] = {
				mode = "balloon",
				convars = {},
				functions = {}
			}
		}
	},
	[3] = {
		category = "Posing",
		toolmodes = {},
		functions = {}
	},
	[4] = {
		category = "Render",
		toolmodes = {
			[1] = {
				mode = "colour",
				convars = {},
				functions = {}
			},
			[2] = {
				mode = "material",
				convars = {},
				functions = {}
			}
		}
	}
}

for i = 1, #tool_categories do
	local current_toolmode_table = tool_categories[i].toolmodes
	
	for j = 1, #current_toolmode_table do
		local current_mode = current_toolmode_table[j].mode
		local current_convar_table = current_toolmode_table[j].convars
		local c_vars = fetch_toolmode_convars(current_mode)
		CreateClientConVar("toolrand_" .. current_mode .. "_enable", "0", false, false)
		
		for k = 1, #c_vars do
			CreateClientConVar("toolrand_" .. c_vars[k], "0", false, false)
			table.insert(current_convar_table, c_vars[k])
		end
		
		-- functions will be added manually so they arent added here
	end
end
