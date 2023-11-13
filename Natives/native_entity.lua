
--- @name _ATTACH_ENTITY_BONE_TO_ENTITY_BONE_PHYSICALLY
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param entityBone number 
--- @param entityBone2 number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return void (Type not found)
function AttachEntityBoneToEntityBonePhysically(entity1, entity2, entityBone, entityBone2, p4, p5) end

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
--- @name APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS
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

--- Attach an entity to the specified entity.
--- @name ATTACH_ENTITY_TO_ENTITY
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

--- @name _ATTACH_ENTITY_BONE_TO_ENTITY_BONE
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param entityBone number 
--- @param entityBone2 number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return void (Type not found)
function AttachEntityBoneToEntityBone(entity1, entity2, entityBone, entityBone2, p4, p5) end

--- breakForce is the amount of force required to break the bond.
--- p14 - is always 1 in scripts
--- p15 - is 1 or 0 in scripts - unknown what it does
--- p16 - controls collision between the two entities (FALSE disables collision).
--- p17 - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone)
--- p18 - is always 2 in scripts.
--- @name ATTACH_ENTITY_TO_ENTITY_PHYSICALLY
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

--- This native **could affect** the arguments of the `CEventNetworkEntityDamage` game event, by clearing the damaging entity before the event is fired.
--- @name CLEAR_ENTITY_LAST_DAMAGE_ENTITY
--- @param entity Entity The entity to clear the last damaging entity from.
--- @return void (Type not found)
function ClearEntityLastDamageEntity(entity) end

--- p5 = sets as true in scripts  
--- Same as the comment for CREATE_MODEL_SWAP unless for some reason p5 affects it this only works with objects as well.  
--- Network players do not see changes done with this.  
--- @name CREATE_MODEL_HIDE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param model Hash 
--- @param p5 boolean 
--- @return void (Type not found)
function CreateModelHide(x, y, z, radius, model, p5) end

--- @name DETACH_ENTITY
--- @param entity Entity 
--- @param dynamic boolean Set to `true` to keep velocity after detaching
--- @param collision boolean 
--- @return void (Type not found)
function DetachEntity(entity, dynamic, collision) end

--- @name CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param model Hash 
--- @param p5 boolean 
--- @return void (Type not found)
function CreateModelHideExcludingScriptObjects(x, y, z, radius, model, p5) end

--- Only works with objects!  
--- Network players do not see changes done with this.  
--- @name CREATE_MODEL_SWAP
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param originalModel Hash 
--- @param newModel Hash 
--- @param p6 boolean 
--- @return void (Type not found)
function CreateModelSwap(x, y, z, radius, originalModel, newModel, p6) end

--- NativeDB Introduced: v2699
--- @name _DOES_ENTITY_HAVE_ANIM_DIRECTOR
--- @param entity Entity 
--- @return boolean
function DoesEntityHaveAnimDirector(entity) end

--- @name CREATE_FORCED_OBJECT
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3  
--- @param modelHash Hash 
--- @param p5 boolean 
--- @return void (Type not found)
function CreateForcedObject(x, y, z, p3, modelHash, p5) end

--- @name DOES_ENTITY_HAVE_PHYSICS
--- @param entity Entity 
--- @return boolean
function DoesEntityHavePhysics(entity) end

--- NativeDB Introduced: v2699
--- @name _DOES_ENTITY_HAVE_SKELETON_DATA
--- @param entity Entity 
--- @return boolean
function DoesEntityHaveSkeletonData(entity) end

--- Deletes the specified entity, and invalidates the passed handle (i.e. in/out argument).
--- @name DELETE_ENTITY
--- @param entity Entity The entity to delete.
--- @return void (Type not found)
function DeleteEntity(entity) end

--- @name DOES_ENTITY_HAVE_DRAWABLE
--- @param entity Entity 
--- @return boolean
function DoesEntityHaveDrawable(entity) end

--- Checks whether an entity exists in the game world.
--- @name DOES_ENTITY_EXIST
--- @param entity Entity The entity to check if it exists.
--- @return boolean
function DoesEntityExist(entity) end

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
--- @name FIND_ANIM_EVENT_PHASE
--- @param animDictionary string 
--- @param animName string 
--- @param p2 string 
--- @param p3  
--- @param p4  
--- @return boolean
function FindAnimEventPhase(animDictionary, animName, p2, p3, p4) end

--- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using SET_ENTITY_COORDS.
--- @name FREEZE_ENTITY_POSITION
--- @param entity Entity The entity to freeze/unfreeze.
--- @param toggle boolean Freeze or unfreeze entity.
--- @return void (Type not found)
function FreezeEntityPosition(entity, toggle) end

--- @name DOES_ENTITY_BELONG_TO_THIS_SCRIPT
--- @param entity Entity 
--- @param p2 boolean 
--- @return boolean
function DoesEntityBelongToThisScript(entity, p2) end

