
--- Hashed version of 0xDC2BACD920D0A0DD.
--- NativeDB Introduced: v323
--- @name BG_END_CONTEXT_HASH
--- @param contextHash Hash 
--- @return void (Type not found)
function BgEndContextHash(contextHash) end

--- Deletes the given context from the background scripts context map.
--- NativeDB Introduced: v323
--- @name BG_END_CONTEXT
--- @param contextName string 
--- @return void (Type not found)
function BgEndContext(contextName) end

--- Inserts the given context into the background scripts context map.
--- NativeDB Introduced: v323
--- @name BG_START_CONTEXT
--- @param contextName string 
--- @return void (Type not found)
function BgStartContext(contextName) end

--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- @name GET_EVENT_EXISTS
--- @param eventGroup number 
--- @param eventIndex number 
--- @return boolean
function GetEventExists(eventGroup, eventIndex) end

--- Hashed version of 0x9D5A25BADB742ACD.
--- NativeDB Introduced: v323
--- @name BG_START_CONTEXT_HASH
--- @param contextHash Hash 
--- @return void (Type not found)
function BgStartContextHash(contextHash) end

--- @name DOES_SCRIPT_WITH_NAME_HASH_EXIST
--- @param scriptHash Hash 
--- @return boolean
function DoesScriptWithNameHashExist(scriptHash) end

--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- @name GET_EVENT_AT_INDEX
--- @param eventGroup number 
--- @param eventIndex number 
--- @return number
function GetEventAtIndex(eventGroup, eventIndex) end

--- @name DOES_SCRIPT_EXIST
--- @param scriptName string 
--- @return boolean
function DoesScriptExist(scriptName) end

--- @name GET_ID_OF_THIS_THREAD
--- @return number
function GetIdOfThisThread() end

--- @name GET_HASH_OF_THIS_SCRIPT_NAME
--- @return Hash
function GetHashOfThisScriptName() end

--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
--- @name GET_EVENT_DATA
--- @param eventGroup number 
--- @param eventIndex number 
--- @param eventData number 
--- @param eventDataSize number 
--- @return boolean
function GetEventData(eventGroup, eventIndex, eventData, eventDataSize) end

--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- @name GET_NUMBER_OF_EVENTS
--- @param eventGroup number 
--- @return number
function GetNumberOfEvents(eventGroup) end

--- @name _GET_NAME_OF_THREAD
--- @param threadId number 
--- @return string
function GetNameOfThread(threadId) end

--- Gets the number of instances of the specified script is currently running.
--- Actually returns numRefs - 1.
--- if (program)
--- 	v3 = rage::scrProgram::GetNumRefs(program) - 1;
--- return v3;
--- @name _GET_NUMBER_OF_REFERENCES_OF_SCRIPT_WITH_NAME_HASH
--- @param scriptHash Hash 
--- @return number
function GetNumberOfReferencesOfScriptWithNameHash(scriptHash) end

--- @name GET_NO_LOADING_SCREEN
--- @return boolean
function GetNoLoadingScreen() end

--- Returns if a script has been loaded into the game. Used to see if a script was loaded after requesting.
--- @name HAS_SCRIPT_LOADED
--- @param scriptName string 
--- @return boolean
function HasScriptLoaded(scriptName) end

--- @name GET_THIS_SCRIPT_NAME
--- @return string
function GetThisScriptName() end

--- @name IS_THREAD_ACTIVE
--- @param threadId number 
--- @return boolean
function IsThreadActive(threadId) end

--- Updates the display of the MP/SP loading buttons, and locks the state so that other options are not displayed or changed. This can only be done once.
--- @name _LOCK_LOADING_SCREEN_BUTTONS
--- @return void (Type not found)
function LockLoadingScreenButtons() end

--- If the function returns 0, the end of the iteration has been reached.
--- @name SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID
--- @return number
function ScriptThreadIteratorGetNextThreadId() end

--- formerly _REQUEST_STREAMED_SCRIPT  
--- @name REQUEST_SCRIPT_WITH_NAME_HASH
--- @param scriptHash Hash 
--- @return void (Type not found)
function RequestScriptWithNameHash(scriptHash) end

--- @name REQUEST_SCRIPT
--- @param scriptName string 
--- @return void (Type not found)
function RequestScript(scriptName) end

--- @name SET_NO_LOADING_SCREEN
--- @param toggle boolean 
--- @return void (Type not found)
function SetNoLoadingScreen(toggle) end

--- Starts a new iteration of the current threads.
--- Call this first, then SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID (0x30B4FA1C82DD4B9F)
--- @name SCRIPT_THREAD_ITERATOR_RESET
--- @return void (Type not found)
function ScriptThreadIteratorReset() end

--- @name SHUTDOWN_LOADING_SCREEN
--- @return void (Type not found)
function ShutdownLoadingScreen() end

--- @name HAS_SCRIPT_WITH_NAME_HASH_LOADED
--- @param scriptHash Hash 
--- @return boolean
function HasScriptWithNameHashLoaded(scriptHash) end

--- @name SET_SCRIPT_AS_NO_LONGER_NEEDED
--- @param scriptName string 
--- @return void (Type not found)
function SetScriptAsNoLongerNeeded(scriptName) end

--- @name TERMINATE_THIS_THREAD
--- @return void (Type not found)
function TerminateThisThread() end

--- @name SET_SCRIPT_WITH_NAME_HASH_AS_NO_LONGER_NEEDED
--- @param scriptHash Hash 
--- @return void (Type not found)
function SetScriptWithNameHashAsNoLongerNeeded(scriptHash) end

--- See TRIGGER_SCRIPT_EVENT
--- @name _TRIGGER_SCRIPT_EVENT_2
--- @param eventGroup number 
--- @param eventData number 
--- @param eventDataSize number 
--- @param playerBits number 
--- @return void (Type not found)
function TriggerScriptEvent2(eventGroup, eventData, eventDataSize, playerBits) end

--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
--- playerBits (also known as playersToBroadcastTo) is a bitset that indicates which players this event should be sent to. In order to send the event to specific players only, use (1 << playerIndex). Set all bits if it should be broadcast to all players.
--- @name TRIGGER_SCRIPT_EVENT
--- @param eventGroup number 
--- @param eventData number 
--- @param eventDataSize number 
--- @param playerBits number 
--- @return void (Type not found)
function TriggerScriptEvent(eventGroup, eventData, eventDataSize, playerBits) end

--- @name TERMINATE_THREAD
--- @param threadId number 
--- @return void (Type not found)
function TerminateThread(threadId) end
