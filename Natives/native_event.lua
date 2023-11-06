
--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @param eventType number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param duration number 
--- @return ScrHandle
function AddShockingEventAtPosition(eventType, x, y, z, duration) end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- This is limited to 4 blocked events at a time.
--- @param name Hash 
--- @param eventType number 
--- @return void (Type not found)
function BlockDecisionMakerEvent(name, eventType) end

--- @return void (Type not found)
function RemoveShockingEventSpawnBlockingAreas() end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @param eventType number 
--- @param entity Entity 
--- @param duration number 
--- @return ScrHandle
function AddShockingEventForEntity(eventType, entity, duration) end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @param name Hash 
--- @param eventType number 
--- @return void (Type not found)
function ClearDecisionMakerEventResponse(name, eventType) end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @param eventType number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @return boolean
function IsShockingEventInSphere(eventType, x, y, z, radius) end

--- @param p0 boolean 
--- @return void (Type not found)
function RemoveAllShockingEvents(p0) end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @param eventType number 
--- @return void (Type not found)
function SuppressShockingEventTypeNextFrame(eventType) end

--- @return void (Type not found)
function SuppressAgitationEventsNextFrame() end

--- @param ped Ped 
--- @param name Hash 
--- @return void (Type not found)
function SetDecisionMaker(ped, name) end

--- @return void (Type not found)
function SuppressShockingEventsNextFrame() end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @param name Hash 
--- @param eventType number 
--- @return void (Type not found)
function UnblockDecisionMakerEvent(name, eventType) end

--- @param event ScrHandle 
--- @return boolean
function RemoveShockingEvent(event) end