--- Based on carmod_shop script decompile this takes a vehicle parameter. It is called when repair is done on initial enter.  
--- @name FORCE_ENTITY_AI_AND_ANIMATION_UPDATE
--- @param entity Entity 
--- @return void (Type not found)
function ForceEntityAiAndAnimationUpdate(entity) end

--- ENABLE_*
--- @name _ENABLE_ENTITY_UNK
--- @param entity Entity 
--- @return void (Type not found)
function EnableEntityUnk(entity) end

--- @name GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY
--- @param entity Entity 
--- @return Vector3
function GetCollisionNormalOfLastHitForEntity(entity) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name GET_ANIM_DURATION
--- @param animDict string 
--- @param animName string 
--- @return number
function GetAnimDuration(animDict, animName) end

--- Returns a float value representing animation's total playtime in milliseconds.  
--- Example:  
--- GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b")   
--- return 20800.000000  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name GET_ENTITY_ANIM_TOTAL_TIME
--- @param entity Entity 
--- @param animDict string 
--- @param animName string 
--- @return number
function GetEntityAnimTotalTime(entity, animDict, animName) end

--- Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.  
--- Example:  
--- 0.000000 - mark the starting of animation.  
--- 0.500000 - mark the midpoint of the animation.  
--- 1.000000 - mark the end of animation.  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name GET_ENTITY_ANIM_CURRENT_TIME
--- @param entity Entity 
--- @param animDict string 
--- @param animName string 
--- @return number
function GetEntityAnimCurrentTime(entity, animDict, animName) end

--- @name GET_ENTITY_ATTACHED_TO
--- @param entity Entity 
--- @return Entity
function GetEntityAttachedTo(entity) end

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
--- @name GET_ENTITY_BONE_INDEX_BY_NAME
--- @param entity Entity 
--- @param boneName string 
--- @return number
function GetEntityBoneIndexByName(entity, boneName) end

--- @name _GET_ENTITY_BONE_COUNT
--- @param entity Entity 
--- @return number
function GetEntityBoneCount(entity) end

--- Gets the world rotation of the specified bone of the specified entity.
--- This native is used in casinoroulette.c but I don't know yet what is the difference with _GET_ENTITY_BONE_ROTATION
--- @name _GET_ENTITY_BONE_POSITION_2
--- @param entity Entity 
--- @param boneIndex number 
--- @return Vector3
function GetEntityBonePosition2(entity, boneIndex) end

--- Gets the local rotation of the specified bone of the specified entity.
--- NativeDB Introduced: v1734
--- @name _GET_ENTITY_BONE_ROTATION_LOCAL
--- @param entity Entity 
--- @param boneIndex number 
--- @return Vector3
function GetEntityBoneRotationLocal(entity, boneIndex) end

--- Gets the world rotation of the specified bone of the specified entity.
--- @name _GET_ENTITY_BONE_ROTATION
--- @param entity Entity 
--- @param boneIndex number 
--- @return Vector3
function GetEntityBoneRotation(entity, boneIndex) end

--- @name GET_ENTITY_ALPHA
--- @param entity Entity 
--- @return number
function GetEntityAlpha(entity) end

--- @name GET_ENTITY_COLLISION_DISABLED
--- @param entity Entity 
--- @return boolean
function GetEntityCollisionDisabled(entity) end

--- Gets the current coordinates (world position) for a specified entity.
--- @name GET_ENTITY_COORDS
--- @param entity Entity The entity to get the coordinates from.
--- @param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
--- @return Vector3
function GetEntityCoords(entity, alive) end

--- Gets the Y-component of the entity's forward vector.  
--- @name GET_ENTITY_FORWARD_Y
--- @param entity Entity 
--- @return number
function GetEntityForwardY(entity) end

--- Gets the entity's forward vector.
--- @name GET_ENTITY_FORWARD_VECTOR
--- @param entity Entity The entity to get the forward vector for.
--- @return Vector3
function GetEntityForwardVector(entity) end

--- Gets the X-component of the entity's forward vector.  
--- @name GET_ENTITY_FORWARD_X
--- @param entity Entity 
--- @return number
function GetEntityForwardX(entity) end

--- Returns the heading of the entity in degrees. Also know as the "Yaw" of an entity.
--- @name GET_ENTITY_HEADING
--- @param entity Entity The entity to get the heading from.
--- @return number
function GetEntityHeading(entity) end

--- Returns an integer value of entity's current health.
--- Example of range for ped:
--- - Player [0 to 200]
--- - Ped [100 to 200]
--- - Vehicle [0 to 1000]
--- - Object [0 to 1000]
--- Health is actually a float value but this native casts it to int.
--- In order to get the actual value, do:
--- float health = *(float *)(entityAddress + 0x280);
--- @name GET_ENTITY_HEALTH
--- @param entity Entity The entity to get the health from.
--- @return number
function GetEntityHealth(entity) end

