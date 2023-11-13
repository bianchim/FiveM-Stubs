
--- Experimental natives, please do not use in a live environment.
--- @name ADD_REPLACE_TEXTURE
--- @param origTxd string 
--- @param origTxn string 
--- @param newTxd string 
--- @param newTxn string 
--- @return void (Type not found)
function AddReplaceTexture(origTxd, origTxn, newTxd, newTxn) end

--- Adds an output for the specified audio submix.
--- @name ADD_AUDIO_SUBMIX_OUTPUT
--- @param submixId number The input submix.
--- @param outputSubmixId number The output submix. Use `0` for the master game submix.
--- @return void (Type not found)
function AddAudioSubmixOutput(submixId, outputSubmixId) end

--- Loads a minimap overlay from a GFx file in the current resource.
--- @name ADD_MINIMAP_OVERLAY
--- @param name string The path to a `.gfx` file in the current resource. It has to be specified as a `file`.
--- @return number
function AddMinimapOverlay(name) end

--- @name ADD_TEXT_ENTRY
--- @param entryKey string 
--- @param entryText string 
--- @return void (Type not found)
function AddTextEntry(entryKey, entryText) end

--- Requests whether or not the player owns the specified SKU.
--- @name DOES_PLAYER_OWN_SKU
--- @param playerSrc string The player handle
--- @param skuId number The ID of the SKU.
--- @return boolean
function DoesPlayerOwnSku(playerSrc, skuId) end

--- Requests whether or not the player owns the specified package.
--- @name DOES_PLAYER_OWN_SKU_EXT
--- @param playerSrc string The player handle
--- @param skuId number The package ID on Tebex.
--- @return boolean
function DoesPlayerOwnSkuExt(playerSrc, skuId) end

--- @name ADD_TEXT_ENTRY_BY_HASH
--- @param entryKey Hash 
--- @param entryText string 
--- @return void (Type not found)
function AddTextEntryByHash(entryKey, entryText) end

--- Cancels the currently executing event.
--- @name CANCEL_EVENT
--- @return void (Type not found)
function CancelEvent() end

--- Adds a handler for changes to a state bag.
--- The function called expects to match the following signature:
--- ```ts
--- function StateBagChangeHandler(bagName: string, key: string, value: any, reserved: number, replicated: boolean);
--- *   **bagName**: The internal bag ID for the state bag which changed. This is usually `player:Source`, `entity:NetID`
---     or `localEntity:Handle`.
--- *   **key**: The changed key.
--- *   **value**: The new value stored at key. The old value is still stored in the state bag at the time this callback executes.
--- *   **reserved**: Currently unused.
--- *   **replicated**: Whether the set is meant to be replicated.
--- At this time, the change handler can't opt to reject changes.
--- If bagName refers to an entity, use [GET_ENTITY_FROM_STATE_BAG_NAME](?\_0x4BDF1868) to get the entity handle
--- If bagName refers to a player, use [GET_PLAYER_FROM_STATE_BAG_NAME](?\_0xA56135E0) to get the player handle
--- @name ADD_STATE_BAG_CHANGE_HANDLER
--- @param keyFilter string The key to check for, or null for no filter.
--- @param bagFilter string The bag ID to check for such as `entity:65535`, or null for no filter.
--- @param handler func (Type not found) The handler function.
--- @return number
function AddStateBagChangeHandler(keyFilter, bagFilter, handler) end

--- Break off vehicle wheel by index. The `leaveDebrisTrail` flag requires `putOnFire` to be true.
--- @name BREAK_OFF_VEHICLE_WHEEL
--- @param vehicle Vehicle The vehicle handle.
--- @param wheelIndex number The wheel index.
--- @param leaveDebrisTrail boolean Start "veh_debris_trail" ptfx.
--- @param deleteWheel boolean True to delete wheel, otherwise detach.
--- @param unknownFlag boolean Unknown flag.
--- @param putOnFire boolean Set wheel on fire once detached.
--- @return void (Type not found)
function BreakOffVehicleWheel(vehicle, wheelIndex, leaveDebrisTrail, deleteWheel, unknownFlag, putOnFire) end

--- This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
--- @name CALL_MINIMAP_SCALEFORM_FUNCTION
--- @param miniMap number The minimap overlay ID.
--- @param fnName string A function in the overlay's TIMELINE.
--- @return boolean
function CallMinimapScaleformFunction(miniMap, fnName) end

--- Returns whether or not the specified player has enough information to start a commerce session for.
--- @name CAN_PLAYER_START_COMMERCE_SESSION
--- @param playerSrc string The player handle
--- @return boolean
function CanPlayerStartCommerceSession(playerSrc) end

--- Removes vehicle xenon lights custom RGB color.
--- @name CLEAR_VEHICLE_XENON_LIGHTS_CUSTOM_COLOR
--- @param vehicle Vehicle The vehicle handle.
--- @return void (Type not found)
function ClearVehicleXenonLightsCustomColor(vehicle) end

--- @name DOOR_SYSTEM_GET_SIZE
--- @return number
function DoorSystemGetSize() end

--- Creates an audio submix with the specified name, or gets the existing audio submix by that name.
--- @name CREATE_AUDIO_SUBMIX
--- @param name string The audio submix name.
--- @return number
function CreateAudioSubmix(name) end

--- @name CLONE_TIMECYCLE_MODIFIER
--- @param sourceModifierName string The source timecycle name.
--- @param clonedModifierName string The clone timecycle name, must be unique.
--- @return number
function CloneTimecycleModifier(sourceModifierName, clonedModifierName) end

--- Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
--- @name CREATE_DUI
--- @param url string The initial URL to load in the browser.
--- @param width number The width of the backing surface.
--- @param height number The height of the backing surface.
--- @return number
function CreateDui(url, width, height) end

--- @name DOES_TIMECYCLE_MODIFIER_HAS_VAR
--- @param modifierName string The name of timecycle modifier.
--- @param varName string The name of timecycle variable.
--- @return boolean
function DoesTimecycleModifierHasVar(modifierName, varName) end

--- Returns all player indices for 'active' physical players known to the client.
--- The data returned adheres to the following layout:
--- [127, 42, 13, 37]
--- @name GET_ACTIVE_PLAYERS
--- @return object (Type not found)
function GetActivePlayers() end

--- Commits the backing pixels to the specified runtime texture.
--- @name COMMIT_RUNTIME_TEXTURE
--- @param tex number The runtime texture handle.
--- @return void (Type not found)
function CommitRuntimeTexture(tex) end

--- Creates a volume where water effects do not apply.
--- Useful for preventing water collisions from flooding areas underneath them.
--- This has no effect on waterquads, only water created from drawables and collisions.
--- Don't create volumes when your local ped is swimming (e.g. use IS_PED_SWIMMING in your scripts before you call this)
--- @name CREATE_DRY_VOLUME
--- @param xMin number The min X component of the AABB volume where water does not affect the player.
--- @param yMin number The min Y component for the AABB volume.
--- @param zMin number The min Z component for the AABB volume.
--- @param xMax number The max X component for the AABB volume.
--- @param yMax number The max Y component for the AABB volume.
--- @param zMax number The max Z component for the AABB volume.
--- @return number
function CreateDryVolume(xMin, yMin, zMin, xMax, yMax, zMax) end

--- @name GET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE
--- @param playerSrc string The player handle
--- @return number
function GetAirDragMultiplierForPlayersVehicle(playerSrc) end

--- Creates a runtime texture from a DUI handle.
--- @name CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE
--- @param txd number A handle to the runtime TXD to create the runtime texture in.
--- @param txn string The name for the texture in the runtime texture dictionary.
--- @param duiHandle string The DUI handle returned from GET_DUI_HANDLE.
--- @return number
function CreateRuntimeTextureFromDuiHandle(txd, txn, duiHandle) end

--- Creates a runtime texture dictionary with the specified name.
--- Example:
--- ```lua
--- local txd = CreateRuntimeTxd('meow')
--- @name CREATE_RUNTIME_TXD
--- @param name string The name for the runtime TXD.
--- @return number
function CreateRuntimeTxd(name) end

--- Like DRAW_RECT, but it's a line.
--- @name DRAW_LINE_2D
--- @param x1 number First x.
--- @param y1 number First y.
--- @param x2 number Second x.
--- @param y2 number Second y.
--- @param width number Width of line.
--- @param r number Red.
--- @param g number Green.
--- @param b number Blue.
--- @param a number Alpha.
--- @return void (Type not found)
function DrawLine2d(x1, y1, x2, y2, width, r, g, b, a) end

--- Creates a blank runtime texture.
--- @name CREATE_RUNTIME_TEXTURE
--- @param txd number A handle to the runtime TXD to create the runtime texture in.
--- @param txn string The name for the texture in the runtime texture dictionary.
--- @param width number The width of the new texture.
--- @param height number The height of the new texture.
--- @return number
function CreateRuntimeTexture(txd, txn, width, height) end

--- @name DUPLICATE_FUNCTION_REFERENCE
--- @param referenceIdentity string 
--- @return string
function DuplicateFunctionReference(referenceIdentity) end

