
--- p5 only set to true in single player native scripts. Door hashes normally look like `PROP_[int]_DOOR_[int]` for interior doors and `PROP_BUILDING_[int]_DOOR_[int]` exterior doors but you can just make up your own hash if you want.
--- If scriptDoor is true, register the door on the script handler host (note: there's a hardcap on the number of script IDs that can be added to the system at a given time). If scriptDoor and isLocal are both false, the door is considered to be in a "Persists w/o netobj" state.
--- A simple "localized" door-system (with hundreds/thousands of doors) can be created by setting p5, p6, and p7 to false and using EventHandlers to synchronize the states to: [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53), [DOOR_SYSTEM_SET_OPEN_RATIO](#\_0xB6E6FBA95C7324AC), [DOOR_SYSTEM_SET_HOLD_OPEN](#\_0xD9B71952F78A2640), etc.
--- @param doorHash Hash A (unique) door system identifier
--- @param modelHash Hash Entity model hash
--- @param x number The X coordinate of the door object
--- @param y number The Y coordinate of the door object
--- @param z number The Z coordinate of the door object
--- @param p5 boolean 
--- @param scriptDoor boolean false; relies upon getNetworkGameScriptHandler.
--- @param isLocal boolean On true disables the creation `CRequestDoorEvent's` in [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53).
--- @return void (Type not found)
function AddDoorToSystem(doorHash, modelHash, x, y, z, p5, scriptDoor, isLocal) end

--- @param garageHash Hash 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @param p4  
--- @return boolean
function AreEntitiesEntirelyInsideGarage(garageHash, p1, p2, p3, p4) end

--- @param garageHash Hash 
--- @param vehicles boolean 
--- @param peds boolean 
--- @param objects boolean 
--- @param isNetwork boolean 
--- @return void (Type not found)
function ClearObjectsInsideGarage(garageHash, vehicles, peds, objects, isNetwork) end

--- @param p0 Object 
--- @param p1  
--- @param p2 boolean 
--- @return void (Type not found)
function BreakObjectFragmentChild(p0, p1, p2) end

--- @param garageHash Hash 
--- @param isNetwork boolean 
--- @return void (Type not found)
function ClearGarageArea(garageHash, isNetwork) end

--- @param pickupObject Object 
--- @param ped Ped 
--- @return void (Type not found)
function AttachPortablePickupToPed(pickupObject, ped) end

--- NativeDB Introduced: v2372
--- @param pickupHash  
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param flags number 
--- @param value number 
--- @param modelHash  
--- @param p7 boolean 
--- @param p8 boolean 
--- @return 
function CreateNonNetworkedAmbientPickup(pickupHash, posX, posY, posZ, flags, value, modelHash, p7, p8) end

--- Creates an ambient pickup given the hash. Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
--- @param pickupHash Hash 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param flags number 
--- @param value number 
--- @param modelHash Hash 
--- @param returnHandle boolean 
--- @param p8 boolean 
--- @return Pickup
function CreateAmbientPickup(pickupHash, posX, posY, posZ, flags, value, modelHash, returnHandle, p8) end

--- Spawns one or more money pickups.  
--- x: The X-component of the world position to spawn the money pickups at.  
--- y: The Y-component of the world position to spawn the money pickups at.  
--- z: The Z-component of the world position to spawn the money pickups at.  
--- value: The combined value of the pickups (in dollars).  
--- amount: The number of pickups to spawn.  
--- model: The model to use, or 0 for default money model.  
--- Example:  
--- CREATE_MONEY_PICKUPS(x, y, z, 1000, 3, 0x684a97ae);  
--- Spawns 3 spray cans that'll collectively give $1000 when picked up. (Three spray cans, each giving $334, $334, $332 = $1000).  
--- ==============================================  
--- Max is 2000 in MP. So if you put the amount to 20, but the value to $400,000 eg. They will only be able to pickup 20 - $2,000 bags. So, $40,000  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param value number 
--- @param amount number 
--- @param model Hash 
--- @return void (Type not found)
function CreateMoneyPickups(x, y, z, value, amount, model) end

--- Creates an object (prop) with the specified model at the specified position, offset on the Z axis by the radius of the object's model.
--- This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
--- @param modelHash Hash The model to spawn.
--- @param x number Spawn coordinate X component.
--- @param y number Spawn coordinate Y component.
--- @param z number Spawn coordinate Z component, 'ground level'.
--- @param isNetwork boolean Whether to create a network object for the object. If false, the object exists only locally.
--- @param netMissionEntity boolean Whether to register the object as pinned to the script host in the R\* network model.
--- @param doorFlag boolean False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
--- @return Object
function CreateObject(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

--- @param pickupHash Hash 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param placeOnGround boolean 
--- @param modelHash Hash 
--- @return Object
function CreateNonNetworkedPortablePickup(pickupHash, x, y, z, placeOnGround, modelHash) end

--- Creates an object (prop) with the specified model centered at the specified position.
--- This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
--- @param modelHash Hash The model to spawn.
--- @param x number Spawn coordinate X component.
--- @param y number Spawn coordinate Y component.
--- @param z number Spawn coordinate Z component.
--- @param isNetwork boolean Whether to create a network object for the object. If false, the object exists only locally.
--- @param netMissionEntity boolean Whether to register the object as pinned to the script host in the R\* network model.
--- @param doorFlag boolean False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
--- @return Object
function CreateObjectNoOffset(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

--- Deletes the specified object, then sets the handle pointed to by the pointer to NULL.
--- @param object Object 
--- @return void (Type not found)
function DeleteObject(object) end

--- Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
--- @param pickupHash Hash 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param placeOnGround boolean 
--- @param modelHash Hash 
--- @return Object
function CreatePortablePickup(pickupHash, x, y, z, placeOnGround, modelHash) end

--- Pickup hashes: pastebin.com/8EuSv2r1  
--- flags:  
--- 8 (1 << 3): place on ground  
--- 512 (1 << 9): spin around  
--- @param pickupHash Hash 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param flag number 
--- @param amount number 
--- @param p9  
--- @param p10 boolean 
--- @param modelHash Hash 
--- @return Pickup
function CreatePickupRotate(pickupHash, posX, posY, posZ, rotX, rotY, rotZ, flag, amount, p9, p10, modelHash) end

--- Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
--- @param pickupHash Hash 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param p4 number 
--- @param value number 
--- @param p6 boolean 
--- @param modelHash Hash 
--- @return Pickup
function CreatePickup(pickupHash, posX, posY, posZ, p4, value, p6, modelHash) end

--- p5 is usually 0.  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param hash Hash 
--- @param p5 boolean 
--- @return boolean
function DoesObjectOfTypeExistAtCoords(x, y, z, radius, hash, p5) end

--- @param pickupObject Object 
--- @return void (Type not found)
function DetachPortablePickupFromPed(pickupObject) end

--- Returns true if a destructible object with this handle exists, false otherwise.  
--- @param object Object 
--- @return boolean
function DoesRayfireMapObjectExist(object) end

--- @param pickup Pickup 
--- @return boolean
function DoesPickupExist(pickup) end

--- @param pickupObject Object 
--- @return boolean
function DoesPickupObjectExist(pickupObject) end

--- Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
--- @param pickupHash Hash 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @return boolean
function DoesPickupOfTypeExistInArea(pickupHash, x, y, z, radius) end

--- Search radius: 0.5
--- @param x number The X coordinate of the door object
--- @param y number The Y coordinate of the door object
--- @param z number The Z coordinate of the door object
--- @param modelHash Hash Entity model hash
--- @param doorOutPointer Hash 
--- @return boolean
function DoorSystemFindExistingDoor(x, y, z, modelHash, doorOutPointer) end

--- Hardcoded not to work in multiplayer environments.
--- Native name between `SET_LOCAL_PLAYER_VISIBLE_LOCALLY` & `SET_MAX_WANTED_LEVEL`.
--- OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0);  //door unlocked
--- OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0);  //door locked
--- @param modelHash Hash 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param locked boolean tells the game whether or not the door is locked
--- @param xRotMult number multiplier that specifies how fast the door/gate will rotate in degrees per second.
--- @param yRotMult number multiplier that specifies how fast the door/gate will rotate in degrees per second.
--- @param zRotMult number multiplier that specifies how fast the door/gate will rotate in degrees per second.
--- @return void (Type not found)
function DoorControl(modelHash, x, y, z, locked, xRotMult, yRotMult, zRotMult) end

--- NativeDB Introduced: v1868
--- @param doorHash Hash 
--- @return number
function DoorSystemGetAutomaticDistance(doorHash) end

--- @param doorHash Hash 
--- @return number
function DoorSystemGetDoorState(doorHash) end

--- @param doorHash Hash 
--- @return number
function DoorSystemGetDoorPendingState(doorHash) end

--- @param doorHash Hash 
--- @return number
function DoorSystemGetOpenRatio(doorHash) end

--- @param doorHash Hash Door system identifier
--- @param distance number 
--- @param requestDoor boolean 
--- @param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
--- @return void (Type not found)
function DoorSystemSetAutomaticDistance(doorHash, distance, requestDoor, forceUpdate) end

--- @param doorHash Hash 
--- @return boolean
function DoorSystemGetIsPhysicsLoaded(doorHash) end

--- Includes networking check: ownership vs. or the door itself **isn't** networked.
--- @param doorHash Hash Door system identifier
--- @param toggle boolean 
--- @return void (Type not found)
function DoorSystemSetHoldOpen(doorHash, toggle) end

--- Includes networking check: ownership vs. or the door itself **isn't** networked.
--- @param doorHash Hash Door system identifier
--- @param rate number 
--- @param requestDoor boolean 
--- @param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
--- @return void (Type not found)
function DoorSystemSetAutomaticRate(doorHash, rate, requestDoor, forceUpdate) end

--- Lockstates not applied and CNetObjDoor's not created until [DOOR_SYSTEM_GET_IS_PHYSICS_LOADED](#\_0xDF97CDD4FC08FD34) returns true.
--- ### Door lock states: (v323)
--- *   **0**: UNLOCKED
--- *   **1**: LOCKED
--- *   **2**: DOORSTATE_FORCE_LOCKED_UNTIL_OUT_OF_AREA
--- *   **3**: DOORSTATE_FORCE_UNLOCKED_THIS_FRAME
--- *   **4**: DOORSTATE_FORCE_LOCKED_THIS_FRAME
--- *   **5**: DOORSTATE_FORCE_OPEN_THIS_FRAME
--- *   **6**: DOORSTATE_FORCE_CLOSED_THIS_FRAME
--- @param doorHash Hash 
--- @param state number 
--- @param requestDoor boolean On true, and when door system is configured to, i.e., "persists w/o netobj", generate a CRequestDoorEvent.
--- @param forceUpdate boolean On true, forces an update on the door system (same path as netObjDoor_applyDoorStuff)
--- @return void (Type not found)
function DoorSystemSetDoorState(doorHash, state, requestDoor, forceUpdate) end

--- Sets the ajar angle of a door.
--- Ranges from -1.0 to 1.0, and 0.0 is closed / default.
--- @param doorHash Hash Door system identifier
--- @param ajar number 
--- @param requestDoor boolean 
--- @param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
--- @return void (Type not found)
function DoorSystemSetOpenRatio(doorHash, ajar, requestDoor, forceUpdate) end

--- Includes networking check: ownership vs. or the door itself **isn't** networked.
--- @param doorHash Hash Door system identifier
--- @param removed boolean 
--- @param requestDoor boolean 
--- @param forceUpdate boolean On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53); otherwise requestDoor is unused.
--- @return void (Type not found)
function DoorSystemSetSpringRemoved(doorHash, removed, requestDoor, forceUpdate) end

--- Has 8 params in the latest patches.  
--- isMission - if true doesn't return mission objects  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param modelHash Hash 
--- @param isMission boolean 
--- @param p6 boolean 
--- @param p7 boolean 
--- @return Object
function GetClosestObjectOfType(x, y, z, radius, modelHash, isMission, p6, p7) end

--- @param garageHash Hash 
--- @param toggle boolean 
--- @return void (Type not found)
function EnableSavingInGarage(garageHash, toggle) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param modelHash Hash 
--- @param outPosition Vector3 
--- @param outRotation Vector3 
--- @param rotationOrder number 
--- @return 
function GetCoordsAndRotationOfClosestObjectOfType(x, y, z, radius, modelHash, outPosition, outRotation, rotationOrder) end

--- NativeDB Introduced: v1604
--- @param entity Object 
--- @param p1  
--- @return boolean
function GetIsArenaPropPhysicsDisabled(entity, p1) end

--- @param p0  
--- @return void (Type not found)
function ForcePickupRegenerate(p0) end

--- @param p0  
--- @param p1 boolean 
--- @return number
function GetObjectFragmentDamageHealth(p0, p1) end

--- @param xPos number 
--- @param yPos number 
--- @param zPos number 
--- @param heading number 
--- @param xOffset number 
--- @param yOffset number 
--- @param zOffset number 
--- @return Vector3
function GetObjectOffsetFromCoords(xPos, yPos, zPos, heading, xOffset, yOffset, zOffset) end

--- @param object Object 
--- @return number
function GetObjectTextureVariation(object) end

--- returns pickup hash.
--- @param pickupHash Hash 
--- @return Hash
function GetPickupHash(pickupHash) end

--- @param pickup Pickup 
--- @return Vector3
function GetPickupCoords(pickup) end

--- @return number
function GetPickupGenerationRangeMultiplier() end

--- Example:
--- OBJECT::GET_RAYFIRE_MAP_OBJECT(-809.9619750976562, 170.919, 75.7406997680664, 3.0, "des_tvsmash");
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param name string 
--- @return Object
function GetRayfireMapObject(x, y, z, radius, name) end

--- NativeDB Introduced: v1290
--- @param weapon Hash 
--- @return Hash
function GetPickupHashFromWeapon(weapon) end

--- See [`SET_STATE_OF_RAYFIRE_MAP_OBJECT`](#\_0x5C29F698D404C5E1) to see the different states
--- Get a destructible object's state. Substract 1 to get the real state. For example, if the object just spawned (state 2), the native will return 3.
--- @param object Object 
--- @return number
function GetStateOfRayfireMapObject(object) end

--- `object`: The des-object handle to get the animation progress from.
--- Return value is a float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.
--- @param object Object The des-object handle to get the animation progress from.
--- @return number
function GetRayfireMapObjectAnimPhase(object) end

--- @param pickup Pickup 
--- @return Object
function GetPickupObject(pickup) end

--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param modelHash Hash 
--- @param p5  
--- @return boolean
function HasClosestObjectOfTypeBeenBroken(p0, p1, p2, p3, modelHash, p5) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3 number 
--- @param p4 number 
--- @return Vector3
function GetSafePickupCoords(x, y, z, p3, p4) end

--- locked is 0 if no door is found  
--- locked is 0 if door is unlocked  
--- locked is 1 if door is found and unlocked.  
--- -------------  
--- the locked bool is either 0(unlocked)(false) or 1(locked)(true)  
--- @param type Hash 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param locked boolean 
--- @param heading number 
--- @return void (Type not found)
function GetStateOfClosestDoorOfType(type, x, y, z, locked, heading) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param modelHash Hash 
--- @param p5 boolean 
--- @return boolean
function HasClosestObjectOfTypeBeenCompletelyDestroyed(x, y, z, radius, modelHash, p5) end

--- @param pickupHash Hash 
--- @return Hash
function GetWeaponTypeFromPickupType(pickupHash) end

--- NativeDB Added Parameter 2: Any p1
--- @param object Object 
--- @return boolean
function HasObjectBeenBroken(object) end

--- @param pickup Pickup 
--- @return boolean
function HasPickupBeenCollected(pickup) end

--- @param garageHash Hash 
--- @param p1 boolean 
--- @param p2 number 
--- @return boolean
function IsGarageEmpty(garageHash, p1, p2) end

--- @param garageHash Hash 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @param p4  
--- @return boolean
function IsAnyEntityEntirelyInsideGarage(garageHash, p1, p2, p3, p4) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param range number 
--- @param p4 boolean 
--- @return boolean
function IsAnyObjectNearPoint(x, y, z, range, p4) end

--- @param doorHash Hash 
--- @return boolean
function IsDoorClosed(doorHash) end

--- @param pickup Pickup 
--- @param toggle boolean 
--- @return void (Type not found)
function HidePortablePickupWhenDetached(pickup, toggle) end

--- @param garageHash Hash 
--- @param entity Entity 
--- @param p2 number 
--- @param p3 number 
--- @return boolean
function IsObjectEntirelyInsideGarage(garageHash, entity, p2, p3) end

--- NativeDB Introduced: v1365
--- @param object Object 
--- @return boolean
function IsObjectAPortablePickup(object) end

--- if (OBJECT::IS_DOOR_REGISTERED_WITH_SYSTEM(doorHash))
--- {
---     OBJECT::REMOVE_DOOR_FROM_SYSTEM(doorHash);
--- }
--- @param doorHash Hash 
--- @return boolean
function IsDoorRegisteredWithSystem(doorHash) end

--- @param object Object 
--- @return boolean
function IsObjectAPickup(object) end

--- @param objectHash Hash 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param range number 
--- @return boolean
function IsObjectNearPoint(objectHash, x, y, z, range) end

--- @param object Object 
--- @return boolean
function IsObjectVisible(object) end

--- @param garageHash Hash 
--- @param entity Entity 
--- @param p2 number 
--- @return boolean
function IsObjectPartiallyInsideGarage(garageHash, entity, p2) end

--- @param garageHash Hash 
--- @param player Player 
--- @param p2 number 
--- @param p3 number 
--- @return boolean
function IsPlayerEntirelyInsideGarage(garageHash, player, p2, p3) end

--- @param object Object 
--- @return boolean
function IsPickupWeaponObjectValid(object) end

--- is this like setting is as no longer needed?  
--- @param object Object 
--- @return void (Type not found)
function MarkObjectForDeletion(object) end

--- An **angled area** is an X-Z oriented rectangle with three parameters:
--- 1.  **origin**: the mid-point along a base edge of the rectangle;
--- 2.  **extent**: the mid-point of opposite base edge on the other Z;
--- 3.  **width**: the length of the base edge; (named derived from logging strings `CNetworkRoadNodeWorldStateData`).
--- The oriented rectangle can then be derived from the direction of the two points (`norm(origin - extent)`), its orthonormal, and the width, e.g:
--- 1.  [golf_mp](https://i.imgur.com/JhsQAK9.png)
--- 2.  [am_taxi](https://i.imgur.com/TJWCZaT.jpg)
--- @param xPos number The x coordinate.
--- @param yPos number The y coordinate.
--- @param zPos number The z coordinate.
--- @param x1 number X dimension of the angled area 'origin'
--- @param y1 number Y dimension of the angled area 'origin'
--- @param z1 number Z dimension of the angled area 'origin'
--- @param x2 number X dimension of the angled area 'extent'
--- @param y2 number Y dimension of the angled area 'extent'
--- @param z2 number Z dimension of the angled area 'extent'
--- @param width number Width of the angled area
--- @param p10 boolean a debug flag invoking functions in the same path as `DRAW_MARKER`
--- @param includez boolean If true, include the Z dimension when doing the height check; otherwise the query becomes two-dimensional
--- @return boolean
function IsPointInAngledArea(xPos, yPos, zPos, x1, y1, z1, x2, y2, z2, width, p10, includez) end

--- @param object Object 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function PreventCollectionOfPortablePickup(object, p1, p2) end

--- @param garageHash Hash 
--- @param player Player 
--- @param p2 number 
--- @return boolean
function IsPlayerPartiallyInsideGarage(garageHash, player, p2) end

--- @param object Object 
--- @return boolean
function PlaceObjectOnGroundProperly2(object) end

--- @param object Object 
--- @return boolean
function PlaceObjectOnGroundProperly(object) end

--- Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
--- @param pickupHash Hash 
--- @return void (Type not found)
function RemoveAllPickupsOfType(pickupHash) end

--- CDoor and CDoorSystemData still internally allocated (and their associations between doorHash, modelHash, and coordinates).
--- Only its NetObj removed and flag `*(v2 + 192) |= 8u` (1604 retail) toggled.
--- @param doorHash Hash 
--- @return void (Type not found)
function RemoveDoorFromSystem(doorHash) end

--- @param pickup Pickup 
--- @return void (Type not found)
function RemovePickup(pickup) end

--- draws circular marker at pos
--- -1 = none
--- 0 = red
--- 1 = green
--- 2 = blue
--- 3 = green larger
--- 4 = nothing
--- 5 = green small
--- @param x number 
--- @param y number 
--- @param z number 
--- @param colorIndex number 
--- @return void (Type not found)
function RenderFakePickupGlow(x, y, z, colorIndex) end

--- Requires a component_at_*_flsh to be attached to the weapon object
--- @param object Object 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCreateWeaponObjectLightSource(object, toggle) end

--- @param object Object 
--- @return void (Type not found)
function RemoveObjectHighDetailModel(object) end

--- @param object Object 
--- @param toggle boolean 
--- @return void (Type not found)
function SetActivateObjectPhysicsAsSoonAsItIsUnfrozen(object, toggle) end

--- Activate the physics to: "xs_prop_arena_{flipper,wall,bollard,turntable,pit}"
--- NativeDB Introduced: v1604
--- @param entity Object 
--- @param toggle boolean 
--- @param p2 number 
--- @return void (Type not found)
function SetEnableArenaPropPhysics(entity, toggle, p2) end

--- NativeDB Introduced: v1604
--- @param entity Object 
--- @param toggle boolean 
--- @param p2 number 
--- @param ped Ped 
--- @return void (Type not found)
function SetEnableArenaPropPhysicsOnPed(entity, toggle, p2, ped) end

--- Overrides the climbing/blocking flags of the object, used in the native scripts mostly for "prop_dock_bouy_*"
--- @param object Object 
--- @param toggle boolean 
--- @return void (Type not found)
function SetObjectAllowLowLodBuoyancy(object, toggle) end

--- @param p0 boolean 
--- @return void (Type not found)
function SetLocalPlayerCanCollectPortablePickups(p0) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3 number 
--- @return void (Type not found)
function SetForceObjectThisFrame(x, y, z, p3) end

--- Maximum amount of pickup models that can be disallowed is 30.
--- SET_LOCAL_PLAYER_*
--- @param modelHash Hash 
--- @param toggle boolean 
--- @return void (Type not found)
function SetLocalPlayerCanUsePickupsWithThisModel(modelHash, toggle) end

--- Overrides a flag on the object which determines if the object should be avoided by a vehicle in task: CTaskVehicleGoToPointWithAvoidanceAutomobile.
--- Tested on vehicles that were created by the vehicle generators.
--- @param object Object 
--- @param toggle boolean 
--- @return void (Type not found)
function SetObjectForceVehiclesToAvoid(object, toggle) end

--- Sets color of embedded light source.
--- Only appears in am_mp_nightclub.c for the nightclub dancefloor.
--- Not sure what p1 does, seems to only ever be '1' in scripts.
--- NativeDB Introduced: v1493
--- @param object Object 
--- @param p1 boolean 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return 
function SetObjectLightColor(object, p1, r, g, b) end

--- Sets the intensity of Speed Boost and Slow Down props.
--- The corresponding values for Speed Boosts in the Creator are:\
--- Weak: `15`\
--- Normal: `25`\
--- Strong: `35`\
--- Extra Strong: `45`\
--- Ultra Strong: `100`
--- For Slow Downs:\
--- Weak: `44`\
--- Normal: `30`\
--- Strong: `16`
--- @param object Object A Speed Boost or Slow Down prop
--- @param intensity number Ranges from `1`-`254`, other values are ignored. Higher values will increase the effect of Speed Boosts and decrease the effect of Slow Downs.
--- @return void (Type not found)
function SetObjectStuntPropSpeedup(object, intensity) end

--- @param modelHash Hash 
--- @param p1 number 
--- @return void (Type not found)
function SetMaxNumPortablePickupsCarriedByPlayer(modelHash, p1) end

--- enum ObjectPaintVariants  
--- {  
--- 	Pacific = 0,  
--- 	Azure = 1,  
--- 	Nautical = 2,  
--- 	Continental = 3,  
--- 	Battleship = 4,  
--- 	Intrepid = 5,  
--- 	Uniform = 6,  
--- 	Classico = 7,  
--- 	Mediterranean = 8,  
--- 	Command = 9,  
--- 	Mariner = 10,  
--- 	Ruby = 11,  
--- 	Vintage = 12,  
--- 	Pristine = 13,  
--- 	Merchant = 14,  
--- 	Voyager = 15  
--- };  
--- @param object Object 
--- @param textureVariation number 
--- @return void (Type not found)
function SetObjectTextureVariation(object, textureVariation) end

--- @param object Object 
--- @param duration number 
--- @return void (Type not found)
function SetObjectStuntPropDuration(object, duration) end

--- rage::phArchetypeDamp
--- p9: Some phBoundGeometry margin value, limited to (0.0, 0.1) exclusive.
--- @param object Object 
--- @param mass number 
--- @param gravityFactor number 
--- @param linearC number 
--- @param linearV number 
--- @param linearV2 number 
--- @param angularC number 
--- @param angularV number 
--- @param angularV2 number 
--- @param p9 number 
--- @param maxAngSpeed number 
--- @param buoyancyFactor number 
--- @return void (Type not found)
function SetObjectPhysicsParams(object, mass, gravityFactor, linearC, linearV, linearV2, angularC, angularV, angularV2, p9, maxAngSpeed, buoyancyFactor) end

--- @param object Object 
--- @param targettable boolean 
--- @return void (Type not found)
function SetObjectTargettable(object, targettable) end

--- @param p0  
--- @param p1  
--- @return void (Type not found)
function SetPickupHiddenWhenUncollectable(p0, p1) end

--- @param multiplier number 
--- @return void (Type not found)
function SetPickupGenerationRangeMultiplier(multiplier) end

--- @param pickup Pickup 
--- @param duration number 
--- @return void (Type not found)
function SetPickupRegenerationTime(pickup, duration) end

--- @param object Object 
--- @param p1  
--- @param p2 boolean 
--- @return void (Type not found)
function SetTeamPickupObject(object, p1, p2) end

--- Hardcoded to not work in multiplayer.  
--- Used to lock/unlock doors to interior areas of the game.  
--- (Possible) Door Types:  
--- pastebin.com/9S2m3qA4  
--- Heading is either 1, 0 or -1 in the scripts. Means default closed(0) or opened either into(1) or out(-1) of the interior.  
--- Locked means that the heading is locked.    
--- p6 is always 0.   
--- 225 door types, model names and coords found in stripclub.c4:  
--- pastebin.com/gywnbzsH  
--- get door info: pastebin.com/i14rbekD  
--- @param type Hash 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param locked boolean 
--- @param heading number 
--- @param p6 boolean 
--- @return void (Type not found)
function SetStateOfClosestDoorOfType(type, x, y, z, locked, heading, p6) end

--- Defines the state of a destructible object.
--- Use the GET_RAYFIRE_MAP_OBJECT native to find an object's handle with its name / coords.
--- State 2 == object just spawned
--- State 4 == Beginning of the animation
--- State 6 == Start animation
--- State 9 == End of the animation
--- @param object Object 
--- @param state number 
--- @return void (Type not found)
function SetStateOfRayfireMapObject(object, state) end

--- NativeDB Introduced: v1365
--- @param value boolean 
--- @return void (Type not found)
function SetUnkGlobalBoolRelatedToDamage(value) end

--- @param p0  
--- @param p1  
--- @return void (Type not found)
function SetPickupUncollectable(p0, p1) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param modelHash Hash 
--- @param textureVariation number 
--- @return boolean
function SetTextureVariationOfClosestObjectOfType(x, y, z, radius, modelHash, textureVariation) end

--- Returns true if the object has finished moving.  
--- If false, moves the object towards the specified X, Y and Z coordinates with the specified X, Y and Z speed.  
--- See also: https://gtagmodding.com/opcode-database/opcode/034E/
--- Has to be looped until it returns true.   
--- @param object Object 
--- @param toX number 
--- @param toY number 
--- @param toZ number 
--- @param speedX number 
--- @param speedY number 
--- @param speedZ number 
--- @param collision boolean 
--- @return boolean
function SlideObject(object, toX, toY, toZ, speedX, speedY, speedZ, collision) end

--- @param object Object 
--- @return void (Type not found)
function TrackObjectVisibility(object) end

--- Disabling/enabling a player from getting pickups. From the scripts:
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 1);
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 0);
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 1);
--- SET_PLAYER_*
--- @param player Player 
--- @param pickupHash Hash 
--- @param toggle boolean 
--- @return void (Type not found)
function ToggleUsePickupsForPlayer(player, pickupHash, toggle) end
