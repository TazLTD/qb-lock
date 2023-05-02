local QBCore = exports['qb-core']:GetCoreObject()
local Result = nil
local NUI_status = false


function StartLockPickCircle(circles, seconds, callback)
    Result = nil
    NUI_status = true
    local value = math.random(3, 8) -- random number between 1 and 5
    local time = math.random(4, 10) -- random number between 10 and 20
    SendNUIMessage({
        action = 'start',
        value = value,
        time = time,
    })
    while NUI_status do
        Wait(5)
        SetNuiFocus(NUI_status, false)
    end
    Wait(100)
    SetNuiFocus(false, false)
    lockpickCallback = callback
    return Result
end

RegisterNUICallback('fail', function()
        ClearPedTasks(PlayerPedId())
        Result = false
        Wait(100)
        NUI_status = false
end)

RegisterNUICallback('success', function()
    Result = true
    Wait(100)
    NUI_status = false
    SetNuiFocus(false, false)
    print(Result)
    return Result
end)