--- Returns a list of door system entries: a door system hash (see [ADD_DOOR_TO_SYSTEM](#\_0x6F8838D03D1DC226)) and its object handle.
--- The data returned adheres to the following layout:
--- [{doorHash1, doorHandle1}, ..., {doorHashN, doorHandleN}]
--- @name DOOR_SYSTEM_GET_ACTIVE
--- @return object (Type not found)
function DoorSystemGetActive() end

--- DRAW_RECT, but with a rotation. Seems to be broken.
--- @name DRAW_RECT_ROTATED
--- @param x number 
--- @param y number 
--- @param width number 
--- @param height number 
--- @param rotation number 
--- @param r number 
--- @param g number 
--- @param b number 
--- @param a number 
--- @return void (Type not found)
function DrawRectRotated(x, y, width, height, rotation, r, g, b, a) end

--- Creates a runtime texture from the specified file in the current resource or a base64 data URL.
--- @name CREATE_RUNTIME_TEXTURE_FROM_IMAGE
--- @param txd number A handle to the runtime TXD to create the runtime texture in.
--- @param txn string The name for the texture in the runtime texture dictionary.
--- @param fileName string The file name of an image to load or a base64 data URL. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.
--- @return number
function CreateRuntimeTextureFromImage(txd, txn, fileName) end

--- Deletes the specified entity.
--- @name DELETE_ENTITY
--- @param entity Entity The entity to delete.
--- @return void (Type not found)
function DeleteEntity(entity) end

--- Nonsynchronous [DELETE_RESOURCE_KVP](#\_0x7389B5DF) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
--- @name DELETE_RESOURCE_KVP_NO_SYNC
--- @param key string The key to delete
--- @return void (Type not found)
function DeleteResourceKvpNoSync(key) end

--- @name DROP_PLAYER
--- @param playerSrc string 
--- @param reason string 
--- @return void (Type not found)
function DropPlayer(playerSrc, reason) end

--- @name ENABLE_ENHANCED_HOST_SUPPORT
--- @param enabled boolean 
--- @return void (Type not found)
function EnableEnhancedHostSupport(enabled) end

--- Create a clean timecycle modifier. See [`SET_TIMECYCLE_MODIFIER_VAR`](#\_0x6E0A422B) to add variables.
--- @name CREATE_TIMECYCLE_MODIFIER
--- @param modifierName string The new timecycle name, must be unique.
--- @return number
function CreateTimecycleModifier(modifierName) end

--- @name END_FIND_OBJECT
--- @param findHandle number 
--- @return void (Type not found)
function EndFindObject(findHandle) end

--- @name DELETE_RESOURCE_KVP
--- @param key string The key to delete
--- @return void (Type not found)
function DeleteResourceKvp(key) end

--- @name END_FIND_KVP
--- @param handle number The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
--- @return void (Type not found)
function EndFindKvp(handle) end

--- Disables the game's afk camera that starts panning around after 30 seconds of inactivity.
--- @name DISABLE_IDLE_CAMERA
--- @param state boolean On/Off
--- @return void (Type not found)
function DisableIdleCamera(state) end

--- Returns all peds handles known to the server.
--- The data returned adheres to the following layout:
--- [127, 42, 13, 37]
--- @name GET_ALL_PEDS
--- @return object (Type not found)
function GetAllPeds() end

--- @name END_FIND_PICKUP
--- @param findHandle number 
--- @return void (Type not found)
function EndFindPickup(findHandle) end

--- @name GET_ENTITY_ROTATION
--- @param entity Entity 
--- @return Vector3
function GetEntityRotation(entity) end

--- Internal function for ensuring an entity has a state bag.
--- @name ENSURE_ENTITY_STATE_BAG
--- @param entity Entity 
--- @return void (Type not found)
function EnsureEntityStateBag(entity) end

--- @name DOES_ENTITY_EXIST
--- @param entity Object 
--- @return boolean
function DoesEntityExist(entity) end

--- @name END_FIND_PED
--- @param findHandle number 
--- @return void (Type not found)
function EndFindPed(findHandle) end

--- @name DELETE_FUNCTION_REFERENCE
--- @param referenceIdentity string 
--- @return void (Type not found)
function DeleteFunctionReference(referenceIdentity) end

--- Disables the game's afk camera that starts panning around after 30 seconds of inactivity(While riding in a car as a passenger)
--- @name DISABLE_VEHICLE_PASSENGER_IDLE_CAMERA
--- @param state boolean On/Off
--- @return void (Type not found)
function DisableVehiclePassengerIdleCamera(state) end

--- Disables the game's world horizon lods rendering (see `farlods.#dd`).
--- Using the island hopper natives might also affect this state.
--- @name DISABLE_WORLDHORIZON_RENDERING
--- @param state boolean On/Off
--- @return void (Type not found)
function DisableWorldhorizonRendering(state) end

--- Returns whether or not the player exists
--- @name DOES_PLAYER_EXIST
--- @param playerSrc string 
--- @return boolean
function DoesPlayerExist(playerSrc) end

--- @name DOES_BOAT_SINK_WHEN_WRECKED
--- @param vehicle Vehicle The target vehicle.
--- @return boolean
function DoesBoatSinkWhenWrecked(vehicle) end

--- This native is not implemented.
--- @name EXPERIMENTAL_SAVE_CLONE_CREATE
--- @param entity Entity 
--- @return string
function ExperimentalSaveCloneCreate(entity) end

--- Returns all rope handles. The data returned adheres to the following layout:
--- [ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
--- @name GET_ALL_ROPES
--- @return object (Type not found)
function GetAllRopes() end

--- @name EXECUTE_COMMAND
--- @param commandString string 
--- @return void (Type not found)
function ExecuteCommand(commandString) end

--- Destroys a DUI browser.
--- @name DESTROY_DUI
--- @param duiObject number The DUI browser handle.
--- @return void (Type not found)
function DestroyDui(duiObject) end

--- @name FIND_FIRST_VEHICLE
--- @param outEntity Entity 
--- @return number
function FindFirstVehicle(outEntity) end

--- @name GET_ENTITY_ROTATION_VELOCITY
--- @param entity Entity 
--- @return Vector3
function GetEntityRotationVelocity(entity) end

--- @name END_FIND_VEHICLE
--- @param findHandle number 
--- @return void (Type not found)
function EndFindVehicle(findHandle) end

--- This native is not implemented.
--- @name EXPERIMENTAL_LOAD_CLONE_CREATE
--- @param data string 
--- @param objectId number 
--- @param tree string 
--- @return Entity
function ExperimentalLoadCloneCreate(data, objectId, tree) end

--- Nonsynchronous operations will not wait for a disk/filesystem flush before returning from a write or delete call. They will be much faster than their synchronous counterparts (e.g., bulk operations), however, a system crash may lose the data to some recent operations.
--- This native ensures all `_NO_SYNC` operations are synchronized with the disk/filesystem.
--- @name FLUSH_RESOURCE_KVP
--- @return void (Type not found)
function FlushResourceKvp() end

--- A getter for [SET_AMBIENT_PED_RANGE_MULTIPLIER_THIS_FRAME](#\_0x0B919E1FB47CC4E0).
--- @name GET_AMBIENT_PED_RANGE_MULTIPLIER
--- @return number
function GetAmbientPedRangeMultiplier() end

--- Returns all object handles known to the server.
--- The data returned adheres to the following layout:
--- [127, 42, 13, 37]
--- @name GET_ALL_OBJECTS
--- @return object (Type not found)
function GetAllObjects() end

--- This native is not implemented.
--- @name EXPERIMENTAL_SAVE_CLONE_SYNC
--- @param entity Entity 
--- @return string
function ExperimentalSaveCloneSync(entity) end

--- A getter for [SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME](#\_0x90B6DA738A9A25DA).
--- @name GET_AMBIENT_VEHICLE_RANGE_MULTIPLIER
--- @return number
function GetAmbientVehicleRangeMultiplier() end

--- Returns all registered vehicle model names, including non-dlc vehicles and custom vehicles in no particular order.
--- **Example output**
--- 	["dubsta", "dubsta2", "dubsta3", "myverycoolcar", "sultan", "sultanrs", ...]
--- This native will not return vehicles that are unregistered (i.e from a resource being stopped) during runtime.
--- @name GET_ALL_VEHICLE_MODELS
--- @return object (Type not found)
function GetAllVehicleModels() end

--- @name FIND_FIRST_PICKUP
--- @param outEntity Entity 
--- @return number
function FindFirstPickup(outEntity) end

--- Returns all vehicle handles known to the server.
--- The data returned adheres to the following layout:
--- [127, 42, 13, 37]
--- @name GET_ALL_VEHICLES
--- @return object (Type not found)
function GetAllVehicles() end

--- Gets the current speed of the entity in meters per second.
--- To convert to MPH: speed * 2.236936
--- To convert to KPH: speed * 3.6
--- @name GET_ENTITY_SPEED
--- @param entity Entity The entity to get the speed of
--- @return number
function GetEntitySpeed(entity) end

--- @name FIND_FIRST_OBJECT
--- @param outEntity Entity 
--- @return number
function FindFirstObject(outEntity) end

--- This native is not implemented.
--- @name EXPERIMENTAL_LOAD_CLONE_SYNC
--- @param entity Entity 
--- @param data string 
--- @return void (Type not found)
function ExperimentalLoadCloneSync(entity, data) end

--- This native returns the index of a calming quad if the given point is inside its bounds.
--- @name GET_CALMING_QUAD_AT_COORDS
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @return number
function GetCalmingQuadAtCoords(x, y) end

--- @name FIND_NEXT_OBJECT
--- @param findHandle number 
--- @param outEntity Entity 
--- @return boolean
function FindNextObject(findHandle, outEntity) end

--- @name GET_CALMING_QUAD_COUNT
--- @return number
function GetCalmingQuadCount() end

--- @name GET_CALMING_QUAD_BOUNDS
--- @param waterQuad number The calming quad index
--- @param minX number The minX coordinate
--- @param minY number The minY coordinate
--- @param maxX number The maxX coordinate
--- @param maxY number The maxY coordinate
--- @return boolean
function GetCalmingQuadBounds(waterQuad, minX, minY, maxX, maxY) end

--- @name GET_CALMING_QUAD_DAMPENING
--- @param waterQuad number The calming quad index
--- @param calmingQuadDampening number 
--- @return boolean
function GetCalmingQuadDampening(waterQuad, calmingQuadDampening) end

--- @name FIND_FIRST_PED
--- @param outEntity Entity 
--- @return number
function FindFirstPed(outEntity) end

--- @name FIND_NEXT_VEHICLE
--- @param findHandle number 
--- @param outEntity Entity 
--- @return boolean
function FindNextVehicle(findHandle, outEntity) end

--- @name GET_INTERIOR_ROOM_FLAG
--- @param interiorId number The target interior.
--- @param roomIndex number Interior room index.
--- @return number
function GetInteriorRoomFlag(interiorId, roomIndex) end

--- Gets the routing bucket for the specified entity.
--- Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
--- @name GET_ENTITY_ROUTING_BUCKET
--- @param entity Entity The entity to get the routing bucket for.
--- @return number
function GetEntityRoutingBucket(entity) end

--- @name GET_ENTITY_COLLISION_DISABLED
--- @param entity Entity The target entity.
--- @return boolean
function GetEntityCollisionDisabled(entity) end

--- @name FIND_KVP
--- @param handle number The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
--- @return string
function FindKvp(handle) end

--- @name FIND_NEXT_PED
--- @param findHandle number 
--- @param outEntity Entity 
--- @return boolean
function FindNextPed(findHandle, outEntity) end

--- Can be used to get a console variable casted back to `int` (an integer value).
--- @name GET_CONVAR_INT
--- @param varName string The console variable to look up.
--- @param default_ number The default value to set if none is found (variable not set using [SET_CONVAR](#\_0x341B16D2), or not accessible).
--- @return number
function GetConvarInt(varName, default_) end

--- @name GET_ENTITY_SCRIPT
--- @param entity Entity 
--- @return string
function GetEntityScript(entity) end

--- Returns the name of the currently executing resource.
--- @name GET_CURRENT_RESOURCE_NAME
--- @return string
function GetCurrentResourceName() end

--- Gets the entity type (as an integer), which can be one of the following defined down below:
--- **The following entities will return type `1`:**
--- *   Ped
--- *   Player
--- *   Animal (Red Dead Redemption 2)
--- *   Horse (Red Dead Redemption 2)
--- **The following entities will return type `2`:**
--- *   Automobile
--- *   Bike
--- *   Boat
--- *   Heli
--- *   Plane
--- *   Submarine
--- *   Trailer
--- *   Train
--- *   DraftVeh (Red Dead Redemption 2)
--- **The following entities will return type `3`:**
--- *   Object
--- *   Door
--- *   Pickup
--- Otherwise, a value of `0` will be returned.
--- @name GET_ENTITY_TYPE
--- @param entity Entity The entity to get the type of.
--- @return number
function GetEntityType(entity) end

--- Returns the peer address of the remote game server that the user is currently connected to.
--- @name GET_CURRENT_SERVER_ENDPOINT
--- @return string
function GetCurrentServerEndpoint() end

--- Returns the current console output buffer.
--- @name GET_CONSOLE_BUFFER
--- @return string
function GetConsoleBuffer() end

--- Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
--- @name GET_CAM_MATRIX
--- @param camera Cam 
--- @param rightVector Vector3 
--- @param forwardVector Vector3 
--- @param upVector Vector3 
--- @param position Vector3 
--- @return void (Type not found)
function GetCamMatrix(camera, rightVector, forwardVector, upVector, position) end

--- @name FLAG_SERVER_AS_PRIVATE
--- @param private_ boolean 
--- @return void (Type not found)
function FlagServerAsPrivate(private_) end

--- Gets the entity that this entity is attached to.
--- @name GET_ENTITY_ATTACHED_TO
--- @param entity Entity The entity to check.
--- @return Entity
function GetEntityAttachedTo(entity) end

--- @name GET_INTERIOR_ROOM_EXTENTS
--- @param interiorId number The target interior.
--- @param roomIndex number Interior room index.
--- @param bbMinX number 
--- @param bbMinY number 
--- @param bbMinZ number 
--- @param bbMaxX number 
--- @param bbMaxY number 
--- @param bbMaxZ number 
--- @return void (Type not found)
function GetInteriorRoomExtents(interiorId, roomIndex, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end

--- Returns the current game being executed.
--- Possible values:
--- | Return value | Meaning                        |
--- | ------------ | ------------------------------ |
--- | `fxserver`   | Server-side code ('Duplicity') |
--- | `fivem`      | FiveM for GTA V                |
--- | `libertym`   | LibertyM for GTA IV            |
--- | `redm`       | RedM for Red Dead Redemption 2 |
--- @name GET_GAME_NAME
--- @return string
function GetGameName() end

--- @name FIND_NEXT_PICKUP
--- @param findHandle number 
--- @param outEntity Entity 
--- @return boolean
function FindNextPickup(findHandle, outEntity) end

--- Forces the game snow pass to render.
--- @name FORCE_SNOW_PASS
--- @param enabled boolean Whether or not to force rendering to use a snow pass.
--- @return void (Type not found)
function ForceSnowPass(enabled) end

--- Can be used to get a console variable of type `char*`, for example a string.
--- @name GET_CONVAR
--- @param varName string The console variable to look up.
--- @param default_ string The default value to set if none is found.
--- @return string
function GetConvar(varName, default_) end

--- @name GET_HELI_TAIL_ROTOR_HEALTH
--- @param vehicle Vehicle The target vehicle.
--- @return number
function GetHeliTailRotorHealth(vehicle) end

--- Returns a list of entity handles (script GUID) for all entities in the specified pool - the data returned is an array as
--- follows:
--- ```json
--- [ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
--- ### Supported pools
--- *   `CPed`: Peds (including animals) and players.
--- *   `CObject`: Objects (props), doors, and projectiles.
--- *   `CVehicle`: Vehicles.
--- *   `CPickup`: Pickups.
--- @name GET_GAME_POOL
--- @param poolName string The pool name to get a list of entities from.
--- @return object (Type not found)
function GetGamePool(poolName) end

--- @name GET_PED_MAX_HEALTH
--- @param ped Ped 
--- @return number
function GetPedMaxHealth(ped) end

--- Returns the NUI window handle for a specified DUI browser object.
--- @name GET_DUI_HANDLE
--- @param duiObject number The DUI browser handle.
--- @return string
function GetDuiHandle(duiObject) end

--- Returns the entity handle for the specified state bag name. For use with [ADD_STATE_BAG_CHANGE_HANDLER](?\_0x5BA35AAF).
--- @name GET_ENTITY_FROM_STATE_BAG_NAME
--- @param bagName string An internal state bag ID from the argument to a state bag change handler.
--- @return Entity
function GetEntityFromStateBagName(bagName) end

--- This native returns the currently used game's name.
--- @name GET_CURRENT_GAME_NAME
--- @return string
function GetCurrentGameName() end

--- Returns entity's archetype name, if available.
--- @name GET_ENTITY_ARCHETYPE_NAME
--- @param entity Entity An entity handle.
--- @return string
function GetEntityArchetypeName(entity) end

--- Returns the internal build number of the current game being executed.
--- Possible values:
--- *   FiveM
---     *   1604
---     *   2060
---     *   2189
---     *   2372
---     *   2545
---     *   2612
---     *   2699
---     *   2802
---     *   2944
--- *   RedM
---     *   1311
---     *   1355
---     *   1436
---     *   1491
--- *   LibertyM
---     *   43
--- *   FXServer
---     *   0
--- @name GET_GAME_BUILD_NUMBER
--- @return number
function GetGameBuildNumber() end

--- @name GET_PED_IN_VEHICLE_SEAT
--- @param vehicle Vehicle The target vehicle.
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
--- @return Entity
function GetPedInVehicleSeat(vehicle, seatIndex) end

--- @name GET_INTERIOR_ROOM_TIMECYCLE
--- @param interiorId number The target interior.
--- @param roomIndex number Interior room index.
--- @return number
function GetInteriorRoomTimecycle(interiorId, roomIndex) end

--- Currently it only works with peds.
--- @name GET_ENTITY_MAX_HEALTH
--- @param entity Entity 
--- @return number
function GetEntityMaxHealth(entity) end

--- @name GET_ENTITY_HEADING
--- @param entity Entity 
--- @return number
function GetEntityHeading(entity) end

--- @name GET_ENTITY_VELOCITY
--- @param entity Entity 
--- @return Vector3
function GetEntityVelocity(entity) end

--- @name GET_INTERIOR_ROOM_INDEX_BY_HASH
--- @param interiorId number The target interior.
--- @param roomHash number Interior room hash.
--- @return number
function GetInteriorRoomIndexByHash(interiorId, roomHash) end

--- @name GET_INTERIOR_ROTATION
--- @param interiorId number The target interior.
--- @param rotx number 
--- @param rotY number 
--- @param rotZ number 
--- @param rotW number 
--- @return void (Type not found)
function GetInteriorRotation(interiorId, rotx, rotY, rotZ, rotW) end

--- @name GET_INTERIOR_ROOM_NAME
--- @param interiorId number The target interior.
--- @param roomIndex number Interior room index.
--- @return string
function GetInteriorRoomName(interiorId, roomIndex) end

--- @name GET_HUD_COMPONENT_SIZE
--- @param id number The hud component id.
--- @return Vector3
function GetHudComponentSize(id) end

--- See [SET_SCRIPT_GFX_ALIGN](#\_0xB8A850F20A067EB6) for details about how gfx align works.
--- @name GET_HUD_COMPONENT_ALIGN
--- @param id number The hud component id.
--- @param horizontalAlign number 
--- @param verticalAlign number 
--- @return void (Type not found)
function GetHudComponentAlign(id, horizontalAlign, verticalAlign) end

--- @name GET_HOST_ID
--- @return string
function GetHostId() end

--- @name GET_INTERIOR_PORTAL_ENTITY_FLAG
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @param entityIndex number Portal entity index.
--- @return number
function GetInteriorPortalEntityFlag(interiorId, portalIndex, entityIndex) end

--- @name GET_ENTITY_MODEL
--- @param entity Entity 
--- @return Hash
function GetEntityModel(entity) end

--- @name GET_HUD_COMPONENT_NAME
--- @param id number The hud component id.
--- @return string
function GetHudComponentName(id) end

--- @name GET_HELI_MAIN_ROTOR_HEALTH
--- @param vehicle Vehicle The target vehicle.
--- @return number
function GetHeliMainRotorHealth(vehicle) end

--- This native converts the passed string to a hash.
--- @name GET_HASH_KEY
--- @param model string 
--- @return Hash
function GetHashKey(model) end

--- Gets the current coordinates for a specified entity. This native is used server side when using OneSync.
--- See [GET_ENTITY_COORDS](#\_0x3FEF770D40960D5A) for client side.
--- @name GET_ENTITY_COORDS
--- @param entity Entity The entity to get the coordinates from.
--- @return Vector3
function GetEntityCoords(entity) end

--- @name GET_INTERIOR_ENTITIES_EXTENTS
--- @param interiorId number The target interior.
--- @param bbMinX number 
--- @param bbMinY number 
--- @param bbMinZ number 
--- @param bbMaxX number 
--- @param bbMaxY number 
--- @param bbMaxZ number 
--- @return void (Type not found)
function GetInteriorEntitiesExtents(interiorId, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end

--- @name GET_INTERIOR_PORTAL_CORNER_POSITION
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @param cornerIndex number Portal's corner index.
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return void (Type not found)
function GetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex, posX, posY, posZ) end

--- @name GET_INTERIOR_PORTAL_ENTITY_COUNT
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @return number
function GetInteriorPortalEntityCount(interiorId, portalIndex) end

--- Gets the current game timer in milliseconds.
--- @name GET_GAME_TIMER
--- @return number
function GetGameTimer() end

--- @name GET_PLAYER_STAMINA
--- @param playerId Player The player index.
--- @return number
function GetPlayerStamina(playerId) end

--- @name GET_IS_VEHICLE_PRIMARY_COLOUR_CUSTOM
--- @param vehicle Vehicle 
--- @return boolean
function GetIsVehiclePrimaryColourCustom(vehicle) end

--- Gets a ped model's personality type.
--- @name GET_PED_MODEL_PERSONALITY
--- @param modelHash Hash Ped's model.
--- @return Hash
function GetPedModelPersonality(modelHash) end

--- Gets the script task command currently assigned to the ped.
--- @name GET_PED_SCRIPT_TASK_COMMAND
--- @param ped Ped The target ped.
--- @return Hash
function GetPedScriptTaskCommand(ped) end

--- This native gets an entity's population type.
--- @name GET_ENTITY_POPULATION_TYPE
--- @param entity Entity the entity to obtain the population type from
--- @return number
function GetEntityPopulationType(entity) end

--- @name GET_INVOKING_RESOURCE
--- @return string
function GetInvokingResource() end

--- @name GET_IS_VEHICLE_SECONDARY_COLOUR_CUSTOM
--- @param vehicle Vehicle 
--- @return boolean
function GetIsVehicleSecondaryColourCustom(vehicle) end

--- Only works for vehicle and peds
--- @name GET_ENTITY_HEALTH
--- @param entity Entity The entity to check the health of
--- @return number
function GetEntityHealth(entity) end

--- @name GET_NUI_CURSOR_POSITION
--- @param x number 
--- @param y number 
--- @return void (Type not found)
function GetNuiCursorPosition(x, y) end

--- Gets the stage of the peds scripted task.
--- @name GET_PED_SCRIPT_TASK_STAGE
--- @param ped Ped The target ped.
--- @return number
function GetPedScriptTaskStage(ped) end

--- @name GET_PLAYER_SERVER_ID
--- @param player Player 
--- @return number
function GetPlayerServerId(player) end

--- @name GET_PED_MOVEMENT_CLIPSET
--- @param ped Ped The target ped.
--- @return number
function GetPedMovementClipset(ped) end

--- @name GET_NUM_PLAYER_INDICES
--- @return number
function GetNumPlayerIndices() end

--- @name GET_NUM_PLAYER_IDENTIFIERS
--- @param playerSrc string 
--- @return number
function GetNumPlayerIdentifiers(playerSrc) end

--- @name GET_IS_VEHICLE_ENGINE_RUNNING
--- @param vehicle Vehicle 
--- @return boolean
function GetIsVehicleEngineRunning(vehicle) end

--- @name GET_INSTANCE_ID
--- @return number
function GetInstanceId() end

--- @name GET_NUM_PLAYER_TOKENS
--- @param playerSrc string 
--- @return number
function GetNumPlayerTokens(playerSrc) end

--- @name GET_INTERIOR_PORTAL_ENTITY_ROTATION
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @param entityIndex number Portal entity index.
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param rotW number 
--- @return void (Type not found)
function GetInteriorPortalEntityRotation(interiorId, portalIndex, entityIndex, rotX, rotY, rotZ, rotW) end

--- Returns the zoom level data by index from mapzoomdata.meta file.
--- @name GET_MAP_ZOOM_DATA_LEVEL
--- @param index number Zoom level index.
--- @param zoomScale number fZoomScale value.
--- @param zoomSpeed number fZoomSpeed value.
--- @param scrollSpeed number fScrollSpeed value.
--- @param tilesX number vTiles X.
--- @param tilesY number vTiles Y.
--- @return boolean
function GetMapZoomDataLevel(index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY) end

--- @name GET_INTERIOR_PORTAL_FLAG
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @return number
function GetInteriorPortalFlag(interiorId, portalIndex) end

--- @name GET_INTERIOR_PORTAL_ENTITY_ARCHETYPE
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @param entityIndex number Portal entity index.
--- @return number
function GetInteriorPortalEntityArchetype(interiorId, portalIndex, entityIndex) end

--- @name GET_PED_CAUSE_OF_DEATH
--- @param ped Ped 
--- @return Hash
function GetPedCauseOfDeath(ped) end

--- @name GET_INTERIOR_PORTAL_ROOM_TO
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @return number
function GetInteriorPortalRoomTo(interiorId, portalIndex) end

--- @name GET_TIMECYCLE_MODIFIER_INDEX_BY_NAME
--- @param modifierName string The timecycle modifier name.
--- @return number
function GetTimecycleModifierIndexByName(modifierName) end

--- @name GET_NETWORK_WALK_MODE
--- @return boolean
function GetNetworkWalkMode() end

--- @name GET_INTERIOR_PORTAL_COUNT
--- @param interiorId number The target interior.
--- @return number
function GetInteriorPortalCount(interiorId) end

--- @name GET_TIMECYCLE_MODIFIER_NAME_BY_INDEX
--- @param modifierIndex number The timecycle modifier index.
--- @return string
function GetTimecycleModifierNameByIndex(modifierIndex) end

--- @name GET_PED_STEALTH_MOVEMENT
--- @param ped Ped The target ped.
--- @return boolean
function GetPedStealthMovement(ped) end

--- A getter for [SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xEAE6DCC7EEE3DB1D).
--- @name GET_PARKED_VEHICLE_DENSITY_MULTIPLIER
--- @return number
function GetParkedVehicleDensityMultiplier() end

--- Get the last entity that damaged the ped. This native is used server side when using OneSync.
--- @name GET_PED_SOURCE_OF_DAMAGE
--- @param ped Ped The target ped
--- @return Entity
function GetPedSourceOfDamage(ped) end

--- @name GET_NUM_RESOURCES
--- @return number
function GetNumResources() end

--- @name GET_PLAYER_TEAM
--- @param playerSrc string The player handle
--- @return number
function GetPlayerTeam(playerSrc) end

--- Get the entity that killed the ped. This native is used server side when using OneSync.
--- @name GET_PED_SOURCE_OF_DEATH
--- @param ped Ped The target ped
--- @return Entity
function GetPedSourceOfDeath(ped) end

--- Gets a player's token. Tokens can be used to enhance banning logic, however are specific to a server.
--- @name GET_PLAYER_TOKEN
--- @param playerSrc string A player.
--- @param index number Index between 0 and GET_NUM_PLAYER_TOKENS.
--- @return string
function GetPlayerToken(playerSrc, index) end

--- Gets the current fake wanted level for a specified player. This native is used server side when using OneSync.
--- @name GET_PLAYER_FAKE_WANTED_LEVEL
--- @param playerSrc string The target player
--- @return number
function GetPlayerFakeWantedLevel(playerSrc) end

--- @name GET_PLAYER_FROM_INDEX
--- @param index number 
--- @return string
function GetPlayerFromIndex(index) end

--- A getter for [SET_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x95E3D6257B166CF2).
--- @name GET_PED_DENSITY_MULTIPLIER
--- @return number
function GetPedDensityMultiplier() end

--- @name GET_PLAYER_FROM_SERVER_ID
--- @param serverId number 
--- @return Player
function GetPlayerFromServerId(serverId) end

--- On the server this will return the players source, on the client it will return the player handle.
--- @name GET_PLAYER_FROM_STATE_BAG_NAME
--- @param bagName string An internal state bag ID from the argument to a state bag change handler.
--- @return number
function GetPlayerFromStateBagName(bagName) end

--- A getter for [SET_PLAYER_VEHICLE_DAMAGE_MODIFIER](#\_0xA50E117CDDF82F0C).
--- @name GET_PLAYER_VEHICLE_DAMAGE_MODIFIER
--- @param playerId Player The player index.
--- @return number
function GetPlayerVehicleDamageModifier(playerId) end

--- @name GET_LAST_PED_IN_VEHICLE_SEAT
--- @param vehicle Vehicle The target vehicle.
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
--- @return Entity
function GetLastPedInVehicleSeat(vehicle, seatIndex) end

--- See the client-side [GET_LANDING_GEAR_STATE](#\_0x9B0F3DCA3DB0F4CD) native for a description of landing gear states.
--- @name GET_LANDING_GEAR_STATE
--- @param vehicle Vehicle The vehicle to check.
--- @return number
function GetLandingGearState(vehicle) end

--- Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
--- See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
--- @name GET_NUM_RESOURCE_METADATA
--- @param resourceName string The resource name.
--- @param metadataKey string The key to look up in the resource manifest.
--- @return number
function GetNumResourceMetadata(resourceName, metadataKey) end

--- @name GET_PED_DESIRED_HEADING
--- @param ped Ped The target ped
--- @return number
function GetPedDesiredHeading(ped) end

--- @name GET_INTERIOR_POSITION
--- @param interiorId number The target interior.
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return void (Type not found)
function GetInteriorPosition(interiorId, posX, posY, posZ) end

--- Gets the type of a ped's specific task given an index of the CPedTaskSpecificDataNode nodes.
--- A ped will typically have a task at index 0, if a ped has multiple tasks at once they will be in the order 0, 1, 2, etc.
--- @name GET_PED_SPECIFIC_TASK_TYPE
--- @param ped Ped The target ped.
--- @param index number A zero-based index with a maximum value of 7.
--- @return number
function GetPedSpecificTaskType(ped, index) end

--- @name GET_INTERIOR_PORTAL_ROOM_FROM
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @return number
function GetInteriorPortalRoomFrom(interiorId, portalIndex) end

--- Gets the amount of time player has spent evading the cops.
--- Counter starts and increments only when cops are chasing the player.
--- If the player is evading, the timer will pause.
--- @name GET_PLAYER_TIME_IN_PURSUIT
--- @param playerSrc string The target player
--- @param lastPursuit boolean False = CurrentPursuit, True = LastPursuit
--- @return number
function GetPlayerTimeInPursuit(playerSrc, lastPursuit) end

--- @name GET_PLAYER_GUID
--- @param playerSrc string 
--- @return string
function GetPlayerGuid(playerSrc) end

--- @name GET_INTERIOR_ROOM_COUNT
--- @param interiorId number The target interior.
--- @return number
function GetInteriorRoomCount(interiorId) end

--- A getter for [SET_TIMECYCLE_MODIFIER_STRENGTH](#\_0x82E7FFCD5B2326B3).
--- @name GET_TIMECYCLE_MODIFIER_STRENGTH
--- @return number
function GetTimecycleModifierStrength() end

--- @name GET_INTERIOR_PORTAL_ENTITY_POSITION
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @param entityIndex number Portal entity index.
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return void (Type not found)
function GetInteriorPortalEntityPosition(interiorId, portalIndex, entityIndex, posX, posY, posZ) end

--- @name GET_PED_ARMOUR
--- @param ped Ped 
--- @return number
function GetPedArmour(ped) end

--- Get an identifier from a player by the type of the identifier.
--- @name GET_PLAYER_IDENTIFIER_BY_TYPE
--- @param playerSrc string The player to get the identifier for
--- @param identifierType string The string to match in an identifier, this can be `"license"` for example.
--- @return string
function GetPlayerIdentifierByType(playerSrc, identifierType) end

--- A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
--- @name GET_PED_HAIR_COLOR
--- @param ped Ped The target ped
--- @return number
function GetPedHairColor(ped) end

--- @name GET_PASSWORD_HASH
--- @param password string 
--- @return string
function GetPasswordHash(password) end

--- A getter for [\_SET_PED_EYE_COLOR](#\_0x50B56988B170AFDF). Returns -1 if fails to get.
--- @name GET_PED_EYE_COLOR
--- @param ped Ped The target ped
--- @return number
function GetPedEyeColor(ped) end

--- A getter for [SET_PLAYER_VEHICLE_DEFENSE_MODIFIER](#\_0x4C60E6EFDAFF2462).
--- @name GET_PLAYER_VEHICLE_DEFENSE_MODIFIER
--- @param playerId Player The player index.
--- @return number
function GetPlayerVehicleDefenseModifier(playerId) end

--- A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#\_0xCE07B9F7817AADA3).
--- @name GET_PLAYER_WEAPON_DAMAGE_MODIFIER
--- @param playerId Player The player index.
--- @return number
function GetPlayerWeaponDamageModifier(playerId) end

--- @name GET_PLAYER_INVINCIBLE
--- @param playerSrc string The player handle
--- @return boolean
function GetPlayerInvincible(playerSrc) end

--- @name GET_PLAYER_MAX_ARMOUR
--- @param playerSrc string The player handle
--- @return number
function GetPlayerMaxArmour(playerSrc) end

--- @name GET_RESOURCE_BY_FIND_INDEX
--- @param findIndex number The index of the resource (starting at 0)
--- @return string
function GetResourceByFindIndex(findIndex) end

--- Gets the current known coordinates for the specified player from cops perspective. This native is used server side when using OneSync.
--- @name GET_PLAYER_WANTED_CENTRE_POSITION
--- @param playerSrc string The target player
--- @return Vector3
function GetPlayerWantedCentrePosition(playerSrc) end

--- @name GET_VEHICLE_DASHBOARD_VACUUM
--- @return number
function GetVehicleDashboardVacuum() end

--- @name GET_PLAYER_ENDPOINT
--- @param playerSrc string 
--- @return string
function GetPlayerEndpoint(playerSrc) end

--- @name GET_PLAYER_MAX_HEALTH
--- @param playerSrc string The player handle
--- @return number
function GetPlayerMaxHealth(playerSrc) end

--- @name GET_TIMECYCLE_MODIFIER_VAR_COUNT
--- @param modifierName string The timecycle modifier name.
--- @return number
function GetTimecycleModifierVarCount(modifierName) end

--- Returns all commands that are registered in the command system.
--- The data returned adheres to the following layout:
--- [
--- {
--- "name": "cmdlist"
--- },
--- {
--- "name": "command1"
--- }
--- ]
--- @name GET_REGISTERED_COMMANDS
--- @return object (Type not found)
function GetRegisteredCommands() end

--- A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8).
--- @name GET_RESOURCE_KVP_INT
--- @param key string The key to fetch
--- @return number
function GetResourceKvpInt(key) end

--- A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938).
--- @name GET_RESOURCE_KVP_FLOAT
--- @param key string The key to fetch
--- @return number
function GetResourceKvpFloat(key) end

--- @name GET_PLAYER_IDENTIFIER
--- @param playerSrc string 
--- @param identifier number 
--- @return string
function GetPlayerIdentifier(playerSrc, identifier) end

--- @name GET_TIMECYCLE_MODIFIER_VAR_NAME_BY_INDEX
--- @param modifierName string The name of timecycle modifier.
--- @param modifierVarIndex number The index of a variable on the specified timecycle modifier.
--- @return string
function GetTimecycleModifierVarNameByIndex(modifierName, modifierVarIndex) end

--- A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
--- @name GET_PED_HAIR_HIGHLIGHT_COLOR
--- @param ped Ped The target ped
--- @return number
function GetPedHairHighlightColor(ped) end

--- A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
--- @name GET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER
--- @param playerId Player The player index.
--- @return number
function GetPlayerMeleeWeaponDamageModifier(playerId) end

--- A getter for [SET_PED_SWEAT](#\_0x27B0405F59637D1F).
--- @name GET_PED_SWEAT
--- @param ped Ped The target ped
--- @return number
function GetPedSweat(ped) end

--- Gets the current camera rotation for a specified player. This native is used server side when using OneSync.
--- @name GET_PLAYER_CAMERA_ROTATION
--- @param playerSrc string The player handle.
--- @return Vector3
function GetPlayerCameraRotation(playerSrc) end

--- @name GET_VEHICLE_DASHBOARD_WATER_TEMP
--- @return number
function GetVehicleDashboardWaterTemp() end

--- Returns given players wanted level server-side.
--- @name GET_PLAYER_WANTED_LEVEL
--- @param playerSrc string The target player
--- @return number
function GetPlayerWantedLevel(playerSrc) end

--- @name GET_TIMECYCLE_MODIFIER_VAR
--- @param modifierName string The name of timecycle modifier.
--- @param varName string The name of timecycle variable.
--- @param value1 number 
--- @param value2 number 
--- @return boolean
function GetTimecycleModifierVar(modifierName, varName, value1, value2) end

--- @name GET_PLAYER_LAST_MSG
--- @param playerSrc string 
--- @return number
function GetPlayerLastMsg(playerSrc) end

--- @name GET_TRAIN_CARRIAGE_ENGINE
--- @param train Vehicle The entity handle.
--- @return number
function GetTrainCarriageEngine(train) end

--- A getter for [\_SET_PED_FACE_FEATURE](#\_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
--- @name GET_PED_FACE_FEATURE
--- @param ped Ped The target ped
--- @param index number Face feature index
--- @return number
function GetPedFaceFeature(ped, index) end

--- A getter for [SET_PED_HEAD_OVERLAY](#\_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#\_0x497BF74A7B9CB952) natives.
--- @name GET_PED_HEAD_OVERLAY_DATA
--- @param ped Ped The target ped
--- @param index number Overlay index
--- @param overlayValue number Overlay value pointer
--- @param colourType number Colour type pointer
--- @param firstColour number First colour pointer
--- @param secondColour number Second colour pointer
--- @param overlayOpacity number Opacity pointer
--- @return boolean
function GetPedHeadOverlayData(ped, index, overlayValue, colourType, firstColour, secondColour, overlayOpacity) end

--- @name GET_PLAYER_PED
--- @param playerSrc string 
--- @return Entity
function GetPlayerPed(playerSrc) end

--- A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B).
--- @name GET_RESOURCE_KVP_STRING
--- @param key string The key to fetch
--- @return string
function GetResourceKvpString(key) end

--- @name GET_VEHICLE_ALARM_TIME_LEFT
--- @param vehicle Vehicle 
--- @return number
function GetVehicleAlarmTimeLeft(vehicle) end

--- Returns the amount of variables available to be applied on timecycle modifiers.
--- @name GET_TIMECYCLE_VAR_COUNT
--- @return number
function GetTimecycleVarCount() end

--- @name GET_ROPE_TIME_MULTIPLIER
--- @param rope number The rope to get the time multiplier for.
--- @return number
function GetRopeTimeMultiplier(rope) end

--- Returns a list of decorations applied to a ped.
--- The data returned adheres to the following layout:
--- [ [ collectionHash1, overlayHash1 ], ..., [c ollectionHashN, overlayHashN ] ]
--- This command will return undefined data if invoked on a remote player ped.
--- @name GET_PED_DECORATIONS
--- @param ped Ped The ped you want to retrieve data for.
--- @return object (Type not found)
function GetPedDecorations(ped) end

--- A getter for [SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xB3B3359379FE77D3).
--- Same as vehicle density multiplier.
--- @name GET_RANDOM_VEHICLE_DENSITY_MULTIPLIER
--- @return number
function GetRandomVehicleDensityMultiplier() end

--- Unlike [GET_PLAYER_INVINCIBLE](#\_0xB721981B2B939E07) this native gets both [SET_PLAYER_INVINCIBLE_KEEP_RAGDOLL_ENABLED](#\_0x6BC97F4F4BB3C04B) and [SET_PLAYER_INVINCIBLE](#\_0x239528EACDC3E7DE) invincibility state.
--- @name GET_PLAYER_INVINCIBLE_2
--- @param player Player The player id
--- @return boolean
function GetPlayerInvincible2(player) end

--- Gets the vehicle the specified Ped is/was in depending on bool value. This native is used server side when using OneSync.
--- @name GET_VEHICLE_PED_IS_IN
--- @param ped Ped The target ped
--- @param lastVehicle boolean False = CurrentVehicle, True = LastVehicle
--- @return Vehicle
function GetVehiclePedIsIn(ped, lastVehicle) end

--- A getter for [SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER](#\_0xAE540335B4ABC4E2).
--- @name GET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER
--- @param playerId Player The player index.
--- @return number
function GetPlayerMeleeWeaponDefenseModifier(playerId) end

--- @name GET_VEHICLE_PETROL_TANK_HEALTH
--- @param vehicle Vehicle 
--- @return number
function GetVehiclePetrolTankHealth(vehicle) end

--- @name GET_ROPE_UPDATE_ORDER
--- @param rope number The rope to get the update order for.
--- @return number
function GetRopeUpdateOrder(rope) end

--- Gets the metadata value at a specified key/index from a resource's manifest.
--- See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
--- @name GET_RESOURCE_METADATA
--- @param resourceName string The resource name.
--- @param metadataKey string The key in the resource manifest.
--- @param index number The value index, in a range from \[0..GET_NUM_RESOURCE_METDATA-1].
--- @return string
function GetResourceMetadata(resourceName, metadataKey, index) end

--- @name GET_VEHICLE_BODY_HEALTH
--- @param vehicle Vehicle 
--- @return number
function GetVehicleBodyHealth(vehicle) end

--- A getter for [SET_VEHICLE_CHEAT_POWER_INCREASE](#\_0xB59E4BD37AE292DB).
--- @name GET_VEHICLE_CHEAT_POWER_INCREASE
--- @param vehicle Vehicle The target vehicle.
--- @return number
function GetVehicleCheatPowerIncrease(vehicle) end

--- Returns the current state of the specified resource.
--- @name GET_RESOURCE_STATE
--- @param resourceName string The name of the resource.
--- @return string
function GetResourceState(resourceName) end

--- See [GET_TIMECYCLE_VAR_COUNT](#\_0x838B34D8).
--- @name GET_TIMECYCLE_VAR_DEFAULT_VALUE_BY_INDEX
--- @param varIndex number The index of variable.
--- @return number
function GetTimecycleVarDefaultValueByIndex(varIndex) end

--- Gets the ratio that a door is open for on a train.
--- @name GET_TRAIN_DOOR_OPEN_RATIO
--- @param train Vehicle The train to obtain the door ratio for.
--- @param doorIndex number Zero-based door index.
--- @return number
function GetTrainDoorOpenRatio(train, doorIndex) end

--- ```lua
--- enum_VehicleLockStatus = {
---     None = 0,
---     Locked = 2,
---     LockedForPlayer = 3,
---     StickPlayerInside = 4, -- Doesn't allow players to exit the vehicle with the exit vehicle key.
---     CanBeBrokenInto = 7, -- Can be broken into the car. If the glass is broken, the value will be set to 1
---     CanBeBrokenIntoPersist = 8, -- Can be broken into persist
---     CannotBeTriedToEnter = 10, -- Cannot be tried to enter (Nothing happens when you press the vehicle enter key).
--- }
--- It should be [noted](https://forum.cfx.re/t/4863241) that while the [client-side command](#\_0x25BC98A59C2EA962) and its
--- setter distinguish between states 0 (unset) and 1 (unlocked), the game will synchronize both as state 0, so the server-side
--- command will return only '0' if unlocked.
--- @name GET_VEHICLE_DOOR_LOCK_STATUS
--- @param vehicle Vehicle A vehicle handle.
--- @return number
function GetVehicleDoorLockStatus(vehicle) end

--- A getter for [SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x245A6883D966D537).
--- @name GET_VEHICLE_DENSITY_MULTIPLIER
--- @return number
function GetVehicleDensityMultiplier() end

--- Currently it only works when set to "all players".
--- @name GET_VEHICLE_DOORS_LOCKED_FOR_PLAYER
--- @param vehicle Vehicle 
--- @return number
function GetVehicleDoorsLockedForPlayer(vehicle) end

--- A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER\_2](#\_0xBCFDE9EDE4CF27DC).
--- @name GET_PLAYER_WEAPON_DEFENSE_MODIFIER_2
--- @param playerId Player The player index.
--- @return number
function GetPlayerWeaponDefenseModifier2(playerId) end

--- @name GET_PLAYER_PING
--- @param playerSrc string 
--- @return number
function GetPlayerPing(playerSrc) end

--- See [GET_TIMECYCLE_VAR_COUNT](#\_0x838B34D8).
--- @name GET_TIMECYCLE_VAR_NAME_BY_INDEX
--- @param varIndex number The index of variable.
--- @return string
function GetTimecycleVarNameByIndex(varIndex) end

--- Returns the physical on-disk path of the specified resource.
--- @name GET_RESOURCE_PATH
--- @param resourceName string The name of the resource.
--- @return string
function GetResourcePath(resourceName) end

--- A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#\_0x2D83BC011CA14A3C).
--- @name GET_PLAYER_WEAPON_DEFENSE_MODIFIER
--- @param playerId Player The player index.
--- @return number
function GetPlayerWeaponDefenseModifier(playerId) end

--- Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
--- @name GET_RUNTIME_TEXTURE_PITCH
--- @param tex number A handle to the runtime texture.
--- @return number
function GetRuntimeTexturePitch(tex) end

--- @name GET_PLAYER_MAX_STAMINA
--- @param playerId Player The player index.
--- @return number
function GetPlayerMaxStamina(playerId) end

--- @name GET_PLAYER_NAME
--- @param playerSrc string 
--- @return string
function GetPlayerName(playerSrc) end

--- Returns a hash of selected ped weapon.
--- @name GET_SELECTED_PED_WEAPON
--- @param ped Ped The target ped.
--- @return Hash
function GetSelectedPedWeapon(ped) end

--- Gets the routing bucket for the specified player.
--- Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
--- @name GET_PLAYER_ROUTING_BUCKET
--- @param playerSrc string The player to get the routing bucket for.
--- @return number
function GetPlayerRoutingBucket(playerSrc) end

--- Gets the door count for the specified train.
--- @name GET_TRAIN_DOOR_COUNT
--- @param train Vehicle The train to obtain the door count for.
--- @return number
function GetTrainDoorCount(train) end

--- ```cpp
--- enum eRopeFlags
--- {
---     DrawShadowEnabled = 2,
--- 	Breakable = 4,
--- 	RopeUnwindingFront = 8,
--- 	RopeWinding = 32
--- }
--- @name GET_ROPE_FLAGS
--- @param rope number The rope to get the flags for.
--- @return number
function GetRopeFlags(rope) end

--- @name GET_VEHICLE_ENGINE_TEMPERATURE
--- @param vehicle Vehicle 
--- @return number
function GetVehicleEngineTemperature(vehicle) end

--- @name GET_VEHICLE_CLUTCH
--- @param vehicle Vehicle 
--- @return number
function GetVehicleClutch(vehicle) end

--- @name GET_VEHICLE_DIRT_LEVEL
--- @param vehicle Vehicle 
--- @return number
function GetVehicleDirtLevel(vehicle) end

--- @name GET_ROPE_LENGTH_CHANGE_RATE
--- @param rope number The rope to get the length change rate for.
--- @return number
function GetRopeLengthChangeRate(rope) end

--- Gets the width of the specified runtime texture.
--- @name GET_RUNTIME_TEXTURE_WIDTH
--- @param tex number A handle to the runtime texture.
--- @return number
function GetRuntimeTextureWidth(tex) end

--- @name GET_VEHICLE_DASHBOARD_BOOST
--- @return number
function GetVehicleDashboardBoost() end

--- @name GET_VEHICLE_DOOR_STATUS
--- @param vehicle Vehicle 
--- @return number
function GetVehicleDoorStatus(vehicle) end

--- @name GET_WATER_QUAD_ALPHA
--- @param waterQuad number The water quad index
--- @param a0 number The a0 level
--- @param a1 number The a1 level
--- @param a2 number The a2 level
--- @param a3 number The a3 level
--- @return boolean
function GetWaterQuadAlpha(waterQuad, a0, a1, a2, a3) end

--- @name GET_VEHICLE_STEERING_SCALE
--- @param vehicle Vehicle 
--- @return number
function GetVehicleSteeringScale(vehicle) end

--- @name GET_VEHICLE_DASHBOARD_COLOUR
--- @param vehicle Vehicle 
--- @param color number 
--- @return void (Type not found)
function GetVehicleDashboardColour(vehicle, color) end

--- Returns vehicle xenon lights custom RGB color values. Do note this native doesn't return non-RGB colors that was set with [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07).
--- @name GET_VEHICLE_XENON_LIGHTS_CUSTOM_COLOR
--- @param vehicle Vehicle The vehicle handle.
--- @param red number Red color (0-255).
--- @param green number Green color (0-255).
--- @param blue number Blue color (0-255).
--- @return boolean
function GetVehicleXenonLightsCustomColor(vehicle, red, green, blue) end

--- @name GET_VEHICLE_HANDBRAKE
--- @param vehicle Vehicle 
--- @return boolean
function GetVehicleHandbrake(vehicle) end

--- @name GET_VEHICLE_CURRENT_GEAR
--- @param vehicle Vehicle 
--- @return number
function GetVehicleCurrentGear(vehicle) end

--- @name GET_VEHICLE_STEERING_ANGLE
--- @param vehicle Vehicle 
--- @return number
function GetVehicleSteeringAngle(vehicle) end

--- Returns the effective handling data of a vehicle as an integer value.
--- Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
--- @name GET_VEHICLE_HANDLING_INT
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
--- @param fieldName string The field name to get. These match the keys in `handling.meta`.
--- @return number
function GetVehicleHandlingInt(vehicle, class_, fieldName) end

--- @name GET_TRAIN_CARRIAGE_INDEX
--- @param train Vehicle The entity handle.
--- @return number
function GetTrainCarriageIndex(train) end

--- @name GET_TRAIN_CURRENT_TRACK_NODE
--- @param train Vehicle The target train.
--- @return number
function GetTrainCurrentTrackNode(train) end

--- Returns the value of a state bag key.
--- @name GET_STATE_BAG_VALUE
--- @param bagName string 
--- @param key string 
--- @return object (Type not found)
function GetStateBagValue(bagName, key) end

--- @name GET_VEHICLE_COLOURS
--- @param vehicle Vehicle 
--- @param colorPrimary number 
--- @param colorSecondary number 
--- @return void (Type not found)
function GetVehicleColours(vehicle, colorPrimary, colorSecondary) end

--- @name GET_VEHICLE_CURRENT_RPM
--- @param vehicle Vehicle 
--- @return number
function GetVehicleCurrentRpm(vehicle) end

--- A getter for [SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x7A556143A1C03898).
--- @name GET_SCENARIO_PED_DENSITY_MULTIPLIER
--- @return number
function GetScenarioPedDensityMultiplier() end

--- Gets a vehicle's multiplier used with a wheel's GET_VEHICLE_WHEEL_STEERING_ANGLE to determine the angle the wheel is rendered.
--- @name GET_VEHICLE_DRAWN_WHEEL_ANGLE_MULT
--- @param vehicle Vehicle 
--- @return number
function GetVehicleDrawnWheelAngleMult(vehicle) end

--- @name GET_VEHICLE_GRAVITY_AMOUNT
--- @param vehicle Vehicle 
--- @return number
function GetVehicleGravityAmount(vehicle) end

--- Gets the height of the specified runtime texture.
--- @name GET_RUNTIME_TEXTURE_HEIGHT
--- @param tex number A handle to the runtime texture.
--- @return number
function GetRuntimeTextureHeight(tex) end

--- Returns the type of the passed vehicle.
--- ### Vehicle types
--- *   automobile
--- *   bike
--- *   boat
--- *   heli
--- *   plane
--- *   submarine
--- *   trailer
--- *   train
--- @name GET_VEHICLE_TYPE
--- @param vehicle Vehicle The vehicle's entity handle.
--- @return string
function GetVehicleType(vehicle) end

--- @name GET_VEHICLE_ROOF_LIVERY
--- @param vehicle Vehicle 
--- @return number
function GetVehicleRoofLivery(vehicle) end

--- @name GET_VEHICLE_ENGINE_HEALTH
--- @param vehicle Vehicle 
--- @return number
function GetVehicleEngineHealth(vehicle) end

--- Returns the effective handling data of a vehicle as a floating-point value.
--- Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
--- @name GET_VEHICLE_HANDLING_FLOAT
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
--- @param fieldName string The field name to get. These match the keys in `handling.meta`.
--- @return number
function GetVehicleHandlingFloat(vehicle, class_, fieldName) end

--- Gets the state of the player vehicle's dashboard lights as a bit set
--- indicator_left = 1
--- indicator_right = 2
--- handbrakeLight = 4
--- engineLight = 8
--- ABSLight = 16
--- gasLight = 32
--- oilLight = 64
--- headlights = 128
--- highBeam = 256
--- batteryLight = 512
--- @name GET_VEHICLE_DASHBOARD_LIGHTS
--- @return number
function GetVehicleDashboardLights() end

--- @name GET_VEHICLE_RADIO_STATION_INDEX
--- @param vehicle Vehicle 
--- @return number
function GetVehicleRadioStationIndex(vehicle) end

--- @name GET_TIMECYCLE_MODIFIER_COUNT
--- @return number
function GetTimecycleModifierCount() end

--- @name GET_VEHICLE_LIGHT_MULTIPLIER
--- @param vehicle Vehicle 
--- @return number
function GetVehicleLightMultiplier(vehicle) end

--- List of known states:
--- 1: Not wheeling.
--- 65: Vehicle is ready to do wheelie (burnouting).
--- 129: Vehicle is doing wheelie.
--- @name GET_VEHICLE_WHEELIE_STATE
--- @param vehicle Vehicle Vehicle
--- @return number
function GetVehicleWheelieState(vehicle) end

--- @name GET_VEHICLE_FUEL_LEVEL
--- @param vehicle Vehicle 
--- @return number
function GetVehicleFuelLevel(vehicle) end

--- @name GET_VEHICLE_HEADLIGHTS_COLOUR
--- @param vehicle Vehicle 
--- @return number
function GetVehicleHeadlightsColour(vehicle) end

--- @name GET_VEHICLE_CUSTOM_SECONDARY_COLOUR
--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function GetVehicleCustomSecondaryColour(vehicle, r, g, b) end

--- @name GET_VEHICLE_DASHBOARD_RPM
--- @return number
function GetVehicleDashboardRpm() end

--- @name GET_VEHICLE_DASHBOARD_OIL_PRESSURE
--- @return number
function GetVehicleDashboardOilPressure() end

--- Gets the lock on state for the specified vehicle. See the client-side [GET_VEHICLE_HOMING_LOCKON_STATE](#\_0xE6B0E8CFC3633BF0) native for a description of lock on states.
--- @name GET_VEHICLE_HOMING_LOCKON_STATE
--- @param vehicle Vehicle The vehicle to check.
--- @return number
function GetVehicleHomingLockonState(vehicle) end

--- @name GET_VEHICLE_HIGH_GEAR
--- @param vehicle Vehicle 
--- @return number
function GetVehicleHighGear(vehicle) end

--- @name GET_VEHICLE_WHEEL_HEALTH
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetVehicleWheelHealth(vehicle, wheelIndex) end

--- Gets power being sent to a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @name GET_VEHICLE_WHEEL_POWER
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetVehicleWheelPower(vehicle, wheelIndex) end

--- Returns the effective handling data of a vehicle as a vector value.
--- Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
--- @name GET_VEHICLE_HANDLING_VECTOR
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
--- @param fieldName string The field name to get. These match the keys in `handling.meta`.
--- @return Vector3
function GetVehicleHandlingVector(vehicle, class_, fieldName) end

--- A getter for [MODIFY_VEHICLE_TOP_SPEED](#\_0x93A3996368C94158). Returns -1.0 if a modifier is not set.
--- @name GET_VEHICLE_TOP_SPEED_MODIFIER
--- @param vehicle Vehicle The target vehicle.
--- @return number
function GetVehicleTopSpeedModifier(vehicle) end

--- This alternative implementation of [`GetWaterQuadAtCoords`](#\_0x17321452) also checks the height of the water level.
--- @name GET_WATER_QUAD_AT_COORDS_3D
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The water level inside the water quad
--- @return number
function GetWaterQuadAtCoords3d(x, y, z) end

--- Gets whether the wheel is powered.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- This is a shortcut to a flag in GET_VEHICLE_WHEEL_FLAGS.
--- @name GET_VEHICLE_WHEEL_IS_POWERED
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return boolean
function GetVehicleWheelIsPowered(vehicle, wheelIndex) end

--- @name GET_WATER_QUAD_COUNT
--- @return number
function GetWaterQuadCount() end

--- @name GET_VEHICLE_TURBO_PRESSURE
--- @param vehicle Vehicle 
--- @return number
function GetVehicleTurboPressure(vehicle) end

--- @name GET_VEHICLE_THROTTLE_OFFSET
--- @param vehicle Vehicle 
--- @return number
function GetVehicleThrottleOffset(vehicle) end

--- This native returns the index of a water quad if the given point is inside its bounds.
--- *If you also want to check for water level, check out [`GetWaterQuadAtCoords_3d`](#\_0xF8E03DB8)*
--- @name GET_WATER_QUAD_AT_COORDS
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @return number
function GetWaterQuadAtCoords(x, y) end

--- Gets the flight nozzel position for the specified vehicle. See the client-side [\_GET_VEHICLE_FLIGHT_NOZZLE_POSITION](#\_0xDA62027C8BDB326E) native for usage examples.
--- @name GET_VEHICLE_FLIGHT_NOZZLE_POSITION
--- @param vehicle Vehicle The vehicle to check.
--- @return number
function GetVehicleFlightNozzlePosition(vehicle) end

--- @name GET_VEHICLE_LIGHTS_STATE
--- @param vehicle Vehicle 
--- @param lightsOn boolean 
--- @param highbeamsOn boolean 
--- @return boolean
function GetVehicleLightsState(vehicle, lightsOn, highbeamsOn) end

--- @name GET_WATER_QUAD_HAS_LIMITED_DEPTH
--- @param waterQuad number The water quad index
--- @param hasLimitedDepth number 
--- @return boolean
function GetWaterQuadHasLimitedDepth(waterQuad, hasLimitedDepth) end

--- @name GET_VEHICLE_CUSTOM_PRIMARY_COLOUR
--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function GetVehicleCustomPrimaryColour(vehicle, r, g, b) end

--- @name GET_VEHICLE_DASHBOARD_SPEED
--- @param vehicle Vehicle 
--- @return number
function GetVehicleDashboardSpeed(vehicle) end

--- *level is defined as "z" in water.xml*
--- @name GET_WATER_QUAD_LEVEL
--- @param waterQuad number The returned water quad level
--- @param waterQuadLevel number 
--- @return boolean
function GetWaterQuadLevel(waterQuad, waterQuadLevel) end

--- @name GET_VEHICLE_DASHBOARD_OIL_TEMP
--- @return number
function GetVehicleDashboardOilTemp() end

--- @name GET_VEHICLE_DASHBOARD_TEMP
--- @return number
function GetVehicleDashboardTemp() end

--- Gets the flags of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @name GET_VEHICLE_WHEEL_FLAGS
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetVehicleWheelFlags(vehicle, wheelIndex) end

--- @name GET_VEHICLE_WHEEL_RIM_COLLIDER_SIZE
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @param wheelIndex number Index of wheel, 0-3.
--- @return number
function GetVehicleWheelRimColliderSize(vehicle, wheelIndex) end

--- Gets the vehicle that is locked on to for the specified vehicle.
--- @name GET_VEHICLE_LOCK_ON_TARGET
--- @param vehicle Vehicle The vehicle to check.
--- @return Vehicle
function GetVehicleLockOnTarget(vehicle) end

--- Valid type definitions:
--- *   **0** Square
--- *   **1** Right triangle where the 90 degree angle is at maxX, minY
--- *   **2** Right triangle where the 90 degree angle is at minX, minY
--- *   **3** Right triangle where the 90 degree angle is at minX, maxY
--- *   **4** Right triangle where the 90 degree angle is at maxY, maxY
--- @name GET_WATER_QUAD_TYPE
--- @param waterQuad number The water quad index
--- @param waterType number 
--- @return boolean
function GetWaterQuadType(waterQuad, waterType) end

--- @name GET_VEHICLE_NUMBER_PLATE_TEXT
--- @param vehicle Vehicle 
--- @return string
function GetVehicleNumberPlateText(vehicle) end

--- @name GET_VEHICLE_DASHBOARD_FUEL
--- @return number
function GetVehicleDashboardFuel() end

--- @name GET_VEHICLE_NEXT_GEAR
--- @param vehicle Vehicle 
--- @return number
function GetVehicleNextGear(vehicle) end

--- @name GET_VEHICLE_EXTRA_COLOURS
--- @param vehicle Vehicle 
--- @param pearlescentColor number 
--- @param wheelColor number 
--- @return void (Type not found)
function GetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end

--- Gets the current suspension compression of a wheel.
--- Returns a positive value. 0 means the suspension is fully extended, the wheel is off the ground.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @name GET_VEHICLE_WHEEL_SUSPENSION_COMPRESSION
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetVehicleWheelSuspensionCompression(vehicle, wheelIndex) end

--- Gets speed of a wheel at the tyre.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @name GET_VEHICLE_WHEEL_SPEED
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetVehicleWheelSpeed(vehicle, wheelIndex) end

--- A getter for `CWeaponFallOffModifier` damage modifier value in a weapon component.
--- @name GET_WEAPON_COMPONENT_RANGE_DAMAGE_MODIFIER
--- @param componentHash Hash Weapon component name hash.
--- @return number
function GetWeaponComponentRangeDamageModifier(componentHash) end

--- Returns vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
--- Only works on non-default wheels (returns 0 in case of default wheels).
--- @name GET_VEHICLE_WHEEL_SIZE
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @return number
function GetVehicleWheelSize(vehicle) end

--- Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
--- @name GET_VEHICLE_INDICATOR_LIGHTS
--- @param vehicle Vehicle 
--- @return number
function GetVehicleIndicatorLights(vehicle) end

--- A getter for `CWeaponAccuracyModifier` in a weapon component.
--- @name GET_WEAPON_COMPONENT_ACCURACY_MODIFIER
--- @param componentHash Hash Weapon component name hash.
--- @return number
function GetWeaponComponentAccuracyModifier(componentHash) end

--- @name GET_WAVE_QUAD_DIRECTION
--- @param waveQuad number The wave quad index
--- @param directionX number The wave quad X direction
--- @param directionY number The wave quad Y direction
--- @return boolean
function GetWaveQuadDirection(waveQuad, directionX, directionY) end

--- A getter for `CameraHash` in a weapon scope component.
--- @name GET_WEAPON_COMPONENT_CAMERA_HASH
--- @param componentHash Hash Weapon component name hash.
--- @return number
function GetWeaponComponentCameraHash(componentHash) end

--- Gets the rotation speed of a wheel.
--- This is used internally to calcuate GET_VEHICLE_WHEEL_SPEED.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @name GET_VEHICLE_WHEEL_ROTATION_SPEED
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetVehicleWheelRotationSpeed(vehicle, wheelIndex) end

--- @name GET_WATER_QUAD_IS_INVISIBLE
--- @param waterQuad number The water quad index
--- @param isInvisible number 
--- @return boolean
function GetWaterQuadIsInvisible(waterQuad, isInvisible) end

--- A getter for [\_SET_WEAPON_DAMAGE_MODIFIER](#\_0x4757F00BC6323CFE).
--- @name GET_WEAPON_DAMAGE_MODIFIER
--- @param weaponHash Hash Weapon name hash.
--- @return number
function GetWeaponDamageModifier(weaponHash) end

--- @name GET_VEHICLE_OIL_LEVEL
--- @param vehicle Vehicle 
--- @return number
function GetVehicleOilLevel(vehicle) end

--- @name GET_WATER_QUAD_BOUNDS
--- @param waterQuad number The water quad index
--- @param minX number The minX coordinate
--- @param minY number The minY coordinate
--- @param maxX number The maxX coordinate
--- @param maxY number The maxY coordinate
--- @return boolean
function GetWaterQuadBounds(waterQuad, minX, minY, maxX, maxY) end

--- A getter for `ReticuleHash` in a weapon scope component.
--- @name GET_WEAPON_COMPONENT_RETICULE_HASH
--- @param componentHash Hash Weapon component name hash.
--- @return number
function GetWeaponComponentReticuleHash(componentHash) end

--- @name GET_WAVE_QUAD_AMPLITUDE
--- @param waveQuad number The wave quad index
--- @param waveQuadAmplitude number 
--- @return boolean
function GetWaveQuadAmplitude(waveQuad, waveQuadAmplitude) end

--- @name GET_WAVE_QUAD_BOUNDS
--- @param waveQuad number The wave quad index
--- @param minX number The minX coordinate
--- @param minY number The minY coordinate
--- @param maxX number The maxX coordinate
--- @param maxY number The maxY coordinate
--- @return boolean
function GetWaveQuadBounds(waveQuad, minX, minY, maxX, maxY) end

--- @name IS_BIGMAP_FULL
--- @return boolean
function IsBigmapFull() end

--- @name GET_VEHICLE_TYRE_SMOKE_COLOR
--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function GetVehicleTyreSmokeColor(vehicle, r, g, b) end

--- Gets brake pressure of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- Normal values around 1.0f when braking.
--- @name GET_VEHICLE_WHEEL_BRAKE_PRESSURE
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetVehicleWheelBrakePressure(vehicle, wheelIndex) end

--- @name GET_WATER_QUAD_NO_STENCIL
--- @param waterQuad number The water quad index
--- @param noStencil number 
--- @return boolean
function GetWaterQuadNoStencil(waterQuad, noStencil) end

--- A getter for `CWeaponFallOffModifier` range modifier value in a weapon component.
--- @name GET_WEAPON_COMPONENT_RANGE_MODIFIER
--- @param componentHash Hash Weapon component name hash.
--- @return number
function GetWeaponComponentRangeModifier(componentHash) end

--- Returns whether or not the specific minimap overlay has loaded.
--- @name HAS_MINIMAP_OVERLAY_LOADED
--- @param id number A minimap overlay ID.
--- @return boolean
function HasMinimapOverlayLoaded(id) end

--- @name GET_VEHICLE_NUMBER_PLATE_TEXT_INDEX
--- @param vehicle Vehicle 
--- @return number
function GetVehicleNumberPlateTextIndex(vehicle) end

--- Returns the offset of the specified wheel relative to the wheel's axle center.
--- @name GET_VEHICLE_WHEEL_X_OFFSET
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetVehicleWheelXOffset(vehicle, wheelIndex) end

--- @name GET_VEHICLE_WHEEL_TYPE
--- @param vehicle Vehicle 
--- @return number
function GetVehicleWheelType(vehicle) end

--- Gets the traction vector length of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @name GET_VEHICLE_WHEEL_TRACTION_VECTOR_LENGTH
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetVehicleWheelTractionVectorLength(vehicle, wheelIndex) end

--- @name HAS_VEHICLE_BEEN_DAMAGED_BY_BULLETS
--- @param vehicle Vehicle The target vehicle.
--- @return boolean
function HasVehicleBeenDamagedByBullets(vehicle) end

--- @name IS_BOAT_ANCHORED_AND_FROZEN
--- @param vehicle Vehicle The target vehicle.
--- @return boolean
function IsBoatAnchoredAndFrozen(vehicle) end

--- @name GET_VEHICLE_NUMBER_OF_WHEELS
--- @param vehicle Vehicle 
--- @return number
function GetVehicleNumberOfWheels(vehicle) end

--- @name GET_VEHICLE_INTERIOR_COLOUR
--- @param vehicle Vehicle 
--- @param color number 
--- @return void (Type not found)
function GetVehicleInteriorColour(vehicle, color) end

--- Gets steering angle of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @name GET_VEHICLE_WHEEL_STEERING_ANGLE
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetVehicleWheelSteeringAngle(vehicle, wheelIndex) end

--- @name IS_PRINCIPAL_ACE_ALLOWED
--- @param principal string 
--- @param object string 
--- @return boolean
function IsPrincipalAceAllowed(principal, object) end

--- A getter for the recoil shake amplitude of a weapon.
--- @name GET_WEAPON_RECOIL_SHAKE_AMPLITUDE
--- @param weaponHash Hash Weapon name hash.
--- @return number
function GetWeaponRecoilShakeAmplitude(weaponHash) end

--- @name IS_VEHICLE_INTERIOR_LIGHT_ON
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleInteriorLightOn(vehicle) end

--- A getter for `CWeaponDamageModifier` in a weapon component.
--- @name GET_WEAPON_COMPONENT_DAMAGE_MODIFIER
--- @param componentHash Hash Weapon component name hash.
--- @return number
function GetWeaponComponentDamageModifier(componentHash) end

--- This native returns the index of a wave quad if the given point is inside its bounds.
--- @name GET_WAVE_QUAD_AT_COORDS
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @return number
function GetWaveQuadAtCoords(x, y) end

--- @name GET_VEHICLE_WHEEL_TIRE_COLLIDER_SIZE
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @param wheelIndex number Index of wheel, 0-3.
--- @return number
function GetVehicleWheelTireColliderSize(vehicle, wheelIndex) end

--- Gets whether or not this is the CitizenFX server.
--- @name IS_DUPLICITY_VERSION
--- @return boolean
function IsDuplicityVersion() end

--- @name HAS_VEHICLE_BEEN_OWNED_BY_PLAYER
--- @param vehicle Vehicle 
--- @return boolean
function HasVehicleBeenOwnedByPlayer(vehicle) end

--- @name GET_VEHICLE_LIVERY
--- @param vehicle Vehicle 
--- @return number
function GetVehicleLivery(vehicle) end

--- Requests whether or not the commerce data for the specified player has loaded from Tebex.
--- @name IS_PLAYER_COMMERCE_INFO_LOADED_EXT
--- @param playerSrc string The player handle
--- @return boolean
function IsPlayerCommerceInfoLoadedExt(playerSrc) end

--- This will return true if the player is evading wanted level, meaning that the wanted level stars are blink.
--- Otherwise will return false.
--- 
--- If the player is not wanted, it simply returns false.
--- @name IS_PLAYER_EVADING_WANTED_LEVEL
--- @param playerSrc string The target player
--- @return boolean
function IsPlayerEvadingWantedLevel(playerSrc) end

--- Returns the current NUI focus state previously set with `SET_NUI_FOCUS`.
--- @name IS_NUI_FOCUSED
--- @return boolean
function IsNuiFocused() end

--- @name GET_VEHICLE_WHEEL_TIRE_COLLIDER_WIDTH
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @param wheelIndex number Index of wheel, 0-3.
--- @return number
function GetVehicleWheelTireColliderWidth(vehicle, wheelIndex) end

--- @name GET_VEHICLE_WINDOW_TINT
--- @param vehicle Vehicle 
--- @return number
function GetVehicleWindowTint(vehicle) end

--- @name IS_FLASH_LIGHT_ON
--- @param ped Ped The target ped.
--- @return boolean
function IsFlashLightOn(ped) end

--- @name GET_WAVE_QUAD_COUNT
--- @return number
function GetWaveQuadCount() end

--- @name IS_PED_HANDCUFFED
--- @param ped Ped The target ped.
--- @return boolean
function IsPedHandcuffed(ped) end

--- A getter for `ClipSize` in a weapon component.
--- @name GET_WEAPON_COMPONENT_CLIP_SIZE
--- @param componentHash Hash Weapon component name hash.
--- @return number
function GetWeaponComponentClipSize(componentHash) end

--- @name IS_PED_STRAFING
--- @param ped Ped The target ped.
--- @return boolean
function IsPedStrafing(ped) end

--- This native checks if the given entity is visible.
--- @name IS_ENTITY_VISIBLE
--- @param entity Entity 
--- @return boolean
function IsEntityVisible(entity) end

--- Requests whether or not the commerce data for the specified player has loaded.
--- @name IS_PLAYER_COMMERCE_INFO_LOADED
--- @param playerSrc string The player handle
--- @return boolean
function IsPlayerCommerceInfoLoaded(playerSrc) end

--- @name IS_VEHICLE_TYRE_BURST
--- @param vehicle Vehicle 
--- @param wheelID number 
--- @param completely boolean 
--- @return boolean
function IsVehicleTyreBurst(vehicle, wheelID, completely) end

--- @name IS_PLAYER_ACE_ALLOWED
--- @param playerSrc string 
--- @param object string 
--- @return boolean
function IsPlayerAceAllowed(playerSrc, object) end

--- @name HAS_ENTITY_BEEN_MARKED_AS_NO_LONGER_NEEDED
--- @param vehicle Vehicle 
--- @return boolean
function HasEntityBeenMarkedAsNoLongerNeeded(vehicle) end

--- Returns true if the minimap is currently expanded. False if it's the normal minimap state.
--- Use [`IsBigmapFull`](#\_0x66EE14B2) to check if the full map is currently revealed on the minimap.
--- @name IS_BIGMAP_ACTIVE
--- @return boolean
function IsBigmapActive() end

--- @name IS_ACE_ALLOWED
--- @param object string 
--- @return boolean
function IsAceAllowed(object) end

--- A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
--- @name IS_ENTITY_POSITION_FROZEN
--- @param entity Entity The entity to check for
--- @return boolean
function IsEntityPositionFrozen(entity) end

--- Clears channels from the target list for the specified Mumble voice target ID.
--- @name MUMBLE_CLEAR_VOICE_TARGET_CHANNELS
--- @param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
--- @return void (Type not found)
function MumbleClearVoiceTargetChannels(targetId) end

--- @name IS_VEHICLE_EXTRA_TURNED_ON
--- @param vehicle Vehicle 
--- @param extraId number 
--- @return boolean
function IsVehicleExtraTurnedOn(vehicle, extraId) end

--- Converts a screen coordinate into its relative world coordinate.
--- @name GET_WORLD_COORD_FROM_SCREEN_COORD
--- @param screenX number A screen horizontal axis coordinate (0.0 - 1.0).
--- @param screenY number A screen vertical axis coordinate (0.0 - 1.0).
--- @param worldVector Vector3 The world coord vector pointer.
--- @param normalVector Vector3 The screen normal vector pointer.
--- @return void (Type not found)
function GetWorldCoordFromScreenCoord(screenX, screenY, worldVector, normalVector) end

--- Requests the commerce data from Tebex for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
--- @name LOAD_PLAYER_COMMERCE_DATA_EXT
--- @param playerSrc string The player handle
--- @return void (Type not found)
function LoadPlayerCommerceDataExt(playerSrc) end

--- A getter for [SET_WEAPON_ANIMATION_OVERRIDE](\_0x1055AC3A667F09D9).
--- @name GET_WEAPON_ANIMATION_OVERRIDE
--- @param ped Ped The target ped.
--- @return Hash
function GetWeaponAnimationOverride(ped) end

--- Returns vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
--- Only works on non-default wheels (returns 0 in case of default wheels).
--- @name GET_VEHICLE_WHEEL_WIDTH
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @return number
function GetVehicleWheelWidth(vehicle) end

--- Sets the current input distance. The player will be able to talk to other players within this distance.
--- @name MUMBLE_SET_AUDIO_INPUT_DISTANCE
--- @param distance number The input distance.
--- @return void (Type not found)
function MumbleSetAudioInputDistance(distance) end

--- Removes the specified player from the user's voice targets.
--- Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER](#\_0x32C5355A)
--- @name MUMBLE_REMOVE_VOICE_TARGET_PLAYER
--- @param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
--- @param player Player The player index to remove from the target.
--- @return void (Type not found)
function MumbleRemoveVoiceTargetPlayer(targetId, player) end

--- Checks if the player is currently muted
--- @name MUMBLE_IS_PLAYER_MUTED
--- @param playerSrc number The player to get the mute state for
--- @return boolean
function MumbleIsPlayerMuted(playerSrc) end

--- @name GET_VEHICLE_WHEEL_SURFACE_MATERIAL
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @param wheelIndex number Index of wheel, 0-3.
--- @return number
function GetVehicleWheelSurfaceMaterial(vehicle, wheelIndex) end

--- @name IS_PED_USING_ACTION_MODE
--- @param ped Ped The target ped.
--- @return boolean
function IsPedUsingActionMode(ped) end

--- @name INVOKE_FUNCTION_REFERENCE
--- @param referenceIdentity string 
--- @param argsSerialized string 
--- @param argsLength number 
--- @param retvalLength number 
--- @return string
function InvokeFunctionReference(referenceIdentity, argsSerialized, argsLength, retvalLength) end

--- Clears the target list for the specified Mumble voice target ID.
--- @name MUMBLE_CLEAR_VOICE_TARGET
--- @param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
--- @return void (Type not found)
function MumbleClearVoiceTarget(targetId) end

--- @name IS_VEHICLE_PREVIOUSLY_OWNED_BY_PLAYER
--- @param vehicle Vehicle 
--- @return boolean
function IsVehiclePreviouslyOwnedByPlayer(vehicle) end

--- @name GET_VEHICLE_WHEEL_Y_ROTATION
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetVehicleWheelYRotation(vehicle, wheelIndex) end

--- Removes the specified player from the user's voice targets.
--- Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER_BY_SERVER_ID](#\_0x25F2B65F)
--- @name MUMBLE_REMOVE_VOICE_TARGET_PLAYER_BY_SERVER_ID
--- @param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
--- @param serverId number The player's server id to remove from the target.
--- @return void (Type not found)
function MumbleRemoveVoiceTargetPlayerByServerId(targetId, serverId) end

--- @name MUMBLE_CLEAR_VOICE_CHANNEL
--- @return void (Type not found)
function MumbleClearVoiceChannel() end

--- @name IS_PLAYER_USING_SUPER_JUMP
--- @param playerSrc string The player handle
--- @return boolean
function IsPlayerUsingSuperJump(playerSrc) end

--- @name IS_VEHICLE_ALARM_SET
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleAlarmSet(vehicle) end

--- @name IS_VEHICLE_ENGINE_STARTING
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleEngineStarting(vehicle) end

--- Stops listening to the specified channel.
--- @name MUMBLE_REMOVE_VOICE_CHANNEL_LISTEN
--- @param channel number A game voice channel ID.
--- @return void (Type not found)
function MumbleRemoveVoiceChannelListen(channel) end

--- See the client-side [IS_VEHICLE_WINDOW_INTACT](https://docs.fivem.net/natives/?\_0x46E571A0E20D01F1) for a window indexes list.
--- @name IS_VEHICLE_WINDOW_INTACT
--- @param vehicle Vehicle The target vehicle.
--- @param windowIndex number The window index.
--- @return boolean
function IsVehicleWindowIntact(vehicle, windowIndex) end

--- Requests the commerce data for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
--- @name LOAD_PLAYER_COMMERCE_DATA
--- @param playerSrc string The player handle
--- @return void (Type not found)
function LoadPlayerCommerceData(playerSrc) end

--- @name IS_VEHICLE_WANTED
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleWanted(vehicle) end

--- Returns whether or not a browser is created for a specified DUI browser object.
--- @name IS_DUI_AVAILABLE
--- @param duiObject number The DUI browser handle.
--- @return boolean
function IsDuiAvailable(duiObject) end

--- @name MUMBLE_IS_ACTIVE
--- @return boolean
function MumbleIsActive() end

--- @name NETWORK_GET_NETWORK_ID_FROM_ENTITY
--- @param entity Entity 
--- @return number
function NetworkGetNetworkIdFromEntity(entity) end

--- @name MUMBLE_IS_PLAYER_TALKING
--- @param player Player The target player.
--- @return boolean
function MumbleIsPlayerTalking(player) end

--- @name MUMBLE_SET_TALKER_PROXIMITY
--- @param value number Proximity value.
--- @return void (Type not found)
function MumbleSetTalkerProximity(value) end

--- @name PERFORM_HTTP_REQUEST_INTERNAL_EX
--- @param requestData object (Type not found) 
--- @return number
function PerformHttpRequestInternalEx(requestData) end

--- Adds the specified channel to the target list for the specified Mumble voice target ID.
--- @name MUMBLE_ADD_VOICE_TARGET_CHANNEL
--- @param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
--- @param channel number A game voice channel ID.
--- @return void (Type not found)
function MumbleAddVoiceTargetChannel(targetId, channel) end

--- @name IS_VEHICLE_NEEDS_TO_BE_HOTWIRED
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleNeedsToBeHotwired(vehicle) end

--- Define the xml in a resources fxmanifest, under the file(s) section.
--- @name LOAD_WATER_FROM_PATH
--- @param resourceName string The name of the resource containing your modified water definition
--- @param fileName string The name of the file
--- @return boolean
function LoadWaterFromPath(resourceName, fileName) end

--- Checks if keyboard input is enabled during NUI focus using `SET_NUI_FOCUS_KEEP_INPUT`.
--- @name IS_NUI_FOCUS_KEEPING_INPUT
--- @return boolean
function IsNuiFocusKeepingInput() end

--- @name IS_VEHICLE_SIREN_ON
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleSirenOn(vehicle) end

--- Scope exit for profiler.
--- @name PROFILER_EXIT_SCOPE
--- @return void (Type not found)
function ProfilerExitScope() end

--- Removes the specified voice channel from the user's voice targets.
--- Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_CHANNEL](#\_0x4D386C9E)
--- @name MUMBLE_REMOVE_VOICE_TARGET_CHANNEL
--- @param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
--- @param channel number The game voice channel ID to remove from the target.
--- @return void (Type not found)
function MumbleRemoveVoiceTargetChannel(targetId, channel) end

--- @name MUMBLE_SET_VOICE_CHANNEL
--- @param channel number A game voice channel ID.
--- @return void (Type not found)
function MumbleSetVoiceChannel(channel) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- Returns whether an asynchronous streaming file registration completed.
--- @name IS_STREAMING_FILE_READY
--- @param registerAs string The file name to check, for example `asset.ydr`.
--- @return boolean
function IsStreamingFileReady(registerAs) end

--- @name IS_PED_RAGDOLL
--- @param ped Ped The target ped.
--- @return boolean
function IsPedRagdoll(ped) end

--- Returns true if the profiler is active.
--- @name PROFILER_IS_RECORDING
--- @return boolean
function ProfilerIsRecording() end

--- Mutes or unmutes the specified player
--- @name MUMBLE_SET_PLAYER_MUTED
--- @param playerSrc number The player to set the mute state of
--- @param toggle boolean Whether to mute or unmute the player
--- @return void (Type not found)
function MumbleSetPlayerMuted(playerSrc, toggle) end

--- @name IS_BOAT_WRECKED
--- @param vehicle Vehicle The target vehicle.
--- @return boolean
function IsBoatWrecked(vehicle) end

--- This native checks if the given ped is a player.
--- @name IS_PED_A_PLAYER
--- @param ped Ped 
--- @return boolean
function IsPedAPlayer(ped) end

--- Returns the mumble voice channel from a player's server id.
--- @name MUMBLE_GET_VOICE_CHANNEL_FROM_SERVER_ID
--- @param serverId number The player's server id.
--- @return number
function MumbleGetVoiceChannelFromServerId(serverId) end

--- Registers a key mapping for the current resource.
--- See the related [cookbook post](https://cookbook.fivem.net/2020/01/06/using-the-new-console-key-bindings/) for more information.
--- Below you can find some examples on how to create these keybindings as well as the alternate keybinding syntax, which is preceded by `~!` to indicate that it's an alternate key.
--- @name REGISTER_KEY_MAPPING
--- @param commandString string The command to execute, and the identifier of the binding.
--- @param description string A description for in the settings menu.
--- @param defaultMapper string The [mapper ID](https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/) to use for the default binding, e.g. `keyboard`.
--- @param defaultParameter string The [IO parameter ID](https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/) to use for the default binding, e.g. `f3`.
--- @return void (Type not found)
function RegisterKeyMapping(commandString, description, defaultMapper, defaultParameter) end

--- Create a permanent voice channel.
--- @name MUMBLE_CREATE_CHANNEL
--- @param id number ID of the channel.
--- @return void (Type not found)
function MumbleCreateChannel(id) end

--- @name IS_PED_COMPONENT_VARIATION_GEN9_EXCLUSIVE
--- @param ped Ped The target ped.
--- @param componentId number The component id.
--- @param drawableId number The drawable id.
--- @return boolean
function IsPedComponentVariationGen9Exclusive(ped, componentId, drawableId) end

--- Starts listening to the specified channel, when available.
--- @name MUMBLE_ADD_VOICE_CHANNEL_LISTEN
--- @param channel number A game voice channel ID.
--- @return void (Type not found)
function MumbleAddVoiceChannelListen(channel) end

--- This native will return true if the user succesfully connected to the voice server.
--- If the user disabled the voice-chat setting it will return false.
--- @name MUMBLE_IS_CONNECTED
--- @return boolean
function MumbleIsConnected() end

--- Sets whether peds can stand on top of *all* vehicles without falling off.
--- Note this flag is not replicated automatically, you will have to manually do so.
--- @name OVERRIDE_PEDS_CAN_STAND_ON_TOP_FLAG
--- @param flag boolean true to override, false to use default game behavior.
--- @return void (Type not found)
function OverridePedsCanStandOnTopFlag(flag) end

--- Changes the Mumble server address to connect to, and reconnects to the new address.
--- @name MUMBLE_SET_SERVER_ADDRESS
--- @param address string The address of the mumble server.
--- @param port number The port of the mumble server.
--- @return void (Type not found)
function MumbleSetServerAddress(address, port) end

--- Returns the owner ID of the specified entity.
--- @name NETWORK_GET_ENTITY_OWNER
--- @param entity Entity The entity to get the owner for.
--- @return number
function NetworkGetEntityOwner(entity) end

--- Clears players from the target list for the specified Mumble voice target ID.
--- @name MUMBLE_CLEAR_VOICE_TARGET_PLAYERS
--- @param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
--- @return void (Type not found)
function MumbleClearVoiceTargetPlayers(targetId) end

--- @name NETWORK_GET_VOICE_PROXIMITY_OVERRIDE
--- @param playerSrc string The player handle
--- @return Vector3
function NetworkGetVoiceProximityOverride(playerSrc) end

--- Replaces the `popgroups` (CPopGroupList) meta file with the file in the specified path.
--- @name OVERRIDE_POP_GROUPS
--- @param path string The file path to load (`popgroups`, `@resource/popgroups`), or `null` to reload the default population groups file.
--- @return void (Type not found)
function OverridePopGroups(path) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.
--- Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
--- @name REGISTER_STREAMING_FILE_FROM_URL
--- @param registerAs string The file name to register as, for example `asset.ydr`.
--- @param url string The URL to fetch the asset from.
--- @return void (Type not found)
function RegisterStreamingFileFromUrl(registerAs, url) end

--- Sets the audio submix ID for a specified player using Mumble 'Native Audio' functionality.
--- @name MUMBLE_SET_SUBMIX_FOR_SERVER_ID
--- @param serverId number The player's server ID.
--- @param submixId number The submix ID.
--- @return void (Type not found)
function MumbleSetSubmixForServerId(serverId, submixId) end

--- Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance
--- will open the browser prompting further purchase details.
--- @name REQUEST_PLAYER_COMMERCE_SESSION
--- @param playerSrc string The player handle
--- @param skuId number The ID of the SKU.
--- @return void (Type not found)
function RequestPlayerCommerceSession(playerSrc, skuId) end

--- @name PERFORM_HTTP_REQUEST_INTERNAL
--- @param requestData string 
--- @param requestDataLength number 
--- @return number
function PerformHttpRequestInternal(requestData, requestDataLength) end

--- Use this native to disable noise suppression and high pass filters.
--- The possible intents for this are as follows (backticks are used to represent hashes):
--- | Index | Description |
--- |-|-|
--- | \`speech\` | Default intent |
--- | \`music\` | Disable noise suppression and high pass filter |
--- @name MUMBLE_SET_AUDIO_INPUT_INTENT
--- @param intentHash Hash The intent hash.
--- @return void (Type not found)
function MumbleSetAudioInputIntent(intentHash) end

--- Registers a specified font name for use with text draw commands.
--- @name REGISTER_FONT_ID
--- @param fontName string The name of the font in the GFx font library.
--- @return number
function RegisterFontId(fontName) end

--- Sets the current output distance. The player will be able to hear other players talking within this distance.
--- @name MUMBLE_SET_AUDIO_OUTPUT_DISTANCE
--- @param distance number The output distance.
--- @return void (Type not found)
function MumbleSetAudioOutputDistance(distance) end

--- Experimental natives, please do not use in a live environment.
--- @name REMOVE_REPLACE_TEXTURE
--- @param origTxd string 
--- @param origTxn string 
--- @return void (Type not found)
function RemoveReplaceTexture(origTxd, origTxn) end

--- Resets parameters which is used by the game for checking is ped needs to fly through windscreen after a crash to default values.
--- @name RESET_FLY_THROUGH_WINDSCREEN_PARAMS
--- @return void (Type not found)
function ResetFlyThroughWindscreenParams() end

--- Reads the contents of a text file in a specified resource.
--- If executed on the client, this file has to be included in `files` in the resource manifest.
--- Example: `local data = LoadResourceFile("devtools", "data.json")`
--- @name LOAD_RESOURCE_FILE
--- @param resourceName string The resource name.
--- @param fileName string The file in the resource.
--- @return string
function LoadResourceFile(resourceName, fileName) end

--- @name REGISTER_NUI_CALLBACK
--- @param callbackType string 
--- @param callback func (Type not found) 
--- @return void (Type not found)
function RegisterNuiCallback(callbackType, callback) end

--- Returns the first owner ID of the specified entity.
--- @name NETWORK_GET_FIRST_ENTITY_OWNER
--- @param entity Entity The entity to get the first owner for.
--- @return number
function NetworkGetFirstEntityOwner(entity) end

--- Adds the specified player to the target list for the specified Mumble voice target ID.
--- @name MUMBLE_ADD_VOICE_TARGET_PLAYER
--- @param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
--- @param player Player A game player index.
--- @return void (Type not found)
function MumbleAddVoiceTargetPlayer(targetId, player) end

--- @name REGISTER_RAW_NUI_CALLBACK
--- @param callbackType string 
--- @param callback func (Type not found) 
--- @return void (Type not found)
function RegisterRawNuiCallback(callbackType, callback) end

--- Sets the current Mumble voice target ID to broadcast voice to.
--- @name MUMBLE_SET_VOICE_TARGET
--- @param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive). 0 disables voice targets, and 31 is server loopback.
--- @return void (Type not found)
function MumbleSetVoiceTarget(targetId) end

--- @name MUMBLE_SET_ACTIVE
--- @param state boolean Voice chat state.
--- @return void (Type not found)
function MumbleSetActive(state) end

--- @name NETWORK_GET_ENTITY_FROM_NETWORK_ID
--- @param netId number 
--- @return Entity
function NetworkGetEntityFromNetworkId(netId) end

--- Adds the specified player to the target list for the specified Mumble voice target ID.
--- @name MUMBLE_ADD_VOICE_TARGET_PLAYER_BY_SERVER_ID
--- @param targetId number A Mumble voice target ID, ranging from 1..30 (inclusive).
--- @param serverId number The player's server id.
--- @return void (Type not found)
function MumbleAddVoiceTargetPlayerByServerId(targetId, serverId) end

--- Scope entry for profiler.
--- @name PROFILER_ENTER_SCOPE
--- @param scopeName string Scope name.
--- @return void (Type not found)
function ProfilerEnterScope(scopeName) end

--- Overrides the output volume for a particular player on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
--- Set to -1.0 to reset the Volume override.
--- @name MUMBLE_SET_VOLUME_OVERRIDE
--- @param player Player A game player index.
--- @param volume number The volume, ranging from 0.0 to 1.0 (or above).
--- @return void (Type not found)
function MumbleSetVolumeOverride(player, volume) end

--- @name MUMBLE_GET_TALKER_PROXIMITY
--- @return number
function MumbleGetTalkerProximity() end

--- Resets values from the zoom level data by index to defaults from mapzoomdata.meta.
--- @name RESET_MAP_ZOOM_DATA_LEVEL
--- @param index number Zoom level index.
--- @return void (Type not found)
function ResetMapZoomDataLevel(index) end

--- Removes a dry volume from the game session.
--- See CREATE_DRY_VOLUME for more info
--- @name REMOVE_DRY_VOLUME
--- @param handle number The handle of the dry volume that needs to be removed.
--- @return void (Type not found)
function RemoveDryVolume(handle) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- Registers a dynamic streaming asset from the server with the GTA streaming module system.
--- @name REGISTER_STREAMING_FILE_FROM_CACHE
--- @param resourceName string The resource to add the asset to.
--- @param fileName string A file name in the resource.
--- @param cacheString string The string returned from `REGISTER_RESOURCE_ASSET` on the server.
--- @return void (Type not found)
function RegisterStreamingFileFromCache(resourceName, fileName, cacheString) end

--- Overrides whether or not peds can stand on top of the specified vehicle.
--- Note this flag is not replicated automatically, you will have to manually do so.
--- @name OVERRIDE_VEHICLE_PEDS_CAN_STAND_ON_TOP_FLAG
--- @param vehicle Vehicle The vehicle.
--- @param can boolean Can they?
--- @return void (Type not found)
function OverrideVehiclePedsCanStandOnTopFlag(vehicle, can) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
--- @name REGISTER_STREAMING_FILE_FROM_KVS
--- @param kvsKey string The KVP key in the current resource to register as an asset.
--- @return void (Type not found)
function RegisterStreamingFileFromKvs(kvsKey) end

--- @name REGISTER_NUI_CALLBACK_TYPE
--- @param callbackType string 
--- @return void (Type not found)
function RegisterNuiCallbackType(callbackType) end

--- Writes the specified data to a file in the specified resource.
--- Using a length of `-1` will automatically detect the length assuming the data is a C string.
--- @name SAVE_RESOURCE_FILE
--- @param resourceName string The name of the resource.
--- @param fileName string The name of the file.
--- @param data string The data to write to the file.
--- @param dataLength number The length of the written data.
--- @return boolean
function SaveResourceFile(resourceName, fileName, data, dataLength) end

--- Restores an overridden ped model personality type to the default value.
--- @name RESET_PED_MODEL_PERSONALITY
--- @param modelHash Hash Ped's model.
--- @return void (Type not found)
function ResetPedModelPersonality(modelHash) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- Registers a set of entities with the game engine. These should match `CEntityDef` class information from the game.
--- At this time, this function **should not be used in a live environment**.
--- @name REGISTER_ENTITIES
--- @param factory func (Type not found) A function returning a list of entities.
--- @return void (Type not found)
function RegisterEntities(factory) end

--- Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
--- @name SEND_DUI_MESSAGE
--- @param duiObject number The DUI browser handle.
--- @param jsonString string The message, encoded as JSON.
--- @return void (Type not found)
function SendDuiMessage(duiObject, jsonString) end

--- Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.
--- Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#\_0x561C060B).
--- The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).
--- **Example result**:
--- ![](https://i.imgur.com/TaCnG09.png)
--- @name REGISTER_COMMAND
--- @param commandName string The command you want to register.
--- @param handler func (Type not found) A handler function that gets called whenever the command is executed.
--- @param restricted boolean If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.
--- @return void (Type not found)
function RegisterCommand(commandName, handler, restricted) end

--- Sets a floating-point parameter for a submix effect.
--- @name SET_AUDIO_SUBMIX_EFFECT_PARAM_FLOAT
--- @param submixId number The submix.
--- @param effectSlot number The effect slot for the submix. It is expected that the effect is set in this slot beforehand.
--- @param paramIndex number The parameter index for the effect.
--- @param paramValue number The parameter value to set.
--- @return void (Type not found)
function SetAudioSubmixEffectParamFloat(submixId, effectSlot, paramIndex, paramValue) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
--- @name REGISTER_RESOURCE_ASSET
--- @param resourceName string The resource to add the asset to.
--- @param fileName string A file name in the resource.
--- @return string
function RegisterResourceAsset(resourceName, fileName) end

--- @name SET_CURSOR_LOCATION
--- @param x number X position.
--- @param y number Y position.
--- @return boolean
function SetCursorLocation(x, y) end

--- Requests a resource file set with the specified name to be downloaded and mounted on top of the current resource.
--- Resource file sets are specified in `fxmanifest.lua` with the following syntax:
--- ```lua
--- file_set 'addon_ui' {
---     'ui/addon/index.html',
---     'ui/addon/**.js',
--- }
--- This command will trigger a script error if the request failed.
--- @name REQUEST_RESOURCE_FILE_SET
--- @param setName string The name of the file set as specified in `fxmanifest.lua`.
--- @return boolean
function RequestResourceFileSet(setName) end

--- Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
--- @name SEND_DUI_MOUSE_MOVE
--- @param duiObject number The DUI browser handle.
--- @param x number The mouse X position.
--- @param y number The mouse Y position.
--- @return void (Type not found)
function SendDuiMouseMove(duiObject, x, y) end

--- Adds a cooldown between instances of moving and then aiming.
--- Can be optionally used to hinder 'speedboosting'
--- To turn off, set value to 0
--- @name SET_AIM_COOLDOWN
--- @param value number Number of milliseconds between allowed aiming
--- @return void (Type not found)
function SetAimCooldown(value) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
--- @name REGISTER_ARCHETYPES
--- @param factory func (Type not found) A function returning a list of archetypes.
--- @return void (Type not found)
function RegisterArchetypes(factory) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- Removes a handler for changes to a state bag.
--- @name REMOVE_STATE_BAG_CHANGE_HANDLER
--- @param cookie number The cookie.
--- @return void (Type not found)
function RemoveStateBagChangeHandler(cookie) end

--- Resets the water to the games default water.xml.
--- @name RESET_WATER
--- @return void (Type not found)
function ResetWater() end

--- Registers a specified .gfx file as GFx font library.
--- The .gfx file has to be registered with the streamer already.
--- @name REGISTER_FONT_FILE
--- @param fileName string The name of the .gfx file, without extension.
--- @return void (Type not found)
function RegisterFontFile(fileName) end

--- An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
--- @name REGISTER_RESOURCE_AS_EVENT_HANDLER
--- @param eventName string An event name, or "\*" to disable HLL event filtering for this resource.
--- @return void (Type not found)
function RegisterResourceAsEventHandler(eventName) end

--- @name SET_CALMING_QUAD_BOUNDS
--- @param waterQuad number The calming quad index
--- @param minX number The minX coordinate
--- @param minY number The minY coordinate
--- @param maxX number The maxX coordinate
--- @param maxY number The maxY coordinate
--- @return boolean
function SetCalmingQuadBounds(waterQuad, minX, minY, maxX, maxY) end

--- Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
--- @name SEND_LOADING_SCREEN_MESSAGE
--- @param jsonString string The JSON-encoded message.
--- @return boolean
function SendLoadingScreenMessage(jsonString) end

--- Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
--- @name SEND_DUI_MOUSE_DOWN
--- @param duiObject number The DUI browser handle.
--- @param button string Either `'left'`, `'middle'` or `'right'`.
--- @return void (Type not found)
function SendDuiMouseDown(duiObject, button) end

--- @name REMOVE_TIMECYCLE_MODIFIER_VAR
--- @param modifierName string The name of timecycle modifier.
--- @param varName string The name of timecycle variable.
--- @return void (Type not found)
function RemoveTimecycleModifierVar(modifierName, varName) end

--- Registers a listener for console output messages.
--- @name REGISTER_CONSOLE_LISTENER
--- @param listener func (Type not found) A function of `(channel: string, message: string) => void`. The message might contain `\n`.
--- @return void (Type not found)
function RegisterConsoleListener(listener) end

--- @name SEND_NUI_MESSAGE
--- @param jsonString string 
--- @return boolean
function SendNuiMessage(jsonString) end

--- It overrides the default distance culling radius of an entity. Set to `0.0` to reset.
--- If you want to interact with an entity outside of your players' scopes set the radius to a huge number.
--- **WARNING**: Culling natives are deprecated and have known, [unfixable issues](https://forum.cfx.re/t/issue-with-culling-radius-and-server-side-entities/4900677/4)
--- @name SET_ENTITY_DISTANCE_CULLING_RADIUS
--- @param entity Entity The entity handle to override the distance culling radius.
--- @param radius number The new distance culling radius.
--- @return void (Type not found)
function SetEntityDistanceCullingRadius(entity, radius) end

--- This native sets the app id for the discord rich presence implementation.
--- @name SET_DISCORD_APP_ID
--- @param appId string A valid Discord API App Id, can be generated at https://discordapp.com/developers/applications/
--- @return void (Type not found)
function SetDiscordAppId(appId) end

--- @name SET_CONVAR_SERVER_INFO
--- @param varName string 
--- @param value string 
--- @return void (Type not found)
function SetConvarServerInfo(varName, value) end

--- @name REMOVE_TIMECYCLE_MODIFIER
--- @param modifierName string The timecycle modifier name.
--- @return void (Type not found)
function RemoveTimecycleModifier(modifierName) end

--- Overrides the output volume for a particular player with the specified server id and player name on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
--- @name MUMBLE_SET_VOLUME_OVERRIDE_BY_SERVER_ID
--- @param serverId number The player's server id.
--- @param volume number The volume, ranging from 0.0 to 1.0 (or above).
--- @return void (Type not found)
function MumbleSetVolumeOverrideByServerId(serverId, volume) end

--- Assigns a RadioFX effect to a submix effect slot.
--- The parameter values for this effect are as follows (backticks are used to represent hashes):
--- | Index | Type | Description |
--- |-|-|-|
--- | \`enabled\` | int | Enables or disables RadioFX on this DSP. |
--- | \`default\` | int | Sets default parameters for the RadioFX DSP and enables it. |
--- | \`freq_low\` | float |  |
--- | \`freq_hi\` | float |  |
--- | \`fudge\` | float |  |
--- | \`rm_mod_freq\` | float |  |
--- | \`rm_mix\` | float |  |
--- | \`o_freq_lo\` | float |  |
--- | \`o_freq_hi\` | float |  |
--- @name SET_AUDIO_SUBMIX_EFFECT_RADIO_FX
--- @param submixId number The submix.
--- @param effectSlot number The effect slot for the submix.
--- @return void (Type not found)
function SetAudioSubmixEffectRadioFx(submixId, effectSlot) end

--- Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
--- @name SEND_DUI_MOUSE_UP
--- @param duiObject number The DUI browser handle.
--- @param button string Either `'left'`, `'middle'` or `'right'`.
--- @return void (Type not found)
function SendDuiMouseUp(duiObject, button) end

--- This native sets the hover text of the image asset for the discord rich presence implementation.
--- @name SET_DISCORD_RICH_PRESENCE_ASSET_TEXT
--- @param text string Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.
--- @return void (Type not found)
function SetDiscordRichPresenceAssetText(text) end

--- @name SET_MAP_NAME
--- @param mapName string 
--- @return void (Type not found)
function SetMapName(mapName) end

--- This native sets the small image asset for the discord rich presence implementation.
--- @name SET_DISCORD_RICH_PRESENCE_ASSET_SMALL
--- @param assetName string The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
--- @return void (Type not found)
function SetDiscordRichPresenceAssetSmall(assetName) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
--- Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
--- @name SET_HANDLING_FIELD
--- @param vehicle string The vehicle class to set data for.
--- @param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
--- @param fieldName string The field name to set. These match the keys in `handling.meta`.
--- @param value  The value to set.
--- @return void (Type not found)
function SetHandlingField(vehicle, class_, fieldName, value) end

--- @name SET_HUD_COMPONENT_SIZE
--- @param id number The hud component id.
--- @param x number New size X.
--- @param y number New size Y.
--- @return void (Type not found)
function SetHudComponentSize(id, x, y) end

--- Sets whether or not ownership checks should be performed while trying to stow a carriable on a hunting wagon.
--- @name SET_IGNORE_VEHICLE_OWNERSHIP_FOR_STOWING
--- @param ignore boolean true to let the local player stow carriables on any hunting wagon, false to use the default behaviour.
--- @return void (Type not found)
function SetIgnoreVehicleOwnershipForStowing(ignore) end

--- This native sets the hover text of the small image asset for the discord rich presence implementation.
--- @name SET_DISCORD_RICH_PRESENCE_ASSET_SMALL_TEXT
--- @param text string Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.
--- @return void (Type not found)
function SetDiscordRichPresenceAssetSmallText(text) end

--- Resets whether or not peds can stand on top of the specified vehicle.
--- Note this flag is not replicated automatically, you will have to manually do so.
--- @name RESET_VEHICLE_PEDS_CAN_STAND_ON_TOP_FLAG
--- @param vehicle Vehicle The vehicle.
--- @return void (Type not found)
function ResetVehiclePedsCanStandOnTopFlag(vehicle) end

--- This native sets the image asset for the discord rich presence implementation.
--- @name SET_DISCORD_RICH_PRESENCE_ASSET
--- @param assetName string The name of a valid asset registered on Discordapp's developer dashboard. note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
--- @return void (Type not found)
function SetDiscordRichPresenceAsset(assetName) end

--- Sets the default number plate text pattern for vehicles seen on the local client with the specified plate index as their *default* index (`plateProbabilities` from carvariations).
--- For consistency, this should be used with the same value on all clients, since vehicles *without* custom text will use a seeded random number generator with this pattern to determine the default plate text.
--- The default value is `11AAA111`, and using this or a NULL string will revert to the default game RNG.
--- ### Pattern string format
--- *   `1` will lead to a random number from 0-9.
--- *   `A` will lead to a random letter from A-Z.
--- *   `.` will lead to a random letter *or* number, with 50% probability of being either.
--- *   `^1` will lead to a literal `1` being emitted.
--- *   `^A` will lead to a literal `A` being emitted.
--- *   Any other character will lead to said character being emitted.
--- *   A string shorter than 8 characters will be padded on the right.
--- @name SET_DEFAULT_VEHICLE_NUMBER_PLATE_TEXT_PATTERN
--- @param plateIndex number A plate index, or `-1` to set a default for any indices that do not have a specific value.
--- @param pattern string A number plate pattern string, or a null value to reset to default.
--- @return void (Type not found)
function SetDefaultVehicleNumberPlateTextPattern(plateIndex, pattern) end

--- @name SET_CALMING_QUAD_DAMPENING
--- @param calmingQuad number The calming quad
--- @param dampening number The dampening value
--- @return boolean
function SetCalmingQuadDampening(calmingQuad, dampening) end

--- Registers a build task factory for resources.
--- The function should return an object (msgpack map) with the following fields:
--- {
--- // returns whether the specific resource should be built
--- shouldBuild = func(resourceName: string): bool,
--- 
--- // asynchronously start building the specific resource.
--- // call cb when completed
--- build = func(resourceName: string, cb: func(success: bool, status: string): void): void
--- }
--- @name REGISTER_RESOURCE_BUILD_TASK_FACTORY
--- @param factoryId string The identifier for the build task.
--- @param factoryFn func (Type not found) The factory function.
--- @return void (Type not found)
function RegisterResourceBuildTaskFactory(factoryId, factoryFn) end

--- Sets some in-game parameters which is used for checks is ped needs to fly through windscreen after a crash.
--- @name SET_FLY_THROUGH_WINDSCREEN_PARAMS
--- @param vehMinSpeed number Vehicle minimum speed (default 35.0).
--- @param unkMinSpeed number Unknown minimum speed (default 40.0).
--- @param unkModifier number Unknown modifier (default 17.0).
--- @param minDamage number Minimum damage (default 2000.0).
--- @return boolean
function SetFlyThroughWindscreenParams(vehMinSpeed, unkMinSpeed, unkModifier, minDamage) end

--- @name SET_CONVAR
--- @param varName string 
--- @param value string 
--- @return void (Type not found)
function SetConvar(varName, value) end

--- @name SET_INTERIOR_ROOM_EXTENTS
--- @param interiorId number The target interior.
--- @param roomIndex number Interior room index.
--- @param bbMinX number 
--- @param bbMinY number 
--- @param bbMinZ number 
--- @param bbMaxX number 
--- @param bbMaxY number 
--- @param bbMaxZ number 
--- @return void (Type not found)
function SetInteriorRoomExtents(interiorId, roomIndex, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
--- Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
--- @name SET_HANDLING_VECTOR
--- @param vehicle string The vehicle class to set data for.
--- @param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
--- @param fieldName string The field name to set. These match the keys in `handling.meta`.
--- @param value Vector3 The Vector3 value to set.
--- @return void (Type not found)
function SetHandlingVector(vehicle, class_, fieldName, value) end

--- Used to replicate a server variable onto clients.
--- @name SET_CONVAR_REPLICATED
--- @param varName string The console variable name.
--- @param value string The value to set for the given console variable.
--- @return void (Type not found)
function SetConvarReplicated(varName, value) end

--- See [SET_SCRIPT_GFX_ALIGN](#\_0xB8A850F20A067EB6) for details about how gfx align works.
--- @name SET_HUD_COMPONENT_ALIGN
--- @param id number The hud component id.
--- @param horizontalAlign number The horizontal alignment.
--- @param verticalAlign number The vertical alignment.
--- @return void (Type not found)
function SetHudComponentAlign(id, horizontalAlign, verticalAlign) end

--- It allows to flag an entity to ignore the request control filter policy.
--- @name SET_ENTITY_IGNORE_REQUEST_CONTROL_FILTER
--- @param entity Entity The entity handle to ignore the request control filter.
--- @param ignore boolean Define if the entity ignores the request control filter policy.
--- @return void (Type not found)
function SetEntityIgnoreRequestControlFilter(entity, ignore) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
--- Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
--- @name SET_HANDLING_FLOAT
--- @param vehicle string The vehicle class to set data for.
--- @param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
--- @param fieldName string The field name to set. These match the keys in `handling.meta`.
--- @param value number The floating-point value to set.
--- @return void (Type not found)
function SetHandlingFloat(vehicle, class_, fieldName, value) end

--- Sets a clickable button to be displayed in a player's Discord rich presence.
--- @name SET_DISCORD_RICH_PRESENCE_ACTION
--- @param index number The button index, either 0 or 1.
--- @param label string The text to display on the button.
--- @param url string The URL to open when clicking the button. This has to start with `fivem://connect/` or `https://`.
--- @return void (Type not found)
function SetDiscordRichPresenceAction(index, label, url) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
--- @name SET_HANDLING_INT
--- @param vehicle string The vehicle class to set data for.
--- @param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
--- @param fieldName string The field name to set. These match the keys in `handling.meta`.
--- @param value number The integer value to set.
--- @return void (Type not found)
function SetHandlingInt(vehicle, class_, fieldName, value) end

--- @name SET_INTERIOR_PORTAL_CORNER_POSITION
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @param cornerIndex number Interior corner index.
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return void (Type not found)
function SetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex, posX, posY, posZ) end

--- Sets whether or not `SHUTDOWN_LOADING_SCREEN` automatically shuts down the NUI frame for the loading screen. If this is enabled,
--- you will have to manually invoke `SHUTDOWN_LOADING_SCREEN_NUI` whenever you want to hide the NUI loading screen.
--- @name SET_MANUAL_SHUTDOWN_LOADING_SCREEN_NUI
--- @param manualShutdown boolean TRUE to manually shut down the loading screen NUI.
--- @return void (Type not found)
function SetManualShutdownLoadingScreenNui(manualShutdown) end

--- Schedules the specified resource to run a tick as soon as possible, bypassing the server's fixed tick rate.
--- @name SCHEDULE_RESOURCE_TICK
--- @param resourceName string The resource to tick.
--- @return void (Type not found)
function ScheduleResourceTick(resourceName) end

--- Injects a 'mouse wheel' event for a DUI object.
--- @name SEND_DUI_MOUSE_WHEEL
--- @param duiObject number The DUI browser handle.
--- @param deltaY number The wheel Y delta.
--- @param deltaX number The wheel X delta.
--- @return void (Type not found)
function SendDuiMouseWheel(duiObject, deltaY, deltaX) end

--- Sets an integer parameter for a submix effect.
--- @name SET_AUDIO_SUBMIX_EFFECT_PARAM_INT
--- @param submixId number The submix.
--- @param effectSlot number The effect slot for the submix. It is expected that the effect is set in this slot beforehand.
--- @param paramIndex number The parameter index for the effect.
--- @param paramValue number The parameter value to set.
--- @return void (Type not found)
function SetAudioSubmixEffectParamInt(submixId, effectSlot, paramIndex, paramValue) end

--- Navigates the specified DUI browser to a different URL.
--- @name SET_DUI_URL
--- @param duiObject number The DUI browser handle.
--- @param url string The new URL.
--- @return void (Type not found)
function SetDuiUrl(duiObject, url) end

--- Sets the routing bucket for the specified player.
--- Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
--- @name SET_PLAYER_ROUTING_BUCKET
--- @param playerSrc string The player to set the routing bucket for.
--- @param bucket number The bucket ID.
--- @return void (Type not found)
function SetPlayerRoutingBucket(playerSrc, bucket) end

--- Overrides a ped model personality type.
--- @name SET_PED_MODEL_PERSONALITY
--- @param modelHash Hash Ped's model.
--- @param personalityHash Hash Personality hash.
--- @return void (Type not found)
function SetPedModelPersonality(modelHash, personalityHash) end

--- @name SET_MODEL_HEADLIGHT_CONFIGURATION
--- @param modelHash Hash 
--- @param ratePerSecond number 
--- @param headlightRotation number 
--- @param invertRotation boolean 
--- @return void (Type not found)
function SetModelHeadlightConfiguration(modelHash, ratePerSecond, headlightRotation, invertRotation) end

--- @name SET_NUI_FOCUS
--- @param hasFocus boolean 
--- @param hasCursor boolean 
--- @return void (Type not found)
function SetNuiFocus(hasFocus, hasCursor) end

--- Overrides how many real ms are equal to one game minute.
--- A setter for [`GetMillisecondsPerGameMinute`](#\_0x2F8B4D1C595B11DB).
--- @name SET_MILLISECONDS_PER_GAME_MINUTE
--- @param value number Milliseconds.
--- @return void (Type not found)
function SetMillisecondsPerGameMinute(value) end

--- @name SET_INTERIOR_PORTAL_ENTITY_FLAG
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @param entityIndex number Portal entity index.
--- @param flag number New flag value.
--- @return void (Type not found)
function SetInteriorPortalEntityFlag(interiorId, portalIndex, entityIndex, flag) end

--- Sets the culling radius for the specified player.
--- Set to `0.0` to reset.
--- **WARNING**: Culling natives are deprecated and have known, [unfixable issues](https://forum.cfx.re/t/issue-with-culling-radius-and-server-side-entities/4900677/4)
--- @name SET_PLAYER_CULLING_RADIUS
--- @param playerSrc string The player to set the culling radius for.
--- @param radius number The radius.
--- @return void (Type not found)
function SetPlayerCullingRadius(playerSrc, radius) end

--- @name SET_INTERIOR_ROOM_FLAG
--- @param interiorId number The target interior.
--- @param roomIndex number Interior room index.
--- @param flag number New flag value.
--- @return void (Type not found)
function SetInteriorRoomFlag(interiorId, roomIndex, flag) end

--- Sets the display info for a minimap overlay.
--- @name SET_MINIMAP_OVERLAY_DISPLAY
--- @param miniMap number The minimap overlay ID.
--- @param x number The X position for the overlay. This is equivalent to a game coordinate X.
--- @param y number The Y position for the overlay. This is equivalent to a game coordinate Y, except that it's inverted (gfxY = -gameY).
--- @param xScale number The X scale for the overlay. This is equivalent to the Flash \_xscale property, therefore 100 = 100%.
--- @param yScale number The Y scale for the overlay. This is equivalent to the Flash \_yscale property.
--- @param alpha number The alpha value for the overlay. This is equivalent to the Flash \_alpha property, therefore 100 = 100%.
--- @return void (Type not found)
function SetMinimapOverlayDisplay(miniMap, x, y, xScale, yScale, alpha) end

--- A setter for [GET_RESOURCE_KVP_FLOAT](#\_0x35BDCEEA).
--- @name SET_RESOURCE_KVP_FLOAT
--- @param key string The key to set
--- @param value number The value to write
--- @return void (Type not found)
function SetResourceKvpFloat(key, value) end

--- Nonsynchronous [SET_RESOURCE_KVP](#\_0x21C7A35B) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
--- @name SET_RESOURCE_KVP_NO_SYNC
--- @param key string The key to set
--- @param value string The value to write
--- @return void (Type not found)
function SetResourceKvpNoSync(key, value) end

--- Nonsynchronous [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
--- @name SET_RESOURCE_KVP_INT_NO_SYNC
--- @param key string The key to set
--- @param value number The value to write
--- @return void (Type not found)
function SetResourceKvpIntNoSync(key, value) end

--- Set's the ropes length change rate, which is the speed that rope should wind if started.
--- @name SET_ROPE_LENGTH_CHANGE_RATE
--- @param rope number The rope to set the length change rate for.
--- @param lengthChangeRate number The rope's new length change rate.
--- @return void (Type not found)
function SetRopeLengthChangeRate(rope, lengthChangeRate) end

--- @name SET_INTERIOR_ROOM_TIMECYCLE
--- @param interiorId number The target interior.
--- @param roomIndex number Interior room index.
--- @param timecycleHash number Timecycle hash.
--- @return void (Type not found)
function SetInteriorRoomTimecycle(interiorId, roomIndex, timecycleHash) end

--- @name SET_PLAYER_STAMINA
--- @param playerId Player The player index
--- @param stamina number The value you want to set
--- @return boolean
function SetPlayerStamina(playerId, stamina) end

--- Sets the volumes for the sound channels in a submix effect.
--- Values can be between 0.0 and 1.0.
--- Channel 5 and channel 6 are not used in voice chat but are believed to be center and LFE channels.
--- Output slot starts at 0 for the first ADD_AUDIO_SUBMIX_OUTPUT call then incremented by 1 on each subsequent call.
--- @name SET_AUDIO_SUBMIX_OUTPUT_VOLUMES
--- @param submixId number The submix.
--- @param outputSlot number The output slot index.
--- @param frontLeftVolume number The volume for the front left channel.
--- @param frontRightVolume number The volume for the front right channel.
--- @param rearLeftVolume number The volume for the rear left channel.
--- @param rearRightVolume number The volume for the rear right channel.
--- @param channel5Volume number The volume for channel 5.
--- @param channel6Volume number The volume for channel 6.
--- @return void (Type not found)
function SetAudioSubmixOutputVolumes(submixId, outputSlot, frontLeftVolume, frontRightVolume, rearLeftVolume, rearRightVolume, channel5Volume, channel6Volume) end

--- Sets the handler for HTTP requests made to the executing resource.
--- Example request URL: `http://localhost:30120/http-test/ping` - this request will be sent to the `http-test` resource with the `/ping` path.
--- The handler function assumes the following signature:
--- ```ts
--- function HttpHandler(
---   request: {
---     address: string;
---     headers: Record<string, string>;
---     method: string;
---     path: string;
---     setDataHandler(handler: (data: string) => void): void;
---     setDataHandler(handler: (data: ArrayBuffer) => void, binary: 'binary'): void;
---     setCancelHandler(handler: () => void): void;
---   },
---   response: {
---     writeHead(code: number, headers?: Record<string, string | string[]>): void;
---     write(data: string): void;
---     send(data?: string): void;
---   }
--- ): void;
--- *   **request**: The request object.
---     *   **address**: The IP address of the request sender.
---     *   **path**: The path to where the request was sent.
---     *   **headers**: The headers sent with the request.
---     *   **method**: The request method.
---     *   **setDataHandler**: Sets the handler for when a data body is passed with the request. Additionally you can pass the `'binary'` argument to receive a `BufferArray` in JavaScript or `System.Byte[]` in C# (has no effect in Lua).
---     *   **setCancelHandler**: Sets the handler for when the request is cancelled.
--- *   **response**: An object to control the response.
---     *   **writeHead**: Sets the status code & headers of the response. Can be only called once and won't work if called after running other response functions.
---     *   **write**: Writes to the response body without sending it. Can be called multiple times.
---     *   **send**: Writes to the response body and then sends it along with the status code & headers, finishing the request.
--- @name SET_HTTP_HANDLER
--- @param handler func (Type not found) The handler function.
--- @return void (Type not found)
function SetHttpHandler(handler) end

--- A setter for [GET_RESOURCE_KVP_STRING](#\_0x5240DA5A).
--- @name SET_RESOURCE_KVP
--- @param key string The key to set
--- @param value string The value to write
--- @return void (Type not found)
function SetResourceKvp(key, value) end

--- @name SET_INTERIOR_PORTAL_ROOM_FROM
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @param roomFrom number New value.
--- @return void (Type not found)
function SetInteriorPortalRoomFrom(interiorId, portalIndex, roomFrom) end

--- Sets values to the zoom level data by index.
--- @name SET_MAP_ZOOM_DATA_LEVEL
--- @param index number Zoom level index.
--- @param zoomScale number fZoomScale value.
--- @param zoomSpeed number fZoomSpeed value.
--- @param scrollSpeed number fScrollSpeed value.
--- @param tilesX number vTiles X.
--- @param tilesY number vTiles Y.
--- @return void (Type not found)
function SetMapZoomDataLevel(index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY) end

--- @name SET_NUI_FOCUS_KEEP_INPUT
--- @param keepInput boolean 
--- @return void (Type not found)
function SetNuiFocusKeepInput(keepInput) end

--- Toggles whether the usage of [ADD_ROPE](#\_0xE832D760399EB220) should create an underlying CNetworkRopeWorldStateData. By default this is set to false.
--- @name SET_ROPES_CREATE_NETWORK_WORLD_STATE
--- @param shouldCreate boolean Whether to create an underlying network world state
--- @return void (Type not found)
function SetRopesCreateNetworkWorldState(shouldCreate) end

--- the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
--- This function doesn't need to be called every frame, it works like a switcher.
--- @name SET_PLAYER_TALKING_OVERRIDE
--- @param player Player The target player.
--- @param state boolean Overriding state.
--- @return void (Type not found)
function SetPlayerTalkingOverride(player, state) end

--- Overrides the minimap component data (from `common:/data/ui/frontend.xml`) for a specified component.
--- @name SET_MINIMAP_COMPONENT_POSITION
--- @param name string The name of the minimap component to override.
--- @param alignX string Equivalent to the `alignX` field in `frontend.xml`.
--- @param alignY string Equivalent to the `alignY` field in `frontend.xml`.
--- @param posX number Equivalent to the `posX` field in `frontend.xml`.
--- @param posY number Equivalent to the `posY` field in `frontend.xml`.
--- @param sizeX number Equivalent to the `sizeX` field in `frontend.xml`.
--- @param sizeY number Equivalent to the `sizeY` field in `frontend.xml`.
--- @return void (Type not found)
function SetMinimapComponentPosition(name, alignX, alignY, posX, posY, sizeX, sizeY) end

--- Sets the type for the minimap blip clipping object to be either rectangular or rounded.
--- @name SET_MINIMAP_CLIP_TYPE
--- @param type number 0 for rectangular, 1 for rounded.
--- @return void (Type not found)
function SetMinimapClipType(type) end

--- @name SET_VEHICLE_STEERING_SCALE
--- @param vehicle Vehicle 
--- @param scale number 
--- @return void (Type not found)
function SetVehicleSteeringScale(vehicle, scale) end

--- @name SET_SNAKEOIL_FOR_ENTRY
--- @param name string 
--- @param path string 
--- @param data string 
--- @return void (Type not found)
function SetSnakeoilForEntry(name, path, data) end

--- @name SET_INTERIOR_PORTAL_ROOM_TO
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @param roomTo number New value.
--- @return void (Type not found)
function SetInteriorPortalRoomTo(interiorId, portalIndex, roomTo) end

--- Sets the routing bucket for the specified entity.
--- Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
--- @name SET_ENTITY_ROUTING_BUCKET
--- @param entity Entity The entity to set the routing bucket for.
--- @param bucket number The bucket ID.
--- @return void (Type not found)
function SetEntityRoutingBucket(entity, bucket) end

--- Sets the entity lockdown mode for a specific routing bucket.
--- Lockdown modes are:
--- | Mode       | Meaning                                                    |
--- | ---------- | ---------------------------------------------------------- |
--- | `strict`   | No entities can be created by clients at all.              |
--- | `relaxed`  | Only script-owned entities created by clients are blocked. |
--- | `inactive` | Clients can create any entity they want.                   |
--- @name SET_ROUTING_BUCKET_ENTITY_LOCKDOWN_MODE
--- @param bucketId number The routing bucket ID to adjust.
--- @param mode string One of aforementioned modes.
--- @return void (Type not found)
function SetRoutingBucketEntityLockdownMode(bucketId, mode) end

--- Allows Weapon-Flashlight beams to stay visible while moving. Normally it only stays on while aiming.
--- @name SET_FLASH_LIGHT_KEEP_ON_WHILE_MOVING
--- @param state boolean On/Off
--- @return void (Type not found)
function SetFlashLightKeepOnWhileMoving(state) end

--- @name SET_VEHICLE_FUEL_LEVEL
--- @param vehicle Vehicle 
--- @param level number 
--- @return void (Type not found)
function SetVehicleFuelLevel(vehicle, level) end

--- Possible Types:
--- 0 = Off,
--- 1 = Regular,
--- 2 = Expanded,
--- 3 = Simple,
--- @name SET_MINIMAP_TYPE
--- @param type number Type to set the minimap to.
--- @return void (Type not found)
function SetMinimapType(type) end

--- Sets the ratio that a door is open for on a train.
--- @name SET_TRAIN_DOOR_OPEN_RATIO
--- @param train Vehicle The train to set the door ratio for.
--- @param doorIndex number Zero-based door index.
--- @param ratio number A value between 0.0 (fully closed) and 1.0 (fully open).
--- @return void (Type not found)
function SetTrainDoorOpenRatio(train, doorIndex, ratio) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
--- @name SET_VEHICLE_HANDLING_VECTOR
--- @param vehicle Vehicle The vehicle to set data for.
--- @param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
--- @param fieldName string The field name to set. These match the keys in `handling.meta`.
--- @param value Vector3 The Vector3 value to set.
--- @return void (Type not found)
function SetVehicleHandlingVector(vehicle, class_, fieldName, value) end

--- @name SET_INTERIOR_PORTAL_FLAG
--- @param interiorId number The target interior.
--- @param portalIndex number Interior portal index.
--- @param flag number New flag value.
--- @return void (Type not found)
function SetInteriorPortalFlag(interiorId, portalIndex, flag) end

--- Sets the height of the vehicle's suspension.
--- This changes the same value set by Suspension in the mod shop.
--- Negatives values raise the car. Positive values lower the car.
--- This is change is visual only. The collision of the vehicle will not move.
--- @name SET_VEHICLE_SUSPENSION_HEIGHT
--- @param vehicle Vehicle 
--- @param newHeight number 
--- @return void (Type not found)
function SetVehicleSuspensionHeight(vehicle, newHeight) end

--- @name SET_PLAYER_MAX_STAMINA
--- @param playerId Player The player index
--- @param maxStamina number The value you want to set
--- @return boolean
function SetPlayerMaxStamina(playerId, maxStamina) end

--- @name SET_GAME_TYPE
--- @param gametypeName string 
--- @return void (Type not found)
function SetGameType(gametypeName) end

--- Sets whether all tags should group (normal game behavior) or should remain independent and above each ped's respective head when in a vehicle.
--- @name SET_MP_GAMER_TAGS_USE_VEHICLE_BEHAVIOR
--- @param enabled boolean Whether tags should use normal game behavior. Default is true.
--- @return void (Type not found)
function SetMpGamerTagsUseVehicleBehavior(enabled) end

--- Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
--- @name SET_RUNTIME_TEXTURE_PIXEL
--- @param tex number A handle to the runtime texture.
--- @param x number The X position of the pixel to change.
--- @param y number The Y position of the pixel to change.
--- @param r number The new R value (0-255).
--- @param g number The new G value (0-255).
--- @param b number The new B value (0-255).
--- @param a number The new A value (0-255).
--- @return void (Type not found)
function SetRuntimeTexturePixel(tex, x, y, r, g, b, a) end

--- @name SET_VEHICLE_GRAVITY_AMOUNT
--- @param vehicle Vehicle 
--- @param gravity number 
--- @return void (Type not found)
function SetVehicleGravityAmount(vehicle, gravity) end

--- Sets power being sent to a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @name SET_VEHICLE_WHEEL_POWER
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param power number 
--- @return void (Type not found)
function SetVehicleWheelPower(vehicle, wheelIndex, power) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
--- @name SET_VEHICLE_HANDLING_INT
--- @param vehicle Vehicle The vehicle to set data for.
--- @param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
--- @param fieldName string The field name to set. These match the keys in `handling.meta`.
--- @param value number The integer value to set.
--- @return void (Type not found)
function SetVehicleHandlingInt(vehicle, class_, fieldName, value) end

--- Sets whether the wheel is powered.
--- On all wheel drive cars this works to change which wheels receive power, but if a car's fDriveBiasFront doesn't send power to that wheel, it won't get power anyway. This can be fixed by changing the fDriveBiasFront with SET_VEHICLE_HANDLING_FLOAT.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- This is a shortcut to a flag in SET_VEHICLE_WHEEL_FLAGS.
--- @name SET_VEHICLE_WHEEL_IS_POWERED
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param powered boolean 
--- @return void (Type not found)
function SetVehicleWheelIsPowered(vehicle, wheelIndex, powered) end

--- @name SET_VEHICLE_CLUTCH
--- @param vehicle Vehicle 
--- @param clutch number 
--- @return void (Type not found)
function SetVehicleClutch(vehicle, clutch) end

--- @name SET_RUNTIME_TEXTURE_ARGB_DATA
--- @param tex number 
--- @param buffer string 
--- @param length number 
--- @return boolean
function SetRuntimeTextureArgbData(tex, buffer, length) end

--- @name SET_VEHICLE_WHEEL_HEALTH
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param health number 
--- @return void (Type not found)
function SetVehicleWheelHealth(vehicle, wheelIndex, health) end

--- Internal function for setting a state bag value.
--- @name SET_STATE_BAG_VALUE
--- @param bagName string 
--- @param keyName string 
--- @param valueData string 
--- @param valueLength number 
--- @param replicated boolean 
--- @return void (Type not found)
function SetStateBagValue(bagName, keyName, valueData, valueLength, replicated) end

--- @name SET_TIMECYCLE_MODIFIER_VAR
--- @param modifierName string The name of timecycle modifier.
--- @param varName string The name of timecycle variable.
--- @param value1 number The first value of variable.
--- @param value2 number The second value of variable.
--- @return void (Type not found)
function SetTimecycleModifierVar(modifierName, varName, value1, value2) end

--- @name SET_VEHICLE_CURRENT_RPM
--- @param vehicle Vehicle 
--- @param rpm number 
--- @return void (Type not found)
function SetVehicleCurrentRpm(vehicle, rpm) end

--- @name SET_VEHICLE_STEERING_ANGLE
--- @param vehicle Vehicle 
--- @param angle number 
--- @return void (Type not found)
function SetVehicleSteeringAngle(vehicle, angle) end

--- Enables or disables whether train doors should be forced open whilst a player is inside the train. This is enabled by default in multiplayer.
--- @name SET_TRAINS_FORCE_DOORS_OPEN
--- @param forceOpen boolean Should force open.
--- @return void (Type not found)
function SetTrainsForceDoorsOpen(forceOpen) end

--- @name SET_VEHICLE_ALARM_TIME_LEFT
--- @param vehicle Vehicle 
--- @param time number 
--- @return void (Type not found)
function SetVehicleAlarmTimeLeft(vehicle, time) end

--- Nonsynchronous [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
--- @name SET_RESOURCE_KVP_FLOAT_NO_SYNC
--- @param key string The key to set
--- @param value number The value to write
--- @return void (Type not found)
function SetResourceKvpFloatNoSync(key, value) end

--- Replaces the pixel data in a runtime texture with the image data from a file in the current resource, or a data URL.
--- If the bitmap is a different size compared to the existing texture, it will be resampled.
--- This command may end up executed asynchronously, and only update the texture data at a later time.
--- @name SET_RUNTIME_TEXTURE_IMAGE
--- @param tex number A runtime texture handle.
--- @param fileName string The file name of an image to load, or a base64 "data:" URL. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.
--- @return boolean
function SetRuntimeTextureImage(tex, fileName) end

--- @name SET_WATER_QUAD_ALPHA
--- @param waterQuad number The water quad index
--- @param a0 number The a0 level
--- @param a1 number The a1 level
--- @param a2 number The a2 level
--- @param a3 number The a3 level
--- @return boolean
function SetWaterQuadAlpha(waterQuad, a0, a1, a2, a3) end

--- Sets the maximum distance at which all tags will be visible and which beyond will not be displayed. Distance is measured from the camera position.
--- @name SET_MP_GAMER_TAGS_VISIBLE_DISTANCE
--- @param distance number The visible distance. Default is 100.0f.
--- @return void (Type not found)
function SetMpGamerTagsVisibleDistance(distance) end

--- @name SET_WATER_QUAD_NO_STENCIL
--- @param waterQuad number The water quad index
--- @param noStencil boolean Unknown effect
--- @return boolean
function SetWaterQuadNoStencil(waterQuad, noStencil) end

--- Sets world clip boundaries for water quads file (water.xml, water_heistisland.xml)
--- Used internally by LOAD_GLOBAL_WATER_FILE
--- @name SET_WATER_AREA_CLIP_RECT
--- @param minX number 
--- @param minY number 
--- @param maxX number 
--- @param maxY number 
--- @return void (Type not found)
function SetWaterAreaClipRect(minX, minY, maxX, maxY) end

--- Disables the vehicle from being repaired when a vehicle extra is enabled.
--- @name SET_VEHICLE_AUTO_REPAIR_DISABLED
--- @param vehicle Vehicle The vehicle to set disable auto vehicle repair.
--- @param value boolean Setting the value to  true prevents the vehicle from being repaired when a extra is enabled. Setting the value to false allows the vehicle from being repaired when a extra is enabled.
--- @return void (Type not found)
function SetVehicleAutoRepairDisabled(vehicle, value) end

--- @name SET_TEXT_CHAT_ENABLED
--- @param enabled boolean 
--- @return boolean
function SetTextChatEnabled(enabled) end

--- A setter for [GET_RESOURCE_KVP_INT](#\_0x557B586A).
--- @name SET_RESOURCE_KVP_INT
--- @param key string The key to set
--- @param value number The value to write
--- @return void (Type not found)
function SetResourceKvpInt(key, value) end

--- Sets the player's rich presence detail state for social platform providers to a specified string.
--- @name SET_RICH_PRESENCE
--- @param presenceState string The rich presence string to set.
--- @return void (Type not found)
function SetRichPresence(presenceState) end

--- Overrides a floating point value from `visualsettings.dat` temporarily.
--- @name SET_VISUAL_SETTING_FLOAT
--- @param name string The name of the value to set, such as `pedLight.color.red`.
--- @param value number The value to write.
--- @return void (Type not found)
function SetVisualSettingFloat(name, value) end

--- Sets whether or not the specified routing bucket has automatically-created population enabled.
--- @name SET_ROUTING_BUCKET_POPULATION_ENABLED
--- @param bucketId number The routing bucket ID to adjust.
--- @param mode boolean `true` to enable population, `false` to disable population.
--- @return void (Type not found)
function SetRoutingBucketPopulationEnabled(bucketId, mode) end

--- @name SET_VEHICLE_OIL_LEVEL
--- @param vehicle Vehicle 
--- @param level number 
--- @return void (Type not found)
function SetVehicleOilLevel(vehicle, level) end

--- Sets whether or not the weather should be owned by the network subsystem.
--- To be able to use [\_SET_WEATHER_TYPE_TRANSITION](#\_0x578C752848ECFA0C), this has to be set to false.
--- @name SET_WEATHER_OWNED_BY_NETWORK
--- @param network boolean true to let the network control weather, false to not use network weather behavior.
--- @return void (Type not found)
function SetWeatherOwnedByNetwork(network) end

--- Disables the game's built-in auto-reloading.
--- @name SET_WEAPONS_NO_AUTORELOAD
--- @param state boolean On/Off
--- @return void (Type not found)
function SetWeaponsNoAutoreload(state) end

--- @name SET_NETWORK_WALK_MODE
--- @param enabled boolean 
--- @return void (Type not found)
function SetNetworkWalkMode(enabled) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.
--- Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
--- @name SET_VEHICLE_HANDLING_FIELD
--- @param vehicle Vehicle The vehicle to set data for.
--- @param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
--- @param fieldName string The field name to set. These match the keys in `handling.meta`.
--- @param value  The value to set.
--- @return void (Type not found)
function SetVehicleHandlingField(vehicle, class_, fieldName, value) end

--- Not sure what this changes, probably determines physical rim size in case the tire is blown.
--- @name SET_VEHICLE_WHEEL_RIM_COLLIDER_SIZE
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @param wheelIndex number Index of wheel, 0-3.
--- @param value number Size of rim collider.
--- @return void (Type not found)
function SetVehicleWheelRimColliderSize(vehicle, wheelIndex, value) end

--- Sets vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
--- Only works on non-default wheels.
--- Returns whether change was successful (can be false if trying to set width for non-default wheels).
--- @name SET_VEHICLE_WHEEL_WIDTH
--- @param vehicle Vehicle The vehicle to set data for.
--- @param width number Width of the wheels (usually between 0.1 and 1.5 is reasonable).
--- @return boolean
function SetVehicleWheelWidth(vehicle, width) end

--- @name SET_WATER_QUAD_LEVEL
--- @param waterQuad number The water quad index
--- @param level number The water level inside the water quad
--- @return boolean
function SetWaterQuadLevel(waterQuad, level) end

--- Sets the rotation speed of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @name SET_VEHICLE_WHEEL_ROTATION_SPEED
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param speed number 
--- @return void (Type not found)
function SetVehicleWheelRotationSpeed(vehicle, wheelIndex, speed) end

--- Example script: https://pastebin.com/J6XGbkCW
--- List of known states:
--- 1: Not wheeling.
--- 65: Vehicle is ready to do wheelie (burnouting).
--- 129: Vehicle is doing wheelie.
--- @name SET_VEHICLE_WHEELIE_STATE
--- @param vehicle Vehicle Vehicle
--- @param state number Wheelie state
--- @return void (Type not found)
function SetVehicleWheelieState(vehicle, state) end

--- Use along with SetVehicleWheelWidth to resize the wheels (this native sets the collider width affecting physics while SetVehicleWheelWidth will change visual width).
--- @name SET_VEHICLE_WHEEL_TIRE_COLLIDER_WIDTH
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @param wheelIndex number Index of wheel, 0-3.
--- @param value number Width of tire collider.
--- @return void (Type not found)
function SetVehicleWheelTireColliderWidth(vehicle, wheelIndex, value) end

--- @name SET_VEHICLE_ENGINE_TEMPERATURE
--- @param vehicle Vehicle 
--- @param temperature number 
--- @return void (Type not found)
function SetVehicleEngineTemperature(vehicle, temperature) end

--- This native allows you to update the bounds of a specified water quad index.
--- @name SET_WAVE_QUAD_BOUNDS
--- @param waveQuad number The wave quad index
--- @param minX number The minX coordinate
--- @param minY number The minY coordinate
--- @param maxX number The maxX coordinate
--- @param maxY number The maxY coordinate
--- @return boolean
function SetWaveQuadBounds(waveQuad, minX, minY, maxX, maxY) end

--- Sets custom vehicle xenon lights color, allowing to use RGB palette. The game will ignore lights color set by [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07) when custom color is active. This native is not synced between players. Requires xenon lights mod to be set on vehicle.
--- @name SET_VEHICLE_XENON_LIGHTS_CUSTOM_COLOR
--- @param vehicle Vehicle The vehicle handle.
--- @param red number Red color (0-255).
--- @param green number Green color (0-255).
--- @param blue number Blue color (0-255).
--- @return void (Type not found)
function SetVehicleXenonLightsCustomColor(vehicle, red, green, blue) end

--- @name SET_VEHICLE_WHEEL_Y_ROTATION
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param value number 
--- @return void (Type not found)
function SetVehicleWheelYRotation(vehicle, wheelIndex, value) end

--- Adjusts the offset of the specified wheel relative to the wheel's axle center.
--- Needs to be called every frame in order to function properly, as GTA will reset the offset otherwise.
--- This function can be especially useful to set the track width of a vehicle, for example:
--- function SetVehicleFrontTrackWidth(vehicle, width)
--- SetVehicleWheelXOffset(vehicle, 0, -width/2)
--- SetVehicleWheelXOffset(vehicle, 1, width/2)
--- end
--- @name SET_VEHICLE_WHEEL_X_OFFSET
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param offset number 
--- @return void (Type not found)
function SetVehicleWheelXOffset(vehicle, wheelIndex, offset) end

--- Sets brake pressure of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- Normal values around 1.0f
--- @name SET_VEHICLE_WHEEL_BRAKE_PRESSURE
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param pressure number 
--- @return void (Type not found)
function SetVehicleWheelBrakePressure(vehicle, wheelIndex, pressure) end

--- directionX/Y should be constrained between -1.0 and 1.0
--- A positive value will create the wave starting at min and rolling towards max
--- A negative value will create the wave starting at max and rolling towards min
--- Applying both values allows you to make diagonal waves
--- @name SET_WAVE_QUAD_DIRECTION
--- @param waveQuad number The wave quad index
--- @param directionX number The minX coordinate
--- @param directionY number The minY coordinate
--- @return boolean
function SetWaveQuadDirection(waveQuad, directionX, directionY) end

--- @name SET_WAVE_QUAD_AMPLITUDE
--- @param waveQuad number The wave quad index
--- @param amplitude number The amplitude value
--- @return boolean
function SetWaveQuadAmplitude(waveQuad, amplitude) end

--- A setter for the recoil shake amplitude of a weapon.
--- @name SET_WEAPON_RECOIL_SHAKE_AMPLITUDE
--- @param weaponHash Hash Weapon name hash.
--- @param amplitude number Recoil shake amplitude
--- @return void (Type not found)
function SetWeaponRecoilShakeAmplitude(weaponHash, amplitude) end

--- @name SET_VEHICLE_HIGH_GEAR
--- @param vehicle Vehicle 
--- @param gear number 
--- @return void (Type not found)
function SetVehicleHighGear(vehicle, gear) end

--- Use along with SetVehicleWheelSize to resize the wheels (this native sets the collider size affecting physics while SetVehicleWheelSize will change visual size).
--- @name SET_VEHICLE_WHEEL_TIRE_COLLIDER_SIZE
--- @param vehicle Vehicle The vehicle to obtain data for.
--- @param wheelIndex number Index of wheel, 0-3.
--- @param value number Radius of tire collider.
--- @return void (Type not found)
function SetVehicleWheelTireColliderSize(vehicle, wheelIndex, value) end

--- Sets the traction vector length of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @name SET_VEHICLE_WHEEL_TRACTION_VECTOR_LENGTH
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param length number 
--- @return void (Type not found)
function SetVehicleWheelTractionVectorLength(vehicle, wheelIndex, length) end

--- The backing function for TriggerLatentServerEvent.
--- @name TRIGGER_LATENT_SERVER_EVENT_INTERNAL
--- @param eventName string 
--- @param eventPayload string 
--- @param payloadLength number 
--- @param bps number 
--- @return void (Type not found)
function TriggerLatentServerEventInternal(eventName, eventPayload, payloadLength, bps) end

--- Leaves cursor mode. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name LEAVE_CURSOR_MODE
--- @return void (Type not found)
function LeaveCursorMode() end

--- Sets vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
--- Only works on non-default wheels.
--- Returns whether change was successful (can be false if trying to set size for non-default wheels).
--- @name SET_VEHICLE_WHEEL_SIZE
--- @param vehicle Vehicle The vehicle to set data for.
--- @param size number Size of the wheels (usually between 0.5 and 1.5 is reasonable).
--- @return boolean
function SetVehicleWheelSize(vehicle, size) end

--- @name STOP_RESOURCE
--- @param resourceName string 
--- @return boolean
function StopResource(resourceName) end

--- Draws an outline around a given entity. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name SET_ENTITY_DRAW_OUTLINE
--- @param entity Entity A valid entity handle.
--- @param enabled boolean Whether or not to draw an outline.
--- @return void (Type not found)
function SetEntityDrawOutline(entity, enabled) end

--- Gets the selected entity at the current mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name SELECT_ENTITY_AT_CURSOR
--- @param hitFlags number A bit mask of entity types to match.
--- @param precise boolean Whether to do a *precise* test, i.e. of visual coordinates, too.
--- @return Entity
function SelectEntityAtCursor(hitFlags, precise) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.
--- Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
--- @name SET_VEHICLE_HANDLING_FLOAT
--- @param vehicle Vehicle The vehicle to set data for.
--- @param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
--- @param fieldName string The field name to set. These match the keys in `handling.meta`.
--- @param value number The floating-point value to set.
--- @return void (Type not found)
function SetVehicleHandlingFloat(vehicle, class_, fieldName, value) end

--- The backing function for TriggerLatentClientEvent.
--- @name TRIGGER_LATENT_CLIENT_EVENT_INTERNAL
--- @param eventName string 
--- @param eventTarget string 
--- @param eventPayload string 
--- @param payloadLength number 
--- @param bps number 
--- @return void (Type not found)
function TriggerLatentClientEventInternal(eventName, eventTarget, eventPayload, payloadLength, bps) end

--- @name TEMP_BAN_PLAYER
--- @param playerSrc string 
--- @param reason string 
--- @return void (Type not found)
function TempBanPlayer(playerSrc, reason) end

--- @name SET_WATER_QUAD_IS_INVISIBLE
--- @param waterQuad number The water quad index
--- @param isInvisible boolean Unknown effect
--- @return boolean
function SetWaterQuadIsInvisible(waterQuad, isInvisible) end

--- @name SET_VEHICLE_TURBO_PRESSURE
--- @param vehicle Vehicle 
--- @param pressure number 
--- @return void (Type not found)
function SetVehicleTurboPressure(vehicle, pressure) end

--- @name SET_WATER_QUAD_HAS_LIMITED_DEPTH
--- @param waterQuad number The water quad index
--- @param hasLimitedDepth boolean Unknown effect
--- @return boolean
function SetWaterQuadHasLimitedDepth(waterQuad, hasLimitedDepth) end

--- Disables weapons aim blocking due to environment for local player.
--- For non-player peds [SET_PED_ENABLE_WEAPON_BLOCKING](#\_0x97A790315D3831FD) can be used.
--- @name SET_WEAPONS_NO_AIM_BLOCKING
--- @param state boolean On/Off
--- @return void (Type not found)
function SetWeaponsNoAimBlocking(state) end

--- @name START_FIND_KVP
--- @param prefix string A prefix match
--- @return number
function StartFindKvp(prefix) end

--- Enables the editor runtime mode, changing game behavior to track entity metadata.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name ENABLE_EDITOR_RUNTIME
--- @return void (Type not found)
function EnableEditorRuntime() end

--- This native allows you to update the bounds of a specified water quad index.
--- @name SET_WATER_QUAD_BOUNDS
--- @param waterQuad number The water quad index
--- @param minX number The minX coordinate
--- @param minY number The minY coordinate
--- @param maxX number The maxX coordinate
--- @param maxY number The maxY coordinate
--- @return boolean
function SetWaterQuadBounds(waterQuad, minX, minY, maxX, maxY) end

--- Draws a gizmo. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- This should be used from JavaScript or another language supporting mutable buffers like ArrayBuffer.
--- Matrix layout is as follows:
--- *   Element \[0], \[1] and \[2] should represent the right vector.
--- *   Element \[4], \[5] and \[6] should represent the forward vector.
--- *   Element \[8], \[9] and \[10] should represent the up vector.
--- *   Element \[12], \[13] and \[14] should represent X, Y and Z translation coordinates.
--- *   All other elements should be \[0, 0, 0, 1].
--- @name DRAW_GIZMO
--- @param matrixPtr number A mutable pointer to a 64-byte buffer of floating-point values, representing an XMFLOAT4X4 in layout.
--- @param id string A unique identifier of what the gizmo is affecting.
--- @return boolean
function DrawGizmo(matrixPtr, id) end

--- Transiently updates the entity with the specified mapdata index and entity index.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name UPDATE_MAPDATA_ENTITY
--- @param mapdata number A fwMapData index from GET_MAPDATA_FROM_HASH_KEY.
--- @param entity number An entity index from GET_ENTITY_INDEX_FROM_MAPDATA.
--- @param entityDef object (Type not found) The new entity definition in fwEntityDef format.
--- @return void (Type not found)
function UpdateMapdataEntity(mapdata, entity, entityDef) end

--- The backing function for TriggerClientEvent.
--- @name TRIGGER_CLIENT_EVENT_INTERNAL
--- @param eventName string 
--- @param eventTarget string 
--- @param eventPayload string 
--- @param payloadLength number 
--- @return void (Type not found)
function TriggerClientEventInternal(eventName, eventTarget, eventPayload, payloadLength) end

--- Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
--- @name SHUTDOWN_LOADING_SCREEN_NUI
--- @return void (Type not found)
function ShutdownLoadingScreenNui() end

--- Gets the selected entity at the specified mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name SELECT_ENTITY_AT_POS
--- @param fracX number Mouse cursor X fraction.
--- @param fracY number Mouse cursor Y fraction.
--- @param hitFlags number A bit mask of entity types to match.
--- @param precise boolean Whether to do a *precise* test, i.e. of visual coordinates, too.
--- @return Entity
function SelectEntityAtPos(fracX, fracY, hitFlags, precise) end

--- Will unregister and cleanup a registered NUI callback handler.
--- Use along side the REGISTER_RAW_NUI_CALLBACK native.
--- @name UNREGISTER_RAW_NUI_CALLBACK
--- @param callbackType string The callback type to target
--- @return void (Type not found)
function UnregisterRawNuiCallback(callbackType) end

--- Returns the transient map data index for a specified hash.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name GET_MAPDATA_FROM_HASH_KEY
--- @param mapdataHandle Hash The input map data handle.
--- @return number
function GetMapdataFromHashKey(mapdataHandle) end

--- Sets the flags of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @name SET_VEHICLE_WHEEL_FLAGS
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param flags number bit flags
--- @return void (Type not found)
function SetVehicleWheelFlags(vehicle, wheelIndex, flags) end

--- @name VERIFY_PASSWORD_HASH
--- @param password string 
--- @param hash string 
--- @return boolean
function VerifyPasswordHash(password, hash) end

--- Returns whether or not the currently executing event was canceled.
--- @name WAS_EVENT_CANCELED
--- @return boolean
function WasEventCanceled() end

--- Sets color for entity outline. `255, 0, 255, 255` by default.
--- @name SET_ENTITY_DRAW_OUTLINE_COLOR
--- @param red number Red component of color.
--- @param green number Green component of color.
--- @param blue number Blue component of color.
--- @param alpha number Alpha component of color, ignored for shader `0`.
--- @return void (Type not found)
function SetEntityDrawOutlineColor(red, green, blue, alpha) end

--- This native allows you to update the water quad type.
--- Valid type definitions:
--- *   **0** Square
--- *   **1** Right triangle where the 90 degree angle is at maxX, minY
--- *   **2** Right triangle where the 90 degree angle is at minX, minY
--- *   **3** Right triangle where the 90 degree angle is at minX, maxY
--- *   **4** Right triangle where the 90 degree angle is at maxY, maxY
--- @name SET_WATER_QUAD_TYPE
--- @param waterQuad number The water quad index
--- @param type number The water quad type
--- @return boolean
function SetWaterQuadType(waterQuad, type) end

--- Sets variant of shader that will be used to draw entity outline.
--- Variants are:
--- *   **0**: Default value, gauss shader.
--- *   **1**: 2px wide solid color outline.
--- *   **2**: Fullscreen solid color except for entity.
--- @name SET_ENTITY_DRAW_OUTLINE_SHADER
--- @param shader number An outline shader variant.
--- @return void (Type not found)
function SetEntityDrawOutlineShader(shader) end

--- Disables the editor runtime mode, changing game behavior to not track entity metadata.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name DISABLE_EDITOR_RUNTIME
--- @return void (Type not found)
function DisableEditorRuntime() end

--- Enters cursor mode, suppressing mouse movement to the game and displaying a mouse cursor instead. This function supports
--- SDK infrastructure and is not intended to be used directly from your code.
--- @name ENTER_CURSOR_MODE
--- @return void (Type not found)
function EnterCursorMode() end

--- Create a blip with a radius for the specified coordinates (it doesnt create the blip sprite, so you need to use [AddBlipCoords](#\_0xC6F43D0E))
--- Example image:
--- ![example](https://i.imgur.com/9hQl3DB.png)
--- **This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_RADIUS](?\_0x46818D79B1F7499A).**
--- @name ADD_BLIP_FOR_RADIUS
--- @param posX number The x position of the blip (you can also send a vector3 instead of the bulk coordinates)
--- @param posY number The y position of the blip (you can also send a vector3 instead of the bulk coordinates)
--- @param posZ number The z position of the blip (you can also send a vector3 instead of the bulk coordinates)
--- @param radius number The number that defines the radius of the blip circle
--- @return Blip
function AddBlipForRadius(posX, posY, posZ, radius) end

--- The backing function for TriggerServerEvent.
--- @name TRIGGER_SERVER_EVENT_INTERNAL
--- @param eventName string 
--- @param eventPayload string 
--- @param payloadLength number 
--- @return void (Type not found)
function TriggerServerEventInternal(eventName, eventPayload, payloadLength) end

--- Disables autoswapping to another weapon when the current weapon runs out of ammo.
--- @name SET_WEAPONS_NO_AUTOSWAP
--- @param state boolean On/Off
--- @return void (Type not found)
function SetWeaponsNoAutoswap(state) end

--- Resets mapdata entity transform matrix to its original state.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name RESET_MAPDATA_ENTITY_MATRIX
--- @param mapDataHash number A mapdata hash from `mapDataLoaded` event.
--- @param entityInternalIdx number An internal entity's index.
--- @return boolean
function ResetMapdataEntityMatrix(mapDataHash, entityInternalIdx) end

--- Returns mapdata's entity matrix. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- This should be used from JavaScript or another language supporting mutable buffers like ArrayBuffer.
--- Matrix layout is as follows:
--- *   Element \[0], \[1] and \[2] should represent the right vector.
--- *   Element \[4], \[5] and \[6] should represent the forward vector.
--- *   Element \[8], \[9] and \[10] should represent the up vector.
--- *   Element \[12], \[13] and \[14] should represent X, Y and Z translation coordinates.
--- *   All other elements should be \[0, 0, 0, 1].
--- @name GET_MAPDATA_ENTITY_MATRIX
--- @param mapDataHash number A mapdata hash from `mapDataLoaded` event.
--- @param entityInternalIdx number An internal entity's index.
--- @param matrixPtr number A mutable pointer to a 64-byte buffer of floating-point values, representing an XMFLOAT4X4 in layout.
--- @return boolean
function GetMapdataEntityMatrix(mapDataHash, entityInternalIdx, matrixPtr) end

--- Adds a rectangular blip for the specified coordinates/area.
--- It is recommended to use [SET_BLIP_ROTATION](#\_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#\_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.
--- By default, the blip will show as a *regular* blip with the specified color/sprite if it is outside of the minimap view.
--- Example image:
--- ![minimap](https://w.wew.wtf/pdcjig.png)
--- ![big map](https://w.wew.wtf/zgcjcm.png)
--- (Native name is *likely* to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
--- **This is the server-side RPC native equivalent of the client native [\_ADD_BLIP_FOR_AREA](?\_0xCE5D0E5E315DB238).**
--- @name _ADD_BLIP_FOR_AREA
--- @param x number The X coordinate of the center of the blip.
--- @param y number The Y coordinate of the center of the blip.
--- @param z number The Z coordinate of the center of the blip.
--- @param width number The width of the blip.
--- @param height number The height of the blip.
--- @return Blip
function AddBlipForArea(x, y, z, width, height) end

--- A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B), but for a specified resource.
--- @name GET_EXTERNAL_KVP_STRING
--- @param resource string The resource to fetch from.
--- @param key string The key to fetch
--- @return string
function GetExternalKvpString(resource, key) end

--- CLEAR_PED_PROP
--- **This is the server-side RPC native equivalent of the client native [CLEAR_PED_PROP](?\_0x0943E5B8E078E76E).**
--- @name CLEAR_PED_PROP
--- @param ped Ped The ped handle.
--- @param propId number The prop id you want to clear from the ped. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F).
--- @return void (Type not found)
function ClearPedProp(ped, propId) end

--- Retrieves the map data entity handle.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name GET_MAPDATA_ENTITY_HANDLE
--- @param mapDataHash number A mapdata hash from `mapDataLoaded` event.
--- @param entityInternalIdx number An internal entity's index.
--- @param entityHandle number The output entity handle.
--- @return boolean
function GetMapdataEntityHandle(mapDataHash, entityInternalIdx, entityHandle) end

--- Retrieves the map data and entity handles from a specific entity.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name GET_ENTITY_MAPDATA_OWNER
--- @param entity Entity An entity owned by map data.
--- @param mapdataHandle number The output map data handle.
--- @param entityHandle number The output entity handle.
--- @return boolean
function GetEntityMapdataOwner(entity, mapdataHandle, entityHandle) end

--- A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8), but for a specified resource.
--- @name GET_EXTERNAL_KVP_INT
--- @param resource string The resource to fetch from.
--- @param key string The key to fetch
--- @return number
function GetExternalKvpInt(resource, key) end

--- Prints 'structured trace' data to the server `file descriptor 3` channel. This is not generally useful outside of
--- server monitoring utilities.
--- @name PRINT_STRUCTURED_TRACE
--- @param jsonString string JSON data to submit as `payload` in the `script_structured_trace` event.
--- @return void (Type not found)
function PrintStructuredTrace(jsonString) end

--- A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938), but for a specified resource.
--- @name GET_EXTERNAL_KVP_FLOAT
--- @param resource string The resource to fetch from.
--- @param key string The key to fetch
--- @return number
function GetExternalKvpFloat(resource, key) end

--- Scans the resources in the specified resource root. This function is only available in the 'monitor mode' process and is
--- not available for user resources.
--- @name SCAN_RESOURCE_ROOT
--- @param rootPath string The resource directory to scan.
--- @param callback func (Type not found) A callback that will receive an object with results.
--- @return void (Type not found)
function ScanResourceRoot(rootPath, callback) end

--- CREATE_PED_INSIDE_VEHICLE
--- **This is the server-side RPC native equivalent of the client native [CREATE_PED_INSIDE_VEHICLE](?\_0x7DD959874C1FD534).**
--- @name CREATE_PED_INSIDE_VEHICLE
--- @param vehicle Vehicle 
--- @param pedType number See [`CREATE_PED`](#\_0xD49F9B0955C367DE)
--- @param modelHash Hash 
--- @param seat number 
--- @param isNetwork boolean 
--- @param bScriptHostPed boolean 
--- @return Entity
function CreatePedInsideVehicle(vehicle, pedType, modelHash, seat, isNetwork, bScriptHostPed) end

--- Equivalent of [START_FIND_KVP](#\_0xDD379006), but for another resource than the current one.
--- @name START_FIND_EXTERNAL_KVP
--- @param resourceName string The resource to try finding the key/values for
--- @param prefix string A prefix match
--- @return number
function StartFindExternalKvp(resourceName, prefix) end

--- @name START_RESOURCE
--- @param resourceName string 
--- @return boolean
function StartResource(resourceName) end

--- The backing function for TriggerEvent.
--- @name TRIGGER_EVENT_INTERNAL
--- @param eventName string 
--- @param eventPayload string 
--- @param payloadLength number 
--- @return void (Type not found)
function TriggerEventInternal(eventName, eventPayload, payloadLength) end

--- Clear a ped's tasks. Stop animations and other tasks created by scripts.
--- **This is the server-side RPC native equivalent of the client native [CLEAR_PED_TASKS](?\_0xE1EF3C1216AFF2CD).**
--- @name CLEAR_PED_TASKS
--- @param ped Ped Ped id. Use PlayerPedId() for your own character.
--- @return void (Type not found)
function ClearPedTasks(ped) end

--- Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#\_0xC6F43D0E) to make it blue (friend).\
--- Can be used for objects, vehicles and peds.
--- Example of enemy:
--- ![enemy](https://i.imgur.com/fl78svv.png)
--- Example of friend:
--- ![friend](https://i.imgur.com/Q16ho5d.png)
--- **This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_ENTITY](?\_0x5CDE92C702A8FCE7).**
--- @name ADD_BLIP_FOR_ENTITY
--- @param entity Entity The entity handle to create the blip.
--- @return Blip
function AddBlipForEntity(entity) end

--- Returns the transient entity index for a specified mapdata/entity pair.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- @name GET_ENTITY_INDEX_FROM_MAPDATA
--- @param mapdata number The input map data index from GET_MAPDATA_FROM_HASH_KEY.
--- @param entity number The input entity handle from GET_ENTITY_MAPDATA_OWNER.
--- @return number
function GetEntityIndexFromMapdata(mapdata, entity) end

--- Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
--- **This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_COORD](?\_0x5A039BB0BCA604B6).**
--- @name ADD_BLIP_FOR_COORD
--- @param x number The X coordinate to create the blip on.
--- @param y number The Y coordinate.
--- @param z number The Z coordinate.
--- @return Blip
function AddBlipForCoord(x, y, z) end

--- This native removes a specified weapon from your selected ped.
--- Weapon Hashes: pastebin.com/0wwDZgkF
--- Example:
--- C#:
--- Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);
--- C++:
--- WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);
--- The code above removes the knife from the player.
--- **This is the server-side RPC native equivalent of the client native [REMOVE_WEAPON_FROM_PED](?\_0x4899CB088EDF59B8).**
--- @name REMOVE_WEAPON_FROM_PED
--- @param ped Ped 
--- @param weaponHash Hash 
--- @return void (Type not found)
function RemoveWeaponFromPed(ped, weaponHash) end

--- Creates a ped (biped character, pedestrian, actor) with the specified model at the specified position and heading.
--- This ped will initially be owned by the creating script as a mission entity, and the model should be loaded already
--- (e.g. using REQUEST_MODEL).
--- **This is the server-side RPC native equivalent of the client native [CREATE_PED](?\_0xD49F9B0955C367DE).**
--- @name CREATE_PED
--- @param pedType number Unused. Peds get set to CIVMALE/CIVFEMALE/etc. no matter the value specified.
--- @param modelHash Hash The model of ped to spawn.
--- @param x number Spawn coordinate X component.
--- @param y number Spawn coordinate Y component.
--- @param z number Spawn coordinate Z component.
--- @param heading number Heading to face towards, in degrees.
--- @param isNetwork boolean Whether to create a network object for the ped. If false, the ped exists only locally.
--- @param bScriptHostPed boolean Whether to register the ped as pinned to the script host in the R\* network model.
--- @return Entity
function CreatePed(pedType, modelHash, x, y, z, heading, isNetwork, bScriptHostPed) end

--- SET_PED_CAN_RAGDOLL
--- **This is the server-side RPC native equivalent of the client native [SET_PED_CAN_RAGDOLL](?\_0xB128377056A54E2A).**
--- @name SET_PED_CAN_RAGDOLL
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanRagdoll(ped, toggle) end

--- Immediately stops the pedestrian from whatever it's doing. The difference between this and [CLEAR_PED_TASKS](#\_0xE1EF3C1216AFF2CD) is that this one teleports the ped but does not change the position of the ped.
--- **This is the server-side RPC native equivalent of the client native [CLEAR_PED_TASKS_IMMEDIATELY](?\_0xAAA34F8A7CB32098).**
--- @name CLEAR_PED_TASKS_IMMEDIATELY
--- @param ped Ped Ped id.
--- @return void (Type not found)
function ClearPedTasksImmediately(ped) end

--- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using SET_ENTITY_COORDS.
--- **This is the server-side RPC native equivalent of the client native [FREEZE_ENTITY_POSITION](?\_0x428CA6DBD1094446).**
--- @name FREEZE_ENTITY_POSITION
--- @param entity Entity The entity to freeze/unfreeze.
--- @param toggle boolean Freeze or unfreeze entity.
--- @return void (Type not found)
function FreezeEntityPosition(entity, toggle) end

--- Creates a vehicle with the specified model at the specified position. This vehicle will initially be owned by the creating
--- script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
--- NativeDB Added Parameter 8: BOOL p7
--- **This is the server-side RPC native equivalent of the client native [CREATE_VEHICLE](?\_0xAF35D0D2583051B0).**
--- @name CREATE_VEHICLE
--- @param modelHash Hash The model of vehicle to spawn.
--- @param x number Spawn coordinate X component.
--- @param y number Spawn coordinate Y component.
--- @param z number Spawn coordinate Z component.
--- @param heading number Heading to face towards, in degrees.
--- @param isNetwork boolean Whether to create a network object for the vehicle. If false, the vehicle exists only locally.
--- @param netMissionEntity boolean Whether to register the vehicle as pinned to the script host in the R\* network model.
--- @return Entity
function CreateVehicle(modelHash, x, y, z, heading, isNetwork, netMissionEntity) end

--- Sets an entity's matrix. Arguments are in the same order as with GET_ENTITY_MATRIX.
--- @name SET_ENTITY_MATRIX
--- @param entity Entity A valid entity handle.
--- @param forwardX number 
--- @param forwardY number 
--- @param forwardZ number 
--- @param rightX number 
--- @param rightY number 
--- @param rightZ number 
--- @param upX number 
--- @param upY number 
--- @param upZ number 
--- @param atX number 
--- @param atY number 
--- @param atZ number 
--- @return void (Type not found)
function SetEntityMatrix(entity, forwardX, forwardY, forwardZ, rightX, rightY, rightZ, upX, upY, upZ, atX, atY, atZ) end

--- Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.
--- collection - PedDecorationCollection filename hash
--- overlay - Item name hash
--- Example:
--- Entry inside "mpbeach_overlays.xml" -
--- <Item>
--- <uvPos x="0.500000" y="0.500000" />
--- <scale x="0.600000" y="0.500000" />
--- <rotation value="0.000000" />
--- <nameHash>FM_Hair_Fuzz</nameHash>
--- <txdHash>mp_hair_fuzz</txdHash>
--- <txtHash>mp_hair_fuzz</txtHash>
--- <zone>ZONE_HEAD</zone>
--- <type>TYPE_TATTOO</type>
--- <faction>FM</faction>
--- <garment>All</garment>
--- <gender>GENDER_DONTCARE</gender>
--- <award />
--- <awardLevel />
--- </Item>
--- Code:
--- PED::\_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("mpbeach_overlays"), MISC::GET_HASH_KEY("fm_hair_fuzz"))
--- **This is the server-side RPC native equivalent of the client native [ADD_PED_DECORATION_FROM_HASHES](?\_0x5F5D1665E352A839).**
--- @name ADD_PED_DECORATION_FROM_HASHES
--- @param ped Ped 
--- @param collection Hash 
--- @param overlay Hash 
--- @return void (Type not found)
function AddPedDecorationFromHashes(ped, collection, overlay) end

--- Sets the armor of the specified ped.
--- ped: The Ped to set the armor of.
--- amount: A value between 0 and 100 indicating the value to set the Ped's armor to.
--- **This is the server-side RPC native equivalent of the client native [SET_PED_ARMOUR](?\_0xCEA04D83135264CC).**
--- @name SET_PED_ARMOUR
--- @param ped Ped 
--- @param amount number 
--- @return void (Type not found)
function SetPedArmour(ped, amount) end

--- This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);
--- PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.
--- **This is the server-side RPC native equivalent of the client native [CLEAR_PLAYER_WANTED_LEVEL](?\_0xB302540597885499).**
--- @name CLEAR_PLAYER_WANTED_LEVEL
--- @param player Player 
--- @return void (Type not found)
function ClearPlayerWantedLevel(player) end

--- Set the heading of an entity in degrees also known as "Yaw".
--- **This is the server-side RPC native equivalent of the client native [SET_ENTITY_HEADING](?\_0x8E2530AA8ADA980E).**
--- @name SET_ENTITY_HEADING
--- @param entity Entity The entity to set the heading for.
--- @param heading number The heading in degrees.
--- @return void (Type not found)
function SetEntityHeading(entity, heading) end

--- Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
--- **This is the server-side RPC native equivalent of the client native [SET_ENTITY_VELOCITY](?\_0x1C99BB7B6E96D16F).**
--- @name SET_ENTITY_VELOCITY
--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetEntityVelocity(entity, x, y, z) end

--- GIVE_WEAPON_COMPONENT_TO_PED
--- **This is the server-side RPC native equivalent of the client native [GIVE_WEAPON_COMPONENT_TO_PED](?\_0xD966D51AA5B28BB9).**
--- @name GIVE_WEAPON_COMPONENT_TO_PED
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param componentHash Hash 
--- @return void (Type not found)
function GiveWeaponComponentToPed(ped, weaponHash, componentHash) end

--- NativeDB Added Parameter 4: BOOL p3
--- **This is the server-side RPC native equivalent of the client native [SET_PED_AMMO](?\_0x14E56BC5B5DB6A19).**
--- @name SET_PED_AMMO
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param ammo number 
--- @return void (Type not found)
function SetPedAmmo(ped, weaponHash, ammo) end

--- REMOVE_WEAPON_COMPONENT_FROM_PED
--- **This is the server-side RPC native equivalent of the client native [REMOVE_WEAPON_COMPONENT_FROM_PED](?\_0x1E8BE90C74FB4C09).**
--- @name REMOVE_WEAPON_COMPONENT_FROM_PED
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param componentHash Hash 
--- @return void (Type not found)
function RemoveWeaponComponentFromPed(ped, weaponHash, componentHash) end

--- GIVE_WEAPON_TO_PED
--- **This is the server-side RPC native equivalent of the client native [GIVE_WEAPON_TO_PED](?\_0xBF0FD6E56C964FCB).**
--- @name GIVE_WEAPON_TO_PED
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param ammoCount number 
--- @param isHidden boolean 
--- @param bForceInHand boolean 
--- @return void (Type not found)
function GiveWeaponToPed(ped, weaponHash, ammoCount, isHidden, bForceInHand) end

--- SET_PED_INTO_VEHICLE
--- **This is the server-side RPC native equivalent of the client native [SET_PED_INTO_VEHICLE](?\_0xF75B0D629E1C063D).**
--- @name SET_PED_INTO_VEHICLE
--- @param ped Ped 
--- @param vehicle Vehicle 
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669). -2 for the first available seat.
--- @return void (Type not found)
function SetPedIntoVehicle(ped, vehicle, seatIndex) end

--- <!--
--- _loc1_.map((name, idx) => `| ${idx} | ${name} | ![${name}](https://runtime.fivem.net/blips/${name}.svg) |`).join('\n')
--- -->
--- Sets the displayed sprite for a specific blip.
--- There's a [list of sprites](https://docs.fivem.net/game-references/blips/) on the FiveM documentation site.
--- **This is the server-side RPC native equivalent of the client native [SET_BLIP_SPRITE](?\_0xDF735600A4696DAF).**
--- @name SET_BLIP_SPRITE
--- @param blip Blip The blip to change.
--- @param spriteId number The sprite ID to set.
--- @return void (Type not found)
function SetBlipSprite(blip, spriteId) end

--- Creates an object (prop) with the specified model at the specified position, offset on the Z axis by the radius of the object's model.
--- This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
--- **This is the server-side RPC native equivalent of the client native [CREATE_OBJECT](?\_0x509D5878EB39E842).**
--- @name CREATE_OBJECT
--- @param modelHash Hash The model to spawn.
--- @param x number Spawn coordinate X component.
--- @param y number Spawn coordinate Y component.
--- @param z number Spawn coordinate Z component, 'ground level'.
--- @param isNetwork boolean Whether to create a network object for the object. If false, the object exists only locally.
--- @param netMissionEntity boolean Whether to register the object as pinned to the script host in the R\* network model.
--- @param doorFlag boolean False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
--- @return Entity
function CreateObject(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

--- Applies a force to the specified entity.
--- **List of force types (p1)**:
--- public enum ForceType
--- {
--- MinForce = 0,
--- MaxForceRot = 1,
--- MinForce2 = 2,
--- MaxForceRot2 = 3,
--- ForceNoRot = 4,
--- ForceRotPlusForce = 5
--- }
--- Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).
--- **This is the server-side RPC native equivalent of the client native [APPLY_FORCE_TO_ENTITY](?\_0xC5F68BE9613E2D18).**
--- @name APPLY_FORCE_TO_ENTITY
--- @param entity Entity The entity you want to apply a force on
--- @param forceType number See native description above for a list of commonly used values
--- @param x number Force amount (X)
--- @param y number Force amount (Y)
--- @param z number Force amount (Z)
--- @param offX number Rotation/offset force (X)
--- @param offY number Rotation/offset force (Y)
--- @param offZ number Rotation/offset force (Z)
--- @param boneIndex number (Often 0) Entity bone index
--- @param isDirectionRel boolean (Usually false) Vector defined in local (body-fixed) coordinate frame
--- @param ignoreUpVec boolean (Usually true)
--- @param isForceRel boolean (Usually true) When true, force gets multiplied with the objects mass and different objects will have the same acceleration
--- @param p12 boolean (Usually false)
--- @param p13 boolean (Usually true)
--- @return void (Type not found)
function ApplyForceToEntity(entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13) end

--- Parameter `p1` does not seem to be used or referenced in game binaries.\
--- **Note:** When called for networked entities, a `CRemoveAllWeaponsEvent` will be created per request.
--- **This is the server-side RPC native equivalent of the client native [REMOVE_ALL_PED_WEAPONS](?\_0xF25DF915FA38C5F3).**
--- @name REMOVE_ALL_PED_WEAPONS
--- @param ped Ped The ped entity
--- @param p1 boolean 
--- @return void (Type not found)
function RemoveAllPedWeapons(ped, p1) end

--- Simply sets you as invincible (Health will not deplete).
--- Use 0x733A643B5B0C53C1 instead if you want Ragdoll enabled, which is equal to:
--- \*(DWORD \*)(playerPedAddress + 0x188) |= (1 << 9);
--- **This is the server-side RPC native equivalent of the client native [SET_PLAYER_INVINCIBLE](?\_0x239528EACDC3E7DE).**
--- @name SET_PLAYER_INVINCIBLE
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerInvincible(player, toggle) end

--- CLEAR_PED_SECONDARY_TASK
--- **This is the server-side RPC native equivalent of the client native [CLEAR_PED_SECONDARY_TASK](?\_0x176CECF6F920D707).**
--- @name CLEAR_PED_SECONDARY_TASK
--- @param ped Ped 
--- @return void (Type not found)
function ClearPedSecondaryTask(ped) end

--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_CUSTOM_PRIMARY_COLOUR](?\_0x7141766F91D15BEA).**
--- @name SET_VEHICLE_CUSTOM_PRIMARY_COLOUR
--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function SetVehicleCustomPrimaryColour(vehicle, r, g, b) end

--- Call SET_PLAYER_WANTED_LEVEL_NOW for immediate effect
--- wantedLevel is an integer value representing 0 to 5 stars even though the game supports the 6th wanted level but no police will appear since no definitions are present for it in the game files
--- disableNoMission-  Disables When Off Mission- appears to always be false
--- **This is the server-side RPC native equivalent of the client native [SET_PLAYER_WANTED_LEVEL](?\_0x39FF19C64EF7DA5B).**
--- @name SET_PLAYER_WANTED_LEVEL
--- @param player Player 
--- @param wantedLevel number 
--- @param disableNoMission boolean 
--- @return void (Type not found)
function SetPlayerWantedLevel(player, wantedLevel, disableNoMission) end

--- Creates an object (prop) with the specified model centered at the specified position.
--- This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
--- **This is the server-side RPC native equivalent of the client native [CREATE_OBJECT_NO_OFFSET](?\_0x9A294B2138ABB884).**
--- @name CREATE_OBJECT_NO_OFFSET
--- @param modelHash Hash The model to spawn.
--- @param x number Spawn coordinate X component.
--- @param y number Spawn coordinate Y component.
--- @param z number Spawn coordinate Z component.
--- @param isNetwork boolean Whether to create a network object for the object. If false, the object exists only locally.
--- @param netMissionEntity boolean Whether to register the object as pinned to the script host in the R\* network model.
--- @param doorFlag boolean False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
--- @return Entity
function CreateObjectNoOffset(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

--- Equivalent to CREATE_VEHICLE, but it uses 'server setter' logic (like the former CREATE_AUTOMOBILE) as a workaround for
--- reliability concerns regarding entity creation RPC.
--- Unlike CREATE_AUTOMOBILE, this supports other vehicle types as well.
--- @name CREATE_VEHICLE_SERVER_SETTER
--- @param modelHash Hash The model of vehicle to spawn.
--- @param type string The appropriate vehicle type for the model info. Can be one of `automobile`, `bike`, `boat`, `heli`, `plane`, `submarine`, `trailer`, and (potentially), `train`. This should be the same type as the `type` field in `vehicles.meta`.
--- @param x number Spawn coordinate X component.
--- @param y number Spawn coordinate Y component.
--- @param z number Spawn coordinate Z component.
--- @param heading number Heading to face towards, in degrees.
--- @return Vehicle
function CreateVehicleServerSetter(modelHash, type, x, y, z, heading) end

--- Used for freemode (online) characters.
--- Called after SET_PED_HEAD_OVERLAY().
--- **Note:**
--- You may need to call [`SetPedHeadBlendData`](#0x9414E18B9434C2FE) prior to calling this native in order for it to work.
--- **This is the server-side RPC native equivalent of the client native [\_SET_PED_HEAD_OVERLAY_COLOR](?\_0x497BF74A7B9CB952).**
--- @name _SET_PED_HEAD_OVERLAY_COLOR
--- @param ped Ped The ped entity
--- @param overlayID number An integer representing the overlay id
--- @param colorType number 1 for eyebrows, beards, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.
--- @param colorID number An integer representing the primary color id
--- @param secondColorID number An integer representing the secondary color id
--- @return void (Type not found)
function SetPedHeadOverlayColor(ped, overlayID, colorType, colorID, secondColorID) end

--- SET_PED_RANDOM_PROPS
--- **This is the server-side RPC native equivalent of the client native [SET_PED_RANDOM_PROPS](?\_0xC44AA05345C992C6).**
--- @name SET_PED_RANDOM_PROPS
--- @param ped Ped The ped handle.
--- @return void (Type not found)
function SetPedRandomProps(ped) end

--- SET_CURRENT_PED_WEAPON
--- **This is the server-side RPC native equivalent of the client native [SET_CURRENT_PED_WEAPON](?\_0xADF692B254977C0C).**
--- @name SET_CURRENT_PED_WEAPON
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param bForceInHand boolean 
--- @return void (Type not found)
function SetCurrentPedWeapon(ped, weaponHash, bForceInHand) end

--- SET_ENTITY_ROTATION
--- **This is the server-side RPC native equivalent of the client native [SET_ENTITY_ROTATION](?\_0x8524A8B0171D5E07).**
--- @name SET_ENTITY_ROTATION
--- @param entity Entity 
--- @param pitch number 
--- @param roll number 
--- @param yaw number 
--- @param rotationOrder number The order yaw pitch roll are applied, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9).
--- @param p5 boolean 
--- @return void (Type not found)
function SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5) end

--- Return variable is never used in R\*'s scripts.
--- Not sure what p2 does. It seems like it would be a time judging by it's usage in R\*'s scripts, but didn't seem to affect anything in my testings.
--- x, y, and z are coordinates, most likely to where the ped will fall.
--- p7 is probably the force of the fall, but untested, so I left the variable name the same.
--- p8 to p13 are always 0f in R\*'s scripts.
--- (Simplified) Example of the usage of the function from R\*'s scripts:
--- ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);
--- **This is the server-side RPC native equivalent of the client native [SET_PED_TO_RAGDOLL_WITH_FALL](?\_0xD76632D99E4966C8).**
--- @name SET_PED_TO_RAGDOLL_WITH_FALL
--- @param ped Ped 
--- @param time number 
--- @param p2 number 
--- @param ragdollType number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p7 number 
--- @param p8 number 
--- @param p9 number 
--- @param p10 number 
--- @param p11 number 
--- @param p12 number 
--- @param p13 number 
--- @return void (Type not found)
function SetPedToRagdollWithFall(ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13) end

--- TASK_EVERYONE_LEAVE_VEHICLE
--- **This is the server-side RPC native equivalent of the client native [TASK_EVERYONE_LEAVE_VEHICLE](?\_0x7F93691AB4B92272).**
--- @name TASK_EVERYONE_LEAVE_VEHICLE
--- @param vehicle Vehicle 
--- @return void (Type not found)
function TaskEveryoneLeaveVehicle(vehicle) end

--- Used for freemode (online) characters.
--- **This is the server-side RPC native equivalent of the client native [\_SET_PED_HAIR_COLOR](?\_0x4CFFC65454C93A49).**
--- @name _SET_PED_HAIR_COLOR
--- @param ped Ped 
--- @param colorID number 
--- @param highlightColorID number 
--- @return void (Type not found)
function SetPedHairColor(ped, colorID, highlightColorID) end

--- Used for freemode (online) characters.
--- Indices:
--- 1.  black
--- 2.  very light blue/green
--- 3.  dark blue
--- 4.  brown
--- 5.  darker brown
--- 6.  light brown
--- 7.  blue
--- 8.  light blue
--- 9.  pink
--- 10. yellow
--- 11. purple
--- 12. black
--- 13. dark green
--- 14. light brown
--- 15. yellow/black pattern
--- 16. light colored spiral pattern
--- 17. shiny red
--- 18. shiny half blue/half red
--- 19. half black/half light blue
--- 20. white/red perimter
--- 21. green snake
--- 22. red snake
--- 23. dark blue snake
--- 24. dark yellow
--- 25. bright yellow
--- 26. all black
--- 27. red small pupil
--- 28. devil blue/black
--- 29. white small pupil
--- 30. glossed over
--- **This is the server-side RPC native equivalent of the client native [\_SET_PED_EYE_COLOR](?\_0x50B56988B170AFDF).**
--- @name _SET_PED_EYE_COLOR
--- @param ped Ped 
--- @param index number 
--- @return void (Type not found)
function SetPedEyeColor(ped, index) end

--- Removes the blip from your map.
--- **This is the server-side RPC native equivalent of the client native [REMOVE_BLIP](?\_0x86A652570E5F25DD).**
--- @name REMOVE_BLIP
--- @param blip Blip Blip handle to remove.
--- @return void (Type not found)
function RemoveBlip(blip) end

--- example from fm_mission_controller
--- TASK::TASK_GO_TO_COORD_ANY_MEANS(l\_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);
--- **This is the server-side RPC native equivalent of the client native [TASK_GO_TO_COORD_ANY_MEANS](?\_0x5BC448CB78FA3E88).**
--- @name TASK_GO_TO_COORD_ANY_MEANS
--- @param ped Ped 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param speed number 
--- @param p5  
--- @param p6 boolean 
--- @param walkingStyle number 
--- @param p8 number 
--- @return void (Type not found)
function TaskGoToCoordAnyMeans(ped, x, y, z, speed, p5, p6, walkingStyle, p8) end

--- This native is used to set component variation on a ped. Components, drawables and textures IDs are related to the ped model.
--- ### MP Freemode list of components
--- **0**: Face
--- **1**: Mask
--- **2**: Hair
--- **3**: Torso
--- **4**: Leg
--- **5**: Parachute / bag
--- **6**: Shoes
--- **7**: Accessory
--- **8**: Undershirt
--- **9**: Kevlar
--- **10**: Badge
--- **11**: Torso 2
--- List of Component IDs
--- ```cpp
--- // Components
--- enum ePedVarComp
--- {
--- PV_COMP_INVALID = 0xFFFFFFFF,
--- PV_COMP_HEAD = 0, // "HEAD"
--- PV_COMP_BERD = 1, // "BEARD"
--- PV_COMP_HAIR = 2, // "HAIR"
--- PV_COMP_UPPR = 3, // "UPPER"
--- PV_COMP_LOWR = 4, // "LOWER"
--- PV_COMP_HAND = 5, // "HAND"
--- PV_COMP_FEET = 6, // "FEET"
--- PV_COMP_TEEF = 7, // "TEETH"
--- PV_COMP_ACCS = 8, // "ACCESSORIES"
--- PV_COMP_TASK = 9, // "TASK"
--- PV_COMP_DECL = 10, // "DECL"
--- PV_COMP_JBIB = 11, // "JBIB"
--- PV_COMP_MAX = 12,
--- };
--- **This is the server-side RPC native equivalent of the client native [SET_PED_COMPONENT_VARIATION](?\_0x262B14F48D29DE80).**
--- @name SET_PED_COMPONENT_VARIATION
--- @param ped Ped The ped handle.
--- @param componentId number The component that you want to set.
--- @param drawableId number The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#\_0x27561561732A7842).
--- @param textureId number The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#\_0x8F7156A3142A6BAD).
--- @param paletteId number 0 to 3.
--- @return void (Type not found)
function SetPedComponentVariation(ped, componentId, drawableId, textureId, paletteId) end

--- TASK_WARP_PED_INTO_VEHICLE
--- **This is the server-side RPC native equivalent of the client native [TASK_WARP_PED_INTO_VEHICLE](?\_0x9A7D091411C5F684).**
--- @name TASK_WARP_PED_INTO_VEHICLE
--- @param ped Ped 
--- @param vehicle Vehicle 
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
--- @return void (Type not found)
function TaskWarpPedIntoVehicle(ped, vehicle, seatIndex) end

--- Set the model for a specific Player. Note that this will destroy the current Ped for the Player and create a new one, any reference to the old ped will be invalid after calling this.
--- As per usual, make sure to request the model first and wait until it has loaded.
--- **This is the server-side RPC native equivalent of the client native [SET_PLAYER_MODEL](?\_0x00A1CADD00108836).**
--- @name SET_PLAYER_MODEL
--- @param player Player The player to set the model for
--- @param model Hash The model to use
--- @return void (Type not found)
function SetPlayerModel(player, model) end

--- Sets Ped Default Clothes
--- **This is the server-side RPC native equivalent of the client native [SET_PED_DEFAULT_COMPONENT_VARIATION](?\_0x45EEE61580806D63).**
--- @name SET_PED_DEFAULT_COMPONENT_VARIATION
--- @param ped Ped 
--- @return void (Type not found)
function SetPedDefaultComponentVariation(ped) end

--- p2 often set to 1000.0 in the decompiled scripts.
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_BODY_HEALTH](?\_0xB77D05AC8C78AADB).**
--- @name SET_VEHICLE_BODY_HEALTH
--- @param vehicle Vehicle 
--- @param value number 
--- @return void (Type not found)
function SetVehicleBodyHealth(vehicle, value) end

--- PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);
--- Known values:
--- **This is the server-side RPC native equivalent of the client native [SET_PED_RESET_FLAG](?\_0xC1E8A365BF3B29F2).**
--- @name SET_PED_RESET_FLAG
--- @param ped Ped 
--- @param flagId number 
--- @param doReset boolean 
--- @return void (Type not found)
function SetPedResetFlag(ped, flagId, doReset) end

--- p4/p5: Unusued in TU27
--- ### Ragdoll Types
--- **0**: CTaskNMRelax
--- **1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
--- **Else**: CTaskNMBalance
--- **This is the server-side RPC native equivalent of the client native [SET_PED_TO_RAGDOLL](?\_0xAE99FB955581844A).**
--- @name SET_PED_TO_RAGDOLL
--- @param ped Ped 
--- @param time1 number Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.
--- @param time2 number 
--- @param ragdollType number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @param p6 boolean 
--- @return void (Type not found)
function SetPedToRagdoll(ped, time1, time2, ragdollType, p4, p5, p6) end

--- Sets the various freemode face features, e.g. nose length, chin shape.
--- **Indexes (From 0 to 19):**
--- Parentheses indicate morph scale/direction as in (-1.0 to 1.0)
--- *   **0**: Nose Width (Thin/Wide)
--- *   **1**: Nose Peak (Up/Down)
--- *   **2**: Nose Length (Long/Short)
--- *   **3**: Nose Bone Curveness (Crooked/Curved)
--- *   **4**: Nose Tip (Up/Down)
--- *   **5**: Nose Bone Twist (Left/Right)
--- *   **6**: Eyebrow (Up/Down)
--- *   **7**: Eyebrow (In/Out)
--- *   **8**: Cheek Bones (Up/Down)
--- *   **9**: Cheek Sideways Bone Size (In/Out)
--- *   **10**: Cheek Bones Width (Puffed/Gaunt)
--- *   **11**: Eye Opening (Both) (Wide/Squinted)
--- *   **12**: Lip Thickness (Both) (Fat/Thin)
--- *   **13**: Jaw Bone Width (Narrow/Wide)
--- *   **14**: Jaw Bone Shape (Round/Square)
--- *   **15**: Chin Bone (Up/Down)
--- *   **16**: Chin Bone Length (In/Out or Backward/Forward)
--- *   **17**: Chin Bone Shape (Pointed/Square)
--- *   **18**: Chin Hole (Chin Bum)
--- *   **19**: Neck Thickness (Thin/Thick)
---     **Note:**
---     You may need to call [`SetPedHeadBlendData`](#0x9414E18B9434C2FE) prior to calling this native in order for it to work.
--- **This is the server-side RPC native equivalent of the client native [\_SET_PED_FACE_FEATURE](?\_0x71A5C1DBA060049E).**
--- @name _SET_PED_FACE_FEATURE
--- @param ped Ped The ped entity
--- @param index number An integer ranging from 0 to 19
--- @param scale number A float ranging from -1.0 to 1.0
--- @return void (Type not found)
function SetPedFaceFeature(ped, index, scale) end

--- p1 is always 0 in R\* scripts; and a quick disassembly seems to indicate that p1 is unused.
--- **This is the server-side RPC native equivalent of the client native [SET_PED_RANDOM_COMPONENT_VARIATION](?\_0xC8A9481A01E63C28).**
--- @name SET_PED_RANDOM_COMPONENT_VARIATION
--- @param ped Ped 
--- @param p1 number 
--- @return void (Type not found)
function SetPedRandomComponentVariation(ped, p1) end

--- TASK_GO_STRAIGHT_TO_COORD
--- **This is the server-side RPC native equivalent of the client native [TASK_GO_STRAIGHT_TO_COORD](?\_0xD76B57B44F1E6F8B).**
--- @name TASK_GO_STRAIGHT_TO_COORD
--- @param ped Ped The ped handle.
--- @param x number The x coordinate.
--- @param y number The y coordinate.
--- @param z number The z coordinate.
--- @param speed number The ped movement speed.
--- @param timeout number \-1 , other values appear to break the ped movement.
--- @param targetHeading number The heading you want the ped to be on x,y,z coord.
--- @param distanceToSlide number The distance from x,y,z where the ped will start sliding.
--- @return void (Type not found)
function TaskGoStraightToCoord(ped, x, y, z, speed, timeout, targetHeading, distanceToSlide) end

--- Sets the dirt level of the passed vehicle.
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DIRT_LEVEL](?\_0x79D3B596FE44EE8B).**
--- @name SET_VEHICLE_DIRT_LEVEL
--- @param vehicle Vehicle The vehicle to set.
--- @param dirtLevel number A number between 0.0 and 15.0 representing the vehicles dirt level.
--- @return void (Type not found)
function SetVehicleDirtLevel(vehicle, dirtLevel) end

--- Sets the selected vehicle's colors to their default value (specific variant specified using the colorCombination parameter).
--- Range of possible values for colorCombination is currently unknown, I couldn't find where these values are stored either (Disquse's guess was vehicles.meta but I haven't seen it in there.)
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_COLOUR_COMBINATION](?\_0x33E8CD3322E2FE31).**
--- @name SET_VEHICLE_COLOUR_COMBINATION
--- @param vehicle Vehicle The vehicle to modify.
--- @param colorCombination number One of the default color values of the vehicle.
--- @return void (Type not found)
function SetVehicleColourCombination(vehicle, colorCombination) end

--- This native is used to set prop variation on a ped. Components, drawables and textures IDs are related to the ped model.
--- ### MP Freemode list of props
--- **0**: Hats
--- **1**: Glasses
--- **2**: Ears
--- **6**: Watches
--- **7**: Bracelets
--- List of Prop IDs
--- ```cpp
--- // Props
--- enum eAnchorPoints
--- {
--- ANCHOR_HEAD = 0, // "p_head"
--- ANCHOR_EYES = 1, // "p_eyes"
--- ANCHOR_EARS = 2, // "p_ears"
--- ANCHOR_MOUTH = 3, // "p_mouth"
--- ANCHOR_LEFT_HAND = 4, // "p_lhand"
--- ANCHOR_RIGHT_HAND = 5, // "p_rhand"
--- ANCHOR_LEFT_WRIST = 6, // "p_lwrist"
--- ANCHOR_RIGHT_WRIST = 7, // "p_rwrist"
--- ANCHOR_HIP = 8, // "p_lhip"
--- ANCHOR_LEFT_FOOT = 9, // "p_lfoot"
--- ANCHOR_RIGHT_FOOT = 10, // "p_rfoot"
--- ANCHOR_PH_L_HAND = 11, // "ph_lhand"
--- ANCHOR_PH_R_HAND = 12, // "ph_rhand"
--- NUM_ANCHORS = 13,
--- };
--- **This is the server-side RPC native equivalent of the client native [SET_PED_PROP_INDEX](?\_0x93376B65A266EB5F).**
--- @name SET_PED_PROP_INDEX
--- @param ped Ped The ped handle.
--- @param componentId number The component that you want to set. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
--- @param drawableId number The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
--- @param textureId number The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171).
--- @param attach boolean Attached or not.
--- @return void (Type not found)
function SetPedPropIndex(ped, componentId, drawableId, textureId, attach) end

--- For more info please refer to [this](https://gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained) topic.
--- **Other information:**
--- IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.</br>
--- This native function is often called prior to calling natives such as:
--- *   [`SetPedHairColor`](#0xBB43F090)
--- *   [`SetPedHeadOverlayColor`](#0x78935A27)
--- *   [`SetPedHeadOverlay`](#0xD28DBA90)
--- *   [`SetPedFaceFeature`](#0x6C8D4458)
--- **This is the server-side RPC native equivalent of the client native [SET_PED_HEAD_BLEND_DATA](?\_0x9414E18B9434C2FE).**
--- @name SET_PED_HEAD_BLEND_DATA
--- @param ped Ped The ped entity
--- @param shapeFirstID number Controls the shape of the first ped's face
--- @param shapeSecondID number Controls the shape of the second ped's face
--- @param shapeThirdID number Controls the shape of the third ped's face
--- @param skinFirstID number Controls the first id's skin tone
--- @param skinSecondID number Controls the second id's skin tone
--- @param skinThirdID number Controls the third id's skin tone
--- @param shapeMix number 0.0 - 1.0 Of whose characteristics to take Mother -> Father (shapeFirstID and shapeSecondID)
--- @param skinMix number 0.0 - 1.0 Of whose characteristics to take Mother -> Father (skinFirstID and skinSecondID)
--- @param thirdMix number Overrides the others in favor of the third IDs.
--- @param isParent boolean IsParent is set for "children" of the player character's grandparents during old-gen character creation. It has unknown effect otherwise.
--- @return void (Type not found)
function SetPedHeadBlendData(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DOOR_BROKEN](?\_0xD4D4F6A4AB575A33).**
--- @name SET_VEHICLE_DOOR_BROKEN
--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @param deleteDoor boolean 
--- @return void (Type not found)
function SetVehicleDoorBroken(vehicle, doorIndex, deleteDoor) end

--- SET_VEHICLE_ALARM
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_ALARM](?\_0xCDE5E70C1DDB954C).**
--- @name SET_VEHICLE_ALARM
--- @param vehicle Vehicle 
--- @param state boolean 
--- @return void (Type not found)
function SetVehicleAlarm(vehicle, state) end

--- Flags:
--- SPC_AMBIENT_SCRIPT = (1 << 1),
--- SPC_CLEAR_TASKS = (1 << 2),
--- SPC_REMOVE_FIRES = (1 << 3),
--- SPC_REMOVE_EXPLOSIONS = (1 << 4),
--- SPC_REMOVE_PROJECTILES = (1 << 5),
--- SPC_DEACTIVATE_GADGETS = (1 << 6),
--- SPC_REENABLE_CONTROL_ON_DEATH = (1 << 7),
--- SPC_LEAVE_CAMERA_CONTROL_ON = (1 << 8),
--- SPC_ALLOW_PLAYER_DAMAGE = (1 << 9),
--- SPC_DONT_STOP_OTHER_CARS_AROUND_PLAYER = (1 << 10),
--- SPC_PREVENT_EVERYBODY_BACKOFF = (1 << 11),
--- SPC_ALLOW_PAD_SHAKE = (1 << 12)
--- See: https://alloc8or.re/gta5/doc/enums/eSetPlayerControlFlag.txt
--- **This is the server-side RPC native equivalent of the client native [SET_PLAYER_CONTROL](?\_0x8D32347D6D4C40A2).**
--- @name SET_PLAYER_CONTROL
--- @param player Player 
--- @param bHasControl boolean 
--- @param flags number 
--- @return void (Type not found)
function SetPlayerControl(player, bHasControl, flags) end

--- OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0.
--- overlayID       Part                  Index, to disable
--- 0               Blemishes             0 - 23, 255
--- 1               Facial Hair           0 - 28, 255
--- 2               Eyebrows              0 - 33, 255
--- 3               Ageing                0 - 14, 255
--- 4               Makeup                0 - 74, 255
--- 5               Blush                 0 - 6, 255
--- 6               Complexion            0 - 11, 255
--- 7               Sun Damage            0 - 10, 255
--- 8               Lipstick              0 - 9, 255
--- 9               Moles/Freckles        0 - 17, 255
--- 10              Chest Hair            0 - 16, 255
--- 11              Body Blemishes        0 - 11, 255
--- 12              Add Body Blemishes    0 - 1, 255
--- **Note:**
--- You may need to call [`SetPedHeadBlendData`](#0x9414E18B9434C2FE) prior to calling this native in order for it to work.
--- **This is the server-side RPC native equivalent of the client native [SET_PED_HEAD_OVERLAY](?\_0x48F44967FA05CC1E).**
--- @name SET_PED_HEAD_OVERLAY
--- @param ped Ped The ped entity
--- @param overlayID number The overlay id displayed up above.
--- @param index number An integer representing the index (from 0 to `_GET_NUM_OVERLAY_VALUES(overlayID)-1`)
--- @param opacity number A float ranging from 0.0 to 1.0
--- @return void (Type not found)
function SetPedHeadOverlay(ped, overlayID, index, opacity) end

--- colorPrimary & colorSecondary are the paint indexes for the vehicle.
--- For a list of valid paint indexes, view: pastebin.com/pwHci0xK
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_COLOURS](?\_0x4F1D4BE3A7F24601).**
--- @name SET_VEHICLE_COLOURS
--- @param vehicle Vehicle 
--- @param colorPrimary number 
--- @param colorSecondary number 
--- @return void (Type not found)
function SetVehicleColours(vehicle, colorPrimary, colorSecondary) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- float blendInSpeed > normal speed is 8.0f
--- ----------------------
--- float blendOutSpeed > normal speed is 8.0f
--- ----------------------
--- int duration: time in millisecond
--- ----------------------
--- -1 _ _ _ _ _ _ _> Default (see flag)
--- 0 _ _ _ _ _ _ _ > Not play at all
--- Small value _ _ > Slow down animation speed
--- Other _ _ _ _ _ > freeze player control until specific time (ms) has
--- _ _ _ _ _ _ _ _ _ passed. (No effect if flag is set to be
--- _ _ _ _ _ _ _ _ _ controllable.)
--- int flag:
--- ----------------------
--- enum eAnimationFlags
--- {
--- ANIM_FLAG_NORMAL = 0,
--- ANIM_FLAG_REPEAT = 1,
--- ANIM_FLAG_STOP_LAST_FRAME = 2,
--- ANIM_FLAG_UPPERBODY = 16,
--- ANIM_FLAG_ENABLE_PLAYER_CONTROL = 32,
--- ANIM_FLAG_CANCELABLE = 120,
--- };
--- Odd number : loop infinitely
--- Even number : Freeze at last frame
--- Multiple of 4: Freeze at last frame but controllable
--- 01 to 15 > Full body
--- 10 to 31 > Upper body
--- 32 to 47 > Full body > Controllable
--- 48 to 63 > Upper body > Controllable
--- ...
--- 001 to 255 > Normal
--- 256 to 511 > Garbled
--- ...
--- playbackRate:
--- values are between 0.0 and 1.0
--- lockX:
--- 0 in most cases 1 for rcmepsilonism8 and rcmpaparazzo_3
--- > 1 for mini@sprunk
--- lockY:
--- 0 in most cases
--- 1 for missfam5_yoga, missfra1mcs_2_crew_react
--- lockZ:
--- 0 for single player
--- Can be 1 but only for MP
--- **This is the server-side RPC native equivalent of the client native [TASK_PLAY_ANIM](?\_0xEA47FE3719165B94).**
--- @name TASK_PLAY_ANIM
--- @param ped Ped 
--- @param animDictionary string 
--- @param animationName string 
--- @param blendInSpeed number 
--- @param blendOutSpeed number 
--- @param duration number 
--- @param flag number 
--- @param playbackRate number 
--- @param lockX boolean 
--- @param lockY boolean 
--- @param lockZ boolean 
--- @return void (Type not found)
function TaskPlayAnim(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ) end

--- TASK_REACT_AND_FLEE_PED
--- **This is the server-side RPC native equivalent of the client native [TASK_REACT_AND_FLEE_PED](?\_0x72C896464915D1B1).**
--- @name TASK_REACT_AND_FLEE_PED
--- @param ped Ped 
--- @param fleeTarget Ped 
--- @return void (Type not found)
function TaskReactAndFleePed(ped, fleeTarget) end

--- speed 1.0 = walk, 2.0 = run
--- p5 1 = normal, 3 = teleport to vehicle, 8 = normal/carjack ped from seat, 16 = teleport directly into vehicle
--- p6 is always 0
--- **This is the server-side RPC native equivalent of the client native [TASK_ENTER_VEHICLE](?\_0xC20E50AA46D09CA8).**
--- @name TASK_ENTER_VEHICLE
--- @param ped Ped 
--- @param vehicle Vehicle 
--- @param timeout number 
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
--- @param speed number 
--- @param flag number 
--- @param p6  
--- @return void (Type not found)
function TaskEnterVehicle(ped, vehicle, timeout, seatIndex, speed, flag, p6) end

--- Example:
--- TASK::TASK_DRIVE_BY(l\_467\[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});
--- Needs working example. Doesn't seem to do anything.
--- I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.
--- I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.
--- I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
--- **This is the server-side RPC native equivalent of the client native [TASK_DRIVE_BY](?\_0x2F8AF0E82773A171).**
--- @name TASK_DRIVE_BY
--- @param driverPed Ped 
--- @param targetPed Ped 
--- @param targetVehicle Vehicle 
--- @param targetX number 
--- @param targetY number 
--- @param targetZ number 
--- @param distanceToShoot number 
--- @param pedAccuracy number 
--- @param p8 boolean 
--- @param firingPattern Hash 
--- @return void (Type not found)
function TaskDriveBy(driverPed, targetPed, targetVehicle, targetX, targetY, targetZ, distanceToShoot, pedAccuracy, p8, firingPattern) end

--- It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position).
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **This is the server-side RPC native equivalent of the client native [TASK_PLAY_ANIM_ADVANCED](?\_0x83CDB10EA29B370B).**
--- @name TASK_PLAY_ANIM_ADVANCED
--- @param ped Ped The target ped
--- @param animDict string Name of the animation dictionary
--- @param animName string Name of the animation
--- @param posX number Initial X position of the task
--- @param posY number Initial Y position of the task
--- @param posZ number Initial Z position of the task
--- @param rotX number Initial X rotation of the task, doesn't seem to have any effect
--- @param rotY number Initial Y rotation of the task, doesn't seem to have any effect
--- @param rotZ number Initial Z rotation of the task
--- @param animEnterSpeed number Adjust character speed to fully enter animation
--- @param animExitSpeed number Adjust character speed to fully exit animation (useless `ClearPedTasksImmediately()` is called)
--- @param duration number Time in milliseconds
--- @param flag  
--- @param animTime number Value between 0.0 and 1.0, lets you start an animation from the given point
--- @param p14  
--- @param p15  
--- @return void (Type not found)
function TaskPlayAnimAdvanced(ped, animDict, animName, posX, posY, posZ, rotX, rotY, rotZ, animEnterSpeed, animExitSpeed, duration, flag, animTime, p14, p15) end

--- Flags are the same flags used in [`TASK_LEAVE_VEHICLE`](#\_0xD3DBCE61A490BE02)
--- **This is the server-side RPC native equivalent of the client native [TASK_LEAVE_ANY_VEHICLE](?\_0x504D54DF3F6F2247).**
--- @name TASK_LEAVE_ANY_VEHICLE
--- @param ped Ped 
--- @param p1 number 
--- @param flags number 
--- @return void (Type not found)
function TaskLeaveAnyVehicle(ped, p1, flags) end

--- Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
--- **This is the server-side RPC native equivalent of the client native [SET_ENTITY_COORDS](?\_0x06843DA7060A026B).**
--- @name SET_ENTITY_COORDS
--- @param entity Entity The entity to change coordinates for.
--- @param xPos number The X coordinate.
--- @param yPos number The Y coordinate.
--- @param zPos number The Z coordinate, ground level.
--- @param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
--- @param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
--- @param ragdollFlag boolean A special flag used for ragdolling peds.
--- @param clearArea boolean Whether to clear any entities in the target area.
--- @return void (Type not found)
function SetEntityCoords(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag, clearArea) end

--- //this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds
--- Entity aimedentity;
--- Player player = PLAYER::PLAYER_ID();
--- PLAYER::\_GET_AIMED_ENTITY(player, \&aimedentity);
--- //bg is an array of peds
--- TASK::TASK_SHOOT_AT_ENTITY(bg\[i], aimedentity, 5000, MISC::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));
--- in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.
--- Firing Pattern Hash Information: https://pastebin.com/Px036isB
--- **This is the server-side RPC native equivalent of the client native [TASK_SHOOT_AT_ENTITY](?\_0x08DA95E8298AE772).**
--- @name TASK_SHOOT_AT_ENTITY
--- @param entity Entity 
--- @param target Entity 
--- @param duration number 
--- @param firingPattern Hash 
--- @return void (Type not found)
function TaskShootAtEntity(entity, target, duration, firingPattern) end

--- Makes the specified ped attack the target ped.
--- p2 should be 0
--- p3 should be 16
--- **This is the server-side RPC native equivalent of the client native [TASK_COMBAT_PED](?\_0xF166E48407BAC484).**
--- @name TASK_COMBAT_PED
--- @param ped Ped 
--- @param targetPed Ped 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function TaskCombatPed(ped, targetPed, p2, p3) end

--- Firing Pattern Hash Information: https://pastebin.com/Px036isB
--- **This is the server-side RPC native equivalent of the client native [TASK_SHOOT_AT_COORD](?\_0x46A6CC01E0826106).**
--- @name TASK_SHOOT_AT_COORD
--- @param ped Ped 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param duration number 
--- @param firingPattern Hash 
--- @return void (Type not found)
function TaskShootAtCoord(ped, x, y, z, duration, firingPattern) end

--- The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0
--- Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.
--- Example: TASK::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)
--- Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
--- **This is the server-side RPC native equivalent of the client native [TASK_GO_TO_ENTITY](?\_0x6A071245EB0D1882).**
--- @name TASK_GO_TO_ENTITY
--- @param entity Entity 
--- @param target Entity 
--- @param duration number 
--- @param distance number 
--- @param speed number 
--- @param p5 number 
--- @param p6 number 
--- @return void (Type not found)
function TaskGoToEntity(entity, target, duration, distance, speed, p5, p6) end

--- Flags from decompiled scripts:
--- 0 = normal exit and closes door.
--- 1 = normal exit and closes door.
--- 16 = teleports outside, door kept closed.  (This flag does not seem to work for the front seats in buses, NPCs continue to exit normally)
--- 64 = normal exit and closes door, maybe a bit slower animation than 0.
--- 256 = normal exit but does not close the door.
--- 4160 = ped is throwing himself out, even when the vehicle is still.
--- 262144 = ped moves to passenger seat first, then exits normally
--- Others to be tried out: 320, 512, 131072.
--- **This is the server-side RPC native equivalent of the client native [TASK_LEAVE_VEHICLE](?\_0xD3DBCE61A490BE02).**
--- @name TASK_LEAVE_VEHICLE
--- @param ped Ped 
--- @param vehicle Vehicle 
--- @param flags number 
--- @return void (Type not found)
function TaskLeaveVehicle(ped, vehicle, flags) end

--- cpp
--- // Potential names and hash collisions included as comments
--- enum ePedConfigFlags {
--- \_0x67D1A445 = 0,
--- \_0xC63DE95E = 1,
--- CPED_CONFIG_FLAG_NoCriticalHits = 2,
--- CPED_CONFIG_FLAG_DrownsInWater = 3,
--- CPED_CONFIG_FLAG_DisableReticuleFixedLockon = 4,
--- \_0x37D196F4 = 5,
--- \_0xE2462399 = 6,
--- CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly = 7,
--- \_0xEDDEB838 = 8,
--- \_0xB398B6FD = 9,
--- \_0xF6664E68 = 10,
--- \_0xA05E7CA3 = 11,
--- \_0xCE394045 = 12,
--- CPED_CONFIG_FLAG_NeverLeavesGroup = 13,
--- \_0xCD8D1411 = 14,
--- \_0xB031F1A9 = 15,
--- \_0xFE65BEE3 = 16,
--- CPED_CONFIG_FLAG_BlockNonTemporaryEvents = 17,
--- \_0x380165BD = 18,
--- \_0x07C045C7 = 19,
--- \_0x583B5E2D = 20,
--- \_0x475EDA58 = 21,
--- \_0x8629D05B = 22,
--- \_0x1522968B = 23,
--- CPED_CONFIG_FLAG_IgnoreSeenMelee = 24,
--- \_0x4CC09C4B = 25,
--- \_0x034F3053 = 26,
--- \_0xD91BA7CC = 27,
--- \_0x5C8DC66E = 28,
--- \_0x8902EAA0 = 29,
--- \_0x6580B9D2 = 30,
--- \_0x0EF7A297 = 31,
--- \_0x6BF86E5B = 32,
--- CPED_CONFIG_FLAG_DieWhenRagdoll = 33,
--- CPED_CONFIG_FLAG_HasHelmet = 34,
--- CPED_CONFIG_FLAG_UseHelmet = 35,
--- \_0xEEB3D630 = 36,
--- \_0xB130D17B = 37,
--- \_0x5F071200 = 38,
--- CPED_CONFIG_FLAG_DisableEvasiveDives = 39,
--- \_0xC287AAFF = 40,
--- \_0x203328CC = 41,
--- CPED_CONFIG_FLAG_DontInfluenceWantedLevel = 42,
--- CPED_CONFIG_FLAG_DisablePlayerLockon = 43,
--- CPED_CONFIG_FLAG_DisableLockonToRandomPeds = 44,
--- \_0xEC4A8ACF = 45,
--- \_0xDB115BFA = 46,
--- CPED_CONFIG_FLAG_PedBeingDeleted = 47,
--- CPED_CONFIG_FLAG_BlockWeaponSwitching = 48,
--- \_0xF8E99565 = 49,
--- \_0xDD17FEE6 = 50,
--- \_0x7ED9B2C9 = 51,
--- \_0x655E8618 = 52,
--- \_0x5A6C1F6E = 53,
--- \_0xD749FC41 = 54,
--- \_0x357F63F3 = 55,
--- \_0xC5E60961 = 56,
--- \_0x29275C3E = 57,
--- CPED_CONFIG_FLAG_IsFiring = 58,
--- CPED_CONFIG_FLAG_WasFiring = 59,
--- CPED_CONFIG_FLAG_IsStanding = 60,
--- CPED_CONFIG_FLAG_WasStanding = 61,
--- CPED_CONFIG_FLAG_InVehicle = 62,
--- CPED_CONFIG_FLAG_OnMount = 63,
--- CPED_CONFIG_FLAG_AttachedToVehicle = 64,
--- CPED_CONFIG_FLAG_IsSwimming = 65,
--- CPED_CONFIG_FLAG_WasSwimming = 66,
--- CPED_CONFIG_FLAG_IsSkiing = 67,
--- CPED_CONFIG_FLAG_IsSitting = 68,
--- CPED_CONFIG_FLAG_KilledByStealth = 69,
--- CPED_CONFIG_FLAG_KilledByTakedown = 70,
--- CPED_CONFIG_FLAG_Knockedout = 71,
--- \_0x3E3C4560 = 72,
--- \_0x2994C7B7 = 73,
--- \_0x6D59D275 = 74,
--- CPED_CONFIG_FLAG_UsingCoverPoint = 75,
--- CPED_CONFIG_FLAG_IsInTheAir = 76,
--- \_0x2D493FB7 = 77,
--- CPED_CONFIG_FLAG_IsAimingGun = 78,
--- \_0x14D69875 = 79,
--- \_0x40B05311 = 80,
--- \_0x8B230BC5 = 81,
--- \_0xC74E5842 = 82,
--- \_0x9EA86147 = 83,
--- \_0x674C746C = 84,
--- \_0x3E56A8C2 = 85,
--- \_0xC144A1EF = 86,
--- \_0x0548512D = 87,
--- \_0x31C93909 = 88,
--- \_0xA0269315 = 89,
--- \_0xD4D59D4D = 90,
--- \_0x411D4420 = 91,
--- \_0xDF4AEF0D = 92,
--- CPED_CONFIG_FLAG_ForcePedLoadCover = 93,
--- \_0x300E4CD3 = 94,
--- \_0xF1C5BF04 = 95,
--- \_0x89C2EF13 = 96,
--- CPED_CONFIG_FLAG_VaultFromCover = 97,
--- \_0x02A852C8 = 98,
--- \_0x3D9407F1 = 99,
--- \_0x319B4558 = 100,
--- CPED_CONFIG_FLAG_ForcedAim = 101,
--- \_0xB942D71A = 102,
--- \_0xD26C55A8 = 103,
--- \_0xB89E703B = 104,
--- CPED_CONFIG_FLAG_ForceReload = 105,
--- \_0xD9E73DA2 = 106,
--- \_0xFF71DC2C = 107,
--- \_0x1E27E8D8 = 108,
--- \_0xF2C53966 = 109,
--- \_0xC4DBE247 = 110,
--- \_0x83C0A4BF = 111,
--- \_0x0E0FAF8C = 112,
--- \_0x26616660 = 113,
--- \_0x43B80B79 = 114,
--- \_0x0D2A9309 = 115,
--- \_0x12C1C983 = 116,
--- CPED_CONFIG_FLAG_BumpedByPlayer = 117,
--- \_0xE586D504 = 118,
--- \_0x52374204 = 119,
--- CPED_CONFIG_FLAG_IsHandCuffed = 120,
--- CPED_CONFIG_FLAG_IsAnkleCuffed = 121,
--- CPED_CONFIG_FLAG_DisableMelee = 122,
--- \_0xFE714397 = 123,
--- \_0xB3E660BD = 124,
--- \_0x5FED6BFD = 125,
--- \_0xC9D6F66F = 126,
--- \_0x519BC986 = 127,
--- CPED_CONFIG_FLAG_CanBeAgitated = 128,
--- \_0x9A4B617C = 129, // CPED_CONFIG_FLAG_FaceDirInsult
--- \_0xDAB70E9F = 130,
--- \_0xE569438A = 131,
--- \_0xBBC77D6D = 132,
--- \_0xCB59EF0F = 133,
--- \_0x8C5EA971 = 134,
--- CPED_CONFIG_FLAG_IsScuba = 135,
--- CPED_CONFIG_FLAG_WillArrestRatherThanJack = 136,
--- \_0xDCE59B58 = 137,
--- CPED_CONFIG_FLAG_RidingTrain = 138,
--- CPED_CONFIG_FLAG_ArrestResult = 139,
--- CPED_CONFIG_FLAG_CanAttackFriendly = 140,
--- \_0x98A4BE43 = 141,
--- \_0x6901E731 = 142,
--- \_0x9EC9BF6C = 143,
--- \_0x42841A8F = 144,
--- CPED_CONFIG_FLAG_ShootingAnimFlag = 145,
--- CPED_CONFIG_FLAG_DisableLadderClimbing = 146,
--- CPED_CONFIG_FLAG_StairsDetected = 147,
--- CPED_CONFIG_FLAG_SlopeDetected = 148,
--- \_0x1A15670B = 149,
--- \_0x61786EE5 = 150,
--- \_0xCB9186BD = 151,
--- \_0xF0710152 = 152,
--- \_0x43DFE310 = 153,
--- \_0xC43C624E = 154,
--- CPED_CONFIG_FLAG_CanPerformArrest = 155,
--- CPED_CONFIG_FLAG_CanPerformUncuff = 156,
--- CPED_CONFIG_FLAG_CanBeArrested = 157,
--- \_0xF7960FF5 = 158,
--- \_0x59564113 = 159,
--- \_0x0C6C3099 = 160,
--- \_0x645F927A = 161,
--- \_0xA86549B9 = 162,
--- \_0x8AAF337A = 163,
--- \_0x13BAA6E7 = 164,
--- \_0x5FB9D1F5 = 165,
--- CPED_CONFIG_FLAG_IsInjured = 166,
--- \_0x6398A20B = 167,
--- \_0xD8072639 = 168,
--- \_0xA05B1845 = 169,
--- \_0x83F6D220 = 170,
--- \_0xD8430331 = 171,
--- \_0x4B547520 = 172,
--- \_0xE66E1406 = 173,
--- \_0x1C4BFE0C = 174,
--- \_0x90008BFA = 175,
--- \_0x07C7A910 = 176,
--- \_0xF15F8191 = 177,
--- \_0xCE4E8BE2 = 178,
--- \_0x1D46E4F2 = 179,
--- CPED_CONFIG_FLAG_IsInCustody = 180,
--- \_0xE4FD9B3A = 181,
--- \_0x67AE0812 = 182,
--- CPED_CONFIG_FLAG_IsAgitated = 183,
--- CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat = 184,
--- \_0x7B2D325E = 185,
--- CPED_CONFIG_FLAG_EnableWeaponBlocking = 186,
--- CPED_CONFIG_FLAG_HasHurtStarted = 187,
--- CPED_CONFIG_FLAG_DisableHurt = 188,
--- CPED_CONFIG_FLAG_PlayerIsWeird = 189,
--- \_0x32FC208B = 190,
--- \_0x0C296E5A = 191,
--- \_0xE63B73EC = 192,
--- \_0x04E9CC80 = 193,
--- CPED_CONFIG_FLAG_UsingScenario = 194,
--- CPED_CONFIG_FLAG_VisibleOnScreen = 195,
--- \_0xD88C58A1 = 196,
--- \_0x5A3DCF43 = 197, // CPED_CONFIG_FLAG_AvoidUnderSide
--- \_0xEA02B420 = 198,
--- \_0x3F559CFF = 199,
--- \_0x8C55D029 = 200,
--- \_0x5E6466F6 = 201,
--- \_0xEB5AD706 = 202,
--- \_0x0EDDDDE7 = 203,
--- \_0xA64F7B1D = 204,
--- \_0x48532CBA = 205,
--- \_0xAA25A9E7 = 206,
--- \_0x415B26B9 = 207,
--- CPED_CONFIG_FLAG_DisableExplosionReactions = 208,
--- CPED_CONFIG_FLAG_DodgedPlayer = 209,
--- \_0x67405504 = 210,
--- \_0x75DDD68C = 211,
--- \_0x2AD879B4 = 212,
--- \_0x51486F91 = 213,
--- \_0x32F79E21 = 214,
--- \_0xBF099213 = 215,
--- \_0x054AC8E2 = 216,
--- \_0x14E495CC = 217,
--- \_0x3C7DF9DF = 218,
--- \_0x848FFEF2 = 219,
--- CPED_CONFIG_FLAG_DontEnterLeadersVehicle = 220,
--- \_0x2618E1CF = 221,
--- \_0x84F722FA = 222,
--- \_0xD1B87B1F = 223,
--- \_0x728AA918 = 224,
--- CPED_CONFIG_FLAG_DisablePotentialToBeWalkedIntoResponse = 225,
--- CPED_CONFIG_FLAG_DisablePedAvoidance = 226,
--- \_0x59E91185 = 227,
--- \_0x1EA7225F = 228,
--- CPED_CONFIG_FLAG_DisablePanicInVehicle = 229,
--- \_0x6DCA7D88 = 230,
--- \_0xFC3E572D = 231,
--- \_0x08E9F9CF = 232,
--- \_0x2D3BA52D = 233,
--- \_0xFD2F53EA = 234,
--- \_0x31A1B03B = 235,
--- CPED_CONFIG_FLAG_IsHoldingProp = 236,
--- \_0x82ED0A66 = 237, // CPED_CONFIG_FLAG_BlocksPathingWhenDead
--- \_0xCE57C9A3 = 238,
--- \_0x26149198 = 239,
--- \_0x1B33B598 = 240,
--- \_0x719B6E87 = 241,
--- \_0x13E8E8E8 = 242,
--- \_0xF29739AE = 243,
--- \_0xABEA8A74 = 244,
--- \_0xB60EA2BA = 245,
--- \_0x536B0950 = 246,
--- \_0x0C754ACA = 247,
--- CPED_CONFIG_FLAG_DisableVehicleSeatRandomAnimations = 248,
--- \_0x12659168 = 249,
--- \_0x1BDF2F04 = 250,
--- \_0x7728FAA3 = 251,
--- \_0x6A807ED8 = 252,
--- CPED_CONFIG_FLAG_OnStairs = 253,
--- \_0xE1A2F73F = 254,
--- \_0x5B3697C8 = 255,
--- \_0xF1EB20A9 = 256,
--- \_0x8B7DF407 = 257,
--- \_0x329DCF1A = 258,
--- \_0x8D90DD1B = 259,
--- \_0xB8A292B7 = 260,
--- \_0x8374B087 = 261,
--- \_0x2AF558F0 = 262,
--- \_0x82251455 = 263,
--- \_0x30CF498B = 264,
--- \_0xE1CD50AF = 265,
--- \_0x72E4AE48 = 266,
--- \_0xC2657EA1 = 267,
--- \_0x29FF6030 = 268,
--- \_0x8248A5EC = 269,
--- CPED_CONFIG_FLAG_OnStairSlope = 270,
--- \_0xA0897933 = 271,
--- CPED_CONFIG_FLAG_DontBlipCop = 272,
--- CPED_CONFIG_FLAG_ClimbedShiftedFence = 273,
--- \_0xF7823618 = 274,
--- \_0xDC305CCE = 275, // CPED_CONFIG_FLAG_KillWhenTrapped
--- CPED_CONFIG_FLAG_EdgeDetected = 276,
--- \_0x92B67896 = 277,
--- \_0xCAD677C9 = 278,
--- CPED_CONFIG_FLAG_AvoidTearGas = 279,
--- \_0x5276AC7B = 280,
--- \_0x1032692A = 281,
--- \_0xDA23E7F1 = 282,
--- \_0x9139724D = 283,
--- \_0xA1457461 = 284,
--- \_0x4186E095 = 285,
--- \_0xAC68E2EB = 286,
--- CPED_CONFIG_FLAG_RagdollingOnBoat = 287,
--- CPED_CONFIG_FLAG_HasBrandishedWeapon = 288,
--- \_0x1B9EE8A1 = 289,
--- \_0xF3F5758C = 290,
--- \_0x2A9307F1 = 291,
--- \_0x7403D216 = 292,
--- \_0xA06A3C6C = 293,
--- CPED_CONFIG_FLAG_DisableShockingEvents = 294,
--- \_0xF8DA25A5 = 295,
--- \_0x7EF55802 = 296,
--- \_0xB31F1187 = 297,
--- \_0x84315402 = 298,
--- \_0x0FD69867 = 299,
--- \_0xC7829B67 = 300,
--- CPED_CONFIG_FLAG_DisablePedConstraints = 301,
--- \_0x6D23CF25 = 302,
--- \_0x2ADA871B = 303,
--- \_0x47BC8A58 = 304,
--- \_0xEB692FA5 = 305,
--- \_0x4A133C50 = 306,
--- \_0xC58099C3 = 307,
--- \_0xF3D76D41 = 308,
--- \_0xB0EEE9F2 = 309,
--- CPED_CONFIG_FLAG_IsInCluster = 310,
--- \_0x0FA153EF = 311,
--- \_0xD73F5CD3 = 312,
--- \_0xD4136C22 = 313,
--- \_0xE404CA6B = 314,
--- \_0xB9597446 = 315,
--- \_0xD5C98277 = 316,
--- \_0xD5060A9C = 317,
--- \_0x3E5F1CBB = 318,
--- \_0xD8BE1D54 = 319,
--- \_0x0B1F191F = 320,
--- \_0xC995167A = 321,
--- CPED_CONFIG_FLAG_HasHighHeels = 322,
--- \_0x86B01E54 = 323,
--- \_0x3A56FE15 = 324,
--- \_0xC03B736C = 325, // CPED_CONFIG_FLAG_SpawnedAtScenario
--- \_0xBBF47729 = 326,
--- \_0x22B668A8 = 327,
--- \_0x2624D4D4 = 328,
--- CPED_CONFIG_FLAG_DisableTalkTo = 329,
--- CPED_CONFIG_FLAG_DontBlip = 330,
--- CPED_CONFIG_FLAG_IsSwitchingWeapon = 331,
--- \_0x630F55F3 = 332,
--- \_0x150468FD = 333,
--- \_0x914EBD6B = 334,
--- \_0x79AF3B6D = 335,
--- \_0x75C7A632 = 336,
--- \_0x52D530E2 = 337,
--- \_0xDB2A90E0 = 338,
--- \_0x5922763D = 339,
--- \_0x12ADB567 = 340,
--- \_0x105C8518 = 341,
--- \_0x106F703D = 342,
--- \_0xED152C3E = 343,
--- \_0xA0EFE6A8 = 344,
--- \_0xBF348C82 = 345,
--- \_0xCDDFE830 = 346,
--- \_0x7B59BD9B = 347,
--- \_0x0124C788 = 348,
--- CPED_CONFIG_FLAG_EquipJetpack = 349,
--- \_0x08D361A5 = 350,
--- \_0xE13D1F7C = 351,
--- \_0x40E25FB9 = 352,
--- \_0x930629D9 = 353,
--- \_0xECCF0C7F = 354,
--- \_0xB6E9613B = 355,
--- \_0x490C0478 = 356,
--- \_0xE8865BEA = 357,
--- \_0xF3C34A29 = 358,
--- CPED_CONFIG_FLAG_IsDuckingInVehicle = 359,
--- \_0xF660E115 = 360,
--- \_0xAB0E6DED = 361,
--- CPED_CONFIG_FLAG_HasReserveParachute = 362,
--- CPED_CONFIG_FLAG_UseReserveParachute = 363,
--- \_0x5C5D9CD3 = 364,
--- \_0x8F7701F3 = 365,
--- \_0xBC4436AD = 366,
--- \_0xD7E07D37 = 367,
--- \_0x03C4FD24 = 368,
--- \_0x7675789A = 369,
--- \_0xB7288A88 = 370,
--- \_0xC06B6291 = 371,
--- \_0x95A4A805 = 372,
--- \_0xA8E9A042 = 373,
--- CPED_CONFIG_FLAG_NeverLeaveTrain = 374,
--- \_0xBAC674B3 = 375,
--- \_0x147F1FFB = 376,
--- \_0x4376DD79 = 377,
--- \_0xCD3DB518 = 378,
--- \_0xFE4BA4B6 = 379,
--- \_0x5DF03A55 = 380,
--- \_0xBCD816CD = 381,
--- \_0xCF02DD69 = 382,
--- \_0xF73AFA2E = 383,
--- \_0x80B9A9D0 = 384,
--- \_0xF601F7EE = 385,
--- \_0xA91350FC = 386,
--- \_0x3AB23B96 = 387,
--- CPED_CONFIG_FLAG_IsClimbingLadder = 388,
--- CPED_CONFIG_FLAG_HasBareFeet = 389,
--- \_0xB4B1CD4C = 390,
--- \_0x5459AFB8 = 391,
--- \_0x54F27667 = 392,
--- \_0xC11D3E8F = 393,
--- \_0x5419EB3E = 394,
--- \_0x82D8DBB4 = 395,
--- \_0x33B02D2F = 396,
--- \_0xAE66176D = 397,
--- \_0xA2692593 = 398,
--- \_0x714C7E31 = 399,
--- \_0xEC488AC7 = 400,
--- \_0xAE398504 = 401,
--- \_0xABC58D72 = 402,
--- \_0x5E5B9591 = 403,
--- \_0x6BA1091E = 404,
--- \_0x77840177 = 405,
--- \_0x1C7ACAC4 = 406,
--- \_0x124420E9 = 407,
--- \_0x75A65587 = 408,
--- \_0xDFD2D55B = 409,
--- \_0xBDD39919 = 410,
--- \_0x43DEC267 = 411,
--- \_0xE42B7797 = 412,
--- CPED_CONFIG_FLAG_IsHolsteringWeapon = 413,
--- \_0x4F8149F5 = 414,
--- \_0xDD9ECA7A = 415,
--- \_0x9E7EF9D2 = 416,
--- \_0x2C6ED942 = 417,
--- CPED_CONFIG_FLAG_IsSwitchingHelmetVisor = 418,
--- \_0xA488727D = 419,
--- \_0xCFF5F6DE = 420,
--- \_0x6D614599 = 421,
--- CPED_CONFIG_FLAG_DisableVehicleCombat = 422,
--- \_0xFE401D26 = 423,
--- CPED_CONFIG_FLAG_FallsLikeAircraft = 424,
--- \_0x2B42AE82 = 425,
--- \_0x7A95734F = 426,
--- \_0xDF4D8617 = 427,
--- \_0x578F1F14 = 428,
--- CPED_CONFIG_FLAG_DisableStartEngine = 429,
--- CPED_CONFIG_FLAG_IgnoreBeingOnFire = 430,
--- \_0x153C9500 = 431,
--- \_0xCB7A632E = 432,
--- \_0xDE727981 = 433,
--- CPED_CONFIG_FLAG_DisableHomingMissileLockon = 434,
--- \_0x12BBB935 = 435,
--- \_0xAD0A1277 = 436,
--- \_0xEA6AA46A = 437,
--- CPED_CONFIG_FLAG_DisableHelmetArmor = 438,
--- \_0xCB7F3A1E = 439,
--- \_0x50178878 = 440,
--- \_0x051B4F0D = 441,
--- \_0x2FC3DECC = 442,
--- \_0xC0030B0B = 443,
--- \_0xBBDAF1E9 = 444,
--- \_0x944FE59C = 445,
--- \_0x506FBA39 = 446,
--- \_0xDD45FE84 = 447,
--- \_0xE698AE75 = 448,
--- \_0x199633F8 = 449,
--- CPED_CONFIG_FLAG_PedIsArresting = 450,
--- CPED_CONFIG_FLAG_IsDecoyPed = 451,
--- \_0x3A251D83 = 452,
--- \_0xA56F6986 = 453,
--- \_0x1D19C622 = 454,
--- \_0xB68D3EAB = 455,
--- CPED_CONFIG_FLAG_CanBeIncapacitated = 456,
--- \_0x4BD5EBAD = 457,
--- }
--- **This is the server-side RPC native equivalent of the client native [SET_PED_CONFIG_FLAG](?\_0x1913FE4CBF41C463).**
--- @name SET_PED_CONFIG_FLAG
--- @param ped Ped 
--- @param flagId number 
--- @param value boolean 
--- @return void (Type not found)
function SetPedConfigFlag(ped, flagId, value) end

--- SET_VEHICLE_NUMBER_PLATE_TEXT
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_NUMBER_PLATE_TEXT](?\_0x95A88F0B409CDA47).**
--- @name SET_VEHICLE_NUMBER_PLATE_TEXT
--- @param vehicle Vehicle The vehicle to set the plate for
--- @param plateText string The text to set the plate to, 8 chars maximum
--- @return void (Type not found)
function SetVehicleNumberPlateText(vehicle, plateText) end

--- In the scripts, p3 was always -1.
--- p3 seems to be duration or timeout of turn animation.
--- Also facingPed can be 0 or -1 so ped will just raise hands up.
--- **This is the server-side RPC native equivalent of the client native [TASK_HANDS_UP](?\_0xF2EAB31979A7F910).**
--- @name TASK_HANDS_UP
--- @param ped Ped 
--- @param duration number 
--- @param facingPed Ped 
--- @param p3 number 
--- @param p4 boolean 
--- @return void (Type not found)
function TaskHandsUp(ped, duration, facingPed, p3, p4) end

--- // Source GTA VC miss2 leak, matching constants for 0/2/4, testing
--- // They use 10 in am_mp_property_int, don't know what it does atm.
--- enum eCarLock {
--- CARLOCK_NONE = 0,
--- CARLOCK_UNLOCKED = 1,
--- CARLOCK_LOCKED = 2,
--- CARLOCK_LOCKOUT_PLAYER_ONLY = 3,
--- CARLOCK_LOCKED_PLAYER_INSIDE = 4,
--- CARLOCK_LOCKED_INITIALLY = 5,
--- CARLOCK_FORCE_SHUT_DOORS = 6,
--- CARLOCK_LOCKED_BUT_CAN_BE_DAMAGED = 7
--- };
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DOORS_LOCKED](?\_0xB664292EAECF7FA6).**
--- @name SET_VEHICLE_DOORS_LOCKED
--- @param vehicle Vehicle 
--- @param doorLockStatus number 
--- @return void (Type not found)
function SetVehicleDoorsLocked(vehicle, doorLockStatus) end

--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_CUSTOM_SECONDARY_COLOUR](?\_0x36CED73BFED89754).**
--- @name SET_VEHICLE_CUSTOM_SECONDARY_COLOUR
--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function SetVehicleCustomSecondaryColour(vehicle, r, g, b) end
