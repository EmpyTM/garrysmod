local timers = {}

local timer_create = timer.Create

function timer.Create(identifier, delay, repetitions, func)
    timers[identifier] = {
        delay = delay,
        repetitions = repetitions,
        func = func,
        status = "running"
    }
    
    timer_create(identifier, delay, repetitions, func)
end

local timer_remove = timer.Remove

function timer.Remove(identifier)
    if identifier == "timers_update" then
        error("Tried to remove \"timer_update\" timer!")
    end

    timers[identifier] = timer.Exists(identifier) and nil    
    timer_remove(identifier)
end

local timer_pause = timer.Pause

function timer.Pause(identifier)
    timers[identifier].status = timer.Exists(identifier) and "paused"
    return timer_pause(identifier)
end

local timer_unpause = timer.UnPause

function timer.UnPause(identifier)
    timers[identifier].status = timer.Exists(identifier) and "running"
    return timer_unpause(identifier)
end

local timer_adjust = timer.Adjust

function timer.Adjust(identifier, delay, repetitions, func)
    if not timer.Exists(identifier) then return end
    
    local t = timers[identifier]
    timers[identifier] = {
        delay = delay,
        repetitions = repetitions or t.repetitions,
        func = func or t.func,
        status = t.status
    }

    return timer_adjust(identifier, delay, repetitions, func)
end

local timer_stop = timer.Stop

function timer.Stop(identifier)
    timers[identifier].status = timer.Exists(identifier) and "awaiting"
    return timer_stop(identifier)
end

local timer_start = timer.Start

function timer.Start(identifier)
    timers[identifier].status = timer.Exists(identifier) and "running"
    return timer_start(identifier)
end

function timer.get_table()
    return table.Copy(timers)
end

function timer.status(identifier)
    return timer.Exists(identifier) and timers[identifier].status
end

timer.Create("timers_update", 1, 0, function()
    for identifier in pairs(timers) do
        timers[identifier] = timer.Exists(identifier) and timers[identifier] or nil
    end
end)