--- @name GET_ENTITY_CAN_BE_DAMAGED
--- @param entity Entity 
--- @return boolean
function GetEntityCanBeDamaged(entity) end

--- @name GET_ENTITY_HEIGHT
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
--- @name GET_ENTITY_HEIGHT_ABOVE_GROUND
--- @param entity Entity 
--- @return number
function GetEntityHeightAboveGround(entity) end

--- @name GET_ENTITY_MATRIX
--- @param entity Entity 
--- @param forwardVector Vector3 
--- @param rightVector Vector3 
--- @param upVector Vector3 
--- @param position Vector3 
--- @return void (Type not found)
function GetEntityMatrix(entity, forwardVector, rightVector, upVector, position) end

--- Return an integer value of entity's maximum health.  
--- Example:  
--- - Player = 200  
--- @name GET_ENTITY_MAX_HEALTH
--- @param entity Entity 
--- @return number
function GetEntityMaxHealth(entity) end

--- Returns the model hash from an entity.
--- @name GET_ENTITY_MODEL
--- @param entity Entity The entity to get the model for.
--- @return Hash
function GetEntityModel(entity) end

--- @name GET_ENTITY_PITCH
--- @param entity Entity 
--- @return number
function GetEntityPitch(entity) end

--- Returns the LOD distance of an entity.  
--- @name GET_ENTITY_LOD_DIST
--- @param entity Entity 
--- @return number
function GetEntityLodDist(entity) end

--- Gets the heading of the entity physics in degrees, which tends to be more accurate than just "GET_ENTITY_HEADING". This can be clearly seen while, for example, ragdolling a ped/player.  
--- NOTE: The name and description of this native are based on independent research. If you find this native to be more suitable under a different name and/or described differently, please feel free to do so.  
--- @name _GET_ENTITY_PHYSICS_HEADING
--- @param entity Entity 
--- @return number
function GetEntityPhysicsHeading(entity) end

--- w is the correct parameter name!  
--- @name GET_ENTITY_QUATERNION
--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param w number 
--- @return void (Type not found)
function GetEntityQuaternion(entity, x, y, z, w) end

--- NativeDB Introduced: v1604
--- @name _GET_ENTITY_PROOFS
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

--- GET_ENTITY_*
--- Seems to return the handle of the entity's portable pickup.
--- NativeDB Introduced: v1180
--- @name _GET_ENTITY_PICKUP
--- @param entity Entity 
--- @param modelHash Hash 
--- @return Entity
function GetEntityPickup(entity, modelHash) end

--- A population type, from the following enum: https://alloc8or.re/gta5/doc/enums/ePopulationType.txt
--- @name GET_ENTITY_POPULATION_TYPE
--- @param entity Entity The entity to obtain the population type from.
--- @return number
function GetEntityPopulationType(entity) end

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
--- @name GET_ENTITY_ROTATION
--- @param entity Entity The entity to get the rotation for.
--- @param rotationOrder number The order yaw, pitch and roll is applied. Usually 2.
--- @return Vector3
function GetEntityRotation(entity, rotationOrder) end

--- @name GET_ENTITY_ROTATION_VELOCITY
--- @param entity Entity 
--- @return Vector3
function GetEntityRotationVelocity(entity) end

--- All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.  
--- @name GET_ENTITY_SCRIPT
--- @param entity Entity 
--- @param script ScrHandle 
--- @return string
function GetEntityScript(entity, script) end

--- Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).  
--- @name GET_ENTITY_SPEED_VECTOR
--- @param entity Entity 
--- @param relative boolean 
--- @return Vector3
function GetEntitySpeedVector(entity, relative) end

--- Get the speed of a entity.
--- @name GET_ENTITY_SPEED
--- @param entity Entity Entity id you want to test for speed.
--- @return number
function GetEntitySpeed(entity) end

--- Get how much of the entity is submerged.  1.0f is whole entity.  
--- @name GET_ENTITY_SUBMERGED_LEVEL
--- @param entity Entity 
--- @return number
function GetEntitySubmergedLevel(entity) end

--- Displays the current ROLL axis of the entity [-180.0000/180.0000+]  
--- (Sideways Roll) such as a vehicle tipped on its side  
--- @name GET_ENTITY_ROLL
--- @param entity Entity 
--- @return number
function GetEntityRoll(entity) end

--- @name GET_ENTITY_UPRIGHT_VALUE
--- @param entity Entity 
--- @return number
function GetEntityUprightValue(entity) end

