local timer_create = timer_create or timer.Create
local timer_pause = timer_pause or timer.Pause
local timer_unpause = timer_unpause or timer.UnPause
local timer_remove = timer_remove or timer.Remove
local timer_adjust = timer_adjust or timer.Adjust
local timer_stop = timer_stop or timer.Stop
local timer_start = timer_start or timer.Start

timer.timers = timer.timers or {}

function timer.Create(identifier, delay, repetitions, func)
	local ret = {
		delay = delay,
		repetitions = repetitions,
		func = func,
		status = "running"
	}
	timer.timers[identifier] = ret
	
	timer_create(identifier, delay, repetitions, func)
end

function timer.Remove(identifier)
	if timer.timers[identifier] then
		timer.timers[identifier] = nil
	end
	
	timer_remove(identifier)
end

function timer.Pause(identifier)
	if not timer.timers[identifier] then
		return
	end
	timer.timers[identifier].status = "paused"
	
	return timer_pause(identifier)
end

function timer.UnPause(identifier)
	if timer.timers[identifier] then
		timer.timers[identifier].status = "running"
	end
	
	return timer_unpause(identifier)
end

function timer.Adjust(identifier, delay, repetitions, func)
	if timer.timers[identifier] then
		local t = timer.timers[identifier]
		local res = {
			delay = delay,
			repetitions = repetitions or t.repetitions,
			func = func or t.func,
			status = t.status
		}
		timer.timers[identifier] = res
	end
	
	return timer_adjust(identifier, delay, repetitions, func)
end

function timer.Stop(identifier)
	if timer.timers[identifier] then
		timer.timers[identifier].status = "awaiting"
	end
	
	return timer_stop(identifier)
end

function timer.Start(identifier)
	if timer.timers[identifier] then
		timer.timers[identifier].status = "running"
	end
	
	return timer_start(identifier)
end

function timer.GetTable()
	return timer.timers
end

timer.Status = function(identifier)
	if timer.timers[identifier] then
		return timer.timers[identifier].status
	end
end

timer.Create("timer.timers", 1, 0, function()
	for identifier in pairs(timer.timers) do
		if not timer.Exists(identifier) then
			timer.timers[identifier] = nil
		end
	end
end)
