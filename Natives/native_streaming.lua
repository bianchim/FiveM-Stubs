
--- @name ALLOW_PLAYER_SWITCH_ASCENT
--- @return void (Type not found)
function AllowPlayerSwitchAscent() end

--- @name ADD_MODEL_TO_CREATOR_BUDGET
--- @param modelHash Hash 
--- @return boolean
function AddModelToCreatorBudget(modelHash) end

--- @name ALLOW_PLAYER_SWITCH_DESCENT
--- @return void (Type not found)
function AllowPlayerSwitchDescent() end

--- @name BEGIN_SRL
--- @return void (Type not found)
function BeginSrl() end

--- @name ALLOW_PLAYER_SWITCH_OUTRO
--- @return void (Type not found)
function AllowPlayerSwitchOutro() end

--- @name ALLOW_PLAYER_SWITCH_PAN
--- @return void (Type not found)
function AllowPlayerSwitchPan() end

--- @name DOES_ANIM_DICT_EXIST
--- @param animDict string 
--- @return boolean
function DoesAnimDictExist(animDict) end

--- @name DISABLE_SWITCH_OUTRO_FX
--- @return void (Type not found)
function DisableSwitchOutroFx() end

--- @name CLEAR_HD_AREA
--- @return void (Type not found)
function ClearHdArea() end

--- @name ENABLE_SWITCH_PAUSE_BEFORE_DESCENT
--- @return void (Type not found)
function EnableSwitchPauseBeforeDescent() end

--- @name CLEAR_FOCUS
--- @return void (Type not found)
function ClearFocus() end

--- NativeDB Introduced: v2189
--- @name _GET_GLOBAL_WATER_TYPE
--- @return number
function GetGlobalWaterType() end

--- Clear the current srl and stop rendering the area selected by PREFETCH_SRL and started with BEGIN_SRL.
--- @name END_SRL
--- @return void (Type not found)
function EndSrl() end

--- x1, y1, z1 -- Coords of your ped model  
--- x2, y2, z2 -- Coords of the ped you want to switch to  
--- @name GET_IDEAL_PLAYER_SWITCH_TYPE
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @return number
function GetIdealPlayerSwitchType(x1, y1, z1, x2, y2, z2) end

--- @name GET_LODSCALE
--- @return number
function GetLodscale() end

--- @name GET_NUMBER_OF_STREAMING_REQUESTS
--- @return number
function GetNumberOfStreamingRequests() end

--- @name GET_PLAYER_SWITCH_INTERP_OUT_CURRENT_TIME
--- @return 
function GetPlayerSwitchInterpOutCurrentTime() end

--- @name GET_PLAYER_SWITCH_JUMP_CUT_INDEX
--- @return number
function GetPlayerSwitchJumpCutIndex() end

--- @name GET_PLAYER_SHORT_SWITCH_STATE
--- @return number
function GetPlayerShortSwitchState() end

--- @name GET_PLAYER_SWITCH_INTERP_OUT_DURATION
--- @return number
function GetPlayerSwitchInterpOutDuration() end

--- @name HAS_ANIM_DICT_LOADED
--- @param animDict string 
--- @return boolean
function HasAnimDictLoaded(animDict) end

--- @name GET_PLAYER_SWITCH_TYPE
--- @return number
function GetPlayerSwitchType() end

--- @name GET_PLAYER_SWITCH_STATE
--- @return number
function GetPlayerSwitchState() end

--- 0.0 = no memory used
--- 1.0 = all memory used
--- Maximum model memory (as defined in common\data\missioncreatordata.meta) is 100 MiB
--- GET_*
--- @name _GET_USED_CREATOR_MODEL_MEMORY_PERCENTAGE
--- @return number
function GetUsedCreatorModelMemoryPercentage() end

--- Alias for HAS_ANIM_SET_LOADED.  
--- @name HAS_CLIP_SET_LOADED
--- @param clipSet string 
--- @return boolean
function HasClipSetLoaded(clipSet) end

