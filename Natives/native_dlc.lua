
--- Example:
--- DLC::IS_DLC_PRESENT($\mpbusiness2\);
--- ($ = gethashkey)
--- bruteforce these:
--- 0xB119F6D
--- 0x96F02EE6
--- @name IS_DLC_PRESENT
--- @param dlcHash Hash 
--- @return boolean
function IsDlcPresent(dlcHash) end

--- Sets the value of the specified variable to 0.
--- Always returns true.
--- @name HAS_CLOUD_REQUESTS_FINISHED
--- @param variable boolean 
--- @param unused  
--- @return boolean
function HasCloudRequestsFinished(variable, unused) end

--- @name _GET_EXTRA_CONTENT_PACK_HAS_BEEN_INSTALLED
--- @return boolean
function GetExtraContentPackHasBeenInstalled() end

--- @name GET_IS_LOADING_SCREEN_ACTIVE
--- @return boolean
function GetIsLoadingScreenActive() end

--- This loads the GTA:O dlc map parts (high end garages, apartments).
--- Works in singleplayer.
--- In order to use GTA:O heist IPL's you have to call this native with the following params: SET_INSTANCE_PRIORITY_MODE(1);
--- @name ON_ENTER_MP
--- @return void (Type not found)
function OnEnterMp() end

--- Unloads GROUP_MAP (GTAO/MP) DLC data and loads GROUP_MAP_SP DLC. Neither are loaded by default, 0888C3502DBBEEF5 is a cognate to this function and loads MP DLC (and unloads SP DLC by extension).
--- The original (and wrong) definition is below:
--- This unload the GTA:O DLC map parts (like high end garages/apartments).
--- Works in singleplayer.
--- @name ON_ENTER_SP
--- @return void (Type not found)
function OnEnterSp() end
