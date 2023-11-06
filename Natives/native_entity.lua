
--- Applies a force to the specified entity.
--- **List of force types (p1)**:
--- public enum ForceType
--- {
---     MinForce = 0,
---     MaxForceRot = 1,
---     MinForce2 = 2,
---     MaxForceRot2 = 3,
---     ForceNoRot = 4,
---     ForceRotPlusForce = 5
--- }
--- Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).
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

--- Applies a force to the specified entity.
--- **List of force types (p1)**:
--- public enum ForceType
--- {
---     MinForce = 0,
---     MaxForceRot = 1,
---     MinForce2 = 2,
---     MaxForceRot2 = 3,
---     ForceNoRot = 4,
---     ForceRotPlusForce = 5
--- }
--- Research/documentation on the gtaforums can be found here https://gtaforums.com/topic/885669-precisely-define-object-physics/) and here https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/.
--- p6/relative - makes the xyz force not relative to world coords, but to something else
--- p7/highForce - setting false will make the force really low
--- @param entity Entity 
--- @param forceType number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p5 boolean 
--- @param isDirectionRel boolean 
--- @param isForceRel boolean 
--- @param p8 boolean 
--- @return void (Type not found)
function ApplyForceToEntityCenterOfMass(entity, forceType, x, y, z, p5, isDirectionRel, isForceRel, p8) end

--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param entityBone number 
--- @param entityBone2 number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return void (Type not found)
function AttachEntityBoneToEntityBonePhysically(entity1, entity2, entityBone, entityBone2, p4, p5) end

--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param entityBone number 
--- @param entityBone2 number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return void (Type not found)
function AttachEntityBoneToEntityBone(entity1, entity2, entityBone, entityBone2, p4, p5) end

