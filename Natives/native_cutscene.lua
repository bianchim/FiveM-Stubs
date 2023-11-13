
--- modelHash (p1) was always 0 in R* scripts  
--- @name CAN_SET_ENTER_STATE_FOR_REGISTERED_ENTITY
--- @param cutsceneEntName string 
--- @param modelHash Hash 
--- @return boolean
function CanSetEnterStateForRegisteredEntity(cutsceneEntName, modelHash) end

--- Whether or not it is safe to run functions on the camera,
--- as the camera is now no longer being used by the cutscene.
--- @name CAN_SET_EXIT_STATE_FOR_CAMERA
--- @param p0 boolean Mostly false
--- @return boolean
function CanSetExitStateForCamera(p0) end

--- @name _GET_CUT_FILE_NUM_SECTIONS
--- @param cutsceneName string 
--- @return number
function GetCutFileNumSections(cutsceneName) end

--- Returns when it is safe to start applying changes to cutscene entities.
--- Should always be used for applying components.
--- See [`SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED`](#\_0x2A56C06EBEF2B0D9) and [`REGISTER_ENTITY_FOR_CUTSCENE`](#\_0xE40C1C56DF95C2E8) for an example.
--- This will be true before the cutscene is considered loaded
--- @name CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY
--- @return boolean
function CanRequestAssetsForCutsceneEntity() end

--- Returns the time of the cutscene's end accounting for [`REQUEST_CUTSCENE_WITH_PLAYBACK_LIST`](\_0xC23DE0E91C30B58C)
--- If a cutscene is laid out with 10 second sections, and section 0 and 1 are enabled then it would be 20000ms.
--- NativeDB Introduced: v1734
--- @name _GET_CUTSCENE_END_TIME
--- @return number
function GetCutsceneEndTime() end

--- @name DOES_CUTSCENE_ENTITY_EXIST
--- @param cutsceneEntName string 
--- @param modelHash Hash 
--- @return boolean
function DoesCutsceneEntityExist(cutsceneEntName, modelHash) end

--- Returns if the script can begin interacting with the registered entity. Primarly used for lead-outs of cutscenes.
--- Returns on frame after cutscene ends, so you cannot get is while using IsCutsceneActive()
--- Whether it is safe to start doing scripted actions on the entity, like simulating walking out of a cutscene.
--- @name CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY
--- @param cutsceneEntName string i.e Michael
--- @param modelHash Hash Can be 0
--- @return boolean
function CanSetExitStateForRegisteredEntity(cutsceneEntName, modelHash) end

--- @name GET_CUTSCENE_SECTION_PLAYING
--- @return number
function GetCutsceneSectionPlaying() end

--- Gets the total length of the cutscene irrespective of playback list in milliseconds
--- To account for sections, see [`_GET_CUTSCENE_END_TIME`]()
--- @name GET_CUTSCENE_TOTAL_DURATION
--- @return number
function GetCutsceneTotalDuration() end

--- Simply checks if the cutscene has loaded and doesn't check via CutSceneManager as opposed to HAS_[THIS]_CUTSCENE_LOADED.
--- @name HAS_CUT_FILE_LOADED
--- @param cutsceneName string 
--- @return boolean
function HasCutFileLoaded(cutsceneName) end

--- Returns the handle of a cutscene entity, can be ped
--- @name GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY
--- @param cutsceneEntName string I.E MP\_1, MP\_4, Michael, Trevor
--- @param modelHash Hash Not strictly neccasary, can get 0
--- @return Entity
function GetEntityIndexOfCutsceneEntity(cutsceneEntName, modelHash) end

--- @name GET_ENTITY_INDEX_OF_REGISTERED_ENTITY
--- @param cutsceneEntName string 
--- @param modelHash Hash 
--- @return Entity
function GetEntityIndexOfRegisteredEntity(cutsceneEntName, modelHash) end

--- Gets the elapsed time of the current cutscene in
--- @name GET_CUTSCENE_TIME
--- @return number
function GetCutsceneTime() end

--- @name IS_CUTSCENE_ACTIVE
--- @return boolean
function IsCutsceneActive() end

--- @name HAS_CUTSCENE_CUT_THIS_FRAME
--- @return boolean
function HasCutsceneCutThisFrame() end

--- @name HAS_CUTSCENE_LOADED
--- @return boolean
function HasCutsceneLoaded() end

--- @name HAS_CUTSCENE_FINISHED
--- @return boolean
function HasCutsceneFinished() end

--- @name HAS_THIS_CUTSCENE_LOADED
--- @param cutsceneName string 
--- @return boolean
function HasThisCutsceneLoaded(cutsceneName) end

--- This can only be run once [`CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY`](#\_0xB56BBBCC2955D9CB) is true, but can be run before [`HAS_CUTSCENE_LOADED`](#\_0xC59F528E9AB9F339)
--- @name REGISTER_ENTITY_FOR_CUTSCENE
--- @param cutsceneEntity Entity Entity to put into the cutscene.
--- @param cutsceneEntName string cHandle of cutscene entity, i.e Michael, MP\_1, MP\_4, Lamar
--- @param p2 number 
--- @param modelHash Hash Not strictly neccasary, often 0 in R\* scripts
--- @param p4 number 0 for SP, 64 for MP seemingly
--- @return void (Type not found)
function RegisterEntityForCutscene(cutsceneEntity, cutsceneEntName, p2, modelHash, p4) end

--- @name IS_CUTSCENE_PLAYING
--- @return boolean
function IsCutscenePlaying() end

--- @name IS_CUTSCENE_PLAYBACK_FLAG_SET
--- @param flag number 
--- @return boolean
function IsCutscenePlaybackFlagSet(flag) end

--- Simply unloads the cutscene and doesn't do extra stuff that REMOVE_CUTSCENE does.
--- @name REMOVE_CUT_FILE
--- @param cutsceneName string 
--- @return void (Type not found)
function RemoveCutFile(cutsceneName) end

--- Simply loads the cutscene and doesn't do extra stuff that REQUEST_CUTSCENE does.
--- @name REQUEST_CUT_FILE
--- @param cutsceneName string 
--- @return void (Type not found)
function RequestCutFile(cutsceneName) end

--- @name REMOVE_CUTSCENE
--- @return void (Type not found)
function RemoveCutscene() end

--- Only used twice in armenian1.c
--- @name REGISTER_SYNCHRONISED_SCRIPT_SPEECH
--- @return void (Type not found)
function RegisterSynchronisedScriptSpeech() end

--- playbackFlags: Which scenes should be played.
--- Example: 0x105 (bit 0, 2 and 8 set) will enable scene 1, 3 and 9.
--- @name REQUEST_CUTSCENE_WITH_PLAYBACK_LIST
--- @param cutsceneName string 
--- @param playbackFlags number 
--- @param flags number Usually 8
--- @return void (Type not found)
function RequestCutsceneWithPlaybackList(cutsceneName, playbackFlags, flags) end

--- Only used in networked environment with MP cutscenes
--- @name SET_CUTSCENE_ENTITY_STREAMING_FLAGS
--- @param cutsceneEntName string MP\_1, MP\_2, etc
--- @param p1 number Always 0 in R\* scripts
--- @param p2 number Always 1 in R\* scripts
--- @return void (Type not found)
function SetCutsceneEntityStreamingFlags(cutsceneEntName, p1, p2) end

--- @name REQUEST_CUTSCENE
--- @param cutsceneName string Case insensitive
--- @param flags number Usually 8
--- @return void (Type not found)
function RequestCutscene(cutsceneName, flags) end

--- Sets cutscene location, used for multiplayer apartments/businesses.
--- @name SET_CUTSCENE_ORIGIN
--- @param x number 
--- @param y number 
--- @param z number 
--- @param heading number 
--- @param p4 number Often -1, 0 or 1
--- @return void (Type not found)
function SetCutsceneOrigin(x, y, z, heading, p4) end

--- Sets the components for a cutscene ped, this will take precendence over the cutscene's component overrides. This does not require the entity be registered.
--- See
--- @name SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED
--- @param cutsceneEntName string cut file cHandle, i.e Michael, Lamar, Franklin, MP\_1-MP\_4 etc
--- @param ped Ped Ped to copy components from
--- @param modelHash Hash Not strictly neccasary, can be 0
--- @return void (Type not found)
function SetCutscenePedComponentVariationFromPed(cutsceneEntName, ped, modelHash) end

--- @name SET_CUTSCENE_CAN_BE_SKIPPED
--- @param p0 boolean 
--- @return void (Type not found)
function SetCutsceneCanBeSkipped(p0) end

--- @name SET_CUTSCENE_FADE_VALUES
--- @param p0 boolean 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function SetCutsceneFadeValues(p0, p1, p2, p3) end

--- See [`SET_PED_COMPONENT_VARIATION`](#\_0x262B14F48D29DE80)
--- @name SET_CUTSCENE_PED_COMPONENT_VARIATION
--- @param cutsceneEntName string 
--- @param componentId number 
--- @param drawableId number 
--- @param textureId number 
--- @param modelHash Hash 
--- @return void (Type not found)
function SetCutscenePedComponentVariation(cutsceneEntName, componentId, drawableId, textureId, modelHash) end

--- See [`SET_PED_PROP_INDEX`](\_0x93376B65A266EB5F)
--- @name SET_CUTSCENE_PED_PROP_VARIATION
--- @param cutsceneEntName string i.e Michael, Trevor, MP\_1, MP\_4
--- @param componentId number 
--- @param drawableId number 
--- @param textureId number 
--- @param modelHash Hash 
--- @return void (Type not found)
function SetCutscenePedPropVariation(cutsceneEntName, componentId, drawableId, textureId, modelHash) end

--- Only used twice in R* scripts  
--- @name SET_CUTSCENE_TRIGGER_AREA
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @return void (Type not found)
function SetCutsceneTriggerArea(p0, p1, p2, p3, p4, p5) end

--- Similar to [`SET_CUTSCENE_ORIGIN`](\_0xB812B3FD1C01CF27) but without heading and doesn't need [`START_CUTSCENE`](\_0x186D5CB5E7B0FF7B)
--- @name START_CUTSCENE_AT_COORDS
--- @param x number 
--- @param y number 
--- @param z number 
--- @param flags number Usually 0
--- @return void (Type not found)
function StartCutsceneAtCoords(x, y, z, flags) end

--- flags: Usually 0.
--- @name START_CUTSCENE
--- @param flags number 
--- @return void (Type not found)
function StartCutscene(flags) end

--- Stop cutscene instantly, will dump registered entities right where they were when ran.
--- @name STOP_CUTSCENE_IMMEDIATELY
--- @return void (Type not found)
function StopCutsceneImmediately() end

--- @name WAS_CUTSCENE_SKIPPED
--- @return boolean
function WasCutsceneSkipped() end

--- @name STOP_CUTSCENE
--- @param p0 boolean Always false
--- @return void (Type not found)
function StopCutscene(p0) end