--- Returns:
--- 0 = no entity
--- 1 = ped
--- 2 = vehicle
--- 3 = object
--- @name GET_ENTITY_TYPE
--- @param entity Entity 
--- @return number
function GetEntityType(entity) end

--- @name GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM
--- @param entity Entity 
--- @param team number 
--- @return Player
function GetNearestPlayerToEntityOnTeam(entity, team) end

--- @name GET_LAST_MATERIAL_HIT_BY_ENTITY
--- @param entity Entity 
--- @return Hash
function GetLastMaterialHitByEntity(entity) end

--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- @name GET_OBJECT_INDEX_FROM_ENTITY_INDEX
--- @param entity Entity 
--- @return Object
function GetObjectIndexFromEntityIndex(entity) end

--- Offset values are relative to the entity.  
--- x = left/right  
--- y = forward/backward  
--- z = up/down  
--- @name GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS
--- @param entity Entity 
--- @param offsetX number 
--- @param offsetY number 
--- @param offsetZ number 
--- @return Vector3
function GetOffsetFromEntityInWorldCoords(entity, offsetX, offsetY, offsetZ) end

--- Converts world coords (posX - Z) to coords relative to the entity  
--- Example:  
--- posX = 50  
--- posY = 1000  
--- posZ = 60  
--- Entity's coords are: x=30, y=1000, z=60.  
--- All three returned coords will then be in range of [-20,20] depending on rotation of the entity.  
--- @name GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS
--- @param entity Entity 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return Vector3
function GetOffsetFromEntityGivenWorldCoords(entity, posX, posY, posZ) end

--- @name GET_NEAREST_PLAYER_TO_ENTITY
--- @param entity Entity 
--- @return Player
function GetNearestPlayerToEntity(entity) end

--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- @name GET_VEHICLE_INDEX_FROM_ENTITY_INDEX
--- @param entity Entity 
--- @return Vehicle
function GetVehicleIndexFromEntityIndex(entity) end

--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- @name GET_PED_INDEX_FROM_ENTITY_INDEX
--- @param entity Entity 
--- @return Ped
function GetPedIndexFromEntityIndex(entity) end

--- if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("CreateObject")))
--- @name HAS_ANIM_EVENT_FIRED
--- @param entity Entity 
--- @param actionHash Hash 
--- @return boolean
function HasAnimEventFired(entity, actionHash) end

--- @name HAS_COLLISION_LOADED_AROUND_ENTITY
--- @param entity Entity 
--- @return boolean
function HasCollisionLoadedAroundEntity(entity) end

--- @name GET_ENTITY_VELOCITY
--- @param entity Entity 
--- @return Vector3
function GetEntityVelocity(entity) end

--- Returns the coordinates of an entity-bone.  
--- @name GET_WORLD_POSITION_OF_ENTITY_BONE
--- @param entity Entity 
--- @param boneIndex number 
--- @return Vector3
function GetWorldPositionOfEntityBone(entity, boneIndex) end

--- @name HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED
--- @param entity Entity 
--- @return boolean
function HasEntityBeenDamagedByAnyPed(entity) end

--- P3 is always 3 as far as i cant tell  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name HAS_ENTITY_ANIM_FINISHED
--- @param entity Entity 
--- @param animDict string 
--- @param animName string 
--- @param p3 number 
--- @return boolean
function HasEntityAnimFinished(entity, animDict, animName, p3) end

--- @name HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE
--- @param entity Entity 
--- @return boolean
function HasEntityBeenDamagedByAnyVehicle(entity) end

--- @name HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT
--- @param entity Entity 
--- @return boolean
function HasEntityBeenDamagedByAnyObject(entity) end

--- Entity 1 = Victim  
--- Entity 2 = Attacker  
--- p2 seems to always be 1  
--- @name HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param p2 boolean 
--- @return boolean
function HasEntityBeenDamagedByEntity(entity1, entity2, p2) end

--- Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing.  
--- This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops  
--- @name HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @return boolean
function HasEntityClearLosToEntityInFront(entity1, entity2) end