--- Returns whether the specified model (archetype) is currently loaded.
--- Note that this will return 'true' even if the model has been requested and loaded by something other than the current script, if you're intending to actually use the model in a later frame, you should call REQUEST_MODEL anyway.
--- @name HAS_MODEL_LOADED
--- @param model Hash The model hash to check for.
--- @return boolean
function HasModelLoaded(model) end

--- @name HAS_NAMED_PTFX_ASSET_LOADED
--- @param fxName string 
--- @return boolean
function HasNamedPtfxAssetLoaded(fxName) end

--- Gets whether the specified animation set has finished loading. An animation set provides movement animations for a ped.
--- Animation set and clip set are synonymous. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
--- @name HAS_ANIM_SET_LOADED
--- @param animSet string 
--- @return boolean
function HasAnimSetLoaded(animSet) end

--- @name HAS_PTFX_ASSET_LOADED
--- @return boolean
function HasPtfxAssetLoaded() end

--- @name INIT_CREATOR_BUDGET
--- @return void (Type not found)
function InitCreatorBudget() end

--- @name _IS_MODEL_A_PED
--- @param model Hash 
--- @return boolean
function IsModelAPed(model) end

--- @name HAS_COLLISION_FOR_MODEL_LOADED
--- @param model Hash 
--- @return boolean
function HasCollisionForModelLoaded(model) end

--- @name IS_ENTITY_FOCUS
--- @param entity Entity 
--- @return boolean
function IsEntityFocus(entity) end

--- @name IS_NETWORK_LOADING_SCENE
--- @return boolean
function IsNetworkLoadingScene() end

--- @name IS_IPL_ACTIVE
--- @param iplName string 
--- @return boolean
function IsIplActive(iplName) end

--- Check if model is in cdimage(rpf)  
--- @name IS_MODEL_IN_CDIMAGE
--- @param model Hash 
--- @return boolean
function IsModelInCdimage(model) end

--- Returns whether the specified model represents a vehicle.  
--- @name IS_MODEL_A_VEHICLE
--- @param model Hash 
--- @return boolean
function IsModelAVehicle(model) end

--- Returns true if the player is currently switching, false otherwise.  
--- (When the camera is in the sky moving from Trevor to Franklin for example)  
--- @name IS_PLAYER_SWITCH_IN_PROGRESS
--- @return boolean
function IsPlayerSwitchInProgress() end

--- Returns whether the specified model exists in the game.  
--- @name IS_MODEL_VALID
--- @param model Hash 
--- @return boolean
function IsModelValid(model) end

--- @name IS_NEW_LOAD_SCENE_ACTIVE
--- @return boolean
function IsNewLoadSceneActive() end

--- @name IS_NEW_LOAD_SCENE_LOADED
--- @return boolean
function IsNewLoadSceneLoaded() end

--- Returns true when the srl from BEGIN_SRL is loaded.
--- @name IS_SRL_LOADED
--- @return boolean
function IsSrlLoaded() end

--- @name IS_SWITCH_READY_FOR_DESCENT
--- @return boolean
function IsSwitchReadyForDescent() end

--- 0 - default
--- 1 - HeistIsland
--- NativeDB Introduced: v2189
--- @name _LOAD_GLOBAL_WATER_TYPE
--- @param waterType number 
--- @return void (Type not found)
function LoadGlobalWaterType(waterType) end

--- @name IS_SWITCH_SKIPPING_DESCENT
--- @return boolean
function IsSwitchSkippingDescent() end

--- @name IS_STREAMVOL_ACTIVE
--- @return boolean
function IsStreamvolActive() end

--- @name LOAD_ALL_OBJECTS_NOW
--- @return void (Type not found)
function LoadAllObjectsNow() end

--- @name NETWORK_STOP_LOAD_SCENE
--- @return void (Type not found)
function NetworkStopLoadScene() end

