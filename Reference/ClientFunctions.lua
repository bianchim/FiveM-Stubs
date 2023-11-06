--- @param eventName string
--- @param callback function
function AddEventHandler(eventName, callback) end

--- @param awaitable function
function Citizen.Await(awaitable) end

--- @param milliseconds number
function Citizen.Wait(milliseconds) end

--- @param handler function
function Citizen.CreateThread(handler) end

--- @param milliseconds number
--- @param callback function
function Citizen.SetTimeout(milliseconds, callback) end

--- @param message string
function Citizen.Trace(message) end

--- @param w number
--- @param x number
--- @param y number
--- @param z number
--- @return quat
function quat(w,x, y, z) end

--- @param eventName string
--- @param callback function
function RegisterNetEvent(eventName, callback) end

--- @param eventName string
--- @param callback function
function RegisterNUICallback(eventName, callback) end

--- @param eventHandlerData table
function RemoveEventHandler(eventHandlerData) end

--- @param data table
function SendNUIMessage(data) end

--- @param eventName string
--- @param args... any
function TriggerEvent(eventName, ...) end

--- @param eventName string
--- @param args... any
function TriggerServerEvent(eventName, ...) end

--- @param x number
--- @return number
function vec(x) end

--- @param x number
--- @param y number
--- @return Vector2
function vec(x, y) end

--- @param x number
--- @param y number
--- @param z number
--- @return Vector3
function vec(x, y, z) end

--- @param x number
--- @param y number
--- @param z number
--- @param w number
--- @return Vector4
function vec(x, y, z, w) end

--- @param x number
--- @param y number
--- @return Vector2
function vector2(x, y) end

--- @param x number
--- @param y number
--- @param z number
--- @return Vector3
function vector3(x, y, z) end

--- @param x number
--- @param y number
--- @param z number
--- @param w number
--- @return Vector4
function vector4(x, y, z, w) end