--- Checks if entity1 has a clear line of sight to entity2. So a simple raycast which if it collides with any of the given colliderTypes returns false.
--- The direction of the check matters with for example bushes, so checking from inside to outside a bush with traceType 256 returns true, but the other way around returns false.
--- @name HAS_ENTITY_CLEAR_LOS_TO_ENTITY
--- @param entity1 Entity Entity to start from
--- @param entity2 Entity Entity to check to
--- @param flags number A bit mask with bits 1, 2, 4, etc, relating to collider types (see: [START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE](#\_0x377906D8A31E5586)). 17 is most common in GTA scripts.
--- @return boolean
function HasEntityClearLosToEntity(entity1, entity2, flags) end

--- NativeDB Introduced: v1868
--- @name _HAS_ENTITY_CLEAR_LOS_TO_ENTITY_2
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param traceType number 
--- @return 
function HasEntityClearLosToEntity2(entity1, entity2, traceType) end

--- Called on tick.  
--- Tested with vehicles, returns true whenever the vehicle is touching any entity.  
--- Note: for vehicles, the wheels can touch the ground and it will still return false, but if the body of the vehicle touches the ground, it will return true.  
--- @name HAS_ENTITY_COLLIDED_WITH_ANYTHING
--- @param entity Entity 
--- @return boolean
function HasEntityCollidedWithAnything(entity) end

--- @name IS_ENTITY_A_PED
--- @param entity Entity The entity to check if it's a Ped.
--- @return boolean
function IsEntityAPed(entity) end

--- @name IS_AN_ENTITY
--- @param handle number 
--- @return boolean
function IsAnEntity(handle) end

--- @name IS_ENTITY_A_MISSION_ENTITY
--- @param entity Entity 
--- @return boolean
function IsEntityAMissionEntity(entity) end

--- Checks if entity is within x/y/zSize distance of x/y/z.   
--- Last three are unknown ints, almost always p7 = 0, p8 = 1, p9 = 0  
--- @name IS_ENTITY_AT_COORD
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

--- @name IS_ENTITY_A_VEHICLE
--- @param entity Entity 
--- @return boolean
function IsEntityAVehicle(entity) end

--- @name IS_ENTITY_ATTACHED
--- @param entity Entity The entity to check if it is attached to another entity.
--- @return boolean
function IsEntityAttached(entity) end

--- @name IS_ENTITY_AN_OBJECT
--- @param entity Entity 
--- @return boolean
function IsEntityAnObject(entity) end

--- @name IS_ENTITY_ATTACHED_TO_ANY_PED
--- @param entity Entity 
--- @return boolean
function IsEntityAttachedToAnyPed(entity) end

--- Checks if entity1 is within the box defined by x/y/zSize of entity2.  
--- Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0  
--- @name IS_ENTITY_AT_ENTITY
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

--- @name IS_ENTITY_IN_AIR
--- @param entity Entity 
--- @return boolean
function IsEntityInAir(entity) end

--- @name IS_ENTITY_ATTACHED_TO_ENTITY
--- @param from Entity 
--- @param to Entity 
--- @return boolean
function IsEntityAttachedToEntity(from, to) end

--- NativeDB Added Parameter 2: BOOL p1
--- @name IS_ENTITY_DEAD
--- @param entity Entity 
--- @return boolean
function IsEntityDead(entity) end

--- @name IS_ENTITY_ATTACHED_TO_ANY_VEHICLE
--- @param entity Entity 
--- @return boolean
function IsEntityAttachedToAnyVehicle(entity) end

--- @name IS_ENTITY_ATTACHED_TO_ANY_OBJECT
--- @param entity Entity 
--- @return boolean
function IsEntityAttachedToAnyObject(entity) end

--- @name IS_ENTITY_IN_AREA
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

--- p10 is some entity flag check, also used in [`IS_ENTITY_AT_ENTITY`](#\_0x751B70C3D034E187), [`IS_ENTITY_IN_AREA`](#\_0x54736AA40E271165) and [`IS_ENTITY_AT_COORD`](#\_0x20B60995556D004F).
--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- @name IS_ENTITY_IN_ANGLED_AREA
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

--- @name IS_ENTITY_IN_ZONE
--- @param entity Entity 
--- @param zone string 
--- @return boolean
function IsEntityInZone(entity, zone) end

--- Returns true if the entity is in between the minimum and maximum values for the 2d screen coords.   
--- This means that it will return true even if the entity is behind a wall for example, as long as you're looking at their location.   
--- Chipping  
--- @name IS_ENTITY_ON_SCREEN
--- @param entity Entity 
--- @return boolean
function IsEntityOnScreen(entity) end

--- A static ped will not react to natives like "APPLY_FORCE_TO_ENTITY" or "SET_ENTITY_VELOCITY" and oftentimes will not react to task-natives like "AI::TASK_COMBAT_PED". The only way I know of to make one of these peds react is to ragdoll them (or sometimes to use CLEAR_PED_TASKS_IMMEDIATELY(). Static peds include almost all far-away peds, beach-combers, peds in certain scenarios, peds crossing a crosswalk, peds walking to get back into their cars, and others. If anyone knows how to make a ped non-static without ragdolling them, please edit this with the solution.  
--- ^ Attach a phCollider to the ped.  
--- @name IS_ENTITY_STATIC
--- @param entity Entity 
--- @return boolean
function IsEntityStatic(entity) end

--- See also [`IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM`](#\_0x6EC47A344923E1ED)
--- Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)  
--- p4 is always 3 in the scripts.  
--- taskFlag:  
--- 2 - Check synchronized scene  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name IS_ENTITY_PLAYING_ANIM
--- @param entity Entity 
--- @param animDict string 
--- @param animName string 
--- @param taskFlag number 
--- @return boolean
function IsEntityPlayingAnim(entity, animDict, animName, taskFlag) end

--- @name IS_ENTITY_IN_WATER
--- @param entity Entity 
--- @return boolean
function IsEntityInWater(entity) end

--- @name IS_ENTITY_OCCLUDED
--- @param entity Entity 
--- @return boolean
function IsEntityOccluded(entity) end

--- @name IS_ENTITY_UPSIDEDOWN
--- @param entity Entity 
--- @return boolean
function IsEntityUpsidedown(entity) end

--- @name IS_ENTITY_TOUCHING_MODEL
--- @param entity Entity 
--- @param modelHash Hash 
--- @return boolean
function IsEntityTouchingModel(entity, modelHash) end

--- @name IS_ENTITY_VISIBLE_TO_SCRIPT
--- @param entity Entity 
--- @return boolean
function IsEntityVisibleToScript(entity) end

--- @name IS_ENTITY_TOUCHING_ENTITY
--- @param entity Entity 
--- @param targetEntity Entity 
--- @return boolean
function IsEntityTouchingEntity(entity, targetEntity) end

--- @name IS_ENTITY_WAITING_FOR_WORLD_COLLISION
--- @param entity Entity 
--- @return boolean
function IsEntityWaitingForWorldCollision(entity) end

--- @name IS_ENTITY_UPRIGHT
--- @param entity Entity 
--- @param angle number 
--- @return boolean
function IsEntityUpright(entity, angle) end

--- @name IS_ENTITY_VISIBLE
--- @param entity Entity 
--- @return boolean
function IsEntityVisible(entity) end

--- p4 and p7 are usually 1000.0f.  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name PLAY_SYNCHRONIZED_ENTITY_ANIM
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

--- delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.  
--- The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name PLAY_ENTITY_ANIM
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

--- @name REMOVE_FORCED_OBJECT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function RemoveForcedObject(p0, p1, p2, p3, p4) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM
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

--- Called to update entity attachments.
--- @name PROCESS_ENTITY_ATTACHMENTS
--- @param entity Entity 
--- @return void (Type not found)
function ProcessEntityAttachments(entity) end

--- @name REMOVE_MODEL_SWAP
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param originalModel Hash 
--- @param newModel Hash 
--- @param p6 boolean 
--- @return void (Type not found)
function RemoveModelSwap(x, y, z, radius, originalModel, newModel, p6) end

--- p5 requires more research. See also [`CREATE_MODEL_HIDE`](#\_0x8A97BCA30A0CE478) and [`CREATE_MODEL_SWAP`](#\_0x92C47782FDA8B2A3).
--- Network players do not see changes done with this.
--- @name REMOVE_MODEL_HIDE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number The radius specified in gta units
--- @param model Hash The model that you want to make visible
--- @param p5 boolean 
--- @return void (Type not found)
function RemoveModelHide(x, y, z, radius, model, p5) end

--- @name SET_CAN_CLIMB_ON_ENTITY
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCanClimbOnEntity(entity, toggle) end

--- @name RESET_ENTITY_ALPHA
--- @param entity Entity 
--- @return void (Type not found)
function ResetEntityAlpha(entity) end

--- @name SET_CAN_AUTO_VAULT_ON_ENTITY
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCanAutoVaultOnEntity(entity, toggle) end

--- This native sets the entity's alpha level.
--- @name SET_ENTITY_ALPHA
--- @param entity Entity The entity to change the alpha for.
--- @param alphaLevel number The alpha level ranges from 0 to 255, but changes occur every 20% (every 51).
--- @param skin boolean Whether or not to change the alpha of the entity's skin.
--- @return void (Type not found)
function SetEntityAlpha(entity, alphaLevel, skin) end

--- @name SET_ENTITY_ANIM_SPEED
--- @param entity Entity 
--- @param animDictionary string 
--- @param animName string 
--- @param speedMultiplier number 
--- @return void (Type not found)
function SetEntityAnimSpeed(entity, animDictionary, animName, speedMultiplier) end

--- NativeDB Introduced: v2372
--- @name _SET_ENTITY_ANGULAR_VELOCITY
--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetEntityAngularVelocity(entity, x, y, z) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name SET_ENTITY_ANIM_CURRENT_TIME
--- @param entity Entity 
--- @param animDictionary string 
--- @param animName string 
--- @param time number 
--- @return void (Type not found)
function SetEntityAnimCurrentTime(entity, animDictionary, animName, time) end

--- Marks the specified entity (ped, vehicle or object) as no longer needed.  
--- Entities marked as no longer needed, will be deleted as the engine sees fit.  
--- @name SET_ENTITY_AS_NO_LONGER_NEEDED
--- @param entity Entity 
--- @return void (Type not found)
function SetEntityAsNoLongerNeeded(entity) end

--- Assigns an existing entity to be owned by the current script. If the entity was not owned by a script yet, this also means the entity will remain persistent until released.
--- Note that this is not needed right after creating an entity as a script-created entity will automatically be assigned.
--- @name SET_ENTITY_AS_MISSION_ENTITY
--- @param entity Entity An entity handle.
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetEntityAsMissionEntity(entity, p1, p2) end

--- @name SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP
--- @param entity Entity 
--- @param bCanBeDamaged boolean 
--- @param relGroup number 
--- @return void (Type not found)
function SetEntityCanBeDamagedByRelationshipGroup(entity, bCanBeDamaged, relGroup) end

--- @name SET_ENTITY_CAN_BE_DAMAGED
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityCanBeDamaged(entity, toggle) end

--- @name SET_ENTITY_ALWAYS_PRERENDER
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityAlwaysPrerender(entity, toggle) end

--- Sets whether the entity can be targeted without being in line-of-sight.  
--- @name SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityCanBeTargetedWithoutLos(entity, toggle) end

--- True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.
--- @name _SET_ENTITY_CLEANUP_BY_ENGINE
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityCleanupByEngine(entity, toggle) end

--- @name SET_ENTITY_COLLISION
--- @param entity Entity 
--- @param toggle boolean 
--- @param keepPhysics boolean 
--- @return void (Type not found)
function SetEntityCollision(entity, toggle, keepPhysics) end

--- @name SET_ENTITY_COMPLETELY_DISABLE_COLLISION
--- @param entity Entity 
--- @param toggle boolean 
--- @param keepPhysics boolean 
--- @return void (Type not found)
function SetEntityCompletelyDisableCollision(entity, toggle, keepPhysics) end

--- Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
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

--- SET_ENTITY_*
--- @name _SET_ENTITY_DECALS_DISABLED
--- @param entity Entity 
--- @param p1 boolean 
--- @return void (Type not found)
function SetEntityDecalsDisabled(entity, p1) end

--- @name SET_ENTITY_COORDS_WITHOUT_PLANTS_RESET
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

--- Sets the coordinates (world position) for a specified entity.
--- @name SET_ENTITY_COORDS_NO_OFFSET
--- @param entity Entity The entity to change coordinates for.
--- @param xPos number The X coordinate.
--- @param yPos number The Y coordinate.
--- @param zPos number The Z coordinate, origin level.
--- @param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
--- @param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
--- @param ragdollFlag boolean A special flag used for ragdolling peds.
--- @return void (Type not found)
function SetEntityCoordsNoOffset(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag) end

--- Set the heading of an entity in degrees also known as "Yaw".
--- @name SET_ENTITY_HEADING
--- @param entity Entity The entity to set the heading for.
--- @param heading number The heading in degrees.
--- @return void (Type not found)
function SetEntityHeading(entity, heading) end

--- @name SET_ENTITY_HAS_GRAVITY
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityHasGravity(entity, toggle) end

--- @name SET_ENTITY_IS_TARGET_PRIORITY
--- @param entity Entity 
--- @param p1 boolean 
--- @param p2 number 
--- @return void (Type not found)
function SetEntityIsTargetPriority(entity, p1, p2) end

--- health >= 0
--- male ped ~= 100 - 200
--- female ped ~= 0 - 100
--- NativeDB Added Parameter 3: int p2
--- @name SET_ENTITY_HEALTH
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
--- @name SET_ENTITY_INVINCIBLE
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityInvincible(entity, toggle) end

--- @name SET_ENTITY_LIGHTS
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityLights(entity, toggle) end

--- @name SET_ENTITY_DYNAMIC
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityDynamic(entity, toggle) end

--- Loads collision grid for an entity spawned outside of a player's loaded area. This allows peds to execute tasks rather than sit dormant because of a lack of a physics grid.
--- Certainly not the main usage of this native but when set to true for a Vehicle, it will prevent the vehicle to explode if it is spawned far away from the player.
--- NativeDB Added Parameter 3: Any p2
--- @name SET_ENTITY_LOAD_COLLISION_FLAG
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityLoadCollisionFlag(entity, toggle) end

--- @name SET_ENTITY_MAX_SPEED
--- @param entity Entity Entity to apply a maximum speed on
--- @param speed number Speed in meters per second
--- @return void (Type not found)
function SetEntityMaxSpeed(entity, speed) end

--- LOD distance can be 0 to 0xFFFF (higher values will result in 0xFFFF) as it is actually stored as a 16-bit value (aka uint16_t).  
--- @name SET_ENTITY_LOD_DIST
--- @param entity Entity 
--- @param value number 
--- @return void (Type not found)
function SetEntityLodDist(entity, value) end

--- Calling this function disables collision between two entities.
--- The importance of the order for entity1 and entity2 is unclear.
--- The third parameter, `thisFrame`, decides whether the collision is to be disabled until it is turned back on, or if it's just this frame.
--- @name SET_ENTITY_NO_COLLISION_ENTITY
--- @param entity1 Entity 
--- @param entity2 Entity 
--- @param thisFrameOnly boolean 
--- @return void (Type not found)
function SetEntityNoCollisionEntity(entity1, entity2, thisFrameOnly) end

--- Enable / disable each type of damage.  
--- --------------  
--- p7 is to to '1' in am_mp_property_ext/int: entity::set_entity_proofs(uParam0->f_19, true, true, true, true, true, true, 1, true);  
--- @name SET_ENTITY_PROOFS
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

--- @name SET_ENTITY_MOTION_BLUR
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityMotionBlur(entity, toggle) end

--- For instance: ENTITY::SET_ENTITY_MAX_HEALTH(PLAYER::PLAYER_PED_ID(), 200); // director_mode.c4: 67849  
--- @name SET_ENTITY_MAX_HEALTH
--- @param entity Entity 
--- @param value number 
--- @return void (Type not found)
function SetEntityMaxHealth(entity, value) end

--- @name SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP
--- @param entity Entity 
--- @param p1 boolean 
--- @param relationshipHash Hash 
--- @return void (Type not found)
function SetEntityOnlyDamagedByRelationshipGroup(entity, p1, relationshipHash) end

--- w is the correct parameter name!  
--- @name SET_ENTITY_QUATERNION
--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param w number 
--- @return void (Type not found)
function SetEntityQuaternion(entity, x, y, z, w) end

--- @name SET_ENTITY_ROTATION
--- @param entity Entity 
--- @param pitch number 
--- @param roll number 
--- @param yaw number 
--- @param rotationOrder number The order yaw pitch roll are applied, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9).
--- @param p5 boolean 
--- @return void (Type not found)
function SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5) end

--- @name SET_ENTITY_RECORDS_COLLISIONS
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityRecordsCollisions(entity, toggle) end

--- Example here: www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340
--- 0 = green
--- 1 = red
--- 2 = yellow
--- 3 = reset changes
--- changing lights may not change the behavior of vehicles
--- @name SET_ENTITY_TRAFFICLIGHT_OVERRIDE
--- @param entity Entity 
--- @param state number 
--- @return void (Type not found)
function SetEntityTrafficlightOverride(entity, state) end

--- Toggle the visibility of a given entity.
--- @name SET_ENTITY_VISIBLE
--- @param entity Entity The entity to change the visibility of
--- @param toggle boolean Whether or not the entity will be visible
--- @param unk boolean Always 0 in scripts
--- @return void (Type not found)
function SetEntityVisible(entity, toggle, unk) end

--- @name SET_ENTITY_ONLY_DAMAGED_BY_PLAYER
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityOnlyDamagedByPlayer(entity, toggle) end

--- @name SET_ENTITY_RENDER_SCORCHED
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityRenderScorched(entity, toggle) end

--- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
--- @name SET_VEHICLE_AS_NO_LONGER_NEEDED
--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetVehicleAsNoLongerNeeded(vehicle) end

--- Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
--- @name SET_ENTITY_VELOCITY
--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetEntityVelocity(entity, x, y, z) end

--- @name STOP_SYNCHRONIZED_MAP_ENTITY_ANIM
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4  
--- @param p5 number 
--- @return boolean
function StopSynchronizedMapEntityAnim(p0, p1, p2, p3, p4, p5) end

--- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
--- @name SET_OBJECT_AS_NO_LONGER_NEEDED
--- @param object Object 
--- @return void (Type not found)
function SetObjectAsNoLongerNeeded(object) end

--- p1 sync task id?  
--- @name STOP_SYNCHRONIZED_ENTITY_ANIM
--- @param entity Entity 
--- @param p1 number 
--- @param p2 boolean 
--- @return boolean
function StopSynchronizedEntityAnim(entity, p1, p2) end

--- RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
--- @name STOP_ENTITY_ANIM
--- @param entity Entity 
--- @param animation string 
--- @param animGroup string 
--- @param p3 number 
--- @return 
function StopEntityAnim(entity, animation, animGroup, p3) end

--- @name WOULD_ENTITY_BE_OCCLUDED
--- @param entityModelHash Hash 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p4 boolean 
--- @return boolean
function WouldEntityBeOccluded(entityModelHash, x, y, z, p4) end

--- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
--- @name SET_PED_AS_NO_LONGER_NEEDED
--- @param ped Ped 
--- @return void (Type not found)
function SetPedAsNoLongerNeeded(ped) end
