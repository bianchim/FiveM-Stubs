
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @return 
function AddVehicleCombatAngledAvoidanceArea(p0, p1, p2, p3, p4, p5, p6) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param speed number 
--- @param p5 boolean 
--- @return number
function AddRoadNodeSpeedZone(x, y, z, radius, speed, p5) end

--- @param p0  
--- @param p1 number 
--- @param p2  
--- @param p3 boolean 
--- @param p4 boolean 
--- @param p5 boolean 
--- @param p6  
--- @return void (Type not found)
function AddVehicleStuckCheckWithWarp(p0, p1, p2, p3, p4, p5, p6) end

--- Returns true when the bomb bay doors of this plane are open. False if they're closed.
--- @param aircraft Vehicle The vehicle to check the bomb bay doors on.
--- @return boolean
function AreBombBayDoorsOpen(aircraft) end

--- Returns false if every seat is occupied.  
--- @param vehicle Vehicle 
--- @return boolean
function AreAnyVehicleSeatsFree(vehicle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function AddVehiclePhoneExplosiveDevice(vehicle) end

--- Only used with the "akula" in the decompiled native scripts.
--- NativeDB Introduced: v1290
--- @param vehicle Vehicle 
--- @return boolean
function AreHeliStubWingsDeployed(vehicle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function AddVehicleUpsidedownCheck(vehicle) end

--- @param plane Vehicle 
--- @return boolean
function ArePlaneWingsIntact(plane) end

--- Appears to return false if any window is broken.  
--- @param vehicle Vehicle 
--- @return boolean
function AreAllVehicleWindowsIntact(vehicle) end

--- Returns whether the outrigger legs are deployed for the vehicle.
--- The Chernobog is one of the few vehicles with outrigger legs.
--- NativeDB Introduced: v1290
--- @param vehicle Vehicle 
--- @return boolean
function AreOutriggerLegsDeployed(vehicle) end

--- @param cargobob Vehicle The cargobob
--- @param vehicle Vehicle The vehicle that will be attached
--- @param vehicleBoneIndex number A Vehicle bone the hook/magnet should attach to or -1 for none/default [GET_ENTITY_BONE_INDEX_BY_NAME](#\_0xFB71170B7E76ACBA)
--- @param x number x hook/magnet Offset
--- @param y number y hook/magnet Offset
--- @param z number z hook/magnet Offset
--- @return void (Type not found)
function AttachVehicleToCargobob(cargobob, vehicle, vehicleBoneIndex, x, y, z) end

--- @param vehicle Vehicle 
--- @param entity Entity 
--- @param p2 number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function AttachEntityToCargobob(vehicle, entity, p2, x, y, z) end

--- This native makes the vehicle stop immediately, as happens when we enter a MP garage.  
--- . distance defines how far it will travel until stopping. Garage doors use 3.0.  
--- . If killEngine is set to 1, you cannot resume driving the vehicle once it stops. This looks like is a bitmapped integer.  
--- @param vehicle Vehicle 
--- @param distance number 
--- @param duration number 
--- @param unknown boolean 
--- @return void (Type not found)
function BringVehicleToHalt(vehicle, distance, duration, unknown) end

--- @param handler Vehicle 
--- @param container Entity 
--- @return void (Type not found)
function AttachContainerToHandlerFrame(handler, container) end

--- @param vehicle Vehicle The vehicle to attach to the trailer
--- @param trailer Vehicle The trailer to attach the vehicle to
--- @param offsetX number The x offset of the vehicle
--- @param offsetY number The y offset of the vehicle
--- @param offsetZ number The z offset of the vehicle
--- @param coordsX number The x coords of where you want the vehicle placed (must be an offset from the trailer itself)
--- @param coordsY number The y coords of where you want the vehicle placed (must be an offset from the trailer itself)
--- @param coordsZ number The z coords of where you want the vehicle placed (must be an offset from the trailer itself)
--- @param rotationX number The x rotation of where you want the vehicle placed
--- @param rotationY number The y rotation of where you want the vehicle placed
--- @param rotationZ number The z rotation of where you want the vehicle placed
--- @param disableColls number Should actually be a boolean, this will disable the collision between the vehicle you're attaching and the trailer
--- @return void (Type not found)
function AttachVehicleOnToTrailer(vehicle, trailer, offsetX, offsetY, offsetZ, coordsX, coordsY, coordsZ, rotationX, rotationY, rotationZ, disableColls) end

--- @param vehicle Vehicle The vehicle to check.
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
--- @return boolean
function CanShuffleSeat(vehicle, seatIndex) end

--- @param plane Vehicle 
--- @return boolean
function ArePlanePropellersIntact(plane) end

--- @param vehicle Vehicle 
--- @param trailer Vehicle 
--- @param radius number 
--- @return void (Type not found)
function AttachVehicleToTrailer(vehicle, trailer, radius) end

--- Differs from 0x26C10ECBDA5D043B in that 0x140EFCC10 (1604 retail) is called with a2 = true.
--- NativeDB Introduced: v678
--- @param vehicle Vehicle 
--- @return boolean
function CanAnchorBoatHere2(vehicle) end

--- HookOffset defines where the hook is attached. leave at 0 for default attachment.
--- @param towTruck Vehicle 
--- @param vehicle Vehicle 
--- @param rear boolean 
--- @param hookOffsetX number 
--- @param hookOffsetY number 
--- @param hookOffsetZ number 
--- @return void (Type not found)
function AttachVehicleToTowTruck(towTruck, vehicle, rear, hookOffsetX, hookOffsetY, hookOffsetZ) end

--- @return void (Type not found)
function ClearLastDrivenVehicle() end

--- @param vehicle Vehicle 
--- @return boolean
function CanAnchorBoatHere(vehicle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function ClearVehicleCustomPrimaryColour(vehicle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function ClearVehicleCustomSecondaryColour(vehicle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function CloseBombBayDoors(vehicle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function ClearVehicleRouteHistory(vehicle) end

--- Copies sourceVehicle's damage (broken bumpers, broken lights, etc.) to targetVehicle.
--- @param sourceVehicle Vehicle The source to copy the vehicle damage.
--- @param targetVehicle Vehicle The target to paste the vehicle damage.
--- @return void (Type not found)
function CopyVehicleDamages(sourceVehicle, targetVehicle) end

--- Works for vehicles with a retractable landing gear  
--- landing gear states:  
--- 0: Deployed  
--- 1: Closing  
--- 2: Opening  
--- 3: Retracted  
--- @param vehicle Vehicle 
--- @param state number 
--- @return void (Type not found)
function ControlLandingGear(vehicle, state) end

--- Drops the Hook/Magnet on a cargobob  
--- state  
--- enum eCargobobHook  
--- {  
--- 	CARGOBOB_HOOK = 0,  
--- 	CARGOBOB_MAGNET = 1,  
--- };  
--- @param cargobob Vehicle 
--- @param state number 
--- @return void (Type not found)
function CreatePickUpRopeForCargobob(cargobob, state) end

--- @return void (Type not found)
function ClearVehiclePhoneExplosiveDevice() end

--- Train models must be [requested](#\_0x963D27A58DF860AC) before use. See trains.xml (located in `Grand Theft Auto V\update\update.rpf\common\data\levels\gta5\trains.xml`) for freight and metro variations.
--- Model names to request can be found by searching `model_name` in the file.
--- The `Lua` usage example provided down below has been provided in such way so users can test each and every train variation.
--- ### Newly added parameters (seen in 2372 build)
--- NativeDB Added Parameter 6: BOOL isNetwork
--- NativeDB Added Parameter 7: BOOL netMissionEntity
--- *   **isNetwork**: Whether to create a network object for the train. If false, the train exists only locally.
--- *   **netMissionEntity**: Whether to register the train as pinned to the script host in the R\* network model.
--- ### Train Models:
--- *   freight
--- ### Carriage Models:
--- *   freightcar
--- *   freightcar2 (Added v2372)
--- *   freightcont1
--- *   freightcont2
--- *   freightgrain
--- *   metrotrain
--- *   tankercar
--- ### Some train variations (default from trains.xml as of build 2372)
--- *   17. Very long train and freight variation.
--- *   18. Freight train only.
--- *   26. Double metro train (with both models flipped opposite to each other). This used to be `25` before the 2802 build, it also used to be `24` before the 2372 build.
--- @param variation number The variation id, these can range from 0 to 26 as of build 2802 (previously `0-25` in build 2372 and `0-24` before that).
--- @param x number Spawn coordinate X component.
--- @param y number Spawn coordinate Y component.
--- @param z number Spawn coordinate Z component.
--- @param direction boolean The direction in which the train will go (true or false)
--- @return Vehicle
function CreateMissionTrain(variation, x, y, z, direction) end

--- Creates a vehicle with the specified model at the specified position. This vehicle will initially be owned by the creating
--- script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
--- NativeDB Added Parameter 8: BOOL p7
--- @param modelHash Hash The model of vehicle to spawn.
--- @param x number Spawn coordinate X component.
--- @param y number Spawn coordinate Y component.
--- @param z number Spawn coordinate Z component.
--- @param heading number Heading to face towards, in degrees.
--- @param isNetwork boolean Whether to create a network object for the vehicle. If false, the vehicle exists only locally.
--- @param netMissionEntity boolean Whether to register the vehicle as pinned to the script host in the R\* network model.
--- @return Vehicle
function CreateVehicle(modelHash, x, y, z, heading, isNetwork, netMissionEntity) end

--- Creates a script vehicle generator at the given coordinates. Most parameters after the model hash are unknown.  
--- Parameters:  
--- a/w/s - Generator position  
--- heading - Generator heading  
--- p4 - Unknown (always 5.0)  
--- p5 - Unknown (always 3.0)  
--- modelHash - Vehicle model hash  
--- p7/8/9/10 - Unknown (always -1)  
--- p11 - Unknown (usually TRUE, only one instance of FALSE)  
--- p12/13 - Unknown (always FALSE)  
--- p14 - Unknown (usally FALSE, only two instances of TRUE)  
--- p15 - Unknown (always TRUE)  
--- p16 - Unknown (always -1)  
--- Vector3 coords = GET_ENTITY_COORDS(PLAYER_PED_ID(), 0);	CREATE_SCRIPT_VEHICLE_GENERATOR(coords.x, coords.y, coords.z, 1.0f, 5.0f, 3.0f, GET_HASH_KEY("adder"), -1. -1, -1, -1, -1, true, false, false, false, true, -1);  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param heading number 
--- @param p4 number 
--- @param p5 number 
--- @param modelHash Hash 
--- @param p7 number 
--- @param p8 number 
--- @param p9 number 
--- @param p10 number 
--- @param p11 boolean 
--- @param p12 boolean 
--- @param p13 boolean 
--- @param p14 boolean 
--- @param p15 boolean 
--- @param p16 number 
--- @return number
function CreateScriptVehicleGenerator(x, y, z, heading, p4, p5, modelHash, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16) end

--- Deletes a vehicle.  
--- The vehicle must be a mission entity to delete, so call this before deleting: SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true);  
--- eg how to use:  
--- SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true);  
--- DELETE_VEHICLE(&vehicle);  
--- Deletes the specified vehicle, then sets the handle pointed to by the pointer to NULL.  
--- @param vehicle Vehicle 
--- @return void (Type not found)
function DeleteVehicle(vehicle) end

--- Used to delete mission trains created with [`CREATE_MISSION_TRAIN`](#\_0x63C6CCA8E68AE8C8).
--- @param train Vehicle 
--- @return void (Type not found)
function DeleteMissionTrain(train) end

--- @param vehicle Vehicle 
--- @param entity Entity 
--- @return 
function DetachEntityFromCargobob(vehicle, entity) end

--- @return void (Type not found)
function DeleteAllTrains() end

--- @param vehicleGenerator number 
--- @return void (Type not found)
function DeleteScriptVehicleGenerator(vehicleGenerator) end

--- @param cargobob Vehicle 
--- @param vehicle Vehicle 
--- @return void (Type not found)
function DetachVehicleFromCargobob(cargobob, vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function DetachVehicleFromAnyCargobob(vehicle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function DetachContainerFromHandlerFrame(vehicle) end

--- First two parameters swapped. Scripts verify that towTruck is the first parameter, not the second.  
--- @param towTruck Vehicle 
--- @param vehicle Vehicle 
--- @return void (Type not found)
function DetachVehicleFromTowTruck(towTruck, vehicle) end

--- @return void (Type not found)
function DetonateVehiclePhoneExplosiveDevice() end

--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function DisablePlaneAileron(vehicle, p1, p2) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function DetachVehicleFromTrailer(vehicle) end

--- @param vehicle Vehicle 
--- @param propeller number 
--- @return void (Type not found)
function DisableIndividualPlanePropeller(vehicle, propeller) end

--- @param vehicle Vehicle 
--- @return boolean
function DetachVehicleFromAnyTowTruck(vehicle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function DisableVehicleTurretMovementThisFrame(vehicle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function DisableVehicleNeonLights(vehicle, toggle) end

--- Disables collision for this vehicle (maybe it also supports other entities, not sure).
--- Only world/building/fixed world objects will have their collisions disabled, props, peds, or any other entity still collides with the vehicle.
--- [Example video](https://streamable.com/6n45d5)
--- Not sure if there is a native (and if so, which one) that resets the collisions.
--- @param vehicle Vehicle the vehicle to disable world collisions for
--- @return void (Type not found)
function DisableVehicleWorldCollision(vehicle) end

--- how does this work?  
--- @param disabled boolean 
--- @param weaponHash Hash 
--- @param vehicle Vehicle 
--- @param owner Ped 
--- @return void (Type not found)
function DisableVehicleWeapon(disabled, weaponHash, vehicle, owner) end

--- Returns true only when the magnet is active, will return false if the hook is active  
--- @param cargobob Vehicle 
--- @return boolean
function DoesCargobobHavePickupMagnet(cargobob) end

--- Returns true only when the hook is active, will return false if the magnet is active  
--- @param cargobob Vehicle 
--- @return boolean
function DoesCargobobHavePickUpRope(cargobob) end

--- Checks via CVehicleModelInfo  
--- @param vehicle Vehicle 
--- @param extraId number 
--- @return boolean
function DoesExtraExist(vehicle, extraId) end

--- @param decorator string 
--- @return boolean
function DoesVehicleExistWithDecorator(decorator) end

--- NativeDB Introduced: v1180
--- @param vehicle Vehicle 
--- @return boolean
function DoesVehicleHaveLandingGear(vehicle) end

--- @param vehicleGenerator number 
--- @return boolean
function DoesScriptVehicleGeneratorExist(vehicleGenerator) end

--- Returns true if the vehicle has the FLAG_ALLOWS_RAPPEL flag set.
--- @param vehicle Vehicle 
--- @return boolean
function DoesVehicleAllowRappel(vehicle) end

--- NativeDB Introduced: v2189
--- @param vehicle Vehicle 
--- @return boolean
function DoesVehicleHaveSearchlight(vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function DoesVehicleHaveRoof(vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function DoesVehicleHaveWeapons(vehicle) end

--- Checks if vehicle tyre at index exists. Also returns false if tyre was removed.
--- NativeDB Introduced: v1493
--- @param vehicle Vehicle 
--- @param tyreIndex number 
--- @return boolean
function DoesVehicleTyreExist(vehicle, tyreIndex) end

--- Explodes a selected vehicle.  
--- Vehicle vehicle = Vehicle you want to explode.  
--- BOOL isAudible = If explosion makes a sound.  
--- BOOL isInvisible = If the explosion is invisible or not.  
--- First BOOL does not give any visual explosion, the vehicle just falls apart completely but slowly and starts to burn.  
--- @param vehicle Vehicle 
--- @param isAudible boolean 
--- @param isInvisible boolean 
--- @return void (Type not found)
function ExplodeVehicle(vehicle, isAudible, isInvisible) end

--- Native is significantly more complicated than simply generating a random vector & length.
--- The 'point' is either 400.0 or 250.0 units away from the Ped's current coordinates; and paths into functions like rage::grcViewport\_\__IsSphereVisible.
--- NativeDB Introduced: v1290
--- @param ped Ped 
--- @return Vector3
function FindRandomPointInSpace(ped) end

--- Finds the vehicle that is carrying this entity with a handler frame.
--- The model of the entity must be prop_contr_03b_ld or the function will return 0.
--- @param entity Entity 
--- @return Vehicle
function FindVehicleCarryingThisEntity(entity) end

--- Maximum amount of vehicles with vehicle stuck check appears to be 16.  
--- @param vehicle Vehicle 
--- @return boolean
function DoesVehicleHaveStuckVehicleCheck(vehicle) end

--- See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
--- This function is coded to not work on vehicles of type: `CBike`, `Bmx`, `CBoat`, `CTrain`, and `CSubmarine`.
--- @param vehicle Vehicle 
--- @param windowIndex number 
--- @return void (Type not found)
function FixVehicleWindow(vehicle, windowIndex) end

--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function ExplodeVehicleInCutscene(vehicle, p1) end

--- Often called after START_PLAYBACK_RECORDED_VEHICLE and SKIP_TIME_IN_PLAYBACK_RECORDED_VEHICLE; similar in use to FORCE_ENTITY_AI_AND_ANIMATION_UPDATE.
--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function ForcePlaybackRecordedVehicleUpdate(vehicle, p1) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function ForceSubmarineSurfaceMode(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function EjectJb700Roof(vehicle, x, y, z) end

--- Same call as VEHICLE::_0x0F3B4D4E43177236
--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function GetBoatBoomPositionRatio2(vehicle, p1) end

--- @param vehArray number 
--- @return number
function GetAllVehicles(vehArray) end

--- @param vehicle Vehicle 
--- @return number
function GetBoatBoomPositionRatio(vehicle) end

--- Returns true if the vehicle has the FLAG_JUMPING_CAR flag set.
--- @param vehicle Vehicle 
--- @return boolean
function GetCanVehicleJump(vehicle) end

--- Example usage  
--- VEHICLE::GET_CLOSEST_VEHICLE(x, y, z, radius, hash, unknown leave at 70)   
--- x, y, z: Position to get closest vehicle to.  
--- radius: Max radius to get a vehicle.  
--- modelHash: Limit to vehicles with this model. 0 for any.  
--- flags: The bitwise flags altering the function's behaviour.  
--- Does not return police cars or helicopters.  
--- It seems to return police cars for me, does not seem to return helicopters, planes or boats for some reason  
--- Only returns non police cars and motorbikes with the flag set to 70 and modelHash to 0. ModelHash seems to always be 0 when not a modelHash in the scripts, as stated above.   
--- These flags were found in the b617d scripts: 0,2,4,6,7,23,127,260,2146,2175,12294,16384,16386,20503,32768,67590,67711,98309,100359.  
--- Converted to binary, each bit probably represents a flag as explained regarding another native here: gtaforums.com/topic/822314-guide-driving-styles  
--- Conversion of found flags to binary: pastebin.com/kghNFkRi  
--- At exactly 16384 which is 0100000000000000 in binary and 4000 in hexadecimal only planes are returned.   
--- It's probably more convenient to use worldGetAllVehicles(int *arr, int arrSize) and check the shortest distance yourself and sort if you want by checking the vehicle type with for example VEHICLE::IS_THIS_MODEL_A_BOAT  
--- -------------------------------------------------------------------------  
--- Conclusion: This native is not worth trying to use. Use something like this instead: pastebin.com/xiFdXa7h
--- Use flag 127 to return police cars
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param modelHash Hash 
--- @param flags number 
--- @return Vehicle
function GetClosestVehicle(x, y, z, radius, modelHash, flags) end

--- Gets the position of the cargobob hook, in world coords.
--- @param cargobob Vehicle 
--- @return Vector3
function GetCargobobHookPosition(cargobob) end

--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function GetBoatBoomPositionRatio3(vehicle, p1) end

--- Returns the display name/text label (`gameName` in `vehicles.meta`) for the specified vehicle model.
--- @param modelHash Hash A vehicle model to check.
--- @return string
function GetDisplayNameFromVehicleModel(modelHash) end

--- @param vehicle Vehicle 
--- @return number
function GetCurrentPlaybackForVehicle(vehicle) end

--- NativeDB Introduced: v1604
--- @param vehicle Vehicle 
--- @return boolean
function GetDoesVehicleHaveTombstone(vehicle) end

--- Returns the convertible state of the specified vehicle.
--- ```cpp
--- enum RoofState
--- {
---      ROOFSTATE_UP = 0,
---      ROOFSTATE_LOWERING = 1,
---      ROOFSTATE_DOWN = 2,
---      ROOFSTATE_RAISING = 3
--- };
--- @param vehicle Vehicle Vehicle to get the state of
--- @return number
function GetConvertibleRoofState(vehicle) end

--- @param towTruck Vehicle 
--- @return Entity
function GetEntityAttachedToTowTruck(towTruck) end

--- NativeDB Introduced: v2372
--- @param vehicle Vehicle 
--- @return boolean
function GetDriftTyresEnabled(vehicle) end

--- @param vehicle Vehicle 
--- @return Entity
function GetEntityAttachedToCargobob(vehicle) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @return Vector3
function GetEntryPositionOfDoor(vehicle, doorIndex) end

--- Max 1000.  
--- At 0 the main rotor will stall.  
--- @param vehicle Vehicle 
--- @return number
function GetHeliMainRotorHealth(vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function GetHasRocketBoost(vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function GetHasRetractableWheels(vehicle) end

--- Max 1000.
--- At -100 both helicopter rotors will stall.
--- @param vehicle Vehicle 
--- @return number
function GetHeliTailBoomHealth(vehicle) end

--- NativeDB Introduced: v2372
--- @param vehicle Vehicle 
--- @param wheelId number 
--- @return number
function GetHydraulicWheelValue(vehicle, wheelId) end

--- From the driver's perspective, is the left headlight broken.  
--- @param vehicle Vehicle 
--- @return boolean
function GetIsLeftVehicleHeadlightDamaged(vehicle) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @return boolean
function GetIsDoorValid(vehicle, doorIndex) end

--- Returns whether this vehicle is currently disabled by an EMP mine.
--- NativeDB Introduced: v1604
--- @param vehicle Vehicle 
--- @return boolean
function GetIsVehicleEmpDisabled(vehicle) end

--- Max 1000.  
--- At 0 the tail rotor will stall.  
--- @param vehicle Vehicle 
--- @return number
function GetHeliTailRotorHealth(vehicle) end

--- From the driver's perspective, is the right headlight broken.  
--- @param vehicle Vehicle 
--- @return boolean
function GetIsRightVehicleHeadlightDamaged(vehicle) end

--- Returns true when in a vehicle, false whilst entering/exiting.  
--- @param vehicle Vehicle 
--- @return boolean
function GetIsVehicleEngineRunning(vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function GetIsVehiclePrimaryColourCustom(vehicle) end

--- NativeDB Introduced: v1604
--- @param vehicle Vehicle 
--- @return boolean
function GetIsVehicleShuntBoostActive(vehicle) end

--- Check if Vehicle Secondary is avaliable for customize  
--- @param vehicle Vehicle 
--- @return boolean
function GetIsVehicleSecondaryColourCustom(vehicle) end

--- Landing gear states:  
--- 0: Deployed  
--- 1: Closing (Retracting)
--- 3: Opening (Deploying)
--- 4: Retracted  
--- 5: Broken
--- Landing gear state 2 is never used.
--- @param vehicle Vehicle The vehicle to check.
--- @return number
function GetLandingGearState(vehicle) end

--- Will return a vehicle's manufacturer display label.
--- Returns "CARNOTFOUND" if the hash doesn't match a vehicle hash.
--- NativeDB Introduced: v1868
--- @param modelHash Hash 
--- @return string
function GetMakeNameFromVehicleModel(modelHash) end

--- @param vehicle Vehicle 
--- @return boolean
function GetIsWheelsLoweredStateActive(vehicle) end

--- @param vehicle Vehicle The vehicle to get the ped for.
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
--- @return Ped
function GetLastPedInVehicleSeat(vehicle, seatIndex) end

--- Returns last vehicle that was rammed by the given vehicle using the shunt boost.
--- NativeDB Introduced: v1604
--- @param vehicle Vehicle 
--- @return Vehicle
function GetLastRammedVehicle(vehicle) end

--- @param vehicle Vehicle 
--- @param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- @return string
function GetModSlotName(vehicle, modType) end

--- Second Param = LiveryIndex  
--- example   
--- int count = VEHICLE::GET_VEHICLE_LIVERY_COUNT(veh);  
--- for (int i = 0; i < count; i++)    
--- 	{  
--- char* LiveryName = VEHICLE::GET_LIVERY_NAME(veh, i);  
--- 	}  
--- this example will work fine to fetch all names   
--- for example for Sanchez we get   
--- SANC_LV1  
--- SANC_LV2  
--- SANC_LV3  
--- SANC_LV4  
--- SANC_LV5  
--- Use _GET_LABEL_TEXT, to get the localized livery name.  
--- -----------  
--- NOTE: You may need to set the vehicle's modKit to 0 by using this function: SET_VEHICLE_MOD_KIT() before getting the name, otherwise this native may return NULL.  
--- dev-c.com/nativedb/func/info/1f2aa07f00b3217a  
--- @param vehicle Vehicle 
--- @param liveryIndex number 
--- @return string
function GetLiveryName(vehicle, liveryIndex) end

--- @return Vehicle
function GetLastDrivenVehicle() end

--- Returns the text label of a mod type for a given vehicle  
--- Use _GET_LABEL_TEXT to get the part name in the game's language  
--- @param vehicle Vehicle 
--- @param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- @param modValue number 
--- @return string
function GetModTextLabel(vehicle, modType, modValue) end

--- Returns how many possible mods a vehicle has for a given mod type  
--- @param vehicle Vehicle 
--- @param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- @return number
function GetNumVehicleMods(vehicle, modType) end

--- @param vehicle Vehicle 
--- @return number
function GetNumModKits(vehicle) end

--- paintType:
--- 0: Normal
--- 1: Metallic
--- 2: Pearl
--- 3: Matte
--- 4: Metal
--- 5: Chrome
--- @param paintType number 
--- @param p1 boolean 
--- @return number
function GetNumModColors(paintType, p1) end

--- Actually number of color combinations  
--- @param vehicle Vehicle 
--- @return number
function GetNumberOfVehicleColours(vehicle) end

--- @return number
function GetNumVehicleWindowTints() end

--- Returns the number of *types* of licence plates, enumerated below in SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX.  
--- @return number
function GetNumberOfVehicleNumberPlates() end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @return Ped
function GetPedUsingVehicleDoor(vehicle, doorIndex) end

--- Gets the ped in the specified seat of the passed vehicle.
--- If there is no ped in the seat, and the game considers the vehicle as ambient population, this will create a random occupant ped in the seat, which may be cleaned up by the game fairly soon if not marked as script-owned mission entity.
--- **NativeDB Added Parameter 3**: BOOL p2 (uses a different GetOccupant function)
--- @param vehicle Vehicle The vehicle to get the ped for.
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
--- @return Ped
function GetPedInVehicleSeat(vehicle, seatIndex) end

--- @param vehicle Vehicle 
--- @return number
function GetNumberOfVehicleDoors(vehicle) end

--- This native does no interpolation between pathpoints. The same position will be returned for all times up to the next pathpoint in the recording.
--- See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
--- @param recording number 
--- @param time number 
--- @param script string 
--- @return Vector3
function GetPositionOfVehicleRecordingAtTime(recording, time, script) end

--- Distance traveled in the vehicles current recording.
--- @param vehicle Vehicle 
--- @return number
function GetPositionInRecording(vehicle) end

--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @return Vehicle
function GetRandomVehicleBackBumperInSphere(p0, p1, p2, p3, p4, p5, p6) end

--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @return Vehicle
function GetRandomVehicleFrontBumperInSphere(p0, p1, p2, p3, p4, p5, p6) end

--- Not present in the retail version! It's just a nullsub.  
--- p0 always true (except in one case)  
--- p1 a random vehicle hash loaded in memory  
--- successIndicator: 0 if success, -1 if failed
--- @param p0 boolean 
--- @param modelHash Hash 
--- @param successIndicator number 
--- @return void (Type not found)
function GetRandomVehicleModelInMemory(p0, modelHash, successIndicator) end

--- @param id number 
--- @param time number 
--- @return Vector3
function GetPositionOfVehicleRecordingIdAtTime(id, time) end

--- @param recording number 
--- @param time number 
--- @param script string 
--- @return Vector3
function GetRotationOfVehicleRecordingAtTime(recording, time, script) end

--- Gets a random vehicle in a sphere at the specified position, of the specified radius.  
--- x: The X-component of the position of the sphere.  
--- y: The Y-component of the position of the sphere.  
--- z: The Z-component of the position of the sphere.  
--- radius: The radius of the sphere. Max is 9999.9004.  
--- modelHash: The vehicle model to limit the selection to. Pass 0 for any model.  
--- flags: The bitwise flags that modifies the behaviour of this function.  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param modelHash Hash 
--- @param flags number 
--- @return Vehicle
function GetRandomVehicleInSphere(x, y, z, radius, modelHash, flags) end

--- @param id number 
--- @param time number 
--- @return Vector3
function GetRotationOfVehicleRecordingIdAtTime(id, time) end

--- NativeDB Introduced: v2189
--- @param submarine Vehicle 
--- @return number
function GetSubmarineCrushDepthWarningState(submarine) end

--- Can be used with GET_TOTAL_DURATION_OF_VEHICLE_RECORDING{_ID} to compute a percentage.
--- @param vehicle Vehicle 
--- @return number
function GetTimePositionInRecording(vehicle) end

--- @param recording number 
--- @param script string 
--- @return number
function GetTotalDurationOfVehicleRecording(recording, script) end

--- Corrected p1. it's basically the 'carriage/trailer number'. So if the train has 3 trailers you'd call the native once with a var or 3 times with 1, 2, 3.  
--- @param train Vehicle 
--- @param trailerNumber number 
--- @return Entity
function GetTrainCarriage(train, trailerNumber) end

--- NativeDB Introduced: v2189
--- @param submarine Vehicle 
--- @return boolean
function GetSubmarineIsBelowFirstCrushDepth(submarine) end

--- NativeDB Introduced: v2060
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetTyreWearMultiplier(vehicle, wheelIndex) end

--- Seems related to vehicle health, like the one in IV.  
--- Max 1000, min 0.  
--- Vehicle does not necessarily explode or become undrivable at 0.  
--- @param vehicle Vehicle 
--- @return number
function GetVehicleBodyHealth(vehicle) end

--- @param id number 
--- @return number
function GetTotalDurationOfVehicleRecordingId(id) end

--- static - max acceleration  
--- @param vehicle Vehicle 
--- @return number
function GetVehicleAcceleration(vehicle) end

--- Returns attached vehicle (Vehicle in parameter must be cargobob)  
--- @param cargobob Vehicle 
--- @return Vehicle
function GetVehicleAttachedToCargobob(cargobob) end

--- Gets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane.
--- In decompiled scripts this is used to check if the vehicle has enough bombs before a bomb can be dropped (bombs are dropped by using [`_SHOOT_SINGLE_BULLET_BETWEEN_COORDS_WITH_EXTRA_PARAMS`](#\_0xBFE5756E7407064A)).
--- Use [`_SET_AIRCRAFT_BOMB_COUNT`](#\_0xF4B2ED59DEB5D774) to set the amount of bombs on that vehicle.
--- @param aircraft Vehicle The vehicle to get the amount of bombs from.
--- @return number
function GetVehicleBombCount(aircraft) end

--- @param vehicle Vehicle The vehicle to get the cause of destruction of.
--- @return Hash
function GetVehicleCauseOfDestruction(vehicle) end

--- NativeDB Introduced: v1868
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @return number
function GetTyreHealth(vehicle, wheelIndex) end

--- Returns an int  
--- Vehicle Classes:  
--- 0: Compacts  
--- 1: Sedans  
--- 2: SUVs  
--- 3: Coupes  
--- 4: Muscle  
--- 5: Sports Classics  
--- 6: Sports  
--- 7: Super  
--- 8: Motorcycles  
--- 9: Off-road  
--- 10: Industrial  
--- 11: Utility  
--- 12: Vans  
--- 13: Cycles  
--- 14: Boats  
--- 15: Helicopters  
--- 16: Planes  
--- 17: Service  
--- 18: Emergency  
--- 19: Military  
--- 20: Commercial  
--- 21: Trains  
--- 22: Open Wheel
--- char buffer[128];  
--- std::sprintf(buffer, "VEH_CLASS_%i", VEHICLE::GET_VEHICLE_CLASS(vehicle));  
--- char* className = UI::_GET_LABEL_TEXT(buffer);  
--- @param vehicle Vehicle 
--- @return number
function GetVehicleClass(vehicle) end

--- @param vehicleClass number 
--- @return number
function GetVehicleClassEstimatedMaxSpeed(vehicleClass) end

--- @param vehicleClass number 
--- @return number
function GetVehicleClassMaxAcceleration(vehicleClass) end

--- @param vehicleClass number 
--- @return number
function GetVehicleClassMaxAgility(vehicleClass) end

--- @param vehicleClass number 
--- @return number
function GetVehicleClassMaxBraking(vehicleClass) end

--- See [`SET_VEHICLE_CUSTOM_PRIMARY_COLOUR`](#\_0x7141766F91D15BEA) and [`SET_VEHICLE_CUSTOM_SECONDARY_COLOUR`](#\_0x36CED73BFED89754).
--- @param vehicle Vehicle The target vehicle
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function GetVehicleColor(vehicle, r, g, b) end

--- For a full enum, see here : pastebin.com/i2GGAjY0
--- char buffer[128];
--- std::sprintf(buffer, "VEH_CLASS_%i", VEHICLE::GET_VEHICLE_CLASS_FROM_NAME (hash));
--- const char* className = HUD::_GET_LABEL_TEXT(buffer);
--- @param modelHash Hash 
--- @return number
function GetVehicleClassFromName(modelHash) end

--- @param vehicle Vehicle 
--- @param colorPrimary number 
--- @param colorSecondary number 
--- @return void (Type not found)
function GetVehicleColours(vehicle, colorPrimary, colorSecondary) end

--- @param vehicle Vehicle 
--- @return boolean
function GetVehicleCanActivateParachute(vehicle) end

--- @param vehicleClass number 
--- @return number
function GetVehicleClassMaxTraction(vehicleClass) end

--- Similar to [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1), this gets the amount of countermeasures that are present on this vehicle.
--- Use [`_SET_AIRCRAFT_COUNTERMEASURE_COUNT`](#\_0x9BDA23BF666F0855) to set the current amount.
--- @param aircraft Vehicle The vehicle to get the amount of countermeasures from.
--- @return number
function GetVehicleCountermeasureCount(aircraft) end

--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function GetVehicleCustomSecondaryColour(vehicle, r, g, b) end

--- @param vehicle Vehicle 
--- @return number
function GetVehicleColourCombination(vehicle) end

--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function GetVehicleCustomPrimaryColour(vehicle, r, g, b) end

--- Returns a float value between 0.0 and 3.0 related to its slipstream draft (boost/speedup).
--- GET_VEHICLE_*
--- @param vehicle Vehicle 
--- @return number
function GetVehicleCurrentSlipstreamDraft(vehicle) end

--- The only example I can find of this function in the scripts, is this:  
--- struct _s = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(rPtr((A_0) + 4), 1.21f, 6.15f, 0.3f);  
--- -----------------------------------------------------------------------------------------------------------------------------------------  
--- PC scripts:  
--- v_5/*{3}*/ = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(a_0._f1, 1.21, 6.15, 0.3);  
--- @param vehicle Vehicle 
--- @param offsetX number 
--- @param offsetY number 
--- @param offsetZ number 
--- @return Vector3
function GetVehicleDeformationAtPos(vehicle, offsetX, offsetY, offsetZ) end

--- Checks the angle of the door mapped from 0.0 - 1.0 where 0.0 is fully closed and 1.0 is fully open.
--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- @param vehicle Vehicle Vehicle
--- @param doorIndex number Index of door to check
--- @return number
function GetVehicleDoorAngleRatio(vehicle, doorIndex) end

--- @param vehicle Vehicle 
--- @param color number 
--- @return void (Type not found)
function GetVehicleDashboardColor(vehicle, color) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- Returns vehicle door destroy type previously set with \_SET_VEHICLE_DOOR_DESTROY_TYPE
--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @return number
function GetVehicleDoorDestroyType(vehicle, doorIndex) end

--- enum VehicleLockStatus = {
---     None = 0,
---     Unlocked = 1,
---     Locked = 2,
---     LockedForPlayer = 3,
---     StickPlayerInside = 4, -- Doesn't allow players to exit the vehicle with the exit vehicle key.
---     CanBeBrokenInto = 7, -- Can be broken into the car. If the glass is broken, the value will be set to 1
---     CanBeBrokenIntoPersist = 8, -- Can be broken into persist
---     CannotBeTriedToEnter = 10, -- Cannot be tried to enter (Nothing happens when you press the vehicle enter key).
--- }
--- @param vehicle Vehicle 
--- @return number
function GetVehicleDoorLockStatus(vehicle) end

--- @param vehicle Vehicle 
--- @param player Player 
--- @return boolean
function GetVehicleDoorsLockedForPlayer(vehicle, player) end

--- A getter for [`SET_VEHICLE_DIRT_LEVEL`](#\_0x79D3B596FE44EE8B).
--- @param vehicle Vehicle The vehicle to check.
--- @return number
function GetVehicleDirtLevel(vehicle) end

--- formerly known as _GET_VEHICLE_PAINT_FADE
--- The result is a value from 0-1, where 0 is fresh paint.
--- @param vehicle Vehicle 
--- @return number
function GetVehicleEnveffScale(vehicle) end

--- Returns 1000.0 if the function is unable to get the address of the specified vehicle or if it's not a vehicle.  
--- Minimum: -4000  
--- Maximum: 1000  
--- -4000: Engine is destroyed  
--- 0 and below: Engine catches fire and health rapidly declines  
--- 300: Engine is smoking and losing functionality  
--- 1000: Engine is perfect  
--- @param vehicle Vehicle 
--- @return number
function GetVehicleEngineHealth(vehicle) end

--- @param aircraft Vehicle The vehicle to check the hover mode on.
--- @return number
function GetVehicleFlightNozzlePosition(aircraft) end

--- @param vehicle Vehicle 
--- @return number
function GetVehicleEstimatedMaxSpeed(vehicle) end

--- @param vehicle Vehicle 
--- @param pearlescentColor number 
--- @param wheelColor number 
--- @return void (Type not found)
function GetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end

--- NativeDB Added Parameter 2: float maxEngineHealth
--- NativeDB Added Parameter 3: float maxPetrolTankHealth
--- NativeDB Added Parameter 4: float maxBodyHealth
--- NativeDB Added Parameter 5: float maxMainRotorHealth
--- NativeDB Added Parameter 6: float maxTailRotorHealth
--- NativeDB Added Parameter 7: float maxUnkHealth
--- @param vehicle Vehicle 
--- @return number
function GetVehicleHealthPercentage(vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function GetVehicleHasParachute(vehicle) end

--- Returns a value depending on the lock-on state of vehicle weapons.
--- 0: not locked on
--- 1: locking on
--- 2: locked on
--- @param vehicle Vehicle 
--- @return number
function GetVehicleHomingLockonState(vehicle) end

--- @param vehicle Vehicle 
--- @param color number 
--- @return void (Type not found)
function GetVehicleInteriorColor(vehicle, color) end

--- @param vehicle Vehicle The vehicle handle.
--- @return boolean
function GetVehicleHasKers(vehicle) end

--- Only used like this:  
--- if (VEHICLE::GET_VEHICLE_IS_MERCENARY(ENTITY::GET_VEHICLE_INDEX_FROM_ENTITY_INDEX(v_3))) {                                                        sub_157e9c(g_40001._f1868, 0);  
--- }  
--- @param vehicle Vehicle 
--- @return boolean
function GetVehicleIsMercenary(vehicle) end

--- @param vehicle Vehicle 
--- @return number
function GetVehicleMaxBraking(vehicle) end

--- @param vehicle Vehicle 
--- @param lightsOn boolean 
--- @param highbeamsOn boolean 
--- @return boolean
function GetVehicleLightsState(vehicle, lightsOn, highbeamsOn) end

--- @param vehicle Vehicle 
--- @return Hash
function GetVehicleLayoutHash(vehicle) end

--- Returns -1 if the vehicle has no livery  
--- @param vehicle Vehicle 
--- @return number
function GetVehicleLiveryCount(vehicle) end

--- -1 = no livery  
--- @param vehicle Vehicle 
--- @return number
function GetVehicleLivery(vehicle) end

--- @param vehicle Vehicle 
--- @param entity Entity 
--- @return boolean
function GetVehicleLockOnTarget(vehicle, entity) end

--- Returns -1 if the vehicle mod is stock  
--- @param vehicle Vehicle 
--- @param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- @return number
function GetVehicleMod(vehicle, modType) end

--- @param vehicle Vehicle 
--- @param paintType number 
--- @param color number 
--- @param pearlescentColor number 
--- @return void (Type not found)
function GetVehicleModColor1(vehicle, paintType, color, pearlescentColor) end

--- @param vehicle Vehicle 
--- @return number
function GetVehicleMaxNumberOfPassengers(vehicle) end

--- @param vehicle Vehicle 
--- @return number
function GetVehicleMaxTraction(vehicle) end

--- @param vehicle Vehicle 
--- @param paintType number 
--- @param color number 
--- @return void (Type not found)
function GetVehicleModColor2(vehicle, paintType, color) end

--- returns a string which is the codename of the vehicle's currently selected primary color  
--- p1 is always 0  
--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return string
function GetVehicleModColor1Name(vehicle, p1) end

--- returns a string which is the codename of the vehicle's currently selected secondary color  
--- @param vehicle Vehicle 
--- @return string
function GetVehicleModColor2Name(vehicle) end

--- Can be used for IS_DLC_VEHICLE_MOD and _0xC098810437312FFF
--- @param vehicle Vehicle 
--- @param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- @param modIndex number 
--- @return Hash
function GetVehicleModIdentifierHash(vehicle, modType, modIndex) end

--- @param vehicle Vehicle 
--- @param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- @param modIndex number 
--- @return number
function GetVehicleModModifierValue(vehicle, modType, modIndex) end

--- @param vehicle Vehicle 
--- @return number
function GetVehicleModKitType(vehicle) end

--- Returns the acceleration of the specified model.
--- @param modelHash Hash 
--- @return number
function GetVehicleModelAcceleration(modelHash) end

--- Only used for wheels(ModType = 23/24) Returns true if the wheels are custom wheels
--- @param vehicle Vehicle 
--- @param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- @return boolean
function GetVehicleModVariation(vehicle, modType) end

--- Returns max speed (without mods) of the specified vehicle model in m/s.
--- @param modelHash Hash 
--- @return number
function GetVehicleModelEstimatedMaxSpeed(modelHash) end

--- GET_VEHICLE_MODEL_*
--- 9.8 * thrust if air vehicle, else 0.38 + drive force?
--- @param modelHash Hash 
--- @return number
function GetVehicleModelEstimatedAgility(modelHash) end

--- @param modelHash Hash 
--- @return number
function GetVehicleModelMaxBrakingMaxMods(modelHash) end

--- Returns max braking of the specified vehicle model.
--- @param modelHash Hash 
--- @return number
function GetVehicleModelMaxBraking(modelHash) end

--- GET_VEHICLE_MODEL_*
--- Function pertains only to aviation vehicles.
--- @param modelHash Hash 
--- @return number
function GetVehicleModelMaxKnots(modelHash) end

--- Returns max traction of the specified vehicle model.
--- @param modelHash Hash 
--- @return number
function GetVehicleModelMaxTraction(modelHash) end

--- @param vehicle Vehicle 
--- @return number
function GetVehicleModKit(vehicle) end

--- GET_VEHICLE_MODEL_*
--- called if the vehicle is a boat -- returns vecMoveResistanceX?
--- @param modelHash Hash 
--- @return number
function GetVehicleModelMoveResistance(modelHash) end

--- Returns `nMonetaryValue` from handling.meta for specific model, which is the vehicle's monetary value.
--- @param vehicleModel Hash 
--- @return number
function GetVehicleModelValue(vehicleModel) end

--- Returns max number of passengers (including the driver) for the specified vehicle model.
--- @param modelHash Hash 
--- @return number
function GetVehicleModelNumberOfSeats(modelHash) end

--- @param vehicle Vehicle 
--- @return number
function GetVehicleNumberOfBrokenBones(vehicle) end

--- Gets the color of the neon lights of the specified vehicle.
--- See [`_SET_VEHICLE_NEON_LIGHTS_COLOUR`](#\_0x8E0A582209A62695) for more information
--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function GetVehicleNeonLightsColour(vehicle, r, g, b) end

--- Also includes some "turnOffBones" when vehicle mods are installed.
--- @param vehicle Vehicle 
--- @return number
function GetVehicleNumberOfBrokenOffBones(vehicle) end

--- Gets the number of passengers, NOT including the driver. Use IS_VEHICLE_SEAT_FREE(Vehicle, -1) to also check for the driver  
--- @param vehicle Vehicle 
--- @return number
function GetVehicleNumberOfPassengers(vehicle) end

--- Returns the PlateType of a vehicle  
--- Blue_on_White_1 = 3,  
--- Blue_on_White_2 = 0,  
--- Blue_on_White_3 = 4,  
--- Yellow_on_Blue = 2,  
--- Yellow_on_Black = 1,  
--- North_Yankton = 5,  
--- @param vehicle Vehicle 
--- @return number
function GetVehicleNumberPlateTextIndex(vehicle) end

--- Returns the license plate text from a vehicle.  8 chars maximum.  
--- @param vehicle Vehicle 
--- @return string
function GetVehicleNumberPlateText(vehicle) end

--- 1000 is max health  
--- Begins leaking gas at around 650 health  
--- @param vehicle Vehicle 
--- @return number
function GetVehiclePetrolTankHealth(vehicle) end

--- Returns index of the current vehicle's rooftop livery.
--- A getter for [\_SET_VEHICLE_ROOF_LIVERY](#\_0xA6D3A8750DC73270).
--- @param vehicle Vehicle The vehicle handle.
--- @return number
function GetVehicleRoofLivery(vehicle) end

--- Returns a number of available rooftop liveries, or -1 if vehicle has no rooftop liveries available.
--- @param vehicle Vehicle The vehicle handle.
--- @return number
function GetVehicleRoofLiveryCount(vehicle) end

--- Returns the plates a vehicle has.
--- enum eVehiclePlateType
--- {
--- 	VPT_FRONT_AND_BACK_PLATES = 0,
--- 	VPT_FRONT_PLATES = 1,
--- 	VPT_BACK_PLATES = 2,
--- 	VPT_NONE = 3,
--- };
--- Motorcycles with no visible plates will sometimes return a 2 for unknown reasons.
--- @param vehicle Vehicle 
--- @return number
function GetVehiclePlateType(vehicle) end

--- Outputs 2 Vector3's.
--- Scripts check if out2.x - out1.x > something.x
--- Could be suspension related, as in max suspension height and min suspension height, considering the natives location.
--- @param vehicle Vehicle 
--- @param out1 Vector3 
--- @param out2 Vector3 
--- @return void (Type not found)
function GetVehicleSuspensionBounds(vehicle, out1, out2) end

--- Gets the height of the vehicle's suspension.  
--- The higher the value the lower the suspension. Each 0.002 corresponds with one more level lowered.  
--- 0.000 is the stock suspension.  
--- 0.008 is Ultra Suspension.  
--- @param vehicle Vehicle 
--- @return number
function GetVehicleSuspensionHeight(vehicle) end

--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function GetVehicleTyreSmokeColor(vehicle, r, g, b) end

--- See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
--- @param recording number 
--- @param script string 
--- @return number
function GetVehicleRecordingId(recording, script) end

--- @param vehicle Vehicle 
--- @param weaponIndex number 
--- @return number
function GetVehicleWeaponCapacity(vehicle, weaponIndex) end

--- Gets the trailer of a vehicle and puts it into the trailer parameter.  
--- @param vehicle Vehicle 
--- @param trailer Vehicle 
--- @return boolean
function GetVehicleTrailerVehicle(vehicle, trailer) end

--- @param vehicle Vehicle 
--- @return boolean
function GetVehicleTyresCanBurst(vehicle) end

--- ```cpp
--- enum eVehicleWheelType
--- {
---     VWT_SPORT = 0,
---     VWT_MUSCLE = 1,
---     VWT_LOWRIDER = 2,
---     VWT_SUV = 3,
---     VWT_OFFROAD = 4,
---     VWT_TUNER = 5,
---     VWT_BIKE = 6,
---     VWT_HIEND = 7,
---     VWT_SUPERMOD1 = 8, // Benny's Original
---     VWT_SUPERMOD2 = 9, // Benny's Bespoke
---     VWT_SUPERMOD3 = 10, // Open Wheel
---     VWT_SUPERMOD4 = 11, // Street
---     VWT_SUPERMOD5 = 12, // Track
--- };
--- @param vehicle Vehicle 
--- @return number
function GetVehicleWheelType(vehicle) end

--- Returns the headlight color index from the vehicle. Value between 0, 12.
--- Use [\_SET_VEHICLE_HEADLIGHTS_COLOUR](#\_0xE41033B25D003A07) to set the headlights color for the vehicle.
--- Must enable xenon headlights before it'll take affect.
--- List of colors and ids:
--- enum headlightColors {
---     Default = -1,
---     White = 0,
---     Blue = 1,
---     Electric_Blue = 2,
---     Mint_Green = 3,
---     Lime_Green = 4,
---     Yellow = 5,
---     Golden_Shower = 6,
---     Orange = 7,
---     Red = 8,
---     Pony_Pink = 9,
---     Hot_Pink = 10,
---     Purple = 11,
---     Blacklight = 12
--- }
--- @param vehicle Vehicle The vehicle to get the headlight color from.
--- @return number
function GetVehicleXenonLightsColor(vehicle) end

--- @param vehicle Vehicle 
--- @return number
function GetVehicleWindowTint(vehicle) end

--- HAS_*
--- @return boolean
function HasFilledVehiclePopulation() end

--- @param vehicleAsset number 
--- @return boolean
function HasVehicleAssetLoaded(vehicleAsset) end

--- @return boolean
function HasVehiclePhoneExplosiveDevice() end

--- @param p0  
--- @return boolean
function HasPreloadModsFinished(p0) end

--- @param vehicle Vehicle 
--- @return boolean
function HaveVehicleModsStreamedIn(vehicle) end

--- @param recording number 
--- @param script string 
--- @return boolean
function HasVehicleRecordingBeenLoaded(recording, script) end

--- @param vehicle Vehicle 
--- @return boolean
function IsAnyPedRappellingFromHeli(vehicle) end

--- NativeDB Introduced: v1604
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function HideVehicleTombstone(vehicle, toggle) end

--- @return void (Type not found)
function InstantlyFillVehiclePopulation() end

--- IS_*
--- @param vehicle Vehicle 
--- @return boolean
function IsBoatAnchoredAndFrozen(vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function IsAnyEntityAttachedToHandlerFrame(vehicle) end

--- Usage:  
--- public bool isCopInRange(Vector3 Location, float Range)  
---         {  
---             return Function.Call<bool>(Hash.IS_COP_PED_IN_AREA_3D, Location.X - Range, Location.Y - Range, Location.Z - Range, Location.X + Range, Location.Y + Range, Location.Z + Range);  
---         }  
--- @param x1 number 
--- @param x2 number 
--- @param y1 number 
--- @param y2 number 
--- @param z1 number 
--- @param z2 number 
--- @return boolean
function IsCopVehicleInArea3d(x1, x2, y1, y2, z1, z2) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @return boolean
function IsAnyVehicleNearPoint(x, y, z, radius) end

--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return boolean
function IsHeliPartBroken(vehicle, p1, p2, p3) end

--- @param vehicle Vehicle 
--- @return boolean
function IsBigVehicle(vehicle) end

--- @param vehicle Vehicle 
--- @param entity Entity 
--- @return boolean
function IsEntityAttachedToHandlerFrame(vehicle, entity) end

--- NativeDB Introduced: v2372
--- @param vehicle Vehicle 
--- @return boolean
function IsMissionTrain(vehicle) end

--- @param handler Vehicle 
--- @param container Entity 
--- @return boolean
function IsHandlerFrameAboveContainer(handler, container) end

--- @param plane Vehicle 
--- @return boolean
function IsPlaneLandingGearIntact(plane) end

--- @param vehicle Vehicle 
--- @return boolean
function IsHeliLandingAreaBlocked(vehicle) end

--- @param ped Ped 
--- @param vehicle Vehicle 
--- @param outIndex number 
--- @return boolean
function IsPedExclusiveDriverOfVehicle(ped, vehicle, outIndex) end

--- @param vehicle Vehicle 
--- @return boolean
function IsPlaybackGoingOnForVehicle(vehicle) end

--- @param vehicle Vehicle The vehicle to check.
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
--- @return boolean
function IsSeatWarpOnly(vehicle, seatIndex) end

--- @param vehicle Vehicle 
--- @return boolean
function IsPlaybackUsingAiGoingOnForVehicle(vehicle) end

--- @param model Hash 
--- @return boolean
function IsThisModelABike(model) end

--- @param model Hash 
--- @return boolean
function IsThisModelABoat(model) end

--- @param model Hash 
--- @return boolean
function IsThisModelABicycle(model) end

--- To check if the model is an amphibious car, see gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-33#entry1069317363 (for build 944 and above only!)  
--- @param model Hash 
--- @return boolean
function IsThisModelACar(model) end

--- @param model Hash 
--- @return boolean
function IsThisModelAHeli(model) end

--- Checks if model is a boat, then checks for FLAG_IS_JETSKI.
--- @param model Hash 
--- @return boolean
function IsThisModelAJetski(model) end

--- @param model Hash 
--- @return boolean
function IsThisModelAQuadbike(model) end

--- @param vehicle Vehicle 
--- @return boolean
function IsTaxiLightOn(vehicle) end

--- @param model Hash 
--- @return boolean
function IsThisModelAnAmphibiousCar(model) end

--- @param model Hash 
--- @return boolean
function IsThisModelAnAmphibiousQuadbike(model) end

--- p1 is false almost always.  
--- However, in launcher_carwash/carwash1/carwash2 scripts, p1 is true and is accompanied by DOES_VEHICLE_HAVE_ROOF  
--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return boolean
function IsVehicleAConvertible(vehicle, p1) end

--- @param model Hash 
--- @return boolean
function IsThisModelATrain(model) end

--- @param model Hash 
--- @return boolean
function IsThisModelAPlane(model) end

--- @param vehicle Vehicle 
--- @param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- @return boolean
function IsToggleModOn(vehicle, modType) end

--- @param vehicle Vehicle The vehicle to check.
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
--- @return boolean
function IsTurretSeat(vehicle, seatIndex) end

--- @param cargobob Vehicle 
--- @param vehicleAttached Vehicle 
--- @return boolean
function IsVehicleAttachedToCargobob(cargobob, vehicleAttached) end

--- Scripts verify that towTruck is the first parameter, not the second.  
--- @param towTruck Vehicle 
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleAttachedToTowTruck(towTruck, vehicle) end

--- Returns true if vehicle is halted by BRING_VEHICLE_TO_HALT
--- _IS_VEHICLE_*
--- NativeDB Introduced: v1493
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleBeingHalted(vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleAlarmActivated(vehicle) end

--- @param vehicle Vehicle 
--- @param front boolean 
--- @return boolean
function IsVehicleBumperBrokenOff(vehicle, front) end

--- Appears to return true if the vehicle has any damage, including cosmetically.
--- GET_*
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleDamaged(vehicle) end

--- @param vehicle Vehicle 
--- @param frontBumper boolean 
--- @return boolean
function IsVehicleBumperBouncing(vehicle, frontBumper) end

--- p1 is always 0 in the scripts.  
--- p1 = check if vehicle is on fire  
--- @param vehicle Vehicle 
--- @param isOnFireCheck boolean 
--- @return boolean
function IsVehicleDriveable(vehicle, isOnFireCheck) end

--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleAttachedToTrailer(vehicle) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- @param vehicle Vehicle The vehicle to check.
--- @param doorIndex number The index of the door to check.
--- @return boolean
function IsVehicleDoorFullyOpen(vehicle, doorIndex) end

--- Returns whether the specified vehicle is currently in a burnout.  
--- vb.net  
--- Public Function isVehicleInBurnout(vh As Vehicle) As Boolean  
---         Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_IN_BURNOUT, vh)  
---     End Function  
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleInBurnout(vehicle) end

--- Only ever used once in decompiled scripts: **am_pi_menu**:
--- Returns true if the engine is on fire, or if the vehicle engine health is < 0 and it **has been** on fire.
--- It sometimes doesn't return true when the vehicle engine has been on fire, and has since been fixed. I'm not really sure what the exact conditions are.
--- This usually returns true even if there are no visible flames yet (engine health > 0). However if you monitor engine health you'll see that it starts decreasing as soon as this returns true.
--- @param vehicle Vehicle The vehicle to check.
--- @return boolean
function IsVehicleEngineOnFire(vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleHighDetail(vehicle) end

--- @param vehicle Vehicle 
--- @param extraId number 
--- @return boolean
function IsVehicleExtraTurnedOn(vehicle, extraId) end

--- garageName example "Michael - Beverly Hills"
--- @param garageName string 
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleInGarageArea(garageName, vehicle) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- @param veh Vehicle 
--- @param doorID number 
--- @return boolean
function IsVehicleDoorDamaged(veh, doorID) end

--- Public Function isVehicleOnAllWheels(vh As Vehicle) As Boolean  
--- Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_ON_ALL_WHEELS, vh)  
--- 		    End Function  
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleOnAllWheels(vehicle) end

--- @param vehicle Vehicle 
--- @param model Hash 
--- @return boolean
function IsVehicleModel(vehicle, model) end

--- NativeDB Introduced: v1290
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleInSubmarineMode(vehicle) end

--- indices:  
--- 0 = Left  
--- 1 = Right  
--- 2 = Front  
--- 3 = Back  
--- @param vehicle Vehicle 
--- @param index number 
--- @return boolean
function IsVehicleNeonLightEnabled(vehicle, index) end

--- mpsum2_g9ec
--- NativeDB Introduced: v2699
--- @param vehicle Vehicle 
--- @param modType number 
--- @param modIndex number 
--- @return boolean
function IsVehicleModHswExclusive(vehicle, modType, modIndex) end

--- Check if a vehicle seat is accessible. If you park your vehicle near a wall and the ped cannot enter/exit this side, the return value toggles from true (not blocked) to false (blocked).
--- side = only relevant for bikes/motorcycles to check if the left (false)/right (true) side is blocked.
--- onEnter = check if you can enter (true) or exit (false) a vehicle.
--- @param ped Ped 
--- @param vehicle Vehicle The vehicle to check.
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
--- @param side boolean 
--- @param onEnter boolean 
--- @return boolean
function IsVehicleSeatAccessible(ped, vehicle, seatIndex, side, onEnter) end

--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleRocketBoostActive(vehicle) end

--- Possibly: Returns whether the searchlight (found on police vehicles) is toggled on.  
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleSearchlightOn(vehicle) end

--- Seat indices range from -1 to [`GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS`](#\_0xA7C4F2C6E744A550) minus one.
--- ```cpp
--- // CTaskExitVehicleSeat::eSeatPosition - 1
--- enum eSeatPosition
--- {
---     SF_FrontDriverSide = -1,
---     SF_FrontPassengerSide = 0,
---     SF_BackDriverSide = 1,
---     SF_BackPassengerSide = 2,
---     SF_AltFrontDriverSide = 3,
---     SF_AltFrontPassengerSide = 4,
---     SF_AltBackDriverSide = 5,
---     SF_AltBackPassengerSide = 6,
--- };
--- NativeDB Added Parameter 3: BOOL isTaskRunning
--- isTaskRunning = on true the function returns already false while a task on the target seat is running (TASK_ENTER_VEHICLE/TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT) - on false only when a ped is finally sitting in the seat.
--- @param vehicle Vehicle The vehicle to check.
--- @param seatIndex number The eSeatPosition or -2 for **any** vehicle seat.
--- @return boolean
function IsVehicleSeatFree(vehicle, seatIndex) end

--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleSlipstreamLeader(vehicle) end

--- Does not work for vehicle of type: CBike, CBmx, CBoat, CTrain, CSubmarine.
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleParachuteActive(vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleSirenAudioOn(vehicle) end

--- Returns whether the vehicle's lights and sirens are on.
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleSirenOn(vehicle) end

--- Returns true if the vehicle's current speed is less than, or equal to 0.0025f.
--- For some vehicles it returns true if the current speed is <= 0.00039999999.
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleStopped(vehicle) end

--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleStolen(vehicle) end

--- Returns false if the vehicle has the FLAG_NO_RESPRAY flag set.
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleSprayable(vehicle) end

--- Is this for red lights only?  more testing required.
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleStoppedAtTrafficLights(vehicle) end

--- p1 can be anywhere from 0 to 3 in the scripts. p2 is generally somewhere in the 1000 to 10000 range.  
--- @param vehicle Vehicle 
--- @param p1 number 
--- @param p2 number 
--- @return boolean
function IsVehicleStuckTimerUp(vehicle, p1, p2) end

--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleStuckOnRoof(vehicle) end

--- wheelID used for 4 wheelers seem to be (0, 1, 4, 5)  
--- completely - is to check if tire completely gone from rim.  
--- '0 = wheel_lf / bike, plane or jet front  
--- '1 = wheel_rf  
--- '2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left  
--- '3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right  
--- '4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left  
--- '5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right  
--- '45 = 6 wheels trailer mid wheel left  
--- '47 = 6 wheels trailer mid wheel right  
--- @param vehicle Vehicle 
--- @param wheelID number 
--- @param completely boolean 
--- @return boolean
function IsVehicleTyreBurst(vehicle, wheelID, completely) end

--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleVisible(vehicle) end

--- @param weaponHash Hash 
--- @param vehicle Vehicle 
--- @param owner Ped 
--- @return boolean
function IsVehicleWeaponDisabled(weaponHash, vehicle, owner) end

--- ```cpp
--- enum eWindowId {
--- 	VEH_EXT_WINDOW_LF = 0,
--- 	VEH_EXT_WINDOW_RF = 1,
--- 	VEH_EXT_WINDOW_LR = 2,
--- 	VEH_EXT_WINDOW_RR = 3,
--- 	VEH_EXT_WINDOW_LM = 4,
--- 	VEH_EXT_WINDOW_RM = 5,
--- 	VEH_EXT_WINDSCREEN = 6,
--- 	VEH_EXT_WINDSCREEN_R = 7,
--- }
--- @param vehicle Vehicle The vehicle handle
--- @param windowIndex number The index of the window
--- @return boolean
function IsVehicleWindowIntact(vehicle, windowIndex) end

--- Will disable a plane or a helicopter's need to swerve around object in its heightmap when using TASK_PLANE_MISSION or other AI / Pilot behavior.  Will ensure plane flys directly to it's destination or die trying! This native does NOT need to be called every frame, but instead, just called once on the vehicle (NOT THE PED) you're trying to disable avoidance for!
--- @param vehicle Vehicle The vehicle handle to toggle obstacle avoidance for.
--- @param avoidObstacles boolean `true` / `false` to enable/disable heightmap obstacle avoidance respectively!
--- @return void (Type not found)
function EnableAircraftObstacleAvoidance(vehicle, avoidObstacles) end

--- @param vehicle Vehicle 
--- @param instantlyLower boolean 
--- @return void (Type not found)
function LowerConvertibleRoof(vehicle, instantlyLower) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function LowerRetractableWheels(vehicle) end

--- Implemented only for Trains.
--- NativeDB Introduced: v2372
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkUseHighPrecisionVehicleBlending(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param instantlyRaise boolean 
--- @return void (Type not found)
function RaiseConvertibleRoof(vehicle, instantlyRaise) end

--- @param vehicle Vehicle 
--- @param value number 
--- @return void (Type not found)
function ModifyVehicleTopSpeed(vehicle, value) end

--- @param p0  
--- @param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- @param p2  
--- @return void (Type not found)
function PreloadVehicleMod(p0, modType, p2) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function OpenBombBayDoors(vehicle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function PausePlaybackRecordedVehicle(vehicle) end

--- Detaches the vehicle's windscreen.
--- @param vehicle Vehicle 
--- @return void (Type not found)
function PopOutVehicleWindscreen(vehicle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function ReleasePreloadMods(vehicle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function RaiseRetractableWheels(vehicle) end

--- Retracts the hook on the cargobob.  
--- Note: after you retract it the natives for dropping the hook no longer work  
--- @param cargobob Vehicle 
--- @return void (Type not found)
function RemovePickUpRopeForCargobob(cargobob) end

--- @param speedzone number 
--- @return boolean
function RemoveRoadNodeSpeedZone(speedzone) end

--- @param vehicleAsset number 
--- @return void (Type not found)
function RemoveVehicleAsset(vehicleAsset) end

--- Remove the weird shadow applied by [\_SET_VEHICLE_SHADOW_EFFECT](#\_0x2A70BAE8883E4C81)
--- @param vehicle Vehicle 
--- @return void (Type not found)
function RemoveVehicleShadowEffect(vehicle) end

--- @param p0  
--- @return void (Type not found)
function RemoveVehicleCombatAvoidanceArea(p0) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function RemoveVehicleHighDetailModel(vehicle) end

--- @param vehicle Vehicle 
--- @param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- @return void (Type not found)
function RemoveVehicleMod(vehicle, modType) end

--- See [REQUEST_VEHICLE_RECORDING](#\_0xAF514CABE74CBF15)
--- @param recording number 
--- @param script string 
--- @return void (Type not found)
function RemoveVehicleRecording(recording, script) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function RemoveVehicleUpsidedownCheck(vehicle) end

--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param unk  
--- @return void (Type not found)
function RemoveVehiclesFromGeneratorsInArea(x1, y1, z1, x2, y2, z2, unk) end

--- See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
--- @param vehicle Vehicle 
--- @param windowIndex number 
--- @return void (Type not found)
function RemoveVehicleWindow(vehicle, windowIndex) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function RemoveVehicleStuckCheck(vehicle) end

--- REQUEST_VEHICLE_ASSET(GET_HASH_KEY(cargobob3), 3);  
--- vehicle found that have asset's:  
--- cargobob3  
--- submersible  
--- blazer  
--- @param vehicleHash Hash 
--- @param vehicleAsset number 
--- @return void (Type not found)
function RequestVehicleAsset(vehicleHash, vehicleAsset) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function RequestVehicleHighDetailModel(vehicle) end

--- The inner function has a switch on the second parameter. It's the stuck timer index.  
--- Here's some pseudo code I wrote for the inner function:  
--- void __fastcall NATIVE_RESET_VEHICLE_STUCK_TIMER_INNER(CUnknown* unknownClassInVehicle, int timerIndex)  
--- {  
--- 	switch (timerIndex)  
--- 	{  
--- 	case 0:  
--- unknownClassInVehicle->FirstStuckTimer = (WORD)0u;  
--- 	case 1:  
--- unknownClassInVehicle->SecondStuckTimer = (WORD)0u;  
--- 	case 2:  
--- unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;  
--- 	case 3:  
--- unknownClassInVehicle->FourthStuckTimer = (WORD)0u;  
--- 	case 4:  
--- unknownClassInVehicle->FirstStuckTimer = (WORD)0u;  
--- unknownClassInVehicle->SecondStuckTimer = (WORD)0u;  
--- unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;  
--- unknownClassInVehicle->FourthStuckTimer = (WORD)0u;  
--- break;  
--- 	};  
--- }  
--- @param vehicle Vehicle 
--- @param nullAttributes number 
--- @return void (Type not found)
function ResetVehicleStuckTimer(vehicle, nullAttributes) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function ResetVehicleWheels(vehicle, toggle) end

--- REQUEST_VEHICLE_*  
--- @param vehicle Vehicle 
--- @return void (Type not found)
function RequestVehicleDashboardScaleformMovie(vehicle) end

--- Request the vehicle recording defined by the lowercase format string "%s%03d.yvr". For example, REQUEST_VEHICLE_RECORDING(1, "FBIs1UBER") corresponds to fbis1uber001.yvr.
--- For all vehicle recording/playback natives, "script" is a common prefix that usually corresponds to the script/mission the recording is used in, "recording" is its int suffix, and "id" (e.g., in native GET_TOTAL_DURATION_OF_VEHICLE_RECORDING_ID) corresponds to a unique identifier within the recording streaming module.
--- Note that only 24 recordings (hardcoded in multiple places) can ever active at a given time before clobbering begins.
--- @param recording number 
--- @param script string 
--- @return void (Type not found)
function RequestVehicleRecording(recording, script) end

--- @return void (Type not found)
function SetAllVehicleGeneratorsActive() end

--- See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
--- @param vehicle Vehicle 
--- @param windowIndex number 
--- @return void (Type not found)
function RollDownWindow(vehicle, windowIndex) end

--- @param active boolean 
--- @return void (Type not found)
function SetAllLowPriorityVehicleGeneratorsActive(active) end

--- See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
--- @param vehicle Vehicle 
--- @param windowIndex number 
--- @return void (Type not found)
function RollUpWindow(vehicle, windowIndex) end

--- Roll down all the windows of the vehicle passed through the first parameter.  
--- @param vehicle Vehicle 
--- @return void (Type not found)
function RollDownWindows(vehicle) end

--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param p6 boolean 
--- @param p7 boolean 
--- @return void (Type not found)
function SetAllVehicleGeneratorsActiveInArea(x1, y1, z1, x2, y2, z2, p6, p7) end

--- Only works on bikes, both X and Y work in the -1 - 1 range.
--- X forces the bike to turn left or right (-1, 1)
--- Y forces the bike to lean to the left or to the right (-1, 1)
--- Example with X -1/Y 1
--- http://i.imgur.com/TgIuAPJ.jpg
--- @param vehicle Vehicle 
--- @param x number 
--- @param y number 
--- @return void (Type not found)
function SetBikeOnStand(vehicle, x, y) end

--- Sets the boat boom position for the `TR3` trailer.
--- Ratio value is between `0.0` and `1.0`, where `0.0` is 90 degrees to the left of the boat, and `1.0` is just slightly to the right/back of the boat.
--- To get the current boom position ratio, use [GET_BOAT_BOOM_POSITION_RATIO](#\_0x6636C535F6CC2725).
--- @param vehicle Vehicle The TR3 vehicle.
--- @param ratio number A value between 0.0 (left) and 1.0 (back)
--- @return void (Type not found)
function SetBoatBoomPositionRatio(vehicle, ratio) end

--- @param range number Most likely a value between 0.0 and 1.0.
--- @return void (Type not found)
function SetAmbientVehicleRangeMultiplierThisFrame(range) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBoatAnchor(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetBoatIsSinking(vehicle) end

--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function SetBoatDisableAvoidance(vehicle, p1) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBoatSinksWhenWrecked(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBoatFrozenWhenAnchored(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param value number 
--- @return void (Type not found)
function SetBoatMovementResistance(vehicle, value) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCamberedWheelsDisabled(vehicle, toggle) end

--- Hardcoded to not work in multiplayer.  
--- @param vehicle Vehicle 
--- @param state boolean 
--- @return void (Type not found)
function SetCanResprayVehicle(vehicle, state) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetCarBootOpen(vehicle) end

--- Something to do with "high speed bump severity"?  
--- if (!sub_87a46("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER")) {  
---     VEHICLE::_84FD40F56075E816(0.0);  
---     sub_8795b("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER", 1);  
--- }  
--- @param multiplier number 
--- @return void (Type not found)
function SetCarHighSpeedBumpSeverityMultiplier(multiplier) end

--- Stops the cargobob from being able to attach any vehicle
--- NativeDB Introduced: v1180
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCargobobHookCanAttach(vehicle, toggle) end

--- Won't attract or magnetize to any helicopters or planes of course, but that's common sense.  
--- @param cargobob Vehicle 
--- @param isActive boolean 
--- @return void (Type not found)
function SetCargobobPickupMagnetActive(cargobob, isActive) end

--- @param vehicle Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function SetCargobobPickupMagnetEffectRadius(vehicle, p1) end

--- Stops cargobob from being able to detach the attached vehicle.
--- @param cargobob Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCargobobForceDontDetachVehicle(cargobob, toggle) end

--- @param cargobob Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function SetCargobobPickupMagnetPullRopeLength(cargobob, p1) end

--- @param cargobob Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function SetCargobobPickupMagnetReducedFalloff(cargobob, p1) end

--- @param cargobob Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function SetCargobobPickupMagnetPullStrength(cargobob, p1) end

--- @param cargobob Vehicle 
--- @param strength number 
--- @return void (Type not found)
function SetCargobobPickupMagnetStrength(cargobob, strength) end

--- @param vehicle Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function SetCargobobPickupMagnetFalloff(vehicle, p1) end

--- @param cargobob Vehicle 
--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetCargobobPickupMagnetReducedStrength(cargobob, vehicle) end

--- @param vehicle Vehicle 
--- @param state number 
--- @return void (Type not found)
function SetCargobobPickupRopeType(vehicle, state) end

--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function SetConvertibleRoof(vehicle, p1) end

--- @param cargobob Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function SetCargobobPickupRopeDampingMultiplier(cargobob, p1) end

--- Only used with the "akula" and "annihilator2" in the decompiled native scripts.
--- NativeDB Introduced: v1290
--- @param vehicle Vehicle 
--- @param deploy boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetDeployHeliStubWings(vehicle, deploy, p2) end

--- @param vehicle Vehicle 
--- @param state boolean 
--- @return void (Type not found)
function SetConvertibleRoofLatchState(vehicle, state) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetDisablePretendOccupants(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function SetDisableSuperdummyMode(vehicle, p1) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetDisableVehicleEngineFires(vehicle, toggle) end

--- Disables turret movement when called in a loop. You can still fire and aim. You cannot shoot backwards though.
--- NativeDB Introduced: v1365
--- @param vehicle Vehicle 
--- @param turretIdx number 
--- @return void (Type not found)
function SetDisableTurretMovementThisFrame(vehicle, turretIdx) end

--- @param toggle boolean 
--- @return void (Type not found)
function SetDisableRandomTrainsThisFrame(toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetDisableVehiclePetrolTankDamage(vehicle, toggle) end

--- True stops vtols from switching modes. Doesn't stop the sound though.
--- NativeDB Introduced: v1290
--- @param vehicle Vehicle 
--- @param direction boolean 
--- @return void (Type not found)
function SetDisableVehicleFlightNozzlePosition(vehicle, direction) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetDisableVehiclePetrolTankFires(vehicle, toggle) end

--- NativeDB Introduced: v1604
--- @param toggle boolean 
--- @return void (Type not found)
function SetDisableVehicleUnk(toggle) end

--- NativeDB Introduced: v1604
--- @param toggle boolean 
--- @return void (Type not found)
function SetDisableVehicleUnk2(toggle) end

--- R\* used it to "remove" vehicle windows when "nightshark" had some mod, which adding some kind of armored windows. When enabled, you can't break vehicles glass. All your bullets wiil shoot through glass. You also will not able to break the glass with any other way (hitting and etc)
--- @param vehicle Vehicle The vehicle to toggle this for.
--- @param toggle boolean True disables the collision, false enables the collision
--- @return void (Type not found)
function SetDisableVehicleWindowCollisions(vehicle, toggle) end

--- Enable/Disables global slipstream physics
--- @param toggle boolean 
--- @return void (Type not found)
function SetEnableVehicleSlipstreaming(toggle) end

--- NativeDB Introduced: v2372
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetDriftTyresEnabled(vehicle, toggle) end

--- Toggles to render distant vehicles. They may not be vehicles but images to look like vehicles.  
--- @param toggle boolean 
--- @return void (Type not found)
function SetDistantCarsEnabled(toggle) end

--- @param toggle boolean 
--- @return void (Type not found)
function SetFarDrawVehicles(toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetForceHdVehicle(vehicle, toggle) end

--- X,Y position of boat is frozen in place when anchored and its engine disabled, only the Z value changes. Requires 0xE3EBAAE484798530 to be set to true.
--- SET_FORCED_ZENITH_QUADTREE?
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetForcedBoatLocationWhenAnchored(vehicle, toggle) end

--- Sets the speed of the helicopter blades in percentage of the full speed.  
--- vehicleHandle: The helicopter.  
--- speed: The speed in percentage, 0.0f being 0% and 1.0f being 100%.  
--- @param vehicle Vehicle 
--- @param speed number 
--- @return void (Type not found)
function SetHeliBladesSpeed(vehicle, speed) end

--- 0.0 = Lowest 1.0 = Highest. This is best to be used if you wanna pick-up a car since un-realistically on GTA V forklifts can't pick up much of anything due to vehicle mass. If you put this under a car then set it above 0.0 to a 'lifted-value' it will raise the car with no issue lol
--- @param vehicle Vehicle 
--- @param height number 
--- @return void (Type not found)
function SetForkliftForkHeight(vehicle, height) end

--- Equivalent of SET_HELI_BLADES_SPEED(vehicleHandle, 1.0f);  
--- this native works on planes to?  
--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetHeliBladesFullSpeed(vehicle) end

--- @param vehicle Vehicle 
--- @param health number 
--- @return void (Type not found)
function SetHeliMainRotorHealth(vehicle, health) end

--- @param vehicle Vehicle 
--- @param health number 
--- @return void (Type not found)
function SetHeliTailRotorHealth(vehicle, health) end

--- @param toggle boolean 
--- @return void (Type not found)
function SetGarbageTrucks(toggle) end

--- @param vehicle Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function SetHeliTurbulenceScalar(vehicle, p1) end

--- value between 0.0 and 1.0  
--- @param helicopter Vehicle 
--- @param multiplier number 
--- @return void (Type not found)
function SetHelicopterRollPitchYawMult(helicopter, multiplier) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetHydraulicRaised(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function SetHeliTailExplodeThrowDashboard(vehicle, p1) end

--- Sets vehicle wheel hydraulic states transition. Known states:
--- 0 - reset
--- 1 - raise wheel (uses value arg, works just like _SET_VEHICLE_HYDRAULIC_WHEEL_VALUE)
--- 2 - jump using wheel
--- @param vehicle Vehicle 
--- @param wheelId number 
--- @param state number 
--- @param value number 
--- @param p4 number 
--- @return void (Type not found)
function SetHydraulicWheelStateTransition(vehicle, wheelId, state, value, p4) end

--- @param vehicle Vehicle 
--- @param state number 
--- @return void (Type not found)
function SetHydraulicWheelState(vehicle, state) end

--- Works only on vehicles that support hydraulic.
--- @param vehicle Vehicle 
--- @param wheelId number 
--- @param value number 
--- @return void (Type not found)
function SetHydraulicWheelValue(vehicle, wheelId, value) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetLastDrivenVehicle(vehicle) end

--- @param train Vehicle 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetMissionTrainCoords(train, x, y, z) end

--- @param distance number 
--- @return void (Type not found)
function SetLightsCutoffDistanceTweak(distance) end

--- p1 is always 0  
--- @param train Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function SetMissionTrainAsNoLongerNeeded(train, p1) end

--- Set state to true to extend the wings, false to retract them.
--- @param vehicle Vehicle The vehicle (tested with oppressor only)
--- @param extend boolean Set to true to extend the wings, false to retract them.
--- @return void (Type not found)
function SetOppressorTransformState(vehicle, extend) end

--- Works just like SET_VEHICLE_ENGINE_HEALTH, didn't saw any difference. But this native works only for planes.
--- @param vehicle Vehicle 
--- @param health number 
--- @return void (Type not found)
function SetPlaneEngineHealth(vehicle, health) end

--- @param value number 
--- @return void (Type not found)
function SetNumberOfParkedVehicles(value) end

--- @param multiplier number 
--- @return void (Type not found)
function SetParkedVehicleDensityMultiplierThisFrame(multiplier) end

--- min: 1.9f, max: 100.0f
--- @param cargobob Vehicle 
--- @param length1 number 
--- @param length2 number 
--- @param state boolean 
--- @return void (Type not found)
function SetPickupRopeLengthForCargobob(cargobob, length1, length2, state) end

--- Time is number of milliseconds before reverting, zero for indefinitely.
--- @param vehicle Vehicle 
--- @param time number 
--- @param drivingStyle number 
--- @param p3 boolean 
--- @return void (Type not found)
function SetPlaybackToUseAiTryToRevertBackLater(vehicle, time, drivingStyle, p3) end

--- @param vehicle Vehicle 
--- @param speed number 
--- @return void (Type not found)
function SetPlaybackSpeed(vehicle, speed) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlaneResistToExplosion(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetPlayersLastVehicle(vehicle) end

--- This native sets the turbulence multiplier. It only works for planes.
--- 0.0 = no turbulence at all.
--- 1.0 = heavy turbulence.
--- Works by just calling it once, does not need to be called every tick.
--- @param vehicle Vehicle The plane to set the multiplier for
--- @param multiplier number The turbulence multiplier. Value between 0.0 and 1.0
--- @return void (Type not found)
function SetPlaneTurbulenceMultiplier(vehicle, multiplier) end

--- NativeDB Introduced: v2372
--- @param toggle boolean 
--- @return void (Type not found)
function SetRandomBoatsInMp(toggle) end

--- @param plane Vehicle 
--- @param health number 
--- @return void (Type not found)
function SetPlanePropellersHealth(plane, health) end

--- Identical to SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER with 0 as arguments for p1 and p3.
--- @param vehicle Vehicle 
--- @param drivingStyle number 
--- @return void (Type not found)
function SetPlaybackToUseAi(vehicle, drivingStyle) end

--- Enables spawning random trains on the preset tracks.
--- Requires [`SWITCH_TRAIN_TRACK`](#\_0xFD813BB7DB977F20) and [`SET_TRAIN_TRACK_SPAWN_FREQUENCY`](#\_0x21973BBF8D17EDFA) to be set.
--- @param toggle boolean Whether to enable random trains.
--- @return void (Type not found)
function SetRandomTrains(toggle) end

--- Sets flag on vehicle that changes behaviour in relation to when player gets wanted level
--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function SetPoliceFocusWillTrackVehicle(vehicle, p1) end

--- @param multiplier number 
--- @return void (Type not found)
function SetRandomVehicleDensityMultiplierThisFrame(multiplier) end

--- @param toggle boolean 
--- @return void (Type not found)
function SetRandomBoats(toggle) end

--- makes the train all jumbled up and derailed as it moves on the tracks (though that wont stop it from its normal operations)  
--- @param train Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetRenderTrainAsDerailed(train, toggle) end

--- Lowers the vehicle's stance. Only works for vehicles that support this feature.
--- NativeDB Introduced: v2372
--- @param vehicle Vehicle 
--- @param enable boolean 
--- @return void (Type not found)
function SetReduceDriftVehicleSuspension(vehicle, enable) end

--- Only called once in the decompiled scripts. Presumably activates the specified generator.  
--- @param vehicleGenerator number 
--- @param enabled boolean 
--- @return void (Type not found)
function SetScriptVehicleGenerator(vehicleGenerator, enabled) end

--- @param plane Vehicle 
--- @param height number 
--- @return void (Type not found)
function SetTaskVehicleGotoPlaneMinHeightAboveTerrain(plane, height) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @param depth1 number 
--- @param depth2 number 
--- @param depth3 number 
--- @return void (Type not found)
function SetSubmarineCrushDepths(vehicle, toggle, depth1, depth2, depth3) end

--- NativeDB Introduced: v1365
--- @param vehicle Vehicle 
--- @param ratio number 
--- @return void (Type not found)
function SetSpecialflightWingRatio(vehicle, ratio) end

--- This is not tested - it's just an assumption.  
--- Doesn't seem to work.  I'll try with an int instead. --JT  
--- Read the scripts, im dumpass.   
--- Doesn't work at all, wether with an bool neither an int  
---                             if (!VEHICLE::IS_TAXI_LIGHT_ON(l_115)) {  
---                                 VEHICLE::SET_TAXI_LIGHTS(l_115, 1);  
---                             }  
--- @param vehicle Vehicle 
--- @param state boolean 
--- @return void (Type not found)
function SetTaxiLights(vehicle, state) end

--- in the decompiled scripts, seems to be always called on the vehicle right after being attached to a trailer.
--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetTrailerLegsRaised(vehicle) end

--- @param train Vehicle 
--- @param speed number 
--- @return void (Type not found)
function SetTrainSpeed(train, speed) end

--- Inverse of 0x95CF53B3D687F9FA
--- NativeDB Added Parameter 1: Vehicle vehicle
--- @return void (Type not found)
function SetTrailerLegsLowered() end

--- Used to control train speed, can be used to start and stop its movement as well.
--- @param train Vehicle 
--- @param speed number 
--- @return void (Type not found)
function SetTrainCruiseSpeed(train, speed) end

--- @param vehicle Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function SetTrailerInverseMassScale(vehicle, p1) end

--- Only called once inside main_persitant with the parameters, 0  
--- @param trackIndex number 
--- @param frequency number 
--- @return void (Type not found)
function SetTrainTrackSpawnFrequency(trackIndex, frequency) end

--- Controls how much traction the wheel loses.
--- Default values from Rockstar's Open Wheel Race JSON's:
--- "owrtds" (Soft): 0.05
--- "owrtdm" (Medium): 0.45
--- "owrtdh" (Hard): 0.8
--- Usable wheels:
--- 0: wheel_lf
--- 1: wheel_rf
--- 2: wheel_lm1
--- 3: wheel_rm1
--- 4: wheel_lr
--- 5: wheel_rr
--- NativeDB Introduced: v2060
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param multiplier number 
--- @return void (Type not found)
function SetTyreTractionLossMultiplier(vehicle, wheelIndex, multiplier) end

--- Controls how fast the tires wear out.
--- Default values from Rockstar's Open Wheel Race JSON's:
--- "owrtss" (Soft): 2.2
--- "owrtsm" (Medium): 1.7
--- "owrtsh" (Hard): 1.2
--- Usable wheels:
--- 0: wheel_lf
--- 1: wheel_rf
--- 2: wheel_lm1
--- 3: wheel_rm1
--- 4: wheel_lr
--- 5: wheel_rr
--- NativeDB Introduced: v2060
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param multiplier number 
--- @return void (Type not found)
function SetTyreSoftnessMultiplier(vehicle, wheelIndex, multiplier) end

--- NativeDB Introduced: v1868
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param health number 
--- @return void (Type not found)
function SetTyreHealth(vehicle, wheelIndex, health) end

--- NativeDB Introduced: v1365
--- @param vehicle Vehicle 
--- @param value boolean 
--- @return void (Type not found)
function SetUnkBool0x102ForSubmarineVehicleTask(vehicle, value) end

--- NativeDB Introduced: v1868
--- @param vehicle Vehicle 
--- @param wheelIndex number 
--- @param multiplier number 
--- @return void (Type not found)
function SetTyreWearMultiplier(vehicle, wheelIndex, multiplier) end

--- NativeDB Introduced: v1365
--- @param vehicle Vehicle 
--- @param value number 
--- @return void (Type not found)
function SetUnkFloat0x104ForSubmarineVehicleTask(vehicle, value) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleActiveDuringPlayback(vehicle, toggle) end

--- Allows vehicles with the FLAG_JUMPING_CAR flag to jump higher (i.e. Ruiner 2000).
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetUseHigherVehicleJumpForce(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param state boolean 
--- @return void (Type not found)
function SetVehicleAlarm(vehicle, state) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleActiveForPedNavigation(vehicle, toggle) end

--- Makes the vehicle accept no passengers.  
--- @param veh Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleAllowNoPassengersLockon(veh, toggle) end

--- p2 often set to 1000.0 in the decompiled scripts.  
--- @param vehicle Vehicle 
--- @param value number 
--- @return void (Type not found)
function SetVehicleBodyHealth(vehicle, value) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleBrake(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @param p2  
--- @return 
function SetVehicleAutomaticallyAttaches(vehicle, p1, p2) end

--- Sets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane.
--- In decompiled scripts this is used to deduct from or add to the count whenever bombs are dropped or purchased/restocked.
--- Use [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1) to get the amount of bombs on that vehicle.
--- @param aircraft Vehicle The vehicle to set the bombCount on.
--- @param bombCount number The amount of bombs to set for this vehicle.
--- @return void (Type not found)
function SetVehicleBombCount(aircraft, bombCount) end

--- SET_VEHICLE_AL*
--- @param vehicle Vehicle 
--- @param canBeLockedOn boolean 
--- @param unk boolean 
--- @return void (Type not found)
function SetVehicleCanBeLockedOn(vehicle, canBeLockedOn, unk) end

--- Sets the arm position of a bulldozer. Position must be a value between 0.0 and 1.0. Ignored when `p2` is set to false, instead incrementing arm position by 0.1 (or 10%).
--- @param vehicle Vehicle 
--- @param position number 
--- @param p2 boolean 
--- @return void (Type not found)
function SetVehicleBulldozerArmPosition(vehicle, position, p2) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleBrakeLights(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleCanBeUsedByFleeingPeds(vehicle, toggle) end

--- On accelerating, spins the driven wheels with the others braked, so you don't go anywhere.  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleBurnout(vehicle, toggle) end

--- This has not yet been tested - it's just an assumption of what the types could be.  
--- @param vehicle Vehicle 
--- @param state boolean 
--- @return void (Type not found)
function SetVehicleCanBeTargetted(vehicle, state) end

--- @param vehicle Vehicle 
--- @param state boolean 
--- @return void (Type not found)
function SetVehicleCanBeVisiblyDamaged(vehicle, state) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleCanBreak(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleCanDeformWheels(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleCanEngineOperateOnFire(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleCanLeakOil(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleCanLeakPetrol(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleCanSaveInGarage(vehicle, toggle) end

--- Previously named GET_VEHICLE_DEFORMATION_GET_TREE (hash collision)
--- from Decrypted Scripts I found
--- VEHICLE::SET_VEHICLE_CEILING_HEIGHT(l_BD9[2/*2*/], 420.0);
--- @param vehicle Vehicle 
--- @param height number 
--- @return void (Type not found)
function SetVehicleCeilingHeight(vehicle, height) end

--- Sets the selected vehicle's colors to their default value (specific variant specified using the colorCombination parameter).
--- Range of possible values for colorCombination is currently unknown, I couldn't find where these values are stored either (Disquse's guess was vehicles.meta but I haven't seen it in there.)
--- @param vehicle Vehicle The vehicle to modify.
--- @param colorCombination number One of the default color values of the vehicle.
--- @return void (Type not found)
function SetVehicleColourCombination(vehicle, colorCombination) end

--- <1.0 - Decreased torque
--- =1.0 - Default torque
--- >1.0 - Increased torque
--- Negative values will cause the vehicle to go backwards instead of forwards while accelerating.
--- value - is between 0.2 and 1.8 in the decompiled scripts.
--- This needs to be called every frame to take effect.
--- @param vehicle Vehicle 
--- @param value number 
--- @return void (Type not found)
function SetVehicleCheatPowerIncrease(vehicle, value) end

--- Inverts vehicle's controls. So INPUT_VEH_ACCELERATE will be INPUT_VEH_BRAKE and vise versa (same for A/D controls)
--- Doesn't work for planes/helis.
--- @param vehicle Vehicle 
--- @param state boolean 
--- @return void (Type not found)
function SetVehicleControlsInverted(vehicle, state) end

--- colorPrimary & colorSecondary are the paint indexes for the vehicle.
--- For a list of valid paint indexes, view: pastebin.com/pwHci0xK
--- @param vehicle Vehicle 
--- @param colorPrimary number 
--- @param colorSecondary number 
--- @return void (Type not found)
function SetVehicleColours(vehicle, colorPrimary, colorSecondary) end

--- Apply damage to vehicle at a location. Location is relative to vehicle model (not world).
--- Radius of effect damage applied in a sphere at impact location
--- When `focusOnModel` set to `true`, the damage sphere will travel towards the vehicle from the given point, thus guaranteeing an impact
--- @param vehicle Vehicle 
--- @param xOffset number 
--- @param yOffset number 
--- @param zOffset number 
--- @param damage number 
--- @param radius number the size of the damage sphere to apply
--- @param focusOnModel boolean when set to `true`, the damage sphere will travel towards the vehicle from the given point, thus guaranteeing an impact
--- @return void (Type not found)
function SetVehicleDamage(vehicle, xOffset, yOffset, zOffset, damage, radius, focusOnModel) end

--- SET_VEHICLE_D*
--- @param vehicle Vehicle 
--- @param p1 number 
--- @return 
function SetVehicleDamageModifier(vehicle, p1) end

--- Similar to [`_SET_AIRCRAFT_BOMB_COUNT`](#\_0xF4B2ED59DEB5D774), this sets the amount of countermeasures that are present on this vehicle.
--- Use [`_GET_AIRCRAFT_COUNTERMEASURE_COUNT`](#\_0xF846AA63DF56B804) to get the current amount.
--- @param aircraft Vehicle The vehicle to set the amount of countermeasures on.
--- @param count number The amount of countermeasures to set on this vehicle.
--- @return void (Type not found)
function SetVehicleCountermeasureCount(aircraft, count) end

--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)  
--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function SetVehicleCustomPrimaryColour(vehicle, r, g, b) end

--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)  
--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function SetVehicleCustomSecondaryColour(vehicle, r, g, b) end

--- @param vehicle Vehicle 
--- @param color number 
--- @return void (Type not found)
function SetVehicleDashboardColor(vehicle, color) end

--- This fixes the deformation of a vehicle but the vehicle health doesn't improve  
--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetVehicleDeformationFixed(vehicle) end

--- **Usage:**
--- *   Use this native inside a looped function.
--- *   Values:
---     *   `0.0` = no vehicles on streets
---     *   `1.0` = normal vehicles on streets
--- `1.0` Seems to be the maximum.
--- @param multiplier number 
--- @return void (Type not found)
function SetVehicleDensityMultiplierThisFrame(multiplier) end

--- Sets the dirt level of the passed vehicle.
--- @param vehicle Vehicle The vehicle to set.
--- @param dirtLevel number A number between 0.0 and 15.0 representing the vehicles dirt level.
--- @return void (Type not found)
function SetVehicleDirtLevel(vehicle, dirtLevel) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleDisableTowing(vehicle, toggle) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @param speed number 5 is fast, 1 is slow 3 is medium
--- @param angle number 
--- @return void (Type not found)
function SetVehicleDoorControl(vehicle, doorIndex, speed, angle) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @param deleteDoor boolean 
--- @return void (Type not found)
function SetVehicleDoorBroken(vehicle, doorIndex, deleteDoor) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @param isBreakable boolean 
--- @return void (Type not found)
function SetVehicleDoorCanBreak(vehicle, doorIndex, isBreakable) end

--- Sets the specified door index open on the passed vehicle. See [`IS_VEHICLE_DOOR_FULLY_OPEN`](#\_0x3E933CFF7B111C22).
--- @param vehicle Vehicle Vehicle.
--- @param doorIndex number Index of the door you want to open (0-7)
--- @param loose boolean Whether the door is "loose" (if true the doors have no "spring" and can be closed easily.)
--- @param openInstantly boolean Whether the doors open instantly (if true this native seems to ignore loose)
--- @return void (Type not found)
function SetVehicleDoorOpen(vehicle, doorIndex, loose, openInstantly) end

--- Sets the specified door index shut on the passed vehicle.
--- ```cpp
--- enum eDoorId
--- {
--- 	VEH_EXT_DOOR_DSIDE_F = 0,
--- 	VEH_EXT_DOOR_DSIDE_R = 1,
--- 	VEH_EXT_DOOR_PSIDE_F = 2,
--- 	VEH_EXT_DOOR_PSIDE_R = 3,
--- 	VEH_EXT_BONNET = 4,
--- 	VEH_EXT_BOOT = 5,
--- 	// 0x872E72B8 = 0xFFFFFFFF,
--- }
--- @param vehicle Vehicle Vehicle.
--- @param doorIndex number Index of the door you want to close.
--- @param closeInstantly boolean Whether the doors close instantly.
--- @return void (Type not found)
function SetVehicleDoorShut(vehicle, doorIndex, closeInstantly) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @param forceClose boolean 
--- @param lock boolean 
--- @param p4 boolean 
--- @return void (Type not found)
function SetVehicleDoorLatched(vehicle, doorIndex, forceClose, lock, p4) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleDoorsLockedForAllPlayers(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param team number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleDoorsLockedForTeam(vehicle, team, toggle) end

--- // Source GTA VC miss2 leak, matching constants for 0/2/4, testing
--- // They use 10 in am_mp_property_int, don't know what it does atm.
--- enum eCarLock {
---     CARLOCK_NONE = 0,
---     CARLOCK_UNLOCKED = 1,
---     CARLOCK_LOCKED = 2,
---     CARLOCK_LOCKOUT_PLAYER_ONLY = 3,
---     CARLOCK_LOCKED_PLAYER_INSIDE = 4,
---     CARLOCK_LOCKED_INITIALLY = 5,
---     CARLOCK_FORCE_SHUT_DOORS = 6,
---     CARLOCK_LOCKED_BUT_CAN_BE_DAMAGED = 7
--- };
--- @param vehicle Vehicle 
--- @param doorLockStatus number 
--- @return void (Type not found)
function SetVehicleDoorsLocked(vehicle, doorLockStatus) end

--- @param vehicle Vehicle 
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleDoorsLockedForPlayer(vehicle, player, toggle) end

--- Closes all doors of a vehicle:  
--- @param vehicle Vehicle 
--- @param closeInstantly boolean 
--- @return void (Type not found)
function SetVehicleDoorsShut(vehicle, closeInstantly) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleEngineCanDegrade(vehicle, toggle) end

--- NativeDB Introduced: v1365
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleDoorsLockedForUnk(vehicle, toggle) end

--- Starts or stops the engine on the specified vehicle.
--- From what I've tested when I do this to a helicopter the propellers turn off after the engine has started.
--- @param vehicle Vehicle The vehicle to start or stop the engine on.
--- @param value boolean true to turn the vehicle on; false to turn it off.
--- @param instantly boolean if true, the vehicle will be set to the state immediately; otherwise, the current driver will physically turn on or off the engine.
--- @param disableAutoStart boolean If true, the system will prevent the engine from starting when the player got into it.
--- @return void (Type not found)
function SetVehicleEngineOn(vehicle, value, instantly, disableAutoStart) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleDoorsLockedForNonScriptPlayers(vehicle, toggle) end

--- 1000 is max health
--- Begins leaking gas at around 650 health
--- -999.90002441406 appears to be minimum health, although nothing special occurs <- false statement
--- -------------------------
--- Minimum: -4000
--- Maximum: 1000
--- -4000: Engine is destroyed
--- 0 and below: Engine catches fire and health rapidly declines
--- 300: Engine is smoking and losing functionality
--- 1000: Engine is perfect
--- @param vehicle Vehicle 
--- @param health number 
--- @return void (Type not found)
function SetVehicleEngineHealth(vehicle, health) end

--- Money pickups are created around cars when they explode. Only works when the vehicle model is a car. A single pickup is between 1 and 18 dollars in size. All car models seem to give the same amount of money.
--- youtu.be/3arlUxzHl5Y
--- i.imgur.com/WrNpYFs.jpg
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleDropsMoneyWhenBlownUp(vehicle, toggle) end

--- Incorrectly named `SET_VEHICLE_EXCLUSIVE_DRIVER`; likely `SET_VEHICLE_ALLOW_*`.
--- Toggles a flag related to `SET_VEHICLE_EXCLUSIVE_DRIVER`, however, doesn't enable that feature (or trigger script events related to it).
--- See [`_SET_VEHICLE_EXCLUSIVE_DRIVER_2`](#\_0xB5C51B5502E85E83).
--- NativeDB Removed Parameter 2: int index
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleExclusiveDriver(vehicle, toggle) end

--- Examples with a besra:
--- *   [fade value `0.0`](https://i.imgur.com/DXNk63e.jpg)
--- *   [fade value `0.5`](https://i.imgur.com/2Vb35fq.jpg)
--- *   [fade value `1.0`](https://i.imgur.com/aa8cxaD.jpg)
--- The parameter fade is a value from 0-1, where 0 is fresh paint.
--- @param vehicle Vehicle Target vehicle
--- @param fade number The paint fade effect strength
--- @return void (Type not found)
function SetVehicleEnveffScale(vehicle, fade) end

--- The **actual** [`SET_VEHICLE_EXCLUSIVE_DRIVER`](#\_0x41062318F23ED854) native.
--- @param vehicle Vehicle 
--- @param ped Ped 
--- @param index number 
--- @return void (Type not found)
function SetVehicleExclusiveDriver2(vehicle, ped, index) end

--- They use the same color indexs as SET_VEHICLE_COLOURS.  
--- @param vehicle Vehicle 
--- @param pearlescentColor number 
--- @param wheelColor number 
--- @return void (Type not found)
function SetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end

--- Note: only some vehicle have extras  
--- extra ids are from 1 - 9 depending on the vehicle  
--- -------------------------------------------------  
--- ^ not sure if outdated or simply wrong. Max extra ID for b944 is 14  
--- -------------------------------------------------  
--- p2 is not a on/off toggle. mostly 0 means on and 1 means off.  
--- not sure if it really should be a BOOL.  
--- -------------------------------------------------  
--- Confirmed p2 does not work as a bool. Changed to int. [0=on, 1=off]  
--- @param vehicle Vehicle 
--- @param extraId number 
--- @param disable boolean 
--- @return void (Type not found)
function SetVehicleExtra(vehicle, extraId, disable) end

--- Sets a vehicle to be strongly resistant to explosions. p0 is the vehicle; set p1 to false to toggle the effect on/off.  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleExplodesOnHighExplosionDamage(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param angleRatio number 
--- @return void (Type not found)
function SetVehicleFlightNozzlePosition(vehicle, angleRatio) end

--- Max value is 32767
--- @param vehicle Vehicle 
--- @param range number 
--- @return void (Type not found)
function SetVehicleExtendedRemovalRange(vehicle, range) end

--- Fix a given vehicle.
--- If the vehicle's engine's broken then you cannot fix it with this native.
--- @param vehicle Vehicle The vehicle that will be fixed
--- @return void (Type not found)
function SetVehicleFixed(vehicle) end

--- Seems to be related to the metal parts, not tyres (like i was expecting lol)  
--- Must be called every tick.  
--- @param vehicle Vehicle 
--- @param friction number 
--- @return void (Type not found)
function SetVehicleFrictionOverride(vehicle, friction) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleForceAfterburner(vehicle, toggle) end

--- SCALE: Setting the speed to 30 would result in a speed of roughly 60mph, according to speedometer.  
--- Speed is in meters per second  
--- You can convert meters/s to mph here:  
--- http://www.calculateme.com/Speed/MetersperSecond/ToMilesperHour.htm  
--- @param vehicle Vehicle 
--- @param speed number 
--- @return void (Type not found)
function SetVehicleForwardSpeed(vehicle, speed) end

--- Allows creation of CEventShockingPlaneFlyby, CEventShockingHelicopterOverhead, and other(?) Shocking events
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleGeneratesEngineShockingEvents(vehicle, toggle) end

--- It switch to highbeam when p1 is set to true.  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleFullbeam(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleHandbrake(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param angle number 
--- @return void (Type not found)
function SetVehicleFlightNozzlePositionImmediate(vehicle, angle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleGravity(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleHasBeenDrivenFlag(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param owned boolean 
--- @return void (Type not found)
function SetVehicleHasBeenOwnedByPlayer(vehicle, owned) end

--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function SetVehicleHasUnbreakableLights(vehicle, p1) end

--- NativeDB Introduced: v1290
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleHoverTransformActive(vehicle, toggle) end

--- if true, axles won't bend.  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleHasStrongAxles(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param hash Hash 
--- @return void (Type not found)
function SetVehicleHandlingHashForAi(vehicle, hash) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleHasMutedSirens(vehicle, toggle) end

--- According to decompiled scripts this should work with the `deluxo` and `oppressor2` vehicles.
--- I've only seen this work for `deluxo` though, can't figure out what it's supposed to do on `oppressor2`.
--- For the deluxo:
--- *   Set `state` to `0.0`: Fully transform to a 'road' vehicle (non-hover mode).
--- *   Set `state` to `1.0`: Fully transform to a 'flying' vehicle (hover mode).
--- If you set it to something like 0.5, then something [weird happens](https://streamable.com/p6wmr), you end up in some 50% hover mode, 50% not hover mode.
--- This doesn't need to be called every tick, just once and the vehicle will transform to that state at the usual transform speed. It'll just stop transforming when it reaches the state you provided.
--- Once this native is used then players will just be able to hit the vehicle transform key to toggle the transformation cycle; it won't block users from using the key.
--- @param vehicle Vehicle The vehicle (a deluxo or oppressor2).
--- @param state number The transform state (value between 0.0 and 1.0).
--- @return void (Type not found)
function SetVehicleHoverTransformPercentage(vehicle, state) end

--- If false, anything related to INPUT_VEH_TRANSFORM are ignored (changing hover state through script natives still possible).
--- NativeDB Introduced: v1290
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleHoverTransformEnabled(vehicle, toggle) end

--- Sets the turn signal enabled for a vehicle.  
--- Set turnSignal to 1 for left light, 0 for right light.  
--- @param vehicle Vehicle 
--- @param turnSignal number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleIndicatorLights(vehicle, turnSignal, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleInactiveDuringPlayback(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param doorIndex number See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- @param doorLockStatus number See eCarLock declared in [`SET_VEHICLE_DOORS_LOCKED`](#\_0xB664292EAECF7FA6)
--- @return void (Type not found)
function SetVehicleIndividualDoorsLocked(vehicle, doorIndex, doorLockStatus) end

--- @param vehicle Vehicle 
--- @param color number 
--- @return void (Type not found)
function SetVehicleInteriorColor(vehicle, color) end

--- NativeDB Introduced: v1290
--- @param vehicle Vehicle 
--- @param ratio number 
--- @return void (Type not found)
function SetVehicleHoverTransformRatio(vehicle, ratio) end

--- Setting this to false, makes the specified vehicle to where if you press Y your character doesn't even attempt the animation to enter the vehicle. Hence it's not considered aka ignored.  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleIsConsideredByPlayer(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleInteriorlight(vehicle, toggle) end

--- Sets the wanted state of this vehicle.  
--- @param vehicle Vehicle 
--- @param state boolean 
--- @return void (Type not found)
function SetVehicleIsWanted(vehicle, state) end

--- @param vehicle Vehicle 
--- @param isStolen boolean 
--- @return void (Type not found)
function SetVehicleIsStolen(vehicle, isStolen) end

--- p1 (toggle) was always 1 (true) except in one case in the b678 scripts.  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleIsRacing(vehicle, toggle) end

--- multiplier = brightness of head lights.  
--- this value isn't capped afaik.  
--- multiplier = 0.0 no lights  
--- multiplier = 1.0 default game value  
--- @param vehicle Vehicle 
--- @param multiplier number 
--- @return void (Type not found)
function SetVehicleLightMultiplier(vehicle, multiplier) end

--- p1 can be either 0, 1 or 2.  
--- Determines how vehicle lights behave when toggled.  
--- 0 = Default (Lights can be toggled between off, normal and high beams)  
--- 1 = Lights Disabled (Lights are fully disabled, cannot be toggled)  
--- 2 = Always On (Lights can be toggled between normal and high beams)  
--- @param vehicle Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function SetVehicleLightsMode(vehicle, p1) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleJetEngineOn(vehicle, toggle) end

--- To reset the max speed, set the `speed` value to `0.0` or lower.
--- @param vehicle Vehicle The vehicle handle.
--- @param speed number The speed limit in meters per second.
--- @return void (Type not found)
function SetVehicleMaxSpeed(vehicle, speed) end

--- set's if the vehicle has lights or not.  
--- not an on off toggle.  
--- p1 = 0 ;vehicle normal lights, off then lowbeams, then highbeams  
--- p1 = 1 ;vehicle doesn't have lights, always off  
--- p1 = 2 ;vehicle has always on lights  
--- p1 = 3 ;or even larger like 4,5,... normal lights like =1  
--- note1: when using =2 on day it's lowbeam,highbeam  
--- but at night it's lowbeam,lowbeam,highbeam  
--- note2: when using =0 it's affected by day or night for highbeams don't exist in daytime.  
--- @param vehicle Vehicle 
--- @param state number 
--- @return void (Type not found)
function SetVehicleLights(vehicle, state) end

--- @param vehicle Vehicle 
--- @param multiplier number 
--- @return void (Type not found)
function SetVehicleLodMultiplier(vehicle, multiplier) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleKersAllowed(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param livery number 
--- @return void (Type not found)
function SetVehicleLivery(vehicle, livery) end

--- ```cpp
--- // eVehicleModType values modified to conform to script native reorganization (see 0x140D25327 in 1604).
--- enum eVehicleModType
--- {
--- 	VMT_SPOILER = 0,
--- 	VMT_BUMPER_F = 1,
--- 	VMT_BUMPER_R = 2,
--- 	VMT_SKIRT = 3,
--- 	VMT_EXHAUST = 4,
--- 	VMT_CHASSIS = 5,
--- 	VMT_GRILL = 6,
--- 	VMT_BONNET = 7,
--- 	VMT_WING_L = 8,
--- 	VMT_WING_R = 9,
--- 	VMT_ROOF = 10,
--- 	VMT_ENGINE = 11,
--- 	VMT_BRAKES = 12,
--- 	VMT_GEARBOX = 13,
--- 	VMT_HORN = 14,
--- 	VMT_SUSPENSION = 15,
--- 	VMT_ARMOUR = 16,
--- 	VMT_NITROUS = 17,
--- 	VMT_TURBO = 18,
--- 	VMT_SUBWOOFER = 19,
--- 	VMT_TYRE_SMOKE = 20,
--- 	VMT_HYDRAULICS = 21,
--- 	VMT_XENON_LIGHTS = 22,
--- 	VMT_WHEELS = 23,
--- 	VMT_WHEELS_REAR_OR_HYDRAULICS = 24,
--- 	VMT_PLTHOLDER = 25,
--- 	VMT_PLTVANITY = 26,
--- 	VMT_INTERIOR1 = 27,
--- 	VMT_INTERIOR2 = 28,
--- 	VMT_INTERIOR3 = 29,
--- 	VMT_INTERIOR4 = 30,
--- 	VMT_INTERIOR5 = 31,
--- 	VMT_SEATS = 32,
--- 	VMT_STEERING = 33,
--- 	VMT_KNOB = 34,
--- 	VMT_PLAQUE = 35,
--- 	VMT_ICE = 36,
--- 	VMT_TRUNK = 37,
--- 	VMT_HYDRO = 38,
--- 	VMT_ENGINEBAY1 = 39,
--- 	VMT_ENGINEBAY2 = 40,
--- 	VMT_ENGINEBAY3 = 41,
--- 	VMT_CHASSIS2 = 42,
--- 	VMT_CHASSIS3 = 43,
--- 	VMT_CHASSIS4 = 44,
--- 	VMT_CHASSIS5 = 45,
--- 	VMT_DOOR_L = 46,
--- 	VMT_DOOR_R = 47,
--- 	VMT_LIVERY_MOD = 48,
--- 	VMT_LIGHTBAR = 49,
--- };
--- @param vehicle Vehicle 
--- @param modType number 
--- @param modIndex number 
--- @param customTires boolean 
--- @return void (Type not found)
function SetVehicleMod(vehicle, modType, modIndex, customTires) end

--- paintType:  
--- 0: Normal  
--- 1: Metallic  
--- 2: Pearl  
--- 3: Matte  
--- 4: Metal  
--- 5: Chrome  
--- color: number of the color.  
--- p3 seems to always be 0.  
--- @param vehicle Vehicle 
--- @param paintType number 
--- @param color number 
--- @param pearlescentColor number 
--- @return void (Type not found)
function SetVehicleModColor1(vehicle, paintType, color, pearlescentColor) end

--- Set modKit to 0 if you plan to call SET_VEHICLE_MOD. That's what the game does. Most body modifications through SET_VEHICLE_MOD will not take effect until this is set to 0.
--- @param vehicle Vehicle 
--- @param modKit number 
--- @return void (Type not found)
function SetVehicleModKit(vehicle, modKit) end

--- Changes the secondary paint type and color  
--- paintType:  
--- 0: Normal  
--- 1: Metallic  
--- 2: Pearl  
--- 3: Matte  
--- 4: Metal  
--- 5: Chrome  
--- color: number of the color  
--- @param vehicle Vehicle 
--- @param paintType number 
--- @param color number 
--- @return void (Type not found)
function SetVehicleModColor2(vehicle, paintType, color) end

--- NativeDB Introduced: v1493
--- @param vehicle Vehicle 
--- @param color number 
--- @return void (Type not found)
function SetVehicleNeonLightsColor2(vehicle, color) end

--- seems to make the vehicle stop spawning naturally in traffic. Here's an essential example:  
--- VEHICLE::SET_VEHICLE_MODEL_IS_SUPPRESSED(GAMEPLAY::GET_HASH_KEY("taco"), true);  
--- @param model Hash 
--- @param suppressed boolean 
--- @return void (Type not found)
function SetVehicleModelIsSuppressed(model, suppressed) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleNeedsToBeHotwired(vehicle, toggle) end

--- NativeDB Introduced: v1604
--- NativeDB Added Parameter 2 (2060): float level
--- NativeDB Added Parameter 3 (2060): float power
--- NativeDB Added Parameter 4 (2060): float rechargeTime
--- NativeDB Added Parameter 5 (2060): BOOL disableSound
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleNitroEnabled(vehicle, toggle) end

--- NOTE: Debugging functions are not present in the retail version of the game.  
--- @param vehicle Vehicle 
--- @param name string 
--- @return void (Type not found)
function SetVehicleNameDebug(vehicle, name) end

--- @param vehicle Vehicle The vehicle to set the plate for
--- @param plateText string The text to set the plate to, 8 chars maximum
--- @return void (Type not found)
function SetVehicleNumberPlateText(vehicle, plateText) end

--- Sets the neon lights of the specified vehicle on/off.  
--- Indices:  
--- 0 = Left  
--- 1 = Right  
--- 2 = Front  
--- 3 = Back  
--- @param vehicle Vehicle 
--- @param index number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleNeonLightEnabled(vehicle, index, toggle) end

--- Plates:
--- Blue/White - 0
--- Yellow/black - 1
--- Yellow/Blue - 2
--- Blue/White2 - 3
--- Blue/White3 - 4
--- Yankton - 5
--- @param vehicle Vehicle 
--- @param plateIndex number 
--- @return void (Type not found)
function SetVehicleNumberPlateTextIndex(vehicle, plateIndex) end

--- Sets the color of the neon lights on the specified vehicle.
--- RGB values and colour names taken from the decompiled scripts:
--- | Colour         |  R  |  G  |  B  |
--- |---------------|:---:|:---:|:---:|
--- | White         | 222 | 222 | 255 |
--- | Blue          | 2   | 21  | 255 |
--- | Electric Blue | 3   | 83  | 255 |
--- | Mint Green    | 0   | 255 | 140 |
--- | Lime Green    | 94  | 255 | 1   |
--- | Yellow        | 255 | 255 | 0   |
--- | Golden Shower | 255 | 150 | 0   |
--- | Orange        | 255 | 62  | 0   |
--- | Red           | 255 | 1   | 1   |
--- | Pony Pink     | 255 | 50  | 100 |
--- | Hot Pink      | 255 | 5   | 190 |
--- | Purple        | 35  | 1   | 255 |
--- | Blacklight    | 15  | 3   | 255 |
--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function SetVehicleNeonLightsColour(vehicle, r, g, b) end

--- @param vehicle Vehicle 
--- @param active boolean 
--- @return void (Type not found)
function SetVehicleParachuteActive(vehicle, active) end

--- parachuteModel = 230075693  
--- @param vehicle Vehicle 
--- @param modelHash Hash 
--- @return void (Type not found)
function SetVehicleParachuteModel(vehicle, modelHash) end

--- 1000 is max health  
--- Begins leaking gas at around 650 health  
--- @param vehicle Vehicle 
--- @param health number 
--- @return void (Type not found)
function SetVehiclePetrolTankHealth(vehicle, health) end

--- Tested on the player's current vehicle. Unless you kill the driver, the vehicle doesn't loose control, however, if enabled, explodeOnImpact is still active. The moment you crash, boom.  
--- @param vehicle Vehicle 
--- @param killDriver boolean 
--- @param explodeOnImpact boolean 
--- @return void (Type not found)
function SetVehicleOutOfControl(vehicle, killDriver, explodeOnImpact) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleProvidesCover(vehicle, toggle) end

--- Sets a vehicle on the ground on all wheels.  Returns whether or not the operation was successful.  
--- NativeDB Added Parameter 2: float p1
--- @param vehicle Vehicle 
--- @return boolean
function SetVehicleOnGroundProperly(vehicle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleRampUpwardsLaunchMotion(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function SetVehicleRampLaunchModifier(vehicle, p1) end

--- colorIndex = 0 - 7
--- @param vehicle Vehicle 
--- @param textureVariation number 
--- @return void (Type not found)
function SetVehicleParachuteTextureVariation(vehicle, textureVariation) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleRampSidewaysLaunchMotion(vehicle, toggle) end

--- Often used in conjunction with: [SET_VEHICLE_REDUCE_GRIP](#\_0x222FF6A823D122E2).
--- NativeDB Introduced: v1604
--- @param vehicle Vehicle 
--- @param val number 
--- @return void (Type not found)
function SetVehicleReduceTraction(vehicle, val) end

--- @param vehicle Vehicle 
--- @param percentage number 
--- @return void (Type not found)
function SetVehicleRocketBoostPercentage(vehicle, percentage) end

--- Reduces grip significantly so it's hard to go anywhere.  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleReduceGrip(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param active boolean 
--- @return void (Type not found)
function SetVehicleRocketBoostActive(vehicle, active) end

--- @param vehicle Vehicle 
--- @param time number 
--- @return void (Type not found)
function SetVehicleRocketBoostRefillTime(vehicle, time) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleReceivesRampDamage(vehicle, toggle) end

--- Used to set the tornado custom (convertible) rooftop livery.
--- Livery value that works for tornado custom is between 0 and 9 from what i can tell. Maybe 0-8 even.
--- Might work on other custom vehicles but im not sure what those might be, only confirmed it working with the tornado custom.
--- @param vehicle Vehicle The vehicle handle.
--- @param livery number Livery index.
--- @return void (Type not found)
function SetVehicleRoofLivery(vehicle, livery) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleRudderBroken(vehicle, toggle) end

--- Only works during nighttime.
--- @param heli Vehicle 
--- @param toggle boolean 
--- @param canBeUsedByAI boolean 
--- @return void (Type not found)
function SetVehicleSearchlight(heli, toggle, canBeUsedByAI) end

--- If set to TRUE, it seems to suppress door noises and doesn't allow the horn to be continuous.  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleSilent(vehicle, toggle) end

--- Commands the driver of an armed vehicle (p0) to shoot its weapon at a target (p1). p3, p4 and p5 are the coordinates of the target. Example:  
--- WEAPON::SET_CURRENT_PED_VEHICLE_WEAPON(pilot,GAMEPLAY::GET_HASH_KEY("VEHICLE_WEAPON_PLANE_ROCKET"));VEHICLE::SET_VEHICLE_SHOOT_AT_TARGET(pilot, target, targPos.x, targPos.y, targPos.z);  
--- @param driver Ped 
--- @param entity Entity 
--- @param xTarget number 
--- @param yTarget number 
--- @param zTarget number 
--- @return void (Type not found)
function SetVehicleShootAtTarget(driver, entity, xTarget, yTarget, zTarget) end

--- Locks the vehicle's steering to the desired angle, explained below.  
--- Requires to be called onTick. Steering is unlocked the moment the function stops being called on the vehicle.  
--- Steer bias:  
--- -1.0 = full right  
--- 0.0 = centered steering  
--- 1.0 = full left  
--- @param vehicle Vehicle 
--- @param value number 
--- @return void (Type not found)
function SetVehicleSteerBias(vehicle, value) end

--- Activate siren on vehicle (Only works if the vehicle has a siren).  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleSiren(vehicle, toggle) end

--- Has something to do with trains. Always precedes SET_MISSION_TRAIN_AS_NO_LONGER_NEEDED.  
--- ============================================  
--- May be true that it can be used with trains not sure, but not specifically for trains. Go find Xbox360 decompiled scripts and search for 'func_1333' in freemode.c it isn't used just for trains. Thanks for the info tho.  
--- Btw, func_1333 ends up calling this func which uses this native,  
--- void func_1338(int iParam0)//Position   
--- {  
--- 	ENTITY::FREEZE_ENTITY_POSITION(iParam0, true);  
--- 	ENTITY::SET_ENTITY_COLLISION(iParam0, false, 0);  
--- 	ENTITY::SET_ENTITY_INVINCIBLE(iParam0, true);  
--- 	VEHICLE::_0xDF594D8D(iParam0, true);  
--- }  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleSt(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleTimedExplosion(vehicle, ped, toggle) end

--- Adds some kind of shadow to the vehicle.
--- -1 disables the effect.
--- DISABLE_*
--- @param vehicle Vehicle 
--- @param p1 number 
--- @param p2 number 
--- @return void (Type not found)
function SetVehicleShadowEffect(vehicle, p1, p2) end

--- @param vehicle Vehicle 
--- @param scalar number 
--- @return void (Type not found)
function SetVehicleSteeringBiasScalar(vehicle, scalar) end

--- If set to true, vehicle will not take crash damage, but is still susceptible to damage from bullets and explosives  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleStrong(vehicle, toggle) end

--- Sets how much the crane on the tow truck is raised, where 0.0 is fully lowered and 1.0 is fully raised.  
--- @param vehicle Vehicle 
--- @param position number 
--- @return void (Type not found)
function SetVehicleTowTruckArmPosition(vehicle, position) end

--- @param vehicle Vehicle 
--- @param speed number 
--- @return void (Type not found)
function SetVehicleTurretSpeedThisFrame(vehicle, speed) end

--- @param vehicle Vehicle 
--- @param position number 
--- @param p2 boolean 
--- @return void (Type not found)
function SetVehicleTankTurretPosition(vehicle, position, p2) end

--- "To burst tyres VEHICLE::SET_VEHICLE_TYRE_BURST(vehicle, 0, true, 1000.0)  
--- to burst all tyres type it 8 times where p1 = 0 to 7.  
--- p3 seems to be how much damage it has taken. 0 doesn't deflate them, 1000 completely deflates them.  
--- '0 = wheel_lf / bike, plane or jet front  
--- '1 = wheel_rf  
--- '2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left  
--- '3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right  
--- '4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left  
--- '5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right  
--- '45 = 6 wheels trailer mid wheel left  
--- '47 = 6 wheels trailer mid wheel right  
--- @param vehicle Vehicle 
--- @param index number 
--- @param onRim boolean 
--- @param p3 number 
--- @return void (Type not found)
function SetVehicleTyreBurst(vehicle, index, onRim, p3) end

--- Toggles specific flag on turret
--- NativeDB Introduced: v1290
--- @param vehicle Vehicle 
--- @param index number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleTurretUnk(vehicle, index, toggle) end

--- Sets the tire smoke's color of this vehicle.  
--- vehicle: The vehicle that is the target of this method.  
--- r: The red level in the RGB color code.  
--- g: The green level in the RGB color code.  
--- b: The blue level in the RGB color code.  
--- Note:  
--- setting r,g,b to 0 will give the car independance day tyre smoke  
--- @param vehicle Vehicle 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function SetVehicleTyreSmokeColor(vehicle, r, g, b) end

--- Allows you to toggle bulletproof tires.  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleTyresCanBurst(vehicle, toggle) end

--- tyreIndex = 0 to 4 on normal vehicles  
--- '0 = wheel_lf / bike, plane or jet front  
--- '1 = wheel_rf  
--- '2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left  
--- '3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right  
--- '4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left  
--- '5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right  
--- '45 = 6 wheels trailer mid wheel left  
--- '47 = 6 wheels trailer mid wheel right  
--- @param vehicle Vehicle 
--- @param tyreIndex number 
--- @return void (Type not found)
function SetVehicleTyreFixed(vehicle, tyreIndex) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleUseAlternateHandling(vehicle, toggle) end

--- vehicle must be a plane
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleUsesLargeRearRamp(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleUndriveable(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param multiplier number 
--- @return void (Type not found)
function SetVehicleUnkDamageMultiplier(vehicle, multiplier) end

--- @param p0 Vehicle 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return 
function SetVehicleUseCutsceneWheelCompression(p0, p1, p2, p3) end

--- Refer to [GET_VEHICLE_WHEEL_TYPE](#\_0xB3ED1BFB4BE636DC) for wheel types.
--- @param vehicle Vehicle 
--- @param wheelType number 
--- @return void (Type not found)
function SetVehicleWheelType(vehicle, wheelType) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleWheelsCanBreakOffWhenBlowUp(vehicle, toggle) end

--- Related to monster trucks in native scripts.
--- NativeDB Introduced: v1604
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleWheelsDealDamage(vehicle, toggle) end

--- @param vehicle Vehicle 
--- @param weaponSlot number 
--- @return void (Type not found)
function SetVehicleWeaponsDisabled(vehicle, weaponSlot) end

--- Paint index goes from 0 to 12.
--- You can find the list of colors and ids here: [\_GET_VEHICLE_HEADLIGHTS_COLOUR](#\_0x3DFF319A831E0CDB)
--- @param vehicle Vehicle The vehicle handle.
--- @param color number The paint index.
--- @return void (Type not found)
function SetVehicleXenonLightsColor(vehicle, color) end

--- @param vehicle Vehicle 
--- @param weaponIndex number 
--- @param capacity number 
--- @return void (Type not found)
function SetVehicleWeaponCapacity(vehicle, weaponIndex, capacity) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleUsePlayerLightSettings(vehicle, toggle) end

--- enum WindowTints  
--- {  
--- 	WINDOWTINT_NONE,  
--- 	WINDOWTINT_PURE_BLACK,  
--- 	WINDOWTINT_DARKSMOKE,  
--- 	WINDOWTINT_LIGHTSMOKE,  
--- 	WINDOWTINT_STOCK,  
--- 	WINDOWTINT_LIMO,  
--- 	WINDOWTINT_GREEN  
--- };  
--- @param vehicle Vehicle 
--- @param tint number 
--- @return void (Type not found)
function SetVehicleWindowTint(vehicle, tint) end

--- SET_TIME_POSITION_IN_RECORDING can be emulated by: desired_time - GET_TIME_POSITION_IN_RECORDING(vehicle)
--- @param vehicle Vehicle 
--- @param time number 
--- @return void (Type not found)
function SkipTimeInPlaybackRecordedVehicle(vehicle, time) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function SkipToEndAndStopPlaybackRecordedVehicle(vehicle) end

--- @param vehicle Vehicle 
--- @param enabled boolean 
--- @return void (Type not found)
function SetVehicleWheelsCanBreak(vehicle, enabled) end

--- @param vehicle Vehicle 
--- @param entity Entity 
--- @param p2 number 
--- @return void (Type not found)
function StabiliseEntityAttachedToHeli(vehicle, entity, p2) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function StartVehicleAlarm(vehicle) end

--- See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
--- @param vehicle Vehicle 
--- @param windowIndex number 
--- @return void (Type not found)
function SmashVehicleWindow(vehicle, windowIndex) end

--- p3 is some flag related to 'trailers' (invokes CVehicle::GetTrailer).
--- See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
--- @param vehicle Vehicle 
--- @param recording number 
--- @param script string 
--- @param p3 boolean 
--- @return void (Type not found)
function StartPlaybackRecordedVehicle(vehicle, recording, script, p3) end

--- Sounds the horn for the specified vehicle.  
--- vehicle: The vehicle to activate the horn for.  
--- mode: The hash of "NORMAL" or "HELDDOWN". Can be 0.  
--- duration: The duration to sound the horn, in milliseconds.  
--- Note: If a player is in the vehicle, it will only sound briefly.  
--- @param vehicle Vehicle 
--- @param duration number 
--- @param mode Hash 
--- @param forever boolean 
--- @return void (Type not found)
function StartVehicleHorn(vehicle, duration, mode, forever) end

--- AI abides by the provided driving style (e.g., stopping at red lights or waiting behind traffic) while executing the specificed vehicle recording.
--- 0x1F2E4E06DEA8992B is a related native that deals with the AI physics for such recordings.
--- @param vehicle Vehicle 
--- @param recording number 
--- @param script string 
--- @param speed number 
--- @param drivingStyle number 
--- @return void (Type not found)
function StartPlaybackRecordedVehicleUsingAi(vehicle, recording, script, speed, drivingStyle) end

--- Toggles whether ambient trains can spawn on the specified track or not.
--- | trackId | File | Description |
--- | --- | --- | --- |
--- | 0 | `trains1.dat` | Main track around SA |
--- | 1 | `trains2.dat` | Davis Quartz Quarry branch |
--- | 2 | `trains3.dat` | Second track alongside live track along Roy Lewenstein Blv. |
--- | 3 | `trains4.dat` | Metro track circuit |
--- | 4 | `trains5.dat` | Branch in Mirror Park Railyard |
--- | 5 | `trains6.dat` | Branch in Mirror Park Railyard |
--- | 6 | `trains7.dat` | LS branch to Mirror Park Railyard |
--- | 7 | `trains8.dat` | Overground part of metro track along Forum Dr. |
--- | 8 | `trains9.dat` | Branch to Mirror Park Railyard |
--- | 9 | `trains10.dat` | Yankton train |
--- | 10 | `trains11.dat` | Part of metro track near mission row |
--- | 11 | `trains12.dat` | Yankton prologue mission train |
--- Tracks IDs `0` and `3` are the main tracks you find trains on during normal gameplay, all the others are used during missions and are not complete tracks.
--- @param trackId number The internal id of the train track to switch
--- @param state boolean Whether ambient trains can spawn or not
--- @return void (Type not found)
function SwitchTrainTrack(trackId, state) end

--- flags requires further research, e.g., 0x4/0x8 are related to the AI driving task and 0x20 is internally set and interacts with dynamic entity components.
--- time, often zero and capped at 500, is related to SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER
--- @param vehicle Vehicle 
--- @param recording number 
--- @param script string 
--- @param flags number 
--- @param time number 
--- @param drivingStyle number 
--- @return void (Type not found)
function StartPlaybackRecordedVehicleWithFlags(vehicle, recording, script, flags, time, drivingStyle) end

--- in script hook .net   
--- Vehicle v = ...;  
--- Function.Call(Hash.TRACK_VEHICLE_VISIBILITY, v.Handle);  
--- @param vehicle Vehicle 
--- @return void (Type not found)
function TrackVehicleVisibility(vehicle) end

--- Stops CTaskBringVehicleToHalt
--- @param vehicle Vehicle 
--- @return void (Type not found)
function StopBringVehicleToHalt(vehicle) end

--- Transforms the `stormberg` to its "road vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
--- @param vehicle Vehicle A vehicle handle.
--- @param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
--- @return void (Type not found)
function TransformToCar(vehicle, instantly) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function StopPlaybackRecordedVehicle(vehicle) end

--- @param vehicle Vehicle 
--- @param modType number Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- @param toggle boolean 
--- @return void (Type not found)
function ToggleVehicleMod(vehicle, modType, toggle) end

--- @return void (Type not found)
function StopAllGarageActivity() end

--- Transforms the `stormberg` to its "water vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
--- @param vehicle Vehicle A vehicle handle.
--- @param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
--- @return void (Type not found)
function TransformToSubmarine(vehicle, instantly) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function UnpausePlaybackRecordedVehicle(vehicle) end
