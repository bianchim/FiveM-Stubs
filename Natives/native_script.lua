
--- Inserts the given context into the background scripts context map.
--- NativeDB Introduced: v323
--- @param contextName string 
--- @return void (Type not found)
function BgStartContext(contextName) end

--- Deletes the given context from the background scripts context map.
--- NativeDB Introduced: v323
--- @param contextName string 
--- @return void (Type not found)
function BgEndContext(contextName) end

--- Hashed version of 0xDC2BACD920D0A0DD.
--- NativeDB Introduced: v323
--- @param contextHash Hash 
--- @return void (Type not found)
function BgEndContextHash(contextHash) end

--- @param scriptName string 
--- @return boolean
function DoesScriptExist(scriptName) end

--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- @param eventGroup number 
--- @param eventIndex number 
--- @return number
function GetEventAtIndex(eventGroup, eventIndex) end

--- Hashed version of 0x9D5A25BADB742ACD.
--- NativeDB Introduced: v323
--- @param contextHash Hash 
--- @return void (Type not found)
function BgStartContextHash(contextHash) end

--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
--- @param eventGroup number 
--- @param eventIndex number 
--- @param eventData number 
--- @param eventDataSize number 
--- @return boolean
function GetEventData(eventGroup, eventIndex, eventData, eventDataSize) end

--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- @param eventGroup number 
--- @param eventIndex number 
--- @return boolean
function GetEventExists(eventGroup, eventIndex) end

--- @param scriptHash Hash 
--- @return boolean
function DoesScriptWithNameHashExist(scriptHash) end

--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- @param eventGroup number 
--- @return number
function GetNumberOfEvents(eventGroup) end

--- @return Hash
function GetHashOfThisScriptName() end

--- @param threadId number 
--- @return string
function GetNameOfThread(threadId) end

--- Gets the number of instances of the specified script is currently running.
--- Actually returns numRefs - 1.
--- if (program)
--- 	v3 = rage::scrProgram::GetNumRefs(program) - 1;
--- return v3;
--- @param scriptHash Hash 
--- @return number
function GetNumberOfReferencesOfScriptWithNameHash(scriptHash) end

--- @return number
function GetIdOfThisThread() end

--- @return boolean
function GetNoLoadingScreen() end

--- Updates the display of the MP/SP loading buttons, and locks the state so that other options are not displayed or changed. This can only be done once.
--- @return void (Type not found)
function LockLoadingScreenButtons() end

--- Returns if a script has been loaded into the game. Used to see if a script was loaded after requesting.
--- @param scriptName string 
--- @return boolean
function HasScriptLoaded(scriptName) end

--- @param threadId number 
--- @return boolean
function IsThreadActive(threadId) end

--- @return string
function GetThisScriptName() end

--- @param scriptHash Hash 
--- @return boolean
function HasScriptWithNameHashLoaded(scriptHash) end

--- @param scriptName string 
--- @return void (Type not found)
function RequestScript(scriptName) end

--- If the function returns 0, the end of the iteration has been reached.
--- @return number
function ScriptThreadIteratorGetNextThreadId() end

--- Starts a new iteration of the current threads.
--- Call this first, then SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID (0x30B4FA1C82DD4B9F)
--- @return void (Type not found)
function ScriptThreadIteratorReset() end

--- @return void (Type not found)
function ShutdownLoadingScreen() end

--- formerly _REQUEST_STREAMED_SCRIPT  
--- @param scriptHash Hash 
--- @return void (Type not found)
function RequestScriptWithNameHash(scriptHash) end

--- @param scriptHash Hash 
--- @return void (Type not found)
function SetScriptWithNameHashAsNoLongerNeeded(scriptHash) end

--- @param toggle boolean 
--- @return void (Type not found)
function SetNoLoadingScreen(toggle) end

--- @return void (Type not found)
function TerminateThisThread() end

--- @param scriptName string 
--- @return void (Type not found)
function SetScriptAsNoLongerNeeded(scriptName) end

--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
--- playerBits (also known as playersToBroadcastTo) is a bitset that indicates which players this event should be sent to. In order to send the event to specific players only, use (1 << playerIndex). Set all bits if it should be broadcast to all players.
--- @param eventGroup number 
--- @param eventData number 
--- @param eventDataSize number 
--- @param playerBits number 
--- @return void (Type not found)
function TriggerScriptEvent(eventGroup, eventData, eventDataSize, playerBits) end

--- @param threadId number 
--- @return void (Type not found)
function TerminateThread(threadId) end

--- See TRIGGER_SCRIPT_EVENT
--- @param eventGroup number 
--- @param eventData number 
--- @param eventDataSize number 
--- @param playerBits number 
--- @return void (Type not found)
function TriggerScriptEvent2(eventGroup, eventData, eventDataSize, playerBits) end
