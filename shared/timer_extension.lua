local timer_create = timer_create or timer.Create
local timer_pause = timer_pause or timer.Pause
local timer_unpause = timer_unpause or timer.UnPause
local timer_remove = timer_remove or timer.Remove
local timer_adjust = timer_adjust or timer.Adjust
local timer_stop = timer_stop or timer.Stop
local timer_start = timer_start or timer.Start

timer.timers = timer.timers or {}

timer.Create = function(identifier, delay, repetitions, func)
	local ret = {
		delay = delay,
		repetitions = repetitions,
		func = func,
		status = "running"
	}
	timer.timers[identifier] = ret
	
	timer_create(identifier, delay, repetitions, func)
end

timer.Remove = function(identifier)
	if timer.timers[identifier] then timer.timers[identifier] = nil end
	
	timer_remove(identifier)
end

timer.Pause = function(identifier)
	if not timer.timers[identifier] then return end
	timer.timers[identifier].status = "paused"
	
	return timer_pause(identifier)
end

timer.UnPause = function(identifier)
	if timer.timers[identifier] then
		timer.timers[identifier].status = "running"
	end
	
	return timer_unpause(identifier)
end

timer.Adjust = function(identifier, delay, repetitions, func)
	if timer.timers[identifier] then
		local res = {
			delay = delay,
			repetitions = repetitions or timers[identifier].repetitions,
			func = func or timers[identifier].func
		}
		timer.timers[identifier] = res
	end
	
	return timer_adjust(identifier, delay, repetitions, func)
end

timer.Stop = function(identifier)
	if timer.timers[identifier] then
		timer.timers[identifier].status = "awaiting"
	end
	
	return timer_stop(identifier)
end

timer.Start = function(identifier)
	if timer.timers[identifier] then
		timer.timers[identifier].status = "running"
	end
	
	return timer_start(identifier)
end

timer.GetTable = function()
	return timer.timers
end

timer.Status = function(identifier)
	if not timer.timers[identifier] then return end
	
	return timer.timers[identifier].status
end

timer.Create("timer.timers", 1, 0, function()
	for identifier in pairs(timer.timers) do
		if timer.Exists(identifier) then continue end
		timer.timers[identifier] = nil
	end
end)
