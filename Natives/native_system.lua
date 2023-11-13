
--- @name POW
--- @param base number 
--- @param exponent number 
--- @return number
function Pow(base, exponent) end

--- Returns the cosine of the given number.
--- @name COS
--- @param value number The number of degrees (in degrees, not radians)
--- @return number
function Cos(value) end

--- I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down  
--- @name CEIL
--- @param value number 
--- @return number
function Ceil(value) end

--- NativeDB Introduced: v1604
--- @name _LOG10
--- @param value number 
--- @return number
function Log10(value) end

--- @name ROUND
--- @param value number 
--- @return number
function Round(value) end

--- 0 = high
--- 1 = normal
--- 2 = low
--- @name _SET_THREAD_PRIORITY
--- @param priority number 
--- @return void (Type not found)
function SetThreadPriority(priority) end

--- @name SETTIMERB
--- @param value number 
--- @return void (Type not found)
function Settimerb(value) end

--- @name SETTIMERA
--- @param value number 
--- @return void (Type not found)
function Settimera(value) end

--- @name SHIFT_RIGHT
--- @param value number 
--- @param bitShift number 
--- @return number
function ShiftRight(value, bitShift) end

--- @name FLOOR
--- @param value number 
--- @return number
function Floor(value) end

--- Examples:
---  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
---  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
---  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
---  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
---  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
---  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
---  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
---  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
---  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
--- Decompiled examples of usage when starting a script:
---     SCRIPT::REQUEST_SCRIPT(a_0);
---     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
---         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
---         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
---         return 1;
---     }
--- or:
---     v_2 = "MrsPhilips2";
---     SCRIPT::REQUEST_SCRIPT(v_2);
---     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
---     SCRIPT::REQUEST_SCRIPT(v_2);
---     SYSTEM::WAIT(0);
---     }
---     sub_8792(36);
---     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
---     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
--- All native script names: pastebin.com/K9adDsu4 and pastebin.com/yLNWicUi
--- @name START_NEW_SCRIPT
--- @param scriptName string 
--- @param stackSize number 
--- @return number
function StartNewScript(scriptName, stackSize) end

--- @name SHIFT_LEFT
--- @param value number 
--- @param bitShift number 
--- @return number
function ShiftLeft(value, bitShift) end

--- @name SQRT
--- @param value number 
--- @return number
function Sqrt(value) end

--- Returns the sine of the given number.
--- @name SIN
--- @param value number The number of degrees (in degrees, not radians)
--- @return number
function Sin(value) end

--- return : script thread id, 0 if failed  
--- Pass pointer to struct of args in p1, size of struct goes into p2  
--- @name START_NEW_SCRIPT_WITH_ARGS
--- @param scriptName string 
--- @param args  
--- @param argCount number 
--- @param stackSize number 
--- @return number
function StartNewScriptWithArgs(scriptName, args, argCount, stackSize) end

--- Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).  
--- @name TIMERA
--- @return number
function Timera() end

--- @name START_NEW_SCRIPT_WITH_NAME_HASH
--- @param scriptHash Hash 
--- @param stackSize number 
--- @return number
function StartNewScriptWithNameHash(scriptHash, stackSize) end

--- @name START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS
--- @param scriptHash Hash 
--- @param args  
--- @param argCount number 
--- @param stackSize number 
--- @return number
function StartNewScriptWithNameHashAndArgs(scriptHash, args, argCount, stackSize) end

--- @name TO_FLOAT
--- @param value number 
--- @return number
function ToFloat(value) end

--- Calculates distance between vectors.  
--- @name VDIST
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @return number
function Vdist(x1, y1, z1, x2, y2, z2) end

--- Calculates the magnitude of a vector.  
--- @name VMAG
--- @param x number 
--- @param y number 
--- @param z number 
--- @return number
function Vmag(x, y, z) end

--- Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)  
--- @name VDIST2
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @return number
function Vdist2(x1, y1, z1, x2, y2, z2) end

--- Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
--- @name WAIT
--- @param ms number 
--- @return void (Type not found)
function Wait(ms) end

--- Gets the current frame time.  
--- @name TIMESTEP
--- @return number
function Timestep() end

--- @name TIMERB
--- @return number
function Timerb() end

--- Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)  
--- @name VMAG2
--- @param x number 
--- @param y number 
--- @param z number 
--- @return number
function Vmag2(x, y, z) end
