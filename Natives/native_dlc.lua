
--- Sets the value of the specified variable to 0.
--- Always returns true.
--- @param variable boolean 
--- @param unused  
--- @return boolean
function HasCloudRequestsFinished(variable, unused) end

--- @return boolean
function GetExtraContentPackHasBeenInstalled() end

--- This loads the GTA:O dlc map parts (high end garages, apartments).
--- Works in singleplayer.
--- In order to use GTA:O heist IPL's you have to call this native with the following params: SET_INSTANCE_PRIORITY_MODE(1);
--- @return void (Type not found)
function OnEnterMp() end

--- @return boolean
function GetIsLoadingScreenActive() end

--- Unloads GROUP_MAP (GTAO/MP) DLC data and loads GROUP_MAP_SP DLC. Neither are loaded by default, 0888C3502DBBEEF5 is a cognate to this function and loads MP DLC (and unloads SP DLC by extension).
--- The original (and wrong) definition is below:
--- This unload the GTA:O DLC map parts (like high end garages/apartments).
--- Works in singleplayer.
--- @return void (Type not found)
function OnEnterSp() end

--- Example:
--- DLC::IS_DLC_PRESENT($\mpbusiness2\);
--- ($ = gethashkey)
--- bruteforce these:
--- 0xB119F6D
--- 0x96F02EE6
--- @param dlcHash Hash 
--- @return boolean
function IsDlcPresent(dlcHash) end
