--- @param eventName string
--- @param callback function
function AddEventHandler(eventName, callback) end

--- @param awaitable function
function Citizen.Await(awaitable) end

--- @param handler function
function Citizen.CreateThread(handler) end

--- @param milliseconds number
--- @param callback function
function Citizen.SetTimeout(milliseconds, callback) end

--- @param message string
function Citizen.Trace(message) end

--- @param milliseconds number
function Citizen.Wait(milliseconds) end

--- @param player Player
---@return @table
function GetPlayerIdentifiers(player) end

--- @return table
function GetPlayers() end

--- @param url string
--- @param callback function
--- @param method string default 'GET'
--- @param data string default ''
--- @param headers table default {}
function PerformHttpRequest(url, callback, method, data, headers) end

--- @param eventName string
--- @param callback function
function RegisterNetEvent(eventName, callback) end

--- @param eventHandlerData table
function RemoveEventHandler(eventHandlerData) end

--- @param eventName string
--- @param args... any
function TriggerClientEvent(eventName, ...) end

--- @param eventName string
--- @param args... any
function TriggerEvent(eventName, ...) end