--- @name LOAD_SCENE
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function LoadScene(x, y, z) end

--- `radius` value is usually between `3f` and `7000f` in original 1868 scripts.
--- `p7` is 0, 1, 2, 3 or 4 used in decompiled scripts, 0 is by far the most common.
--- Returns True if success, used only 7 times in decompiled scripts of 1868
--- @name NEW_LOAD_SCENE_START
--- @param posX number World `x` coordinate.
--- @param posY number World `y` coordinate.
--- @param posZ number World `z` coordinate.
--- @param offsetX number Offset `x` coordinate.
--- @param offsetY number Offset `y` coordinate.
--- @param offsetZ number Offset `z` coordinate.
--- @param radius number Action radius, value is usually between `3f` and `7000f` in original 1868 scripts.
--- @param p7 number 0, 1, 2, 3 or 4 used in decompiled scripts, 0 is by far the most common.
--- @return boolean
function NewLoadSceneStart(posX, posY, posZ, offsetX, offsetY, offsetZ, radius, p7) end

--- @name NEW_LOAD_SCENE_STOP
--- @return void (Type not found)
function NewLoadSceneStop() end

--- if (!sub_8f12("START LOAD SCENE SAFE")) {
---     if (CUTSCENE::GET_CUTSCENE_TIME() > 4178) {
---         STREAMING::_ACCFB4ACF53551B0(1973.845458984375, 3818.447265625, 32.43629837036133, 15.0, 2);
---         sub_8e9e("START LOAD SCENE SAFE", 1);
---     }
--- }
--- (Previously known as STREAMING::_NEW_LOAD_SCENE_START_SAFE)
--- @name NEW_LOAD_SCENE_START_SPHERE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param p4  
--- @return boolean
function NewLoadSceneStartSphere(x, y, z, radius, p4) end

--- This allows you to override "extended distance scaling" setting. Needs to be called each frame.
--- Max scaling seems to be 200.0, normal is 1.0
--- See https://gfycat.com/DetailedHauntingIncatern
--- @name OVERRIDE_LODSCALE_THIS_FRAME
--- @param scaling number 
--- @return void (Type not found)
function OverrideLodscaleThisFrame(scaling) end

--- @name NETWORK_UPDATE_LOAD_SCENE
--- @return boolean
function NetworkUpdateLoadScene() end

--- Unloads the specified animation set. An animation set provides movement animations for a ped.
--- Animation set and clip set are synonymous. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
--- @name REMOVE_ANIM_SET
--- @param animSet string 
--- @return void (Type not found)
function RemoveAnimSet(animSet) end

--- This native is used to attribute the SRL that BeginSrl is going to load. This is usually used for 'in-game' cinematics (not cutscenes but camera stuff) instead of SetFocusArea because it loads a specific area of the map which is pretty useful when the camera moves from distant areas.
--- For instance, GTA:O opening cutscene.
--- https://pastebin.com/2EeKVeLA : a list of SRL found in srllist.meta
--- https://pastebin.com/zd9XYUWY : here is the content of a SRL file opened with codewalker.
--- @name PREFETCH_SRL
--- @param srl string A SRL name.
--- @return void (Type not found)
function PrefetchSrl(srl) end

--- Alias for REMOVE_ANIM_SET.  
--- @name REMOVE_CLIP_SET
--- @param clipSet string 
--- @return void (Type not found)
function RemoveClipSet(clipSet) end

--- @name REMOVE_MODEL_FROM_CREATOR_BUDGET
--- @param modelHash Hash 
--- @return void (Type not found)
function RemoveModelFromCreatorBudget(modelHash) end

--- @name REMOVE_PTFX_ASSET
--- @return void (Type not found)
function RemovePtfxAsset() end

--- @name REMOVE_ANIM_DICT
--- @param animDict string 
--- @return void (Type not found)
function RemoveAnimDict(animDict) end