--- Attach an entity to the specified entity.
--- @param entity1 Entity Entity to attach.
--- @param entity2 Entity Entity to attach `entity1` with.
--- @param boneIndex number This is different to boneID, use ['GET_PED_BONE_INDEX'](#\_0x3F428D08BE5AAE31) to get the index from the ID. use the index for attaching to specific bones. `entity1` will be attached to the center of `entity2` if bone index given doesn't correspond to bone indexes for that entity type.
--- @param xPos number X-axis offset from the center of `entity2`.
--- @param yPos number Y-axis offset from the center of `entity2`.
--- @param zPos number Z-axis offset from the center of `entity2`.
--- @param xRot number X-axis rotation.
--- @param yRot number Y-axis rotation.
--- @param zRot number Z-axis rotation.
--- @param p9 boolean Unknown. Does not seem to have any effect.
--- @param useSoftPinning boolean If set to false attached entity will not detach when fixed.
--- @param collision boolean Controls collision between the two entities (FALSE disables collision).
--- @param isPed boolean Pitch doesnt work when false and roll will only work on negative numbers (only peds)
--- @param rotationOrder number The order in which the rotation is applied. See [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
--- @param syncRot boolean If false it ignores entity rotation.
--- @return void (Type not found)
function AttachEntityToEntity(entity1, entity2, boneIndex, xPos, yPos, zPos, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, rotationOrder, syncRot) end

--- breakForce is the amount of force required to break the bond.
--- p14 - is always 1 in scripts
--- p15 - is 1 or 0 in scripts - unknown what it does
--- p16 - controls collision between the two entities (FALSE disables collision).
--- p17 - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone)
--- p18 - is always 2 in scripts.
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param boneIndex1 number 
--- @param boneIndex2 number 
--- @param xPos1 number 
--- @param yPos1 number 
--- @param zPos1 number 
--- @param xPos2 number 
--- @param yPos2 number 
--- @param zPos2 number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param breakForce number 
--- @param fixedRot boolean 
--- @param p15 boolean 
--- @param collision boolean 
--- @param teleport boolean 
--- @param p18 number 
--- @return void (Type not found)
function AttachEntityToEntityPhysically(entity1, entity2, boneIndex1, boneIndex2, xPos1, yPos1, zPos1, xPos2, yPos2, zPos2, xRot, yRot, zRot, breakForce, fixedRot, p15, collision, teleport, p18) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3  
--- @param modelHash Hash 
--- @param p5 boolean 
--- @return void (Type not found)
function CreateForcedObject(x, y, z, p3, modelHash, p5) end

--- This native **could affect** the arguments of the `CEventNetworkEntityDamage` game event, by clearing the damaging entity before the event is fired.
--- @param entity Entity The entity to clear the last damaging entity from.
--- @return void (Type not found)
function ClearEntityLastDamageEntity(entity) end

--- p5 = sets as true in scripts  
--- Same as the comment for CREATE_MODEL_SWAP unless for some reason p5 affects it this only works with objects as well.  
--- Network players do not see changes done with this.  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param model Hash 
--- @param p5 boolean 
--- @return void (Type not found)
function CreateModelHide(x, y, z, radius, model, p5) end

--- Deletes the specified entity, and invalidates the passed handle (i.e. in/out argument).
--- @param entity Entity The entity to delete.
--- @return void (Type not found)
function DeleteEntity(entity) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param model Hash 
--- @param p5 boolean 
--- @return void (Type not found)
function CreateModelHideExcludingScriptObjects(x, y, z, radius, model, p5) end

--- @param entity Entity 
--- @param p2 boolean 
--- @return boolean
function DoesEntityBelongToThisScript(entity, p2) end

--- NativeDB Introduced: v2699
--- @param entity Entity 
--- @return boolean
function DoesEntityHaveAnimDirector(entity) end

--- @param entity Entity 
--- @return boolean
function DoesEntityHavePhysics(entity) end

--- Only works with objects!  
--- Network players do not see changes done with this.  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param originalModel Hash 
--- @param newModel Hash 
--- @param p6 boolean 
--- @return void (Type not found)
function CreateModelSwap(x, y, z, radius, originalModel, newModel, p6) end

--- @param entity Entity 
--- @param dynamic boolean Set to `true` to keep velocity after detaching
--- @param collision boolean 
--- @return void (Type not found)
function DetachEntity(entity, dynamic, collision) end

--- ENABLE_*
--- @param entity Entity 
--- @return void (Type not found)
function EnableEntityUnk(entity) end

--- In the script "player_scene_t_bbfight.c4":  
--- "if (ENTITY::FIND_ANIM_EVENT_PHASE(&l_16E, &l_19F[v_4/*16*/], v_9, &v_A, &v_B))"  
--- -- &l_16E (p0) is requested as an anim dictionary earlier in the script.  
--- -- &l_19F[v_4/*16*/] (p1) is used in other natives in the script as the "animation" param.  
--- -- v_9 (p2) is instantiated as "victim_fall"; I'm guessing that's another anim  
--- --v_A and v_B (p3 & p4) are both set as -1.0, but v_A is used immediately after this native for:   
--- "if (v_A < ENTITY::GET_ENTITY_ANIM_CURRENT_TIME(...))"  
--- Both v_A and v_B are seemingly used to contain both Vector3's and floats, so I can't say what either really is other than that they are both output parameters. p4 looks more like a *Vector3 though  
--- -alphazolam  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param animDictionary string 
--- @param animName string 
--- @param p2 string 
--- @param p3  
--- @param p4  
--- @return boolean
function FindAnimEventPhase(animDictionary, animName, p2, p3, p4) end

--- Checks whether an entity exists in the game world.
--- @param entity Entity The entity to check if it exists.
--- @return boolean
function DoesEntityExist(entity) end

--- Based on carmod_shop script decompile this takes a vehicle parameter. It is called when repair is done on initial enter.  
--- @param entity Entity 
--- @return void (Type not found)
function ForceEntityAiAndAnimationUpdate(entity) end

--- @param entity Entity 
--- @return boolean
function DoesEntityHaveDrawable(entity) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param animDict string 
--- @param animName string 
--- @return number
function GetAnimDuration(animDict, animName) end

--- @param entity Entity 
--- @return number
function GetEntityAlpha(entity) end

--- NativeDB Introduced: v2699
--- @param entity Entity 
--- @return boolean
function DoesEntityHaveSkeletonData(entity) end

--- Returns a float value representing animation's total playtime in milliseconds.  
--- Example:  
--- GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b")   
--- return 20800.000000  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity 
--- @param animDict string 
--- @param animName string 
--- @return number
function GetEntityAnimTotalTime(entity, animDict, animName) end

--- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using SET_ENTITY_COORDS.
--- @param entity Entity The entity to freeze/unfreeze.
--- @param toggle boolean Freeze or unfreeze entity.
--- @return void (Type not found)
function FreezeEntityPosition(entity, toggle) end

--- @param entity Entity 
--- @return number
function GetEntityBoneCount(entity) end

--- Gets the world rotation of the specified bone of the specified entity.
--- @param entity Entity 
--- @param boneIndex number 
--- @return Vector3
function GetEntityBoneRotation(entity, boneIndex) end

--- Gets the local rotation of the specified bone of the specified entity.
--- NativeDB Introduced: v1734
--- @param entity Entity 
--- @param boneIndex number 
--- @return Vector3
function GetEntityBoneRotationLocal(entity, boneIndex) end

--- Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.  
--- Example:  
--- 0.000000 - mark the starting of animation.  
--- 0.500000 - mark the midpoint of the animation.  
--- 1.000000 - mark the end of animation.  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity 
--- @param animDict string 
--- @param animName string 
--- @return number
function GetEntityAnimCurrentTime(entity, animDict, animName) end

--- @param entity Entity 
--- @return Entity
function GetEntityAttachedTo(entity) end

--- @param entity Entity 
--- @return boolean
function GetEntityCanBeDamaged(entity) end

--- @param entity Entity 
--- @return Vector3
function GetCollisionNormalOfLastHitForEntity(entity) end

--- Returns the index of the bone. If the bone was not found, -1 will be returned.   
--- list:  
--- pastebin.com/D7JMnX1g  
--- BoneNames:  
--- 	chassis,  
--- 	windscreen,  
--- 	seat_pside_r,  
--- 	seat_dside_r,  
--- 	bodyshell,  
--- 	suspension_lm,  
--- 	suspension_lr,  
--- 	platelight,  
--- 	attach_female,  
--- 	attach_male,  
--- 	bonnet,  
--- 	boot,  
--- 	chassis_dummy,	//Center of the dummy  
--- 	chassis_Control,	//Not found yet  
--- 	door_dside_f,	//Door left, front  
--- 	door_dside_r,	//Door left, back  
--- 	door_pside_f,	//Door right, front  
--- 	door_pside_r,	//Door right, back  
--- 	Gun_GripR,  
--- 	windscreen_f,  
--- 	platelight,	//Position where the light above the numberplate is located  
--- 	VFX_Emitter,  
--- 	window_lf,	//Window left, front  
--- 	window_lr,	//Window left, back  
--- 	window_rf,	//Window right, front  
--- 	window_rr,	//Window right, back  
--- 	engine,	//Position of the engine  
--- 	gun_ammo,  
--- 	ROPE_ATTATCH,	//Not misspelled. In script "finale_heist2b.c4".  
--- 	wheel_lf,	//Wheel left, front  
--- 	wheel_lr,	//Wheel left, back  
--- 	wheel_rf,	//Wheel right, front  
--- 	wheel_rr,	//Wheel right, back  
--- 	exhaust,	//Exhaust. shows only the position of the stock-exhaust  
--- 	overheat,	//A position on the engine(not exactly sure, how to name it)  
--- 	misc_e,	//Not a car-bone.  
--- 	seat_dside_f,	//Driver-seat  
--- 	seat_pside_f,	//Seat next to driver  
--- 	Gun_Nuzzle,  
--- 	seat_r  
--- I doubt that the function is case-sensitive, since I found a "Chassis" and a "chassis". - Just tested: Definitely not case-sensitive.  
--- @param entity Entity 
--- @param boneName string 
--- @return number
function GetEntityBoneIndexByName(entity, boneName) end

--- Returns the heading of the entity in degrees. Also know as the "Yaw" of an entity.
--- @param entity Entity The entity to get the heading from.
--- @return number
function GetEntityHeading(entity) end

--- Gets the X-component of the entity's forward vector.  
--- @param entity Entity 
--- @return number
function GetEntityForwardX(entity) end

--- Gets the entity's forward vector.
--- @param entity Entity The entity to get the forward vector for.
--- @return Vector3
function GetEntityForwardVector(entity) end

--- Returns an integer value of entity's current health.
--- Example of range for ped:
--- - Player [0 to 200]
--- - Ped [100 to 200]
--- - Vehicle [0 to 1000]
--- - Object [0 to 1000]
--- Health is actually a float value but this native casts it to int.
--- In order to get the actual value, do:
--- float health = *(float *)(entityAddress + 0x280);
--- @param entity Entity The entity to get the health from.
--- @return number
function GetEntityHealth(entity) end

--- Gets the current coordinates (world position) for a specified entity.
--- @param entity Entity The entity to get the coordinates from.
--- @param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
--- @return Vector3
function GetEntityCoords(entity, alive) end

--- Gets the Y-component of the entity's forward vector.  
--- @param entity Entity 
--- @return number
function GetEntityForwardY(entity) end

--- @param entity Entity 
--- @param forwardVector Vector3 
--- @param rightVector Vector3 
--- @param upVector Vector3 
--- @param position Vector3 
--- @return void (Type not found)
function GetEntityMatrix(entity, forwardVector, rightVector, upVector, position) end

--- @param entity Entity 
--- @param X number 
--- @param Y number 
--- @param Z number 
--- @param atTop boolean 
--- @param inWorldCoords boolean 
--- @return number
function GetEntityHeight(entity, X, Y, Z, atTop, inWorldCoords) end

--- Return height (z-dimension) above ground.   
--- Example: The pilot in a titan plane is 1.844176 above ground.  
--- How can i convert it to meters?  
--- Everything seems to be in meters, probably this too.  
--- @param entity Entity 
--- @return number
function GetEntityHeightAboveGround(entity) end

--- @param entity Entity 
--- @return boolean
function GetEntityCollisionDisabled(entity) end

--- Returns the LOD distance of an entity.  
--- @param entity Entity 
--- @return number
function GetEntityLodDist(entity) end

--- Gets the heading of the entity physics in degrees, which tends to be more accurate than just "GET_ENTITY_HEADING". This can be clearly seen while, for example, ragdolling a ped/player.  
--- NOTE: The name and description of this native are based on independent research. If you find this native to be more suitable under a different name and/or described differently, please feel free to do so.  
--- @param entity Entity 
--- @return number
function GetEntityPhysicsHeading(entity) end

--- Return an integer value of entity's maximum health.  
--- Example:  
--- - Player = 200  
--- @param entity Entity 
--- @return number
function GetEntityMaxHealth(entity) end

--- GET_ENTITY_*
--- Seems to return the handle of the entity's portable pickup.
--- NativeDB Introduced: v1180
--- @param entity Entity 
--- @param modelHash Hash 
--- @return Entity
function GetEntityPickup(entity, modelHash) end

--- Returns the model hash from an entity.
--- @param entity Entity The entity to get the model for.
--- @return Hash
function GetEntityModel(entity) end

--- A population type, from the following enum: https://alloc8or.re/gta5/doc/enums/ePopulationType.txt
--- @param entity Entity The entity to obtain the population type from.
--- @return number
function GetEntityPopulationType(entity) end

--- NativeDB Introduced: v1604
--- @param entity Entity 
--- @param bulletProof boolean 
--- @param fireProof boolean 
--- @param explosionProof boolean 
--- @param collisionProof boolean 
--- @param meleeProof boolean 
--- @param steamProof boolean 
--- @param p7 boolean 
--- @param drownProof boolean 
--- @return boolean
function GetEntityProofs(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof) end

--- Displays the current ROLL axis of the entity [-180.0000/180.0000+]  
--- (Sideways Roll) such as a vehicle tipped on its side  
--- @param entity Entity 
--- @return number
function GetEntityRoll(entity) end

--- rotationOrder refers to the order yaw pitch roll is applied; value ranges from 0 to 5 and is usually *2* in scripts.
--- What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.
--- What it returns is the yaw on the z part of the vector, which makes sense considering R* considers z as vertical. Here's a picture for those of you who don't understand pitch, yaw, and roll:
--- www.allstar.fiu.edu/aero/images/pic5-1.gif
--- ### Rotation Orders
--- *   **0**: ZYX - Rotate around the z-axis, then the y-axis and finally the x-axis.
--- *   **1**: YZX - Rotate around the y-axis, then the z-axis and finally the x-axis.
--- *   **2**: ZXY - Rotate around the z-axis, then the x-axis and finally the y-axis.
--- *   **3**: XZY - Rotate around the x-axis, then the z-axis and finally the y-axis.
--- *   **4**: YXZ - Rotate around the y-axis, then the x-axis and finally the z-axis.
--- *   **5**: XYZ - Rotate around the x-axis, then the y-axis and finally the z-axis.
--- @param entity Entity The entity to get the rotation for.
--- @param rotationOrder number The order yaw, pitch and roll is applied. Usually 2.
--- @return Vector3
function GetEntityRotation(entity, rotationOrder) end

--- w is the correct parameter name!  
--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param w number 
--- @return void (Type not found)
function GetEntityQuaternion(entity, x, y, z, w) end

--- Gets the world rotation of the specified bone of the specified entity.
--- This native is used in casinoroulette.c but I don't know yet what is the difference with _GET_ENTITY_BONE_ROTATION
--- @param entity Entity 
--- @param boneIndex number 
--- @return Vector3
function GetEntityBonePosition2(entity, boneIndex) end

--- @param entity Entity 
--- @return number
function GetEntityPitch(entity) end

--- @param entity Entity 
--- @return Vector3
function GetEntityRotationVelocity(entity) end

--- All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.  
--- @param entity Entity 
--- @param script ScrHandle 
--- @return string
function GetEntityScript(entity, script) end

--- Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).  
--- @param entity Entity 
--- @param relative boolean 
--- @return Vector3
function GetEntitySpeedVector(entity, relative) end

