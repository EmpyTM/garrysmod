local timer_create = timer.Create
local timer_pause = timer.Pause
local timer_unpause = timer.UnPause
local timer_remove = timer.Remove
local timer_adjust = timer.Adjust
local timer_stop = timer.Stop
local timer_start = timer.Start

timer.timers = {}

function timer.Create(identifier, delay, repetitions, func)
    timer.timers[identifier] = {
        delay = delay,
        repetitions = repetitions,
        func = func,
        status = "running"
    }
    
    timer_create(identifier, delay, repetitions, func)
end

function timer.Remove(identifier)
    timer.timers[identifier] = timer.Exists(identifier) and nil
    
    timer_remove(identifier)
end

function timer.Pause(identifier)
    timer.timers[identifier].status = timer.Exists(identifier) and "paused"
    
    return timer_pause(identifier)
end

function timer.UnPause(identifier)
    timer.timers[identifier].status = timer.Exists(identifier) and "running"
    
    return timer_unpause(identifier)
end

function timer.Adjust(identifier, delay, repetitions, func)
    if not timer.Exists(identifier) then return end
    
    local t = timer.timers[identifier]
    timer.timers[identifier] = {
        delay = delay,
        repetitions = repetitions or t.repetitions,
        func = func or t.func,
        status = t.status
    }

    return timer_adjust(identifier, delay, repetitions, func)
end

function timer.Stop(identifier)
    timer.timers[identifier].status = timer.Exists(identifier) and "awaiting"
    
    return timer_stop(identifier)
end

function timer.Start(identifier)
    timer.timers[identifier].status = timer.Exists(identifier) and "running"

    return timer_start(identifier)
end

function timer.GetTable()
    return timer.timers
end

function timer.Status(identifier)
    return timer.Exists(identifier) and timer.timers[identifier].status
end

timer.Create("timer.timers", 1, 0, function()
    for identifier in pairs(timer.timers) do
        timer.timers[identifier] = timer.Exists(identifier) and timer.timers[identifier] or nil
    end
end)