--- IPL list can be found [here](https://gist.github.com/4mmonium/4c8a076b5f712a7cc64666003009a2e7).
--- @name REMOVE_IPL
--- @param iplName string 
--- @return void (Type not found)
function RemoveIpl(iplName) end

--- @name REQUEST_ADDITIONAL_COLLISION_AT_COORD
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function RequestAdditionalCollisionAtCoord(x, y, z) end

--- @name REMOVE_NAMED_PTFX_ASSET
--- @param fxName string 
--- @return void (Type not found)
function RemoveNamedPtfxAsset(fxName) end

--- Starts loading the specified animation set. An animation set provides movement animations for a ped. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
--- @name REQUEST_ANIM_SET
--- @param animSet string 
--- @return void (Type not found)
function RequestAnimSet(animSet) end

--- @name REQUEST_COLLISION_AT_COORD
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function RequestCollisionAtCoord(x, y, z) end

--- Exemple: REQUEST_IPL("TrevorsTrailerTrash");
--- @name REQUEST_IPL
--- @param iplName string 
--- @return void (Type not found)
function RequestIpl(iplName) end

--- @name REQUEST_CLIP_SET
--- @param clipSet string 
--- @return void (Type not found)
function RequestClipSet(clipSet) end

--- @name REQUEST_ANIM_DICT
--- @param animDict string 
--- @return void (Type not found)
function RequestAnimDict(animDict) end

--- Request a model (archetype) to be loaded for use by the current script. Use SET_MODEL_AS_NO_LONGER_NEEDED when done using the model in script.
--- @name REQUEST_MODEL
--- @param model Hash The model to request.
--- @return void (Type not found)
function RequestModel(model) end

--- @name REQUEST_MENU_PED_MODEL
--- @param model Hash 
--- @return void (Type not found)
function RequestMenuPedModel(model) end

--- @name REQUEST_COLLISION_FOR_MODEL
--- @param model Hash 
--- @return void (Type not found)
function RequestCollisionForModel(model) end

---  From the b678d decompiled scripts:
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("core_snow");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("fm_mission_controler");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("proj_xmas_firework");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_apartment_mp");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_biolab_heist");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_fireworks");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_parachute");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_wheelsmoke");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_cig_plane");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_creator");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_tankbattle");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_ornate_heist");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_prison_break_heist_station");
--- @name REQUEST_NAMED_PTFX_ASSET
--- @param fxName string 
--- @return void (Type not found)
function RequestNamedPtfxAsset(fxName) end

--- This is a NOP function. It does nothing at all.  
--- @name SET_DITCH_POLICE_MODELS
--- @param toggle boolean 
--- @return void (Type not found)
function SetDitchPoliceModels(toggle) end

--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "V_FIB01_cur_elev");
--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "limbo");
--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BB, "V_Office_gnd_lifts");
--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BB, "limbo");
--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "v_fib01_jan_elev");
--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "limbo");
--- @name REQUEST_MODELS_IN_ROOM
--- @param interior number 
--- @param roomName string 
--- @return void (Type not found)
function RequestModelsInRoom(interior, roomName) end

--- maps script name (thread + 0xD0) by lookup via scriptfx.dat - does nothing when script name is empty
--- @name REQUEST_PTFX_ASSET
--- @return void (Type not found)
function RequestPtfxAsset() end

--- @name SET_GAME_PAUSES_FOR_STREAMING
--- @param toggle boolean 
--- @return void (Type not found)
function SetGamePausesForStreaming(toggle) end

--- It seems to make the entity's coords mark the point from which LOD-distances are measured. In my testing, setting a vehicle as the focus entity and moving that vehicle more than 300 distance units away from the player will make the level of detail around the player go down drastically (shadows disappear, textures go extremely low res, etc). The player seems to be the default focus entity.  
--- @name SET_FOCUS_ENTITY
--- @param entity Entity 
--- @return void (Type not found)
function SetFocusEntity(entity) end