--- Get how much of the entity is submerged.  1.0f is whole entity.  
--- @param entity Entity 
--- @return number
function GetEntitySubmergedLevel(entity) end

--- Get the speed of a entity.
--- @param entity Entity Entity id you want to test for speed.
--- @return number
function GetEntitySpeed(entity) end

--- Returns:
--- 0 = no entity
--- 1 = ped
--- 2 = vehicle
--- 3 = object
--- @param entity Entity 
--- @return number
function GetEntityType(entity) end

--- @param entity Entity 
--- @return Hash
function GetLastMaterialHitByEntity(entity) end

--- @param entity Entity 
--- @return Vector3
function GetEntityVelocity(entity) end

--- @param entity Entity 
--- @return Player
function GetNearestPlayerToEntity(entity) end

--- @param entity Entity 
--- @param team number 
--- @return Player
function GetNearestPlayerToEntityOnTeam(entity, team) end

--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- @param entity Entity 
--- @return Object
function GetObjectIndexFromEntityIndex(entity) end

--- Converts world coords (posX - Z) to coords relative to the entity  
--- Example:  
--- posX = 50  
--- posY = 1000  
--- posZ = 60  
--- Entity's coords are: x=30, y=1000, z=60.  
--- All three returned coords will then be in range of [-20,20] depending on rotation of the entity.  
--- @param entity Entity 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return Vector3
function GetOffsetFromEntityGivenWorldCoords(entity, posX, posY, posZ) end

