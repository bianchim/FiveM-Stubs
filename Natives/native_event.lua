
--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @name ADD_SHOCKING_EVENT_AT_POSITION
--- @param eventType number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param duration number 
--- @return ScrHandle
function AddShockingEventAtPosition(eventType, x, y, z, duration) end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @name CLEAR_DECISION_MAKER_EVENT_RESPONSE
--- @param name Hash 
--- @param eventType number 
--- @return void (Type not found)
function ClearDecisionMakerEventResponse(name, eventType) end

--- @name REMOVE_SHOCKING_EVENT
--- @param event ScrHandle 
--- @return boolean
function RemoveShockingEvent(event) end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @name ADD_SHOCKING_EVENT_FOR_ENTITY
--- @param eventType number 
--- @param entity Entity 
--- @param duration number 
--- @return ScrHandle
function AddShockingEventForEntity(eventType, entity, duration) end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @name IS_SHOCKING_EVENT_IN_SPHERE
--- @param eventType number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @return boolean
function IsShockingEventInSphere(eventType, x, y, z, radius) end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- This is limited to 4 blocked events at a time.
--- @name BLOCK_DECISION_MAKER_EVENT
--- @param name Hash 
--- @param eventType number 
--- @return void (Type not found)
function BlockDecisionMakerEvent(name, eventType) end

--- @name SUPPRESS_AGITATION_EVENTS_NEXT_FRAME
--- @return void (Type not found)
function SuppressAgitationEventsNextFrame() end

--- @name REMOVE_SHOCKING_EVENT_SPAWN_BLOCKING_AREAS
--- @return void (Type not found)
function RemoveShockingEventSpawnBlockingAreas() end

--- @name SUPPRESS_SHOCKING_EVENTS_NEXT_FRAME
--- @return void (Type not found)
function SuppressShockingEventsNextFrame() end

--- @name REMOVE_ALL_SHOCKING_EVENTS
--- @param p0 boolean 
--- @return void (Type not found)
function RemoveAllShockingEvents(p0) end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @name SUPPRESS_SHOCKING_EVENT_TYPE_NEXT_FRAME
--- @param eventType number 
--- @return void (Type not found)
function SuppressShockingEventTypeNextFrame(eventType) end

--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- @name UNBLOCK_DECISION_MAKER_EVENT
--- @param name Hash 
--- @param eventType number 
--- @return void (Type not found)
function UnblockDecisionMakerEvent(name, eventType) end

--- @name SET_DECISION_MAKER
--- @param ped Ped 
--- @param name Hash 
--- @return void (Type not found)
function SetDecisionMaker(ped, name) end