--- @name SET_INTERIOR_ACTIVE
--- @param interiorID number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetInteriorActive(interiorID, toggle) end

--- @name SET_HD_AREA
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @return void (Type not found)
function SetHdArea(x, y, z, radius) end

--- Override the area where the camera will render the terrain.
--- p3, p4 and p5 are usually set to 0.0
--- @name SET_FOCUS_POS_AND_VEL
--- @param x number 
--- @param y number 
--- @param z number 
--- @param offsetX number 
--- @param offsetY number 
--- @param offsetZ number 
--- @return void (Type not found)
function SetFocusPosAndVel(x, y, z, offsetX, offsetY, offsetZ) end

--- Releases the script ownership assigned by REQUEST_MODEL. This command should be used when done using a specific model hash in script.
--- @name SET_MODEL_AS_NO_LONGER_NEEDED
--- @param model Hash The model to release ownership of.
--- @return void (Type not found)
function SetModelAsNoLongerNeeded(model) end

--- Possible p0 values:  
--- "prologue"  
--- "Prologue_Main"  
--- @name SET_MAPDATACULLBOX_ENABLED
--- @param name string 
--- @param toggle boolean 
--- @return void (Type not found)
function SetMapdatacullboxEnabled(name, toggle) end

--- Enables the specified island. For more information, see islandhopper.meta
--- NativeDB Introduced: v2189
--- @name _SET_ISLAND_HOPPER_ENABLED
--- @param name string 
--- @param toggle boolean 
--- @return void (Type not found)
function SetIslandHopperEnabled(name, toggle) end

--- @name SET_PLAYER_SHORT_SWITCH_STYLE
--- @param style number Always 0
--- @return void (Type not found)
function SetPlayerShortSwitchStyle(style) end

--- All names can be found in playerswitchestablishingshots.meta
--- @name SET_PLAYER_SWITCH_ESTABLISHING_SHOT
--- @param name string 
--- @return void (Type not found)
function SetPlayerSwitchEstablishingShot(name) end

--- @name SET_PLAYER_SWITCH_OUTRO
--- @param cameraCoordX number 
--- @param cameraCoordY number 
--- @param cameraCoordZ number 
--- @param camRotationX number 
--- @param camRotationY number 
--- @param camRotationZ number 
--- @param camFov number 
--- @param camFarClip number 
--- @param rotationOrder number 
--- @return void (Type not found)
function SetPlayerSwitchOutro(cameraCoordX, cameraCoordY, cameraCoordZ, camRotationX, camRotationY, camRotationZ, camFov, camFarClip, rotationOrder) end

--- @name SET_REDUCE_PED_MODEL_BUDGET
--- @param toggle boolean 
--- @return void (Type not found)
function SetReducePedModelBudget(toggle) end

--- Control how many new (ambient?) peds will spawn in the game world.
--- Range for p0 seems to be 0-3, where 0 is none and 3 is the normal level.
--- @name SET_PED_POPULATION_BUDGET
--- @param p0 number 
--- @return void (Type not found)
function SetPedPopulationBudget(p0) end

--- @name SET_REDUCE_VEHICLE_MODEL_BUDGET
--- @param toggle boolean 
--- @return void (Type not found)
function SetReduceVehicleModelBudget(toggle) end

--- @name SET_SRL_TIME
--- @param p0 number 
--- @return void (Type not found)
function SetSrlTime(p0) end

--- @name SET_RENDER_HD_ONLY
--- @param toggle boolean 
--- @return void (Type not found)
function SetRenderHdOnly(toggle) end

--- @name SHUTDOWN_CREATOR_BUDGET
--- @return void (Type not found)
function ShutdownCreatorBudget() end

--- @name SET_STREAMING
--- @param toggle boolean 
--- @return void (Type not found)
function SetStreaming(toggle) end