--- if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("CreateObject")))
--- @param entity Entity 
--- @param actionHash Hash 
--- @return boolean
function HasAnimEventFired(entity, actionHash) end

--- P3 is always 3 as far as i cant tell  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity 
--- @param animDict string 
--- @param animName string 
--- @param p3 number 
--- @return boolean
function HasEntityAnimFinished(entity, animDict, animName, p3) end

--- @param entity Entity 
--- @return number
function GetEntityUprightValue(entity) end

--- Offset values are relative to the entity.  
--- x = left/right  
--- y = forward/backward  
--- z = up/down  
--- @param entity Entity 
--- @param offsetX number 
--- @param offsetY number 
--- @param offsetZ number 
--- @return Vector3
function GetOffsetFromEntityInWorldCoords(entity, offsetX, offsetY, offsetZ) end

--- @param entity Entity 
--- @return boolean
function HasEntityBeenDamagedByAnyPed(entity) end

--- Returns the coordinates of an entity-bone.  
--- @param entity Entity 
--- @param boneIndex number 
--- @return Vector3
function GetWorldPositionOfEntityBone(entity, boneIndex) end

--- @param entity Entity 
--- @return boolean
function HasEntityBeenDamagedByAnyVehicle(entity) end

--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- @param entity Entity 
--- @return Vehicle
function GetVehicleIndexFromEntityIndex(entity) end