--- @name STOP_PLAYER_SWITCH
--- @return void (Type not found)
function StopPlayerSwitch() end

--- @name SET_VEHICLE_POPULATION_BUDGET
--- @param p0 number 
--- @return void (Type not found)
function SetVehiclePopulationBudget(p0) end

--- // this enum comes directly from R* so don't edit this  
--- enum ePlayerSwitchType  
--- {  
--- 	SWITCH_TYPE_AUTO,  
--- 	SWITCH_TYPE_LONG,  
--- 	SWITCH_TYPE_MEDIUM,  
--- 	SWITCH_TYPE_SHORT  
--- };  
--- Use GET_IDEAL_PLAYER_SWITCH_TYPE for the best switch type. Or just auto, because it calls the same function in executable.  
--- ----------------------------------------------------  
--- Examples from the decompiled scripts:  
--- STREAMING::START_PLAYER_SWITCH(l_832._f3, PLAYER::PLAYER_PED_ID(), 0, 3);  
--- STREAMING::START_PLAYER_SWITCH(l_832._f3, PLAYER::PLAYER_PED_ID(), 2050, 3);  
--- STREAMING::START_PLAYER_SWITCH(PLAYER::PLAYER_PED_ID(), l_832._f3, 1024, 3);  
--- STREAMING::START_PLAYER_SWITCH(g_141F27, PLAYER::PLAYER_PED_ID(), 513, v_14);  
--- Note: DO NOT, use SWITCH_TYPE_LONG with flag 513. It leaves you stuck in the clouds. You'll have to call STOP_PLAYER_SWITCH() to return to your ped.  
--- Flag 8 w/ SWITCH_TYPE_LONG will zoom out 3 steps, then zoom in 2/3 steps and stop on the 3rd and just hang there.  
--- Flag 8 w/ SWITCH_TYPE_MEDIUM will zoom out 1 step, and just hang there.  
--- @name START_PLAYER_SWITCH
--- @param from Ped 
--- @param to Ped 
--- @param flags number 
--- @param switchType number 
--- @return void (Type not found)
function StartPlayerSwitch(from, to, flags, switchType) end

--- Always returns zero.
--- @name STREAMVOL_CREATE_FRUSTUM
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7  
--- @param p8  
--- @return 
function StreamvolCreateFrustum(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- Always returns zero.
--- @name STREAMVOL_CREATE_SPHERE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param rad number 
--- @param p4  
--- @param p5  
--- @return 
function StreamvolCreateSphere(x, y, z, rad, p4, p5) end

--- Always returns zero.
--- @name STREAMVOL_CREATE_LINE
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6  
--- @return 
function StreamvolCreateLine(p0, p1, p2, p3, p4, p5, p6) end

--- @name STREAMVOL_IS_VALID
--- @param unused  
--- @return boolean
function StreamvolIsValid(unused) end

--- @name STREAMVOL_DELETE
--- @param unused  
--- @return void (Type not found)
function StreamvolDelete(unused) end

--- Use after using \_SWITCH_OUT_PLAYER to swoop the camera back down to the player's ped.
--- @name _SWITCH_IN_PLAYER
--- @param ped Ped 
--- @return void (Type not found)
function SwitchInPlayer(ped) end

--- doesn't act normally when used on mount chilliad
--- flags:
--- 0: normal
--- 1: no transition
--- 255: switch IN
--- switchType: 0 - 3
--- 0: 1 step towards ped
--- 1: 3 steps out from ped
--- 2: 1 step out from ped
--- 3: 1 step towards ped
--- @name _SWITCH_OUT_PLAYER
--- @param ped Ped 
--- @param flags number 
--- @param switchType number 
--- @return void (Type not found)
function SwitchOutPlayer(ped, flags, switchType) end

--- @name STREAMVOL_HAS_LOADED
--- @param unused  
--- @return boolean
function StreamvolHasLoaded(unused) end