--- Checks if entity1 has a clear line of sight to entity2. So a simple raycast which if it collides with any of the given colliderTypes returns false.
--- The direction of the check matters with for example bushes, so checking from inside to outside a bush with traceType 256 returns true, but the other way around returns false.
--- @param entity1 Entity Entity to start from
--- @param entity2 Entity Entity to check to
--- @param flags number A bit mask with bits 1, 2, 4, etc, relating to collider types (see: [START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE](#\_0x377906D8A31E5586)). 17 is most common in GTA scripts.
--- @return boolean
function HasEntityClearLosToEntity(entity1, entity2, flags) end

--- @param entity Entity 
--- @return boolean
function HasEntityBeenDamagedByAnyObject(entity) end

--- Entity 1 = Victim  
--- Entity 2 = Attacker  
--- p2 seems to always be 1  
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param p2 boolean 
--- @return boolean
function HasEntityBeenDamagedByEntity(entity1, entity2, p2) end

--- NativeDB Introduced: v1868
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param traceType number 
--- @return 
function HasEntityClearLosToEntity2(entity1, entity2, traceType) end

--- Called on tick.  
--- Tested with vehicles, returns true whenever the vehicle is touching any entity.  
--- Note: for vehicles, the wheels can touch the ground and it will still return false, but if the body of the vehicle touches the ground, it will return true.  
--- @param entity Entity 
--- @return boolean
function HasEntityCollidedWithAnything(entity) end

--- @param handle number 
--- @return boolean
function IsAnEntity(handle) end

--- Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing.  
--- This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops  
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @return boolean
function HasEntityClearLosToEntityInFront(entity1, entity2) end

--- @param entity Entity 
--- @return boolean
function HasCollisionLoadedAroundEntity(entity) end

--- @param entity Entity The entity to check if it's a Ped.
--- @return boolean
function IsEntityAPed(entity) end

--- @param entity Entity 
--- @return boolean
function IsEntityAMissionEntity(entity) end

--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- @param entity Entity 
--- @return Ped
function GetPedIndexFromEntityIndex(entity) end

--- Checks if entity is within x/y/zSize distance of x/y/z.   
--- Last three are unknown ints, almost always p7 = 0, p8 = 1, p9 = 0  
--- @param entity Entity 
--- @param xPos number 
--- @param yPos number 
--- @param zPos number 
--- @param xSize number 
--- @param ySize number 
--- @param zSize number 
--- @param p7 boolean 
--- @param p8 boolean 
--- @param p9 number 
--- @return boolean
function IsEntityAtCoord(entity, xPos, yPos, zPos, xSize, ySize, zSize, p7, p8, p9) end

--- @param entity Entity 
--- @return boolean
function IsEntityAVehicle(entity) end

--- @param entity Entity 
--- @return boolean
function IsEntityAttachedToAnyObject(entity) end

--- Checks if entity1 is within the box defined by x/y/zSize of entity2.  
--- Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0  
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param xSize number 
--- @param ySize number 
--- @param zSize number 
--- @param p5 boolean 
--- @param p6 boolean 
--- @param p7 number 
--- @return boolean
function IsEntityAtEntity(entity1, entity2, xSize, ySize, zSize, p5, p6, p7) end

--- @param entity Entity 
--- @return boolean
function IsEntityAnObject(entity) end

--- @param entity Entity The entity to check if it is attached to another entity.
--- @return boolean
function IsEntityAttached(entity) end

--- @param entity Entity 
--- @return boolean
function IsEntityAttachedToAnyVehicle(entity) end

--- @param from Entity 
--- @param to Entity 
--- @return boolean
function IsEntityAttachedToEntity(from, to) end

--- @param entity Entity 
--- @return boolean
function IsEntityInAir(entity) end

--- @param entity Entity 
--- @return boolean
function IsEntityAttachedToAnyPed(entity) end

--- p10 is some entity flag check, also used in [`IS_ENTITY_AT_ENTITY`](#\_0x751B70C3D034E187), [`IS_ENTITY_IN_AREA`](#\_0x54736AA40E271165) and [`IS_ENTITY_AT_COORD`](#\_0x20B60995556D004F).
--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- @param entity Entity 
--- @param x1 number X dimension of the angled area 'origin'
--- @param y1 number Y dimension of the angled area 'origin'
--- @param z1 number Z dimension of the angled area 'origin'
--- @param x2 number X dimension of the angled area 'extent'
--- @param y2 number Y dimension of the angled area 'extent'
--- @param z2 number Z dimension of the angled area 'extent'
--- @param width number Width of the angled area
--- @param debug boolean a debug flag invoking functions in the same path as `DRAW_MARKER`
--- @param includez boolean If true, include the Z dimension when doing the height check; otherwise the query becomes two-dimensional
--- @param p10  
--- @return boolean
function IsEntityInAngledArea(entity, x1, y1, z1, x2, y2, z2, width, debug, includez, p10) end

--- NativeDB Added Parameter 2: BOOL p1
--- @param entity Entity 
--- @return boolean
function IsEntityDead(entity) end

--- @param entity Entity 
--- @return boolean
function IsEntityInWater(entity) end

--- @param entity Entity 
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param p7 boolean 
--- @param p8 boolean 
--- @param p9  
--- @return boolean
function IsEntityInArea(entity, x1, y1, z1, x2, y2, z2, p7, p8, p9) end

--- See also [`IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM`](#\_0x6EC47A344923E1ED)
--- Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)  
--- p4 is always 3 in the scripts.  
--- taskFlag:  
--- 2 - Check synchronized scene  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity 
--- @param animDict string 
--- @param animName string 
--- @param taskFlag number 
--- @return boolean
function IsEntityPlayingAnim(entity, animDict, animName, taskFlag) end

--- A static ped will not react to natives like "APPLY_FORCE_TO_ENTITY" or "SET_ENTITY_VELOCITY" and oftentimes will not react to task-natives like "AI::TASK_COMBAT_PED". The only way I know of to make one of these peds react is to ragdoll them (or sometimes to use CLEAR_PED_TASKS_IMMEDIATELY(). Static peds include almost all far-away peds, beach-combers, peds in certain scenarios, peds crossing a crosswalk, peds walking to get back into their cars, and others. If anyone knows how to make a ped non-static without ragdolling them, please edit this with the solution.  
--- ^ Attach a phCollider to the ped.  
--- @param entity Entity 
--- @return boolean
function IsEntityStatic(entity) end

--- @param entity Entity 
--- @param zone string 
--- @return boolean
function IsEntityInZone(entity, zone) end

--- @param entity Entity 
--- @param targetEntity Entity 
--- @return boolean
function IsEntityTouchingEntity(entity, targetEntity) end

--- Returns true if the entity is in between the minimum and maximum values for the 2d screen coords.   
--- This means that it will return true even if the entity is behind a wall for example, as long as you're looking at their location.   
--- Chipping  
--- @param entity Entity 
--- @return boolean
function IsEntityOnScreen(entity) end

--- @param entity Entity 
--- @param modelHash Hash 
--- @return boolean
function IsEntityTouchingModel(entity, modelHash) end

--- @param entity Entity 
--- @param angle number 
--- @return boolean
function IsEntityUpright(entity, angle) end

--- @param entity Entity 
--- @return boolean
function IsEntityUpsidedown(entity) end

--- @param entity Entity 
--- @return boolean
function IsEntityOccluded(entity) end

--- @param entity Entity 
--- @return boolean
function IsEntityVisibleToScript(entity) end

--- @param entity Entity 
--- @return boolean
function IsEntityWaitingForWorldCollision(entity) end

--- delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.  
--- The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity 
--- @param animName string 
--- @param animDict string 
--- @param p3 number 
--- @param loop boolean 
--- @param stayInAnim boolean 
--- @param p6 boolean 
--- @param delta number 
--- @param bitset  
--- @return boolean
function PlayEntityAnim(entity, animName, animDict, p3, loop, stayInAnim, p6, delta, bitset) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function RemoveForcedObject(p0, p1, p2, p3, p4) end

--- Called to update entity attachments.
--- @param entity Entity 
--- @return void (Type not found)
function ProcessEntityAttachments(entity) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param originalModel Hash 
--- @param newModel Hash 
--- @param p6 boolean 
--- @return void (Type not found)
function RemoveModelSwap(x, y, z, radius, originalModel, newModel, p6) end

--- p4 and p7 are usually 1000.0f.  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity 
--- @param syncedScene number 
--- @param animation string 
--- @param propName string 
--- @param p4 number 
--- @param p5 number 
--- @param p6  
--- @param p7 number 
--- @return boolean
function PlaySynchronizedEntityAnim(entity, syncedScene, animation, propName, p4, p5, p6, p7) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4  
--- @param p5  
--- @param p6  
--- @param p7  
--- @param p8 number 
--- @param p9 number 
--- @param p10  
--- @param p11 number 
--- @return boolean
function PlaySynchronizedMapEntityAnim(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

--- @param entity Entity 
--- @return boolean
function IsEntityVisible(entity) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCanAutoVaultOnEntity(entity, toggle) end

--- This native sets the entity's alpha level.
--- @param entity Entity The entity to change the alpha for.
--- @param alphaLevel number The alpha level ranges from 0 to 255, but changes occur every 20% (every 51).
--- @param skin boolean Whether or not to change the alpha of the entity's skin.
--- @return void (Type not found)
function SetEntityAlpha(entity, alphaLevel, skin) end

--- @param entity Entity 
--- @return void (Type not found)
function ResetEntityAlpha(entity) end

--- NativeDB Introduced: v2372
--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetEntityAngularVelocity(entity, x, y, z) end

--- @param entity Entity 
--- @param animDictionary string 
--- @param animName string 
--- @param speedMultiplier number 
--- @return void (Type not found)
function SetEntityAnimSpeed(entity, animDictionary, animName, speedMultiplier) end

--- p5 requires more research. See also [`CREATE_MODEL_HIDE`](#\_0x8A97BCA30A0CE478) and [`CREATE_MODEL_SWAP`](#\_0x92C47782FDA8B2A3).
--- Network players do not see changes done with this.
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number The radius specified in gta units
--- @param model Hash The model that you want to make visible
--- @param p5 boolean 
--- @return void (Type not found)
function RemoveModelHide(x, y, z, radius, model, p5) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCanClimbOnEntity(entity, toggle) end

--- Assigns an existing entity to be owned by the current script. If the entity was not owned by a script yet, this also means the entity will remain persistent until released.
--- Note that this is not needed right after creating an entity as a script-created entity will automatically be assigned.
--- @param entity Entity An entity handle.
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetEntityAsMissionEntity(entity, p1, p2) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity 
--- @param animDictionary string 
--- @param animName string 
--- @param time number 
--- @return void (Type not found)
function SetEntityAnimCurrentTime(entity, animDictionary, animName, time) end

--- Marks the specified entity (ped, vehicle or object) as no longer needed.  
--- Entities marked as no longer needed, will be deleted as the engine sees fit.  
--- @param entity Entity 
--- @return void (Type not found)
function SetEntityAsNoLongerNeeded(entity) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityCanBeDamaged(entity, toggle) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityAlwaysPrerender(entity, toggle) end

--- @param entity Entity 
--- @param bCanBeDamaged boolean 
--- @param relGroup number 
--- @return void (Type not found)
function SetEntityCanBeDamagedByRelationshipGroup(entity, bCanBeDamaged, relGroup) end

--- @param entity Entity 
--- @param toggle boolean 
--- @param keepPhysics boolean 
--- @return void (Type not found)
function SetEntityCollision(entity, toggle, keepPhysics) end

--- Sets whether the entity can be targeted without being in line-of-sight.  
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityCanBeTargetedWithoutLos(entity, toggle) end

--- @param entity Entity 
--- @param toggle boolean 
--- @param keepPhysics boolean 
--- @return void (Type not found)
function SetEntityCompletelyDisableCollision(entity, toggle, keepPhysics) end

--- True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityCleanupByEngine(entity, toggle) end

--- Sets the coordinates (world position) for a specified entity.
--- @param entity Entity The entity to change coordinates for.
--- @param xPos number The X coordinate.
--- @param yPos number The Y coordinate.
--- @param zPos number The Z coordinate, origin level.
--- @param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
--- @param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
--- @param ragdollFlag boolean A special flag used for ragdolling peds.
--- @return void (Type not found)
function SetEntityCoordsNoOffset(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag) end

--- Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
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

--- @param entity Entity 
--- @param xPos number 
--- @param yPos number 
--- @param zPos number 
--- @param alive boolean 
--- @param deadFlag boolean 
--- @param ragdollFlag boolean 
--- @param clearArea boolean 
--- @return void (Type not found)
function SetEntityCoordsWithoutPlantsReset(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag, clearArea) end

--- SET_ENTITY_*
--- @param entity Entity 
--- @param p1 boolean 
--- @return void (Type not found)
function SetEntityDecalsDisabled(entity, p1) end

--- Set the heading of an entity in degrees also known as "Yaw".
--- @param entity Entity The entity to set the heading for.
--- @param heading number The heading in degrees.
--- @return void (Type not found)
function SetEntityHeading(entity, heading) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityDynamic(entity, toggle) end

--- health >= 0
--- male ped ~= 100 - 200
--- female ped ~= 0 - 100
--- NativeDB Added Parameter 3: int p2
--- @param entity Entity 
--- @param health number 
--- @return void (Type not found)
function SetEntityHealth(entity, health) end

--- Sets a ped or an object totally invincible. It doesn't take any kind of damage. Peds will not ragdoll on explosions and the tazer animation won't apply either.  
--- If you use this for a ped and you want Ragdoll to stay enabled, then do:  
--- *(DWORD *)(pedAddress + 0x188) |= (1 << 9);  
--- Use this if you want to get the invincibility status:  
--- 	bool IsPedInvincible(Ped ped)  
--- 	{  
--- auto addr = getScriptHandleBaseAddress(ped);	  
--- if (addr)  
--- {  
--- 	DWORD flag = *(DWORD *)(addr + 0x188);  
--- 	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
--- }  
--- return false;  
--- 	}  
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityInvincible(entity, toggle) end

--- @param entity Entity 
--- @param p1 boolean 
--- @param p2 number 
--- @return void (Type not found)
function SetEntityIsTargetPriority(entity, p1, p2) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityHasGravity(entity, toggle) end

--- Loads collision grid for an entity spawned outside of a player's loaded area. This allows peds to execute tasks rather than sit dormant because of a lack of a physics grid.
--- Certainly not the main usage of this native but when set to true for a Vehicle, it will prevent the vehicle to explode if it is spawned far away from the player.
--- NativeDB Added Parameter 3: Any p2
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityLoadCollisionFlag(entity, toggle) end

--- LOD distance can be 0 to 0xFFFF (higher values will result in 0xFFFF) as it is actually stored as a 16-bit value (aka uint16_t).  
--- @param entity Entity 
--- @param value number 
--- @return void (Type not found)
function SetEntityLodDist(entity, value) end

--- @param entity Entity Entity to apply a maximum speed on
--- @param speed number Speed in meters per second
--- @return void (Type not found)
function SetEntityMaxSpeed(entity, speed) end

--- For instance: ENTITY::SET_ENTITY_MAX_HEALTH(PLAYER::PLAYER_PED_ID(), 200); // director_mode.c4: 67849  
--- @param entity Entity 
--- @param value number 
--- @return void (Type not found)
function SetEntityMaxHealth(entity, value) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityOnlyDamagedByPlayer(entity, toggle) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityMotionBlur(entity, toggle) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityLights(entity, toggle) end

--- Calling this function disables collision between two entities.
--- The importance of the order for entity1 and entity2 is unclear.
--- The third parameter, `thisFrame`, decides whether the collision is to be disabled until it is turned back on, or if it's just this frame.
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param thisFrameOnly boolean 
--- @return void (Type not found)
function SetEntityNoCollisionEntity(entity1, entity2, thisFrameOnly) end

--- Enable / disable each type of damage.  
--- --------------  
--- p7 is to to '1' in am_mp_property_ext/int: entity::set_entity_proofs(uParam0->f_19, true, true, true, true, true, true, 1, true);  
--- @param entity Entity 
--- @param bulletProof boolean 
--- @param fireProof boolean 
--- @param explosionProof boolean 
--- @param collisionProof boolean 
--- @param meleeProof boolean 
--- @param steamProof boolean 
--- @param p7 boolean 
--- @param drownProof boolean 
--- @return void (Type not found)
function SetEntityProofs(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityRecordsCollisions(entity, toggle) end

--- w is the correct parameter name!  
--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param w number 
--- @return void (Type not found)
function SetEntityQuaternion(entity, x, y, z, w) end

--- @param entity Entity 
--- @param pitch number 
--- @param roll number 
--- @param yaw number 
--- @param rotationOrder number The order yaw pitch roll are applied, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9).
--- @param p5 boolean 
--- @return void (Type not found)
function SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityRenderScorched(entity, toggle) end

--- Example here: www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340
--- 0 = green
--- 1 = red
--- 2 = yellow
--- 3 = reset changes
--- changing lights may not change the behavior of vehicles
--- @param entity Entity 
--- @param state number 
--- @return void (Type not found)
function SetEntityTrafficlightOverride(entity, state) end

--- @param entity Entity 
--- @param p1 boolean 
--- @param relationshipHash Hash 
--- @return void (Type not found)
function SetEntityOnlyDamagedByRelationshipGroup(entity, p1, relationshipHash) end

--- Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetEntityVelocity(entity, x, y, z) end

--- Toggle the visibility of a given entity.
--- @param entity Entity The entity to change the visibility of
--- @param toggle boolean Whether or not the entity will be visible
--- @param unk boolean Always 0 in scripts
--- @return void (Type not found)
function SetEntityVisible(entity, toggle, unk) end

--- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
--- @param ped Ped 
--- @return void (Type not found)
function SetPedAsNoLongerNeeded(ped) end

--- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetVehicleAsNoLongerNeeded(vehicle) end

--- p1 sync task id?  
--- @param entity Entity 
--- @param p1 number 
--- @param p2 boolean 
--- @return boolean
function StopSynchronizedEntityAnim(entity, p1, p2) end

--- RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
--- @param entity Entity 
--- @param animation string 
--- @param animGroup string 
--- @param p3 number 
--- @return 
function StopEntityAnim(entity, animation, animGroup, p3) end

--- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
--- @param object Object 
--- @return void (Type not found)
function SetObjectAsNoLongerNeeded(object) end

--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4  
--- @param p5 number 
--- @return boolean
function StopSynchronizedMapEntityAnim(p0, p1, p2, p3, p4, p5) end

--- @param entityModelHash Hash 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p4 boolean 
--- @return boolean
function WouldEntityBeOccluded(entityModelHash, x, y, z, p4) end
