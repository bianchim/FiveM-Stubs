
--- Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.
--- collection - PedDecorationCollection filename hash
--- overlay - Item name hash
--- Example:
--- Entry inside "mpbeach_overlays.xml" -
--- <Item>
---   <uvPos x="0.500000" y="0.500000" />
---   <scale x="0.600000" y="0.500000" />
---   <rotation value="0.000000" />
---   <nameHash>FM_Hair_Fuzz</nameHash>
---   <txdHash>mp_hair_fuzz</txdHash>
---   <txtHash>mp_hair_fuzz</txtHash>
---   <zone>ZONE_HEAD</zone>
---   <type>TYPE_TATTOO</type>
---   <faction>FM</faction>
---   <garment>All</garment>
---   <gender>GENDER_DONTCARE</gender>
---   <award />
---   <awardLevel />
--- </Item>
--- Code:
--- PED::_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("mpbeach_overlays"), MISC::GET_HASH_KEY("fm_hair_fuzz"))
--- @name ADD_PED_DECORATION_FROM_HASHES
--- @param ped Ped 
--- @param collection Hash 
--- @param overlay Hash 
--- @return void (Type not found)
function AddPedDecorationFromHashes(ped, collection, overlay) end

--- Same as SET_PED_ARMOUR, but ADDS 'amount' to the armor the Ped already has.  
--- @name ADD_ARMOUR_TO_PED
--- @param ped Ped 
--- @param amount number 
--- @return void (Type not found)
function AddArmourToPed(ped, amount) end

--- @name ADD_PED_DECORATION_FROM_HASHES_IN_CORONA
--- @param ped Ped 
--- @param collection Hash 
--- @param overlay Hash 
--- @return void (Type not found)
function AddPedDecorationFromHashesInCorona(ped, collection, overlay) end

--- @name ADD_SCENARIO_BLOCKING_AREA
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param p6 boolean 
--- @param p7 boolean 
--- @param p8 boolean 
--- @param p9 boolean 
--- @return number
function AddScenarioBlockingArea(x1, y1, z1, x2, y2, z2, p6, p7, p8, p9) end

--- Can't select void. This function returns nothing. The hash of the created relationship group is output in the second parameter.  
--- @name ADD_RELATIONSHIP_GROUP
--- @param name string 
--- @param groupHash Hash 
--- @return 
function AddRelationshipGroup(name, groupHash) end

--- damages a ped with the given amount  
--- ----  
--- armorFirst means it will damage/lower the armor first before damaging the player.  
--- setting damageAmount to a negative amount will cause the player or the armor (depending on armorFirst) to be healed by damageAmount instead.  
--- NativeDB Added Parameter 4: Any p3
--- @name APPLY_DAMAGE_TO_PED
--- @param ped Ped 
--- @param damageAmount number 
--- @param armorFirst boolean 
--- @return void (Type not found)
function ApplyDamageToPed(ped, damageAmount, armorFirst) end

--- @name APPLY_PED_BLOOD_DAMAGE_BY_ZONE
--- @param ped Ped 
--- @param p1  
--- @param p2 number 
--- @param p3 number 
--- @param p4  
--- @return void (Type not found)
function ApplyPedBloodDamageByZone(ped, p1, p2, p3, p4) end

--- enum eDamageZone
--- {
--- 	DZ_Torso = 0,
--- 	DZ_Head,
--- 	DZ_LeftArm,
--- 	DZ_RightArm,
--- 	DZ_LeftLeg,
--- 	DZ_RightLeg,
--- };
--- Decal Names:
--- scar
--- blushing
--- cs_flush_anger
--- cs_flush_anger_face
--- bruise
--- bruise_large
--- herpes
--- ArmorBullet
--- basic_dirt_cloth
--- basic_dirt_skin
--- cs_trev1_dirt
--- APPLY_PED_DAMAGE_DECAL(ped, 1, 0.5f, 0.513f, 0f, 1f, unk, 0, 0, "blushing");
--- @name APPLY_PED_DAMAGE_DECAL
--- @param ped Ped 
--- @param damageZone number 
--- @param xOffset number 
--- @param yOffset number 
--- @param heading number 
--- @param scale number 
--- @param alpha number 
--- @param variation number 
--- @param fadeIn boolean 
--- @param decalName string 
--- @return void (Type not found)
function ApplyPedDamageDecal(ped, damageZone, xOffset, yOffset, heading, scale, alpha, variation, fadeIn, decalName) end

--- @name APPLY_PED_BLOOD_BY_ZONE
--- @param ped Ped 
--- @param p1  
--- @param p2 number 
--- @param p3 number 
--- @param p4  
--- @return void (Type not found)
function ApplyPedBloodByZone(ped, p1, p2, p3, p4) end

--- @name APPLY_PED_BLOOD_SPECIFIC
--- @param ped Ped 
--- @param p1  
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6  
--- @param p7 number 
--- @param p8  
--- @return void (Type not found)
function ApplyPedBloodSpecific(ped, p1, p2, p3, p4, p5, p6, p7, p8) end

--- Found one occurence in re_crashrescue.c4  
--- PED::APPLY_PED_BLOOD(l_4B, 3, 0.0, 0.0, 0.0, "wound_sheet");  
--- @name APPLY_PED_BLOOD
--- @param ped Ped 
--- @param boneIndex number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param woundType string 
--- @return void (Type not found)
function ApplyPedBlood(ped, boneIndex, xRot, yRot, zRot, woundType) end

--- @name CAN_CREATE_RANDOM_DRIVER
--- @return boolean
function CanCreateRandomDriver() end

--- @name ATTACH_SYNCHRONIZED_SCENE_TO_ENTITY
--- @param sceneID number 
--- @param entity Entity 
--- @param boneIndex number 
--- @return void (Type not found)
function AttachSynchronizedSceneToEntity(sceneID, entity, boneIndex) end

--- Damage Packs:  
--- "SCR_TrevorTreeBang"  
--- "HOSPITAL_0"  
--- "HOSPITAL_1"  
--- "HOSPITAL_2"  
--- "HOSPITAL_3"  
--- "HOSPITAL_4"  
--- "HOSPITAL_5"  
--- "HOSPITAL_6"  
--- "HOSPITAL_7"  
--- "HOSPITAL_8"  
--- "HOSPITAL_9"  
--- "SCR_Dumpster"  
--- "BigHitByVehicle"  
--- "SCR_Finale_Michael_Face"  
--- "SCR_Franklin_finb"  
--- "SCR_Finale_Michael"  
--- "SCR_Franklin_finb2"  
--- "Explosion_Med"  
--- "SCR_Torture"  
--- "SCR_TracySplash"  
--- "Skin_Melee_0"  
--- Additional damage packs:  
--- gist.github.com/alexguirre/f3f47f75ddcf617f416f3c8a55ae2227  
--- @name APPLY_PED_DAMAGE_PACK
--- @param ped Ped 
--- @param damagePack string 
--- @param damage number 
--- @param mult number 
--- @return void (Type not found)
function ApplyPedDamagePack(ped, damagePack, damage, mult) end

--- @name CAN_PED_IN_COMBAT_SEE_TARGET
--- @param ped Ped 
--- @param target Ped 
--- @return boolean
function CanPedInCombatSeeTarget(ped, target) end

--- @name _BLOCK_PED_DEAD_BODY_SHOCKING_EVENTS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function BlockPedDeadBodyShockingEvents(ped, toggle) end

--- @name CAN_CREATE_RANDOM_BIKE_RIDER
--- @return boolean
function CanCreateRandomBikeRider() end

--- @name CAN_CREATE_RANDOM_PED
--- @param unk boolean 
--- @return boolean
function CanCreateRandomPed(unk) end

--- @name CAN_CREATE_RANDOM_COPS
--- @return boolean
function CanCreateRandomCops() end

--- @name CAN_KNOCK_PED_OFF_VEHICLE
--- @param ped Ped 
--- @return boolean
function CanKnockPedOffVehicle(ped) end

--- @name CLEAR_ALL_PED_PROPS
--- @param ped Ped The ped handle.
--- @return void (Type not found)
function ClearAllPedProps(ped) end

--- @name CAN_PED_SEE_HATED_PED
--- @param ped1 Ped 
--- @param ped2 Ped 
--- @return boolean
function CanPedSeeHatedPed(ped1, ped2) end

--- @name CLEAR_FACIAL_IDLE_ANIM_OVERRIDE
--- @param ped Ped 
--- @return void (Type not found)
function ClearFacialIdleAnimOverride(ped) end

--- Prevents the ped from going limp.  
--- [Example: Can prevent peds from falling when standing on moving vehicles.]  
--- @name CAN_PED_RAGDOLL
--- @param ped Ped 
--- @return boolean
function CanPedRagdoll(ped) end

--- NativeDB Introduced: v1493
--- @name _CLEAR_FACIAL_CLIPSET_OVERRIDE
--- @param ped Ped 
--- @return void (Type not found)
function ClearFacialClipsetOverride(ped) end

--- @name CLEAR_PED_ALTERNATE_WALK_ANIM
--- @param ped Ped 
--- @param p1 number 
--- @return void (Type not found)
function ClearPedAlternateWalkAnim(ped, p1) end

--- Somehow related to changing ped's clothes.  
--- @name CLEAR_PED_BLOOD_DAMAGE_BY_ZONE
--- @param ped Ped 
--- @param p1 number 
--- @return void (Type not found)
function ClearPedBloodDamageByZone(ped, p1) end

--- @name CLEAR_PED_ALTERNATE_MOVEMENT_ANIM
--- @param ped Ped 
--- @param stance number 
--- @param p2 number 
--- @return void (Type not found)
function ClearPedAlternateMovementAnim(ped, stance, p2) end

--- @name CLEAR_ALL_PED_VEHICLE_FORCED_SEAT_USAGE
--- @param ped Ped 
--- @return void (Type not found)
function ClearAllPedVehicleForcedSeatUsage(ped) end

--- CLEAR_PED_*
--- @name _CLEAR_PED_COVER_CLIPSET_OVERRIDE
--- @param ped Ped 
--- @return void (Type not found)
function ClearPedCoverClipsetOverride(ped) end

--- Clears the blood on a ped.
--- @name CLEAR_PED_BLOOD_DAMAGE
--- @param ped Ped Ped id.
--- @return void (Type not found)
function ClearPedBloodDamage(ped) end

--- p1: from 0 to 5 in the b617d scripts.  
--- p2: "blushing" and "ALL" found in the b617d scripts.  
--- @name CLEAR_PED_DAMAGE_DECAL_BY_ZONE
--- @param ped Ped 
--- @param p1 number 
--- @param p2 string 
--- @return void (Type not found)
function ClearPedDamageDecalByZone(ped, p1, p2) end

--- @name CLEAR_PED_DRIVE_BY_CLIPSET_OVERRIDE
--- @param ped Ped 
--- @return void (Type not found)
function ClearPedDriveByClipsetOverride(ped) end

--- @name CLEAR_PED_DECORATIONS_LEAVE_SCARS
--- @param ped Ped 
--- @return void (Type not found)
function ClearPedDecorationsLeaveScars(ped) end

--- @name CLEAR_PED_DECORATIONS
--- @param ped Ped 
--- @return void (Type not found)
function ClearPedDecorations(ped) end

--- @name CLEAR_PED_NON_CREATION_AREA
--- @return void (Type not found)
function ClearPedNonCreationArea() end

--- @name CLEAR_PED_ENV_DIRT
--- @param ped Ped 
--- @return void (Type not found)
function ClearPedEnvDirt(ped) end

--- Removes the scubagear (for mp male: component id: 8, drawableId: 123, textureId: any) from peds. Does not play the 'remove scuba gear' animation, but instantly removes it.
--- @name CLEAR_PED_SCUBA_GEAR_VARIATION
--- @param ped Ped The ped to remove the scuba gear from.
--- @return void (Type not found)
function ClearPedScubaGearVariation(ped) end

--- @name CLEAR_PED_STORED_HAT_PROP
--- @param ped Ped 
--- @return void (Type not found)
function ClearPedStoredHatProp(ped) end

--- @name CLEAR_PED_PARACHUTE_PACK_VARIATION
--- @param ped Ped 
--- @return void (Type not found)
function ClearPedParachutePackVariation(ped) end

--- There seem to be 26 flags  
--- @name CLEAR_RAGDOLL_BLOCKING_FLAGS
--- @param ped Ped 
--- @param flags number 
--- @return void (Type not found)
function ClearRagdollBlockingFlags(ped, flags) end

--- @name CLEAR_PED_PROP
--- @param ped Ped The ped handle.
--- @param propId number The prop id you want to clear from the ped. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F).
--- @return void (Type not found)
function ClearPedProp(ped, propId) end

--- Creates a copy of the passed ped, optionally setting it as local and/or shallow-copying the head blend data.
--- @name CLONE_PED
--- @param ped Ped The input ped.
--- @param isNetwork boolean Whether or not the ped should be registered as a network object.
--- @param bScriptHostPed boolean Script host flag.
--- @param copyHeadBlendFlag boolean If true, head blend data is referenced, not copied.
--- @return Ped
function ClonePed(ped, isNetwork, bScriptHostPed, copyHeadBlendFlag) end

--- @name CLEAR_PED_LAST_DAMAGE_BONE
--- @param ped Ped 
--- @return void (Type not found)
function ClearPedLastDamageBone(ped) end

--- It clears the wetness of the selected Ped/Player. Clothes have to be wet to notice the difference.  
--- @name CLEAR_PED_WETNESS
--- @param ped Ped 
--- @return void (Type not found)
function ClearPedWetness(ped) end

--- Clears the relationship between two groups. This should be called twice (once for each group).  
--- Relationship types:  
--- 0 = Companion  
--- 1 = Respect  
--- 2 = Like  
--- 3 = Neutral  
--- 4 = Dislike  
--- 5 = Hate  
--- 255 = Pedestrians  
--- (Credits: Inco)  
--- Example:  
--- PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);  
--- PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);  
--- @name CLEAR_RELATIONSHIP_BETWEEN_GROUPS
--- @param relationship number 
--- @param group1 Hash 
--- @param group2 Hash 
--- @return void (Type not found)
function ClearRelationshipBetweenGroups(relationship, group1, group2) end

--- Copies ped's components and props to targetPed.
--- @name CLONE_PED_TO_TARGET
--- @param ped Ped 
--- @param targetPed Ped 
--- @return void (Type not found)
function ClonePedToTarget(ped, targetPed) end

--- Used one time in fmmc_launcher.c instead of CLONE_PED because ?
--- @name _CLONE_PED_EX
--- @param ped Ped 
--- @param heading number 
--- @param isNetwork boolean 
--- @param bScriptHostPed boolean 
--- @param p4  
--- @return Ped
function ClonePedEx(ped, heading, isNetwork, bScriptHostPed, p4) end

--- Creates a new NaturalMotion message.  
--- startImmediately: If set to true, the character will perform the message the moment it receives it by GIVE_PED_NM_MESSAGE. If false, the Ped will get the message but won't perform it yet. While it's a boolean value, if negative, the message will not be initialized.  
--- messageId: The ID of the NaturalMotion message.  
--- If a message already exists, this function does nothing. A message exists until the point it has been successfully dispatched by GIVE_PED_NM_MESSAGE.  
--- @name CREATE_NM_MESSAGE
--- @param startImmediately boolean 
--- @param messageId number 
--- @return void (Type not found)
function CreateNmMessage(startImmediately, messageId) end

--- @name _CLONE_PED_TO_TARGET_EX
--- @param ped Ped 
--- @param targetPed Ped 
--- @param p2  
--- @return void (Type not found)
function ClonePedToTargetEx(ped, targetPed, p2) end

--- Creates a new ped group.  
--- Groups can contain up to 8 peds.  
--- The parameter is unused.  
--- Returns a handle to the created group, or 0 if a group couldn't be created.  
--- @name CREATE_GROUP
--- @param unused number 
--- @return number
function CreateGroup(unused) end

--- Creates a ped (biped character, pedestrian, actor) with the specified model at the specified position and heading.
--- This ped will initially be owned by the creating script as a mission entity, and the model should be loaded already
--- (e.g. using REQUEST_MODEL).
--- @name CREATE_PED
--- @param pedType number Unused. Peds get set to CIVMALE/CIVFEMALE/etc. no matter the value specified.
--- @param modelHash Hash The model of ped to spawn.
--- @param x number Spawn coordinate X component.
--- @param y number Spawn coordinate Y component.
--- @param z number Spawn coordinate Z component.
--- @param heading number Heading to face towards, in degrees.
--- @param isNetwork boolean Whether to create a network object for the ped. If false, the ped exists only locally.
--- @param bScriptHostPed boolean Whether to register the ped as pinned to the script host in the R\* network model.
--- @return Ped
function CreatePed(pedType, modelHash, x, y, z, heading, isNetwork, bScriptHostPed) end

--- @name CREATE_PED_INSIDE_VEHICLE
--- @param vehicle Vehicle 
--- @param pedType number See [`CREATE_PED`](#\_0xD49F9B0955C367DE)
--- @param modelHash Hash 
--- @param seat number 
--- @param isNetwork boolean 
--- @param bScriptHostPed boolean 
--- @return Ped
function CreatePedInsideVehicle(vehicle, pedType, modelHash, seat, isNetwork, bScriptHostPed) end

--- @name CREATE_PARACHUTE_BAG_OBJECT
--- @param ped Ped 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return Object
function CreateParachuteBagObject(ped, p1, p2) end

--- vb.net
--- Dim ped_handle As Integer
---                     With Game.Player.Character
---                         Dim pos As Vector3 = .Position + .ForwardVector * 3
---                         ped_handle = Native.Function.Call(Of Integer)(Hash.CREATE_RANDOM_PED, pos.X, pos.Y, pos.Z)
---                     End With
--- Creates a Ped at the specified location, returns the Ped Handle.
--- Ped will not act until SET_PED_AS_NO_LONGER_NEEDED is called.
--- @name CREATE_RANDOM_PED
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return Ped
function CreateRandomPed(posX, posY, posZ) end

--- @name CREATE_RANDOM_PED_AS_DRIVER
--- @param vehicle Vehicle 
--- @param returnHandle boolean 
--- @return Ped
function CreateRandomPedAsDriver(vehicle, returnHandle) end

--- p6 always 2 (but it doesnt seem to matter...)  
--- roll and pitch 0  
--- yaw to Ped.rotation  
--- @name CREATE_SYNCHRONIZED_SCENE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param roll number 
--- @param pitch number 
--- @param yaw number 
--- @param p6 number 
--- @return number
function CreateSynchronizedScene(x, y, z, roll, pitch, yaw, p6) end

--- Deletes the specified ped, then sets the handle pointed to by the pointer to NULL.  
--- @name DELETE_PED
--- @param ped Ped 
--- @return void (Type not found)
function DeletePed(ped) end

--- @name _CREATE_SYNCHRONIZED_SCENE_2
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param object Hash 
--- @return number
function CreateSynchronizedScene2(x, y, z, radius, object) end

--- @name _DISPOSE_SYNCHRONIZED_SCENE
--- @param scene number 
--- @return void (Type not found)
function DisposeSynchronizedScene(scene) end

--- @name DISABLE_HEAD_BLEND_PALETTE_COLOR
--- @param ped Ped 
--- @return void (Type not found)
function DisableHeadBlendPaletteColor(ped) end

--- @name DOES_GROUP_EXIST
--- @param groupId number 
--- @return boolean
function DoesGroupExist(groupId) end

--- @name DETACH_SYNCHRONIZED_SCENE
--- @param sceneID number 
--- @return void (Type not found)
function DetachSynchronizedScene(sceneID) end

--- @name DROP_AMBIENT_PROP
--- @param ped Ped 
--- @return void (Type not found)
function DropAmbientProp(ped) end

--- @name DISABLE_PED_HEATSCALE_OVERRIDE
--- @param ped Ped 
--- @return void (Type not found)
function DisablePedHeatscaleOverride(ped) end

--- Applies lethal damage (FLT_MAX) to the `SKEL_Head` bone of the specified ped using the weapon passed, leading to the
--- ped's untimely demise.
--- The naming of the native is a legacy leftover (formerly EXPLODE_CHAR_HEAD in GTA3) as in the early 3D GTA games, lethal
--- damage to a ped head would 'explode' it.
--- @name EXPLODE_PED_HEAD
--- @param ped Ped The ped to lethally injure.
--- @param weaponHash Hash The weapon to attribute the damage to.
--- @return void (Type not found)
function ExplodePedHead(ped, weaponHash) end

--- @name _DOES_SCENARIO_BLOCKING_AREA_EXIST
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @return boolean
function DoesScenarioBlockingAreaExist(x1, y1, z1, x2, y2, z2) end

--- @name FINALIZE_HEAD_BLEND
--- @param ped Ped 
--- @return void (Type not found)
function FinalizeHeadBlend(ped) end

--- @name _DOES_RELATIONSHIP_GROUP_EXIST
--- @param groupHash Hash 
--- @return boolean
function DoesRelationshipGroupExist(groupHash) end

--- @name FORCE_PED_AI_AND_ANIMATION_UPDATE
--- @param ped Ped 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function ForcePedAiAndAnimationUpdate(ped, p1, p2) end

--- Some motionstate hashes are  
--- 0xec17e58 (standing idle), 0xbac0f10b (nothing?), 0x3f67c6af (aiming with pistol 2-h), 0x422d7a25 (stealth), 0xbd8817db, 0x916e828c  
--- and those for the strings  
--- "motionstate_idle", "motionstate_walk", "motionstate_run", "motionstate_actionmode_idle", and "motionstate_actionmode_walk".  
--- Regarding p2, p3 and p4: Most common is 0, 0, 0); followed by 0, 1, 0); and 1, 1, 0); in the scripts. p4 is very rarely something other than 0.  
---  [31/03/2017] ins1de :  
---         enum MotionState  
---         {  
---             StopRunning = -530524,  
---             StopWalking = -668482597,  
---             Idle = 247561816, // 1, 1, 0  
---             Idl2 = -1871534317,  
---             SkyDive =-1161760501, // 0, 1, 0  
---             Stealth = 1110276645,  
---             Sprint = -1115154469,  
---             Swim = -1855028596,  
---             Unknown1 = 1063765679,  
---             Unknown2 = -633298724,  
---         }  
--- @name FORCE_PED_MOTION_STATE
--- @param ped Ped 
--- @param motionStateHash Hash 
--- @param p2 boolean 
--- @param p3 number 
--- @param p4 boolean 
--- @return boolean
function ForcePedMotionState(ped, motionStateHash, p2, p3, p4) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name GET_ANIM_INITIAL_OFFSET_POSITION
--- @param animDict string 
--- @param animName string 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param p8 number 
--- @param p9 number 
--- @return Vector3
function GetAnimInitialOffsetPosition(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9) end

--- @name FORCE_PED_TO_OPEN_PARACHUTE
--- @param ped Ped 
--- @return void (Type not found)
function ForcePedToOpenParachute(ped) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name GET_ANIM_INITIAL_OFFSET_ROTATION
--- @param animDict string 
--- @param animName string 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param p8 number 
--- @param p9 number 
--- @return Vector3
function GetAnimInitialOffsetRotation(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9) end

--- Gets the closest ped in a radius.  
--- Ped Types:  
--- Any ped = -1  
--- Player = 1  
--- Male = 4   
--- Female = 5   
--- Cop = 6  
--- Human = 26  
--- SWAT = 27   
--- Animal = 28  
--- Army = 29  
--- ------------------  
--- P4 P5 P7 P8  
--- 1  0  x  x  = return nearest walking Ped  
--- 1  x  0  x  = return nearest walking Ped  
--- x  1  1  x  = return Ped you are using  
--- 0  0  x  x  = no effect  
--- 0  x  0  x  = no effect  
--- x = can be 1 or 0. Does not have any obvious changes.  
--- This function does not return ped who is:  
--- 1. Standing still  
--- 2. Driving  
--- 3. Fleeing  
--- 4. Attacking  
--- This function only work if the ped is:  
--- 1. walking normally.  
--- 2. waiting to cross a road.  
--- Note: PED::GET_PED_NEARBY_PEDS works for more peds.  
--- @name GET_CLOSEST_PED
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @param outPed Ped 
--- @param p7 boolean 
--- @param p8 boolean 
--- @param pedType number 
--- @return boolean
function GetClosestPed(x, y, z, radius, p4, p5, outPed, p7, p8, pedType) end

--- p0: Ped Handle  
--- p1: int i | 0 <= i <= 27  
--- p1 probably refers to the attributes configured in combatbehavior.meta. There are 13. Example:  
--- <BlindFireChance value="0.1"/>  
--- <WeaponShootRateModifier value="1.0"/>  
--- <TimeBetweenBurstsInCover value="1.25"/>  
--- <BurstDurationInCover value="2.0"/>  
--- <TimeBetweenPeeks value="10.0"/>  
--- <WeaponAccuracy value="0.18"/>  
--- <FightProficiency value="0.8"/>  
--- <StrafeWhenMovingChance value="1.0"/>  
--- <WalkWhenStrafingChance value="0.0"/>  
--- <AttackWindowDistanceForCover value="55.0"/>  
--- <TimeToInvalidateInjuredTarget value="9.0"/>  
--- <TriggerChargeTime_Near value="4.0"/>  
--- <TriggerChargeTime_Far value="10.0"/>  
--- -------------Confirmed by editing combatbehavior.meta:  
--- p1:  
--- 0=BlindFireChance  
--- 1=BurstDurationInCover  
--- 3=TimeBetweenBurstsInCover  
--- 4=TimeBetweenPeeks  
--- 5=StrafeWhenMovingChance  
--- 8=WalkWhenStrafingChance  
--- 11=AttackWindowDistanceForCover  
--- 12=TimeToInvalidateInjuredTarget  
--- 16=OptimalCoverDistance  
--- @name GET_COMBAT_FLOAT
--- @param ped Ped 
--- @param p1 number 
--- @return number
function GetCombatFloat(ped, p1) end

--- @name GET_DEAD_PED_PICKUP_COORDS
--- @param ped Ped 
--- @param p1 number 
--- @param p2 number 
--- @return Vector3
function GetDeadPedPickupCoords(ped, p1, p2) end

--- @name _FREEZE_PED_CAMERA_ROTATION
--- @param ped Ped 
--- @return void (Type not found)
function FreezePedCameraRotation(ped) end

--- p1 may be a BOOL representing whether or not the group even exists  
--- @name GET_GROUP_SIZE
--- @param groupID number 
--- @param unknown  
--- @param sizeInMembers number 
--- @return void (Type not found)
function GetGroupSize(groupID, unknown, sizeInMembers) end

--- Function just returns 0  
--- void __fastcall ped__get_mount(NativeContext *a1)  
--- {  
---   NativeContext *v1; // rbx@1  
---   v1 = a1;  
---   GetAddressOfPedFromScriptHandle(a1->Args->Arg1);  
---   v1->Returns->Item1= 0;  
--- }  
--- @name GET_MOUNT
--- @param ped Ped 
--- @return Ped
function GetMount(ped) end

--- @name GET_JACK_TARGET
--- @param ped Ped 
--- @return Ped
function GetJackTarget(ped) end

--- @name GET_MELEE_TARGET_FOR_PED
--- @param ped Ped 
--- @return Ped
function GetMeleeTargetForPed(ped) end

--- @name GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS
--- @param ped Ped The ped handle.
--- @param propId number The prop id you want to get the drawable variations of. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
--- @return number
function GetNumberOfPedPropDrawableVariations(ped, propId) end

--- @name _GET_NUM_MAKEUP_COLORS
--- @return number
function GetNumMakeupColors() end

--- Used for freemode (online) characters.  
--- @name _GET_NUM_HAIR_COLORS
--- @return number
function GetNumHairColors() end

--- @name GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS
--- @param ped Ped The ped handle.
--- @param componentId number The component id you want to get the drawable variatons of. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
--- @return number
function GetNumberOfPedDrawableVariations(ped, componentId) end

--- Need to check behavior when drawableId = -1
--- @name GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS
--- @param ped Ped The ped handle.
--- @param propId number The prop id you want to get the texture variations of. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
--- @param drawableId number The drawable id of the prop you want to get the texture variations of. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
--- @return number
function GetNumberOfPedPropTextureVariations(ped, propId, drawableId) end

--- @name GET_PED_ACCURACY
--- @param ped Ped 
--- @return number
function GetPedAccuracy(ped) end

--- @name GET_NUMBER_OF_PED_TEXTURE_VARIATIONS
--- @param ped Ped The ped handle.
--- @param componentId number The component id you want to get the texture variations of. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
--- @param drawableId number The drawable id of the component you want to get the texture variations of. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
--- @return number
function GetNumberOfPedTextureVariations(ped, componentId, drawableId) end

--- Returns the ped's alertness (0-3).  
--- Values :   
--- 0 : Neutral  
--- 1 : Heard something (gun shot, hit, etc)  
--- 2 : Knows (the origin of the event)  
--- 3 : Fully alerted (is facing the event?)  
--- If the Ped does not exist, returns -1.  
--- @name GET_PED_ALERTNESS
--- @param ped Ped 
--- @return number
function GetPedAlertness(ped) end

--- @name GET_PED_ARMOUR
--- @param ped Ped 
--- @return number
function GetPedArmour(ped) end

--- Gets the position of the specified bone of the specified ped.  
--- ped: The ped to get the position of a bone from.  
--- boneId: The ID of the bone to get the position from. This is NOT the index.  
--- offsetX: The X-component of the offset to add to the position relative to the bone's rotation.  
--- offsetY: The Y-component of the offset to add to the position relative to the bone's rotation.  
--- offsetZ: The Z-component of the offset to add to the position relative to the bone's rotation.  
--- @name GET_PED_BONE_COORDS
--- @param ped Ped 
--- @param boneId number 
--- @param offsetX number 
--- @param offsetY number 
--- @param offsetZ number 
--- @return Vector3
function GetPedBoneCoords(ped, boneId, offsetX, offsetY, offsetZ) end

--- enum ePedBoneId : uint16_t
--- {
---     SKEL_ROOT = 0x0,
---     SKEL_Pelvis = 0x2E28,
---     SKEL_L_Thigh = 0xE39F,
---     SKEL_L_Calf = 0xF9BB,
---     SKEL_L_Foot = 0x3779,
---     SKEL_L_Toe0 = 0x83C,
---     EO_L_Foot = 0x84C5,
---     EO_L_Toe = 0x68BD,
---     IK_L_Foot = 0xFEDD,
---     PH_L_Foot = 0xE175,
---     MH_L_Knee = 0xB3FE,
---     SKEL_R_Thigh = 0xCA72,
---     SKEL_R_Calf = 0x9000,
---     SKEL_R_Foot = 0xCC4D,
---     SKEL_R_Toe0 = 0x512D,
---     EO_R_Foot = 0x1096,
---     EO_R_Toe = 0x7163,
---     IK_R_Foot = 0x8AAE,
---     PH_R_Foot = 0x60E6,
---     MH_R_Knee = 0x3FCF,
---     RB_L_ThighRoll = 0x5C57,
---     RB_R_ThighRoll = 0x192A,
---     SKEL_Spine_Root = 0xE0FD,
---     SKEL_Spine0 = 0x5C01,
---     SKEL_Spine1 = 0x60F0,
---     SKEL_Spine2 = 0x60F1,
---     SKEL_Spine3 = 0x60F2,
---     SKEL_L_Clavicle = 0xFCD9,
---     SKEL_L_UpperArm = 0xB1C5,
---     SKEL_L_Forearm = 0xEEEB,
---     SKEL_L_Hand = 0x49D9,
---     SKEL_L_Finger00 = 0x67F2,
---     SKEL_L_Finger01 = 0xFF9,
---     SKEL_L_Finger02 = 0xFFA,
---     SKEL_L_Finger10 = 0x67F3,
---     SKEL_L_Finger11 = 0x1049,
---     SKEL_L_Finger12 = 0x104A,
---     SKEL_L_Finger20 = 0x67F4,
---     SKEL_L_Finger21 = 0x1059,
---     SKEL_L_Finger22 = 0x105A,
---     SKEL_L_Finger30 = 0x67F5,
---     SKEL_L_Finger31 = 0x1029,
---     SKEL_L_Finger32 = 0x102A,
---     SKEL_L_Finger40 = 0x67F6,
---     SKEL_L_Finger41 = 0x1039,
---     SKEL_L_Finger42 = 0x103A,
---     PH_L_Hand = 0xEB95,
---     IK_L_Hand = 0x8CBD,
---     RB_L_ForeArmRoll = 0xEE4F,
---     RB_L_ArmRoll = 0x1470,
---     MH_L_Elbow = 0x58B7,
---     SKEL_R_Clavicle = 0x29D2,
---     SKEL_R_UpperArm = 0x9D4D,
---     SKEL_R_Forearm = 0x6E5C,
---     SKEL_R_Hand = 0xDEAD,
---     SKEL_R_Finger00 = 0xE5F2,
---     SKEL_R_Finger01 = 0xFA10,
---     SKEL_R_Finger02 = 0xFA11,
---     SKEL_R_Finger10 = 0xE5F3,
---     SKEL_R_Finger11 = 0xFA60,
---     SKEL_R_Finger12 = 0xFA61,
---     SKEL_R_Finger20 = 0xE5F4,
---     SKEL_R_Finger21 = 0xFA70,
---     SKEL_R_Finger22 = 0xFA71,
---     SKEL_R_Finger30 = 0xE5F5,
---     SKEL_R_Finger31 = 0xFA40,
---     SKEL_R_Finger32 = 0xFA41,
---     SKEL_R_Finger40 = 0xE5F6,
---     SKEL_R_Finger41 = 0xFA50,
---     SKEL_R_Finger42 = 0xFA51,
---     PH_R_Hand = 0x6F06,
---     IK_R_Hand = 0x188E,
---     RB_R_ForeArmRoll = 0xAB22,
---     RB_R_ArmRoll = 0x90FF,
---     MH_R_Elbow = 0xBB0,
---     SKEL_Neck_1 = 0x9995,
---     SKEL_Head = 0x796E,
---     IK_Head = 0x322C,
---     FACIAL_facialRoot = 0xFE2C,
---     FB_L_Brow_Out_000 = 0xE3DB,
---     FB_L_Lid_Upper_000 = 0xB2B6,
---     FB_L_Eye_000 = 0x62AC,
---     FB_L_CheekBone_000 = 0x542E,
---     FB_L_Lip_Corner_000 = 0x74AC,
---     FB_R_Lid_Upper_000 = 0xAA10,
---     FB_R_Eye_000 = 0x6B52,
---     FB_R_CheekBone_000 = 0x4B88,
---     FB_R_Brow_Out_000 = 0x54C,
---     FB_R_Lip_Corner_000 = 0x2BA6,
---     FB_Brow_Centre_000 = 0x9149,
---     FB_UpperLipRoot_000 = 0x4ED2,
---     FB_UpperLip_000 = 0xF18F,
---     FB_L_Lip_Top_000 = 0x4F37,
---     FB_R_Lip_Top_000 = 0x4537,
---     FB_Jaw_000 = 0xB4A0,
---     FB_LowerLipRoot_000 = 0x4324,
---     FB_LowerLip_000 = 0x508F,
---     FB_L_Lip_Bot_000 = 0xB93B,
---     FB_R_Lip_Bot_000 = 0xC33B,
---     FB_Tongue_000 = 0xB987,
---     RB_Neck_1 = 0x8B93,
---     SPR_L_Breast = 0xFC8E,
---     SPR_R_Breast = 0x885F,
---     IK_Root = 0xDD1C,
---     SKEL_Neck_2 = 0x5FD4,
---     SKEL_Pelvis1 = 0xD003,
---     SKEL_PelvisRoot = 0x45FC,
---     SKEL_SADDLE = 0x9524,
---     MH_L_CalfBack = 0x1013,
---     MH_L_ThighBack = 0x600D,
---     SM_L_Skirt = 0xC419,
---     MH_R_CalfBack = 0xB013,
---     MH_R_ThighBack = 0x51A3,
---     SM_R_Skirt = 0x7712,
---     SM_M_BackSkirtRoll = 0xDBB,
---     SM_L_BackSkirtRoll = 0x40B2,
---     SM_R_BackSkirtRoll = 0xC141,
---     SM_M_FrontSkirtRoll = 0xCDBB,
---     SM_L_FrontSkirtRoll = 0x9B69,
---     SM_R_FrontSkirtRoll = 0x86F1,
---     SM_CockNBalls_ROOT = 0xC67D,
---     SM_CockNBalls = 0x9D34,
---     MH_L_Finger00 = 0x8C63,
---     MH_L_FingerBulge00 = 0x5FB8,
---     MH_L_Finger10 = 0x8C53,
---     MH_L_FingerTop00 = 0xA244,
---     MH_L_HandSide = 0xC78A,
---     MH_Watch = 0x2738,
---     MH_L_Sleeve = 0x933C,
---     MH_R_Finger00 = 0x2C63,
---     MH_R_FingerBulge00 = 0x69B8,
---     MH_R_Finger10 = 0x2C53,
---     MH_R_FingerTop00 = 0xEF4B,
---     MH_R_HandSide = 0x68FB,
---     MH_R_Sleeve = 0x92DC,
---     FACIAL_jaw = 0xB21,
---     FACIAL_underChin = 0x8A95,
---     FACIAL_L_underChin = 0x234E,
---     FACIAL_chin = 0xB578,
---     FACIAL_chinSkinBottom = 0x98BC,
---     FACIAL_L_chinSkinBottom = 0x3E8F,
---     FACIAL_R_chinSkinBottom = 0x9E8F,
---     FACIAL_tongueA = 0x4A7C,
---     FACIAL_tongueB = 0x4A7D,
---     FACIAL_tongueC = 0x4A7E,
---     FACIAL_tongueD = 0x4A7F,
---     FACIAL_tongueE = 0x4A80,
---     FACIAL_L_tongueE = 0x35F2,
---     FACIAL_R_tongueE = 0x2FF2,
---     FACIAL_L_tongueD = 0x35F1,
---     FACIAL_R_tongueD = 0x2FF1,
---     FACIAL_L_tongueC = 0x35F0,
---     FACIAL_R_tongueC = 0x2FF0,
---     FACIAL_L_tongueB = 0x35EF,
---     FACIAL_R_tongueB = 0x2FEF,
---     FACIAL_L_tongueA = 0x35EE,
---     FACIAL_R_tongueA = 0x2FEE,
---     FACIAL_chinSkinTop = 0x7226,
---     FACIAL_L_chinSkinTop = 0x3EB3,
---     FACIAL_chinSkinMid = 0x899A,
---     FACIAL_L_chinSkinMid = 0x4427,
---     FACIAL_L_chinSide = 0x4A5E,
---     FACIAL_R_chinSkinMid = 0xF5AF,
---     FACIAL_R_chinSkinTop = 0xF03B,
---     FACIAL_R_chinSide = 0xAA5E,
---     FACIAL_R_underChin = 0x2BF4,
---     FACIAL_L_lipLowerSDK = 0xB9E1,
---     FACIAL_L_lipLowerAnalog = 0x244A,
---     FACIAL_L_lipLowerThicknessV = 0xC749,
---     FACIAL_L_lipLowerThicknessH = 0xC67B,
---     FACIAL_lipLowerSDK = 0x7285,
---     FACIAL_lipLowerAnalog = 0xD97B,
---     FACIAL_lipLowerThicknessV = 0xC5BB,
---     FACIAL_lipLowerThicknessH = 0xC5ED,
---     FACIAL_R_lipLowerSDK = 0xA034,
---     FACIAL_R_lipLowerAnalog = 0xC2D9,
---     FACIAL_R_lipLowerThicknessV = 0xC6E9,
---     FACIAL_R_lipLowerThicknessH = 0xC6DB,
---     FACIAL_nose = 0x20F1,
---     FACIAL_L_nostril = 0x7322,
---     FACIAL_L_nostrilThickness = 0xC15F,
---     FACIAL_noseLower = 0xE05A,
---     FACIAL_L_noseLowerThickness = 0x79D5,
---     FACIAL_R_noseLowerThickness = 0x7975,
---     FACIAL_noseTip = 0x6A60,
---     FACIAL_R_nostril = 0x7922,
---     FACIAL_R_nostrilThickness = 0x36FF,
---     FACIAL_noseUpper = 0xA04F,
---     FACIAL_L_noseUpper = 0x1FB8,
---     FACIAL_noseBridge = 0x9BA3,
---     FACIAL_L_nasolabialFurrow = 0x5ACA,
---     FACIAL_L_nasolabialBulge = 0xCD78,
---     FACIAL_L_cheekLower = 0x6907,
---     FACIAL_L_cheekLowerBulge1 = 0xE3FB,
---     FACIAL_L_cheekLowerBulge2 = 0xE3FC,
---     FACIAL_L_cheekInner = 0xE7AB,
---     FACIAL_L_cheekOuter = 0x8161,
---     FACIAL_L_eyesackLower = 0x771B,
---     FACIAL_L_eyeball = 0x1744,
---     FACIAL_L_eyelidLower = 0x998C,
---     FACIAL_L_eyelidLowerOuterSDK = 0xFE4C,
---     FACIAL_L_eyelidLowerOuterAnalog = 0xB9AA,
---     FACIAL_L_eyelashLowerOuter = 0xD7F6,
---     FACIAL_L_eyelidLowerInnerSDK = 0xF151,
---     FACIAL_L_eyelidLowerInnerAnalog = 0x8242,
---     FACIAL_L_eyelashLowerInner = 0x4CCF,
---     FACIAL_L_eyelidUpper = 0x97C1,
---     FACIAL_L_eyelidUpperOuterSDK = 0xAF15,
---     FACIAL_L_eyelidUpperOuterAnalog = 0x67FA,
---     FACIAL_L_eyelashUpperOuter = 0x27B7,
---     FACIAL_L_eyelidUpperInnerSDK = 0xD341,
---     FACIAL_L_eyelidUpperInnerAnalog = 0xF092,
---     FACIAL_L_eyelashUpperInner = 0x9B1F,
---     FACIAL_L_eyesackUpperOuterBulge = 0xA559,
---     FACIAL_L_eyesackUpperInnerBulge = 0x2F2A,
---     FACIAL_L_eyesackUpperOuterFurrow = 0xC597,
---     FACIAL_L_eyesackUpperInnerFurrow = 0x52A7,
---     FACIAL_forehead = 0x9218,
---     FACIAL_L_foreheadInner = 0x843,
---     FACIAL_L_foreheadInnerBulge = 0x767C,
---     FACIAL_L_foreheadOuter = 0x8DCB,
---     FACIAL_skull = 0x4221,
---     FACIAL_foreheadUpper = 0xF7D6,
---     FACIAL_L_foreheadUpperInner = 0xCF13,
---     FACIAL_L_foreheadUpperOuter = 0x509B,
---     FACIAL_R_foreheadUpperInner = 0xCEF3,
---     FACIAL_R_foreheadUpperOuter = 0x507B,
---     FACIAL_L_temple = 0xAF79,
---     FACIAL_L_ear = 0x19DD,
---     FACIAL_L_earLower = 0x6031,
---     FACIAL_L_masseter = 0x2810,
---     FACIAL_L_jawRecess = 0x9C7A,
---     FACIAL_L_cheekOuterSkin = 0x14A5,
---     FACIAL_R_cheekLower = 0xF367,
---     FACIAL_R_cheekLowerBulge1 = 0x599B,
---     FACIAL_R_cheekLowerBulge2 = 0x599C,
---     FACIAL_R_masseter = 0x810,
---     FACIAL_R_jawRecess = 0x93D4,
---     FACIAL_R_ear = 0x1137,
---     FACIAL_R_earLower = 0x8031,
---     FACIAL_R_eyesackLower = 0x777B,
---     FACIAL_R_nasolabialBulge = 0xD61E,
---     FACIAL_R_cheekOuter = 0xD32,
---     FACIAL_R_cheekInner = 0x737C,
---     FACIAL_R_noseUpper = 0x1CD6,
---     FACIAL_R_foreheadInner = 0xE43,
---     FACIAL_R_foreheadInnerBulge = 0x769C,
---     FACIAL_R_foreheadOuter = 0x8FCB,
---     FACIAL_R_cheekOuterSkin = 0xB334,
---     FACIAL_R_eyesackUpperInnerFurrow = 0x9FAE,
---     FACIAL_R_eyesackUpperOuterFurrow = 0x140F,
---     FACIAL_R_eyesackUpperInnerBulge = 0xA359,
---     FACIAL_R_eyesackUpperOuterBulge = 0x1AF9,
---     FACIAL_R_nasolabialFurrow = 0x2CAA,
---     FACIAL_R_temple = 0xAF19,
---     FACIAL_R_eyeball = 0x1944,
---     FACIAL_R_eyelidUpper = 0x7E14,
---     FACIAL_R_eyelidUpperOuterSDK = 0xB115,
---     FACIAL_R_eyelidUpperOuterAnalog = 0xF25A,
---     FACIAL_R_eyelashUpperOuter = 0xE0A,
---     FACIAL_R_eyelidUpperInnerSDK = 0xD541,
---     FACIAL_R_eyelidUpperInnerAnalog = 0x7C63,
---     FACIAL_R_eyelashUpperInner = 0x8172,
---     FACIAL_R_eyelidLower = 0x7FDF,
---     FACIAL_R_eyelidLowerOuterSDK = 0x1BD,
---     FACIAL_R_eyelidLowerOuterAnalog = 0x457B,
---     FACIAL_R_eyelashLowerOuter = 0xBE49,
---     FACIAL_R_eyelidLowerInnerSDK = 0xF351,
---     FACIAL_R_eyelidLowerInnerAnalog = 0xE13,
---     FACIAL_R_eyelashLowerInner = 0x3322,
---     FACIAL_L_lipUpperSDK = 0x8F30,
---     FACIAL_L_lipUpperAnalog = 0xB1CF,
---     FACIAL_L_lipUpperThicknessH = 0x37CE,
---     FACIAL_L_lipUpperThicknessV = 0x38BC,
---     FACIAL_lipUpperSDK = 0x1774,
---     FACIAL_lipUpperAnalog = 0xE064,
---     FACIAL_lipUpperThicknessH = 0x7993,
---     FACIAL_lipUpperThicknessV = 0x7981,
---     FACIAL_L_lipCornerSDK = 0xB1C,
---     FACIAL_L_lipCornerAnalog = 0xE568,
---     FACIAL_L_lipCornerThicknessUpper = 0x7BC,
---     FACIAL_L_lipCornerThicknessLower = 0xDD42,
---     FACIAL_R_lipUpperSDK = 0x7583,
---     FACIAL_R_lipUpperAnalog = 0x51CF,
---     FACIAL_R_lipUpperThicknessH = 0x382E,
---     FACIAL_R_lipUpperThicknessV = 0x385C,
---     FACIAL_R_lipCornerSDK = 0xB3C,
---     FACIAL_R_lipCornerAnalog = 0xEE0E,
---     FACIAL_R_lipCornerThicknessUpper = 0x54C3,
---     FACIAL_R_lipCornerThicknessLower = 0x2BBA,
---     MH_MulletRoot = 0x3E73,
---     MH_MulletScaler = 0xA1C2,
---     MH_Hair_Scale = 0xC664,
---     MH_Hair_Crown = 0x1675,
---     SM_Torch = 0x8D6,
---     FX_Light = 0x8959,
---     FX_Light_Scale = 0x5038,
---     FX_Light_Switch = 0xE18E,
---     BagRoot = 0xAD09,
---     BagPivotROOT = 0xB836,
---     BagPivot = 0x4D11,
---     BagBody = 0xAB6D,
---     BagBone_R = 0x937,
---     BagBone_L = 0x991,
---     SM_LifeSaver_Front = 0x9420,
---     SM_R_Pouches_ROOT = 0x2962,
---     SM_R_Pouches = 0x4141,
---     SM_L_Pouches_ROOT = 0x2A02,
---     SM_L_Pouches = 0x4B41,
---     SM_Suit_Back_Flapper = 0xDA2D,
---     SPR_CopRadio = 0x8245,
---     SM_LifeSaver_Back = 0x2127,
---     MH_BlushSlider = 0xA0CE,
---     SKEL_Tail_01 = 0x347,
---     SKEL_Tail_02 = 0x348,
---     MH_L_Concertina_B = 0xC988,
---     MH_L_Concertina_A = 0xC987,
---     MH_R_Concertina_B = 0xC8E8,
---     MH_R_Concertina_A = 0xC8E7,
---     MH_L_ShoulderBladeRoot = 0x8711,
---     MH_L_ShoulderBlade = 0x4EAF,
---     MH_R_ShoulderBladeRoot = 0x3A0A,
---     MH_R_ShoulderBlade = 0x54AF,
---     FB_R_Ear_000 = 0x6CDF,
---     SPR_R_Ear = 0x63B6,
---     FB_L_Ear_000 = 0x6439,
---     SPR_L_Ear = 0x5B10,
---     FB_TongueA_000 = 0x4206,
---     FB_TongueB_000 = 0x4207,
---     FB_TongueC_000 = 0x4208,
---     SKEL_L_Toe1 = 0x1D6B,
---     SKEL_R_Toe1 = 0xB23F,
---     SKEL_Tail_03 = 0x349,
---     SKEL_Tail_04 = 0x34A,
---     SKEL_Tail_05 = 0x34B,
---     SPR_Gonads_ROOT = 0xBFDE,
---     SPR_Gonads = 0x1C00,
---     FB_L_Brow_Out_001 = 0xE3DB,
---     FB_L_Lid_Upper_001 = 0xB2B6,
---     FB_L_Eye_001 = 0x62AC,
---     FB_L_CheekBone_001 = 0x542E,
---     FB_L_Lip_Corner_001 = 0x74AC,
---     FB_R_Lid_Upper_001 = 0xAA10,
---     FB_R_Eye_001 = 0x6B52,
---     FB_R_CheekBone_001 = 0x4B88,
---     FB_R_Brow_Out_001 = 0x54C,
---     FB_R_Lip_Corner_001 = 0x2BA6,
---     FB_Brow_Centre_001 = 0x9149,
---     FB_UpperLipRoot_001 = 0x4ED2,
---     FB_UpperLip_001 = 0xF18F,
---     FB_L_Lip_Top_001 = 0x4F37,
---     FB_R_Lip_Top_001 = 0x4537,
---     FB_Jaw_001 = 0xB4A0,
---     FB_LowerLipRoot_001 = 0x4324,
---     FB_LowerLip_001 = 0x508F,
---     FB_L_Lip_Bot_001 = 0xB93B,
---     FB_R_Lip_Bot_001 = 0xC33B,
---     FB_Tongue_001 = 0xB987
--- }; 
--- @name GET_PED_BONE_INDEX
--- @param ped Ped 
--- @param boneId number 
--- @return number
function GetPedBoneIndex(ped, boneId) end

--- @name GET_PED_AS_GROUP_LEADER
--- @param groupID number 
--- @return Ped
function GetPedAsGroupLeader(groupID) end

--- from fm_mission_controller.c4 (variable names changed for clarity):  
--- int groupID = PLAYER::GET_PLAYER_GROUP(PLAYER::PLAYER_ID());  
--- PED::GET_GROUP_SIZE(group, &unused, &groupSize);  
--- if (groupSize >= 1) {  
--- . . . . for (int memberNumber = 0; memberNumber < groupSize; memberNumber++) {  
--- . . . . . . . . Ped ped1 = PED::GET_PED_AS_GROUP_MEMBER(groupID, memberNumber);  
--- . . . . . . . . //and so on  
--- @name GET_PED_AS_GROUP_MEMBER
--- @param groupID number 
--- @param memberNumber number 
--- @return Ped
function GetPedAsGroupMember(groupID, memberNumber) end

--- @name GET_PED_COMBAT_RANGE
--- @param ped Ped 
--- @return number
function GetPedCombatRange(ped) end

--- @name GET_PED_COMBAT_MOVEMENT
--- @param ped Ped 
--- @return number
function GetPedCombatMovement(ped) end

--- Returns the hash of the weapon/model/object that killed the ped.  
--- @name GET_PED_CAUSE_OF_DEATH
--- @param ped Ped 
--- @return Hash
function GetPedCauseOfDeath(ped) end

--- @name _GET_PED_CURRENT_MOVEMENT_SPEED
--- @param ped Ped 
--- @param speedX number 
--- @param speedY number 
--- @return boolean
function GetPedCurrentMovementSpeed(ped, speedX, speedY) end

--- See [`SET_PED_CONFIG_FLAG`](#\_0x1913FE4CBF41C463).
--- @name GET_PED_CONFIG_FLAG
--- @param ped Ped 
--- @param flagId number 
--- @param p2 boolean 
--- @return boolean
function GetPedConfigFlag(ped, flagId, p2) end

--- Returns the zoneID for the overlay if it is a member of collection.
--- enum ePedDecorationZone
--- {
--- 	ZONE_TORSO = 0,
--- 	ZONE_HEAD = 1,
--- 	ZONE_LEFT_ARM = 2,
--- 	ZONE_RIGHT_ARM = 3,
--- 	ZONE_LEFT_LEG = 4,
--- 	ZONE_RIGHT_LEG = 5,
--- 	ZONE_UNKNOWN = 6,
--- 	ZONE_NONE = 7
--- };
--- @name GET_PED_DECORATION_ZONE_FROM_HASHES
--- @param collection Hash 
--- @param overlay Hash 
--- @return number
function GetPedDecorationZoneFromHashes(collection, overlay) end

--- @name GET_PED_DEFENSIVE_AREA_POSITION
--- @param ped Ped 
--- @param p1 boolean 
--- @return Vector3
function GetPedDefensiveAreaPosition(ped, p1) end

--- NativeDB Introduced: v2699
--- @name _GET_PED_DIES_IN_WATER
--- @param ped Ped 
--- @return boolean
function GetPedDiesInWater(ped) end

--- @name GET_PED_DECORATIONS_STATE
--- @param ped Ped 
--- @return number
function GetPedDecorationsState(ped) end

--- Use [`SetPedIlluminatedClothingGlowIntensity`](#\_0x4E90D746056E273D) to set the illuminated clothing glow intensity for a specific ped.
--- @name _GET_PED_EMISSIVE_INTENSITY
--- @param ped Ped The ped to get the glow intensity from.
--- @return number
function GetPedEmissiveIntensity(ped) end

--- Ids
--- 0 - Head
--- 1 - Beard
--- 2 - Hair
--- 3 - Torso
--- 4 - Legs
--- 5 - Hands
--- 6 - Foot
--- 7 - Scarfs/Neck Accessories
--- 8 - Accessories 1
--- 9 - Accessories 2
--- 10- Decals
--- 11 - Auxiliary parts for torso
--- @name GET_PED_DRAWABLE_VARIATION
--- @param ped Ped 
--- @param componentId number 
--- @return number
function GetPedDrawableVariation(ped, componentId) end

--- Gets the offset the specified ped has moved since the previous tick.  
--- If worldSpace is false, the returned offset is relative to the ped. That is, if the ped has moved 1 meter right and 5 meters forward, it'll return 1,5,0.  
--- If worldSpace is true, the returned offset is relative to the world. That is, if the ped has moved 1 meter on the X axis and 5 meters on the Y axis, it'll return 1,5,0.  
--- @name GET_PED_EXTRACTED_DISPLACEMENT
--- @param ped Ped 
--- @param worldSpace boolean 
--- @return Vector3
function GetPedExtractedDisplacement(ped, worldSpace) end

--- NativeDB Introduced: v2189
--- @name _GET_PED_EVENT_DATA
--- @param ped Ped 
--- @param eventType number 
--- @param outData  
--- @return boolean
function GetPedEventData(ped, eventType, outData) end

--- @name GET_PED_ENVEFF_SCALE
--- @param ped Ped 
--- @return number
function GetPedEnveffScale(ped) end

--- A getter for [`_SET_PED_EYE_COLOR`](#\_0x50B56988B170AFDF).
--- @name _GET_PED_EYE_COLOR
--- @param ped Ped The target ped
--- @return number
function GetPedEyeColor(ped) end

--- Input: Haircolor index, value between 0 and 63 (inclusive).
--- Output: RGB values for the haircolor specified in the input.
--- This is used with the hair color swatches scaleform.
--- Use [`_0x013E5CFC38CD5387`](#\_0x013E5CFC38CD5387) to get the makeup colors.
--- @name _GET_PED_HAIR_RGB_COLOR
--- @param hairColorIndex number The hair color index. Value between 0-63 (inclusive).
--- @param outR number Output red value.
--- @param outG number Output green value.
--- @param outB number Output blue value.
--- @return void (Type not found)
function GetPedHairRgbColor(hairColorIndex, outR, outG, outB) end

--- The pointer is to a padded struct that matches the arguments to SET_PED_HEAD_BLEND_DATA(...). There are 4 bytes of padding after each field.  
--- pass this struct in the second parameter   
--- typedef struct  
--- {  
---         int shapeFirst, shapeSecond, shapeThird;   
---         int skinFirst, skinSecond, skinThird;   
--- 	float shapeMix, skinMix, thirdMix;  
--- } headBlendData;  
--- @name GET_PED_HEAD_BLEND_DATA
--- @param ped Ped 
--- @param headBlendData  
--- @return boolean
function GetPedHeadBlendData(ped, headBlendData) end

--- Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.
--- Used when calling SET_PED_HEAD_BLEND_DATA.
--- @name GET_PED_HEAD_BLEND_FIRST_INDEX
--- @param type number 
--- @return number
function GetPedHeadBlendFirstIndex(type) end

--- Returns the group id of which the specified ped is a member of.  
--- @name GET_PED_GROUP_INDEX
--- @param ped Ped 
--- @return number
function GetPedGroupIndex(ped) end

--- Used with freemode (online) characters.
--- @name GET_PED_HEAD_OVERLAY_NUM
--- @param overlayID number 
--- @return number
function GetPedHeadOverlayNum(overlayID) end

--- @name GET_PED_HELMET_STORED_HAT_PROP_INDEX
--- @param ped Ped 
--- @return number
function GetPedHelmetStoredHatPropIndex(ped) end

--- Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.  
--- @name GET_PED_HEAD_BLEND_NUM_HEADS
--- @param type number 
--- @return number
function GetPedHeadBlendNumHeads(type) end

--- Likely a char, if that overlay is not set, e.i. "None" option, returns 255;
--- This might be the once removed native GET_PED_HEAD_OVERLAY.
--- @name _GET_PED_HEAD_OVERLAY_VALUE
--- @param ped Ped 
--- @param overlayID number 
--- @return number
function GetPedHeadOverlayValue(ped, overlayID) end

--- @name GET_PED_HELMET_STORED_HAT_TEX_INDEX
--- @param ped Ped 
--- @return number
function GetPedHelmetStoredHatTexIndex(ped) end

--- @name GET_PED_LAST_DAMAGE_BONE
--- @param ped Ped 
--- @param outBone number 
--- @return boolean
function GetPedLastDamageBone(ped, outBone) end

--- Console/PC structure definitions and example: pastebin.com/SsFej963
--- For FiveM/Cfx.Re use-cases refer to: [`GET_GAME_POOL`](#\_0x2B9D4F50).
--- @name GET_PED_NEARBY_PEDS
--- @param ped Ped 
--- @param sizeAndPeds number 
--- @param ignore number Ped type to ignore
--- @return number
function GetPedNearbyPeds(ped, sizeAndPeds, ignore) end

--- @name GET_PED_MAX_HEALTH
--- @param ped Ped 
--- @return number
function GetPedMaxHealth(ped) end

--- Input: Makeup color index, value between 0 and 63 (inclusive).
--- Output: RGB values for the makeup color specified in the input.
--- This is used with the makeup color swatches scaleform.
--- Use [`_0x4852FC386E2E1BB5`](#\_0x4852FC386E2E1BB5) to get the hair colors.
--- @name _GET_PED_MAKEUP_RGB_COLOR
--- @param makeupColorIndex number The hair color index. Value between 0-63 (inclusive).
--- @param outR number Output red value.
--- @param outG number Output green value.
--- @param outB number Output blue value.
--- @return void (Type not found)
function GetPedMakeupRgbColor(makeupColorIndex, outR, outG, outB) end

--- Returns size of array, passed into the second variable.  
--- See below for usage information.  
--- This function actually requires a struct, where the first value is the maximum number of elements to return.  Here is a sample of how I was able to get it to work correctly, without yet knowing the struct format.  
--- //Setup the array  
--- 	const int numElements = 10;  
--- 	const int arrSize = numElements * 2 + 2;  
--- 	Any veh[arrSize];  
--- 	//0 index is the size of the array  
--- 	veh[0] = numElements;  
--- 	int count = PED::GET_PED_NEARBY_VEHICLES(PLAYER::PLAYER_PED_ID(), veh);  
--- 	if (veh != NULL)  
--- 	{  
--- //Simple loop to go through results  
--- for (int i = 0; i < count; i++)  
--- {  
--- 	int offsettedID = i * 2 + 2;  
--- 	//Make sure it exists  
--- 	if (veh[offsettedID] != NULL && ENTITY::DOES_ENTITY_EXIST(veh[offsettedID]))  
--- 	{  
--- //Do something  
--- 	}  
--- }  
--- 	}    
--- Here's the right way to do it (console and pc):  
--- pastebin.com/SsFej963  
--- @name GET_PED_NEARBY_VEHICLES
--- @param ped Ped 
--- @param sizeAndVehs number 
--- @return number
function GetPedNearbyVehicles(ped, sizeAndVehs) end

--- @name GET_PED_MONEY
--- @param ped Ped 
--- @return number
function GetPedMoney(ped) end

--- @name GET_PED_PALETTE_VARIATION
--- @param ped Ped The ped handle.
--- @param componentId number The component id to get the palette variation from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
--- @return number
function GetPedPaletteVariation(ped, componentId) end

--- -1: no landing  
--- 0: landing on both feet  
--- 1: stumbling  
--- 2: rolling  
--- 3: ragdoll  
--- @name GET_PED_PARACHUTE_LANDING_TYPE
--- @param ped Ped 
--- @return number
function GetPedParachuteLandingType(ped) end

--- @name GET_PED_PARACHUTE_TINT_INDEX
--- @param ped Ped 
--- @param outTintIndex number 
--- @return void (Type not found)
function GetPedParachuteTintIndex(ped, outTintIndex) end

--- @name GET_PED_PROP_INDEX
--- @param ped Ped The ped handle.
--- @param componentId number The component id to get the prop index from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
--- @return number
function GetPedPropIndex(ped, componentId) end

--- @name GET_PED_PROP_TEXTURE_INDEX
--- @param ped Ped The ped handle.
--- @param componentId number The component id to get the prop texture index from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
--- @return number
function GetPedPropTextureIndex(ped, componentId) end

--- Returns:  
--- -1: Normal  
--- 0: Wearing parachute on back  
--- 1: Parachute opening  
--- 2: Parachute open  
--- 3: Falling to doom (e.g. after exiting parachute)  
--- Normal means no parachute?  
--- @name GET_PED_PARACHUTE_STATE
--- @param ped Ped 
--- @return number
function GetPedParachuteState(ped) end

--- @name GET_PED_RAGDOLL_BONE_INDEX
--- @param ped Ped 
--- @param bone number 
--- @return number
function GetPedRagdollBoneIndex(ped, bone) end

--- @name GET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH
--- @param ped Ped 
--- @return Hash
function GetPedRelationshipGroupDefaultHash(ped) end

--- Returns the Entity (Ped, Vehicle, or ?Object?) that killed the 'ped'  
--- Is best to check if the Ped is dead before asking for its killer.  
--- @name GET_PED_SOURCE_OF_DEATH
--- @param ped Ped 
--- @return Entity
function GetPedSourceOfDeath(ped) end

--- @name GET_PED_RESET_FLAG
--- @param ped Ped 
--- @param flagId number 
--- @return boolean
function GetPedResetFlag(ped, flagId) end

--- Returns whether the entity is in stealth mode  
--- @name GET_PED_STEALTH_MOVEMENT
--- @param ped Ped 
--- @return boolean
function GetPedStealthMovement(ped) end

--- NativeDB Introduced: v2372
--- @name _GET_PED_TASK_COMBAT_TARGET
--- @param ped Ped 
--- @param p1  
--- @return Entity
function GetPedTaskCombatTarget(ped, p1) end

--- @name GET_PED_RELATIONSHIP_GROUP_HASH
--- @param ped Ped 
--- @return Hash
function GetPedRelationshipGroupHash(ped) end

--- Ped types:
--- ```cpp
--- enum ePedType
--- {
--- 	PED_TYPE_PLAYER_0,
--- 	PED_TYPE_PLAYER_1,
--- 	PED_TYPE_NETWORK_PLAYER,
--- 	PED_TYPE_PLAYER_2,
--- 	PED_TYPE_CIVMALE,
--- 	PED_TYPE_CIVFEMALE,
--- 	PED_TYPE_COP,
--- 	PED_TYPE_GANG_ALBANIAN,
--- 	PED_TYPE_GANG_BIKER_1,
--- 	PED_TYPE_GANG_BIKER_2,
--- 	PED_TYPE_GANG_ITALIAN,
--- 	PED_TYPE_GANG_RUSSIAN,
--- 	PED_TYPE_GANG_RUSSIAN_2,
--- 	PED_TYPE_GANG_IRISH,
--- 	PED_TYPE_GANG_JAMAICAN,
--- 	PED_TYPE_GANG_AFRICAN_AMERICAN,
--- 	PED_TYPE_GANG_KOREAN,
--- 	PED_TYPE_GANG_CHINESE_JAPANESE,
--- 	PED_TYPE_GANG_PUERTO_RICAN,
--- 	PED_TYPE_DEALER,
--- 	PED_TYPE_MEDIC,
--- 	PED_TYPE_FIREMAN,
--- 	PED_TYPE_CRIMINAL,
--- 	PED_TYPE_BUM,
--- 	PED_TYPE_PROSTITUTE,
--- 	PED_TYPE_SPECIAL,
--- 	PED_TYPE_MISSION,
--- 	PED_TYPE_SWAT,
--- 	PED_TYPE_ANIMAL,
--- 	PED_TYPE_ARMY
--- };
--- @name GET_PED_TYPE
--- @param ped Ped 
--- @return number
function GetPedType(ped) end

--- @name GET_PED_TIME_OF_DEATH
--- @param ped Ped 
--- @return number
function GetPedTimeOfDeath(ped) end

--- @name GET_PED_TEXTURE_VARIATION
--- @param ped Ped The ped handle.
--- @param componentId number The component id to get the texture variation from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
--- @return number
function GetPedTextureVariation(ped, componentId) end

--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
--- @name GET_PEDHEADSHOT_TXD_STRING
--- @param id number 
--- @return string
function GetPedheadshotTxdString(id) end

--- NativeDB Introduced: v1493
--- @name _GET_PED_VISUAL_FIELD_CENTER_ANGLE
--- @param ped Ped 
--- @return number
function GetPedVisualFieldCenterAngle(ped) end

--- @name GET_PLAYER_PED_IS_FOLLOWING
--- @param ped Ped 
--- @return Player
function GetPlayerPedIsFollowing(ped) end

--- Gets the relationship between two groups. This should be called twice (once for each group).  
--- Relationship types:  
--- 0 = Companion  
--- 1 = Respect  
--- 2 = Like  
--- 3 = Neutral  
--- 4 = Dislike  
--- 5 = Hate  
--- 255 = Pedestrians  
--- Example:  
--- PED::GET_RELATIONSHIP_BETWEEN_GROUPS(l_1017, 0xA49E591C);  
--- PED::GET_RELATIONSHIP_BETWEEN_GROUPS(0xA49E591C, l_1017);  
--- @name GET_RELATIONSHIP_BETWEEN_GROUPS
--- @param group1 Hash 
--- @param group2 Hash 
--- @return number
function GetRelationshipBetweenGroups(group1, group2) end

--- Gets a random ped in the x/y/zRadius near the x/y/z coordinates passed.   
--- Ped Types:  
--- Any = -1  
--- Player = 1  
--- Male = 4   
--- Female = 5   
--- Cop = 6  
--- Human = 26  
--- SWAT = 27   
--- Animal = 28  
--- Army = 29  
--- @name GET_RANDOM_PED_AT_COORD
--- @param x number 
--- @param y number 
--- @param z number 
--- @param xRadius number 
--- @param yRadius number 
--- @param zRadius number 
--- @param pedType number 
--- @return Ped
function GetRandomPedAtCoord(x, y, z, xRadius, yRadius, zRadius, pedType) end

--- @name GET_PEDS_JACKER
--- @param ped Ped 
--- @return Ped
function GetPedsJacker(ped) end

--- Gets the relationship between two peds. This should be called twice (once for each ped).  
--- Relationship types:  
--- 0 = Companion  
--- 1 = Respect  
--- 2 = Like  
--- 3 = Neutral  
--- 4 = Dislike  
--- 5 = Hate  
--- 255 = Pedestrians  
--- (Credits: Inco)  
--- Example:  
--- PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, l_1017, 0xA49E591C);  
--- PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, 0xA49E591C, l_1017);  
--- @name GET_RELATIONSHIP_BETWEEN_PEDS
--- @param ped1 Ped 
--- @param ped2 Ped 
--- @return number
function GetRelationshipBetweenPeds(ped1, ped2) end

--- @name GET_SEAT_PED_IS_TRYING_TO_ENTER
--- @param ped Ped 
--- @return number
function GetSeatPedIsTryingToEnter(ped) end

--- @name GET_SYNCHRONIZED_SCENE_RATE
--- @param sceneID number 
--- @return number
function GetSynchronizedSceneRate(sceneID) end

--- GET_TIME_*
--- @name _GET_TIME_OF_LAST_PED_WEAPON_DAMAGE
--- @param ped Ped 
--- @param weaponHash Hash 
--- @return number
function GetTimeOfLastPedWeaponDamage(ped, weaponHash) end

--- Gets the vehicle the specified Ped is in. Returns 0 if the ped is/was not in a vehicle.
--- If the Ped is not in a vehicle and includeLastVehicle is true, the vehicle they were last in is returned.
--- @name GET_VEHICLE_PED_IS_IN
--- @param ped Ped The target ped
--- @param lastVehicle boolean False = CurrentVehicle, True = LastVehicle
--- @return Vehicle
function GetVehiclePedIsIn(ped, lastVehicle) end

--- @name GET_VEHICLE_PED_IS_ENTERING
--- @param ped Ped 
--- @return Vehicle
function GetVehiclePedIsEntering(ped) end

--- @name GET_SYNCHRONIZED_SCENE_PHASE
--- @param sceneID number 
--- @return number
function GetSynchronizedScenePhase(sceneID) end

--- Gets ID of vehicle player using. It means it can get ID at any interaction with vehicle. Enter\exit for example. And that means it is faster than GET_VEHICLE_PED_IS_IN but less safe.  
--- @name GET_VEHICLE_PED_IS_USING
--- @param ped Ped 
--- @return Vehicle
function GetVehiclePedIsUsing(ped) end

--- PoliceMotorcycleHelmet   1024
--- RegularMotorcycleHelmet   4096
--- FiremanHelmet 16384
--- PilotHeadset  32768
--- PilotHelmet   65536
--- --
--- p2 is generally 4096 or 16384 in the scripts. p1 varies between 1 and 0.
--- @name GIVE_PED_HELMET
--- @param ped Ped 
--- @param cannotRemove boolean 
--- @param helmetFlag number 
--- @param textureIndex number 
--- @return void (Type not found)
function GivePedHelmet(ped, cannotRemove, helmetFlag, textureIndex) end

--- Sends the message that was created by a call to CREATE_NM_MESSAGE to the specified Ped.  
--- If a message hasn't been created already, this function does nothing.  
--- If the Ped is not ragdolled with Euphoria enabled, this function does nothing.  
--- The following call can be used to ragdoll the Ped with Euphoria enabled: SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);  
--- Call order:  
--- SET_PED_TO_RAGDOLL  
--- CREATE_NM_MESSAGE  
--- GIVE_PED_NM_MESSAGE  
--- Multiple messages can be chained. Eg. to make the ped stagger and swing his arms around, the following calls can be made:  
--- SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);  
--- CREATE_NM_MESSAGE(true, 0); // stopAllBehaviours - Stop all other behaviours, in case the Ped is already doing some Euphoria stuff.  
--- GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
--- CREATE_NM_MESSAGE(true, 1151); // staggerFall - Attempt to walk while falling.  
--- GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
--- CREATE_NM_MESSAGE(true, 372); // armsWindmill - Swing arms around.  
--- GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
--- @name GIVE_PED_NM_MESSAGE
--- @param ped Ped 
--- @return void (Type not found)
function GivePedNmMessage(ped) end

--- @name HAS_ACTION_MODE_ASSET_LOADED
--- @param asset string 
--- @return boolean
function HasActionModeAssetLoaded(asset) end

--- @name GET_VEHICLE_PED_IS_TRYING_TO_ENTER
--- @param ped Ped 
--- @return Vehicle
function GetVehiclePedIsTryingToEnter(ped) end

--- @name HAS_PED_PRELOAD_PROP_DATA_FINISHED
--- @param ped Ped 
--- @return boolean
function HasPedPreloadPropDataFinished(ped) end

--- @name HAS_PED_PRELOAD_VARIATION_DATA_FINISHED
--- @param ped Ped 
--- @return boolean
function HasPedPreloadVariationDataFinished(ped) end

--- @name HAS_PED_HEAD_BLEND_FINISHED
--- @param ped Ped 
--- @return boolean
function HasPedHeadBlendFinished(ped) end

--- @name HAS_PED_RECEIVED_EVENT
--- @param ped Ped 
--- @param eventId number 
--- @return boolean
function HasPedReceivedEvent(ped, eventId) end

--- @name HAS_PEDHEADSHOT_IMG_UPLOAD_FAILED
--- @return boolean
function HasPedheadshotImgUploadFailed() end

--- @name HAS_PEDHEADSHOT_IMG_UPLOAD_SUCCEEDED
--- @return boolean
function HasPedheadshotImgUploadSucceeded() end

--- @name HAVE_ALL_STREAMING_REQUESTS_COMPLETED
--- @param ped Ped 
--- @return boolean
function HaveAllStreamingRequestsCompleted(ped) end

--- @name HIDE_PED_BLOOD_DAMAGE_BY_ZONE
--- @param ped Ped 
--- @param p1  
--- @param p2 boolean 
--- @return void (Type not found)
function HidePedBloodDamageByZone(ped, p1, p2) end

--- @name HAS_STEALTH_MODE_ASSET_LOADED
--- @param asset string 
--- @return boolean
function HasStealthModeAssetLoaded(asset) end

--- @name IS_ANY_HOSTILE_PED_NEAR_POINT
--- @param ped Ped 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @return boolean
function IsAnyHostilePedNearPoint(ped, x, y, z, radius) end

--- @name IS_ANY_PED_SHOOTING_IN_AREA
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param p6 boolean 
--- @param p7 boolean 
--- @return boolean
function IsAnyPedShootingInArea(x1, y1, z1, x2, y2, z2, p6, p7) end

--- @name IS_CONVERSATION_PED_DEAD
--- @param ped Ped 
--- @return boolean
function IsConversationPedDead(ped) end

--- @name INSTANTLY_FILL_PED_POPULATION
--- @return void (Type not found)
function InstantlyFillPedPopulation() end

--- @name IS_ANY_PED_NEAR_POINT
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @return boolean
function IsAnyPedNearPoint(x, y, z, radius) end

--- Returns true if the given ped has a valid pointer to CPlayerInfo in its CPed class. That's all.
--- @name IS_PED_A_PLAYER
--- @param ped Ped 
--- @return boolean
function IsPedAPlayer(ped) end

--- xyz - relative to the world origin.  
--- @name IS_COP_PED_IN_AREA_3D
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @return boolean
function IsCopPedInArea3d(x1, y1, z1, x2, y2, z2) end

--- @name IS_PED_BEING_JACKED
--- @param ped Ped 
--- @return boolean
function IsPedBeingJacked(ped) end

--- @name IS_PED_BEING_STEALTH_KILLED
--- @param ped Ped 
--- @return boolean
function IsPedBeingStealthKilled(ped) end

--- p1 is always 0  
--- @name IS_PED_BEING_STUNNED
--- @param ped Ped 
--- @param p1 number 
--- @return boolean
function IsPedBeingStunned(ped, p1) end

--- NativeDB Introduced: v1290
--- @name _IS_PED_BODY_BLEMISH_VALID
--- @param colorID number 
--- @return boolean
function IsPedBodyBlemishValid(colorID) end

--- @name _IS_PED_BLUSH_COLOR_VALID
--- @param colorID number 
--- @return boolean
function IsPedBlushColorValid(colorID) end

--- @name IS_PED_AIMING_FROM_COVER
--- @param ped Ped 
--- @return boolean
function IsPedAimingFromCover(ped) end

--- @name IS_PED_CLIMBING
--- @param ped Ped 
--- @return boolean
function IsPedClimbing(ped) end

--- @name _IS_PED_BLUSH_COLOR_VALID_2
--- @param colorId number 
--- @return boolean
function IsPedBlushColorValid2(colorId) end

--- Checks if the component variation is valid, this works great for randomizing components using loops.
--- @name IS_PED_COMPONENT_VARIATION_VALID
--- @param ped Ped The ped handle.
--- @param componentId number The component id to check the variation of. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
--- @param drawableId number The drawable id to get the component variation of. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
--- @param textureId number The texture id to get the component variation of. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171).
--- @return boolean
function IsPedComponentVariationValid(ped, componentId, drawableId, textureId) end

--- @name IS_PED_DIVING
--- @param ped Ped 
--- @return boolean
function IsPedDiving(ped) end

--- Seems to consistently return true if the ped is dead, however, it does not detect the dying phase.
--- @name IS_PED_DEAD_OR_DYING
--- @param ped Ped the ped
--- @param p1 boolean always passed 1 in the scripts; requires more research.
--- @return boolean
function IsPedDeadOrDying(ped, p1) end

--- @name IS_PED_DEFENSIVE_AREA_ACTIVE
--- @param ped Ped 
--- @param p1 boolean 
--- @return boolean
function IsPedDefensiveAreaActive(ped, p1) end

--- @name _IS_PED_DOING_BEAST_JUMP
--- @param ped Ped 
--- @return boolean
function IsPedDoingBeastJump(ped) end

--- @name IS_PED_DUCKING
--- @param ped Ped 
--- @return boolean
function IsPedDucking(ped) end

--- Presumably returns the Entity that the Ped is currently diving out of the way of.
--- var num3;
---     if (PED::IS_PED_EVASIVE_DIVING(A_0, &num3) != 0)
---         if (ENTITY::IS_ENTITY_A_VEHICLE(num3) != 0)
--- @name IS_PED_EVASIVE_DIVING
--- @param ped Ped 
--- @param evadingEntity Entity 
--- @return boolean
function IsPedEvasiveDiving(ped, evadingEntity) end

--- @name IS_PED_DOING_DRIVEBY
--- @param ped Ped 
--- @return boolean
function IsPedDoingDriveby(ped) end

--- angle is ped's view cone  
--- @name IS_PED_FACING_PED
--- @param ped Ped 
--- @param otherPed Ped 
--- @param angle number 
--- @return boolean
function IsPedFacingPed(ped, otherPed, angle) end

--- Gets a value indicating whether this ped's health is below its fatally injured threshold. The default threshold is 100.  
--- If the handle is invalid, the function returns true.  
--- @name IS_PED_FATALLY_INJURED
--- @param ped Ped 
--- @return boolean
function IsPedFatallyInjured(ped) end

--- @name IS_PED_GOING_INTO_COVER
--- @param ped Ped 
--- @return boolean
function IsPedGoingIntoCover(ped) end

--- @name IS_PED_FALLING
--- @param ped Ped 
--- @return boolean
function IsPedFalling(ped) end

--- @name _IS_PED_HAIR_COLOR_VALID_2
--- @param colorId number 
--- @return boolean
function IsPedHairColorValid2(colorId) end

--- @name IS_PED_GETTING_INTO_A_VEHICLE
--- @param ped Ped 
--- @return boolean
function IsPedGettingIntoAVehicle(ped) end

--- @name IS_PED_GROUP_MEMBER
--- @param ped Ped 
--- @param groupId number 
--- @return boolean
function IsPedGroupMember(ped, groupId) end

--- @name IS_PED_HEADING_TOWARDS_POSITION
--- @param ped Ped 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p4 number 
--- @return boolean
function IsPedHeadingTowardsPosition(ped, x, y, z, p4) end

--- @name _IS_PED_HAIR_COLOR_VALID
--- @param colorID number 
--- @return boolean
function IsPedHairColorValid(colorID) end

--- @name IS_PED_FLEEING
--- @param ped Ped 
--- @return boolean
function IsPedFleeing(ped) end

--- @name IS_PED_HEADTRACKING_ENTITY
--- @param ped Ped 
--- @param entity Entity 
--- @return boolean
function IsPedHeadtrackingEntity(ped, entity) end

--- @name _IS_PED_HELMET_UNK
--- @param ped Ped 
--- @return boolean
function IsPedHelmetUnk(ped) end

--- @name IS_PED_HEADTRACKING_PED
--- @param ped1 Ped 
--- @param ped2 Ped 
--- @return boolean
function IsPedHeadtrackingPed(ped1, ped2) end

--- Returns true/false if the ped is/isn't humanoid.  
--- @name IS_PED_HUMAN
--- @param ped Ped 
--- @return boolean
function IsPedHuman(ped) end

--- @name IS_PED_HANGING_ON_TO_VEHICLE
--- @param ped Ped 
--- @return boolean
function IsPedHangingOnToVehicle(ped) end

--- Returns whether the specified ped is hurt.  
--- @name IS_PED_HURT
--- @param ped Ped 
--- @return boolean
function IsPedHurt(ped) end

--- @name IS_PED_IN_ANY_PLANE
--- @param ped Ped 
--- @return boolean
function IsPedInAnyPlane(ped) end

--- @name IS_PED_IN_ANY_BOAT
--- @param ped Ped 
--- @return boolean
function IsPedInAnyBoat(ped) end

--- @name IS_PED_IN_ANY_POLICE_VEHICLE
--- @param ped Ped 
--- @return boolean
function IsPedInAnyPoliceVehicle(ped) end

--- @name IS_PED_IN_ANY_HELI
--- @param ped Ped 
--- @return boolean
function IsPedInAnyHeli(ped) end

--- @name IS_PED_IN_ANY_SUB
--- @param ped Ped 
--- @return boolean
function IsPedInAnySub(ped) end

--- @name IS_PED_IN_ANY_TRAIN
--- @param ped Ped 
--- @return boolean
function IsPedInAnyTrain(ped) end

--- Checks to see if ped and target are in combat with eachother. Only goes one-way: if target is engaged in combat with ped but ped has not yet reacted, the function will return false until ped starts fighting back.  
--- p1 is usually 0 in the scripts because it gets the ped id during the task sequence. For instance: PED::IS_PED_IN_COMBAT(l_42E[4/*14*/], PLAYER::PLAYER_PED_ID()) // armenian2.ct4: 43794  
--- @name IS_PED_IN_COMBAT
--- @param ped Ped 
--- @param target Ped 
--- @return boolean
function IsPedInCombat(ped, target) end

--- @name IS_PED_IN_COVER_FACING_LEFT
--- @param ped Ped 
--- @return boolean
function IsPedInCoverFacingLeft(ped) end

--- Returns whether the specified ped is in any vehicle. If `atGetIn` is set to true, also returns true if the ped is
--- currently in the process of entering a vehicle (a specific stage check for `CTaskEnterVehicle`).
--- @name IS_PED_IN_ANY_VEHICLE
--- @param ped Ped The ped to check.
--- @param atGetIn boolean `true` to also consider attempting to enter a vehicle.
--- @return boolean
function IsPedInAnyVehicle(ped, atGetIn) end

--- @name IS_PED_IN_ANY_TAXI
--- @param ped Ped 
--- @return boolean
function IsPedInAnyTaxi(ped) end

--- p1 is nearly always 0 in the scripts.  
--- @name IS_PED_IN_COVER
--- @param ped Ped 
--- @param exceptUseWeapon boolean 
--- @return boolean
function IsPedInCover(ped, exceptUseWeapon) end

--- @name IS_PED_IN_GROUP
--- @param ped Ped 
--- @return boolean
function IsPedInGroup(ped) end

--- @name IS_PED_IN_FLYING_VEHICLE
--- @param ped Ped 
--- @return boolean
function IsPedInFlyingVehicle(ped) end

--- Notes: The function only returns true while the ped is:   
--- A.) Swinging a random melee attack (including pistol-whipping)  
--- B.) Reacting to being hit by a melee attack (including pistol-whipping)  
--- C.) Is locked-on to an enemy (arms up, strafing/skipping in the default fighting-stance, ready to dodge+counter).   
--- You don't have to be holding the melee-targetting button to be in this stance; you stay in it by default for a few seconds after swinging at someone. If you do a sprinting punch, it returns true for the duration of the punch animation and then returns false again, even if you've punched and made-angry many peds  
--- @name IS_PED_IN_MELEE_COMBAT
--- @param ped Ped 
--- @return boolean
function IsPedInMeleeCombat(ped) end

--- Gets a value indicating whether the specified ped is in the specified vehicle.  
--- If 'atGetIn' is false, the function will not return true until the ped is sitting in the vehicle and is about to close the door. If it's true, the function returns true the moment the ped starts to get onto the seat (after opening the door). Eg. if false, and the ped is getting into a submersible, the function will not return true until the ped has descended down into the submersible and gotten into the seat, while if it's true, it'll return true the moment the hatch has been opened and the ped is about to descend into the submersible.  
--- @name IS_PED_IN_VEHICLE
--- @param ped Ped 
--- @param vehicle Vehicle 
--- @param atGetIn boolean 
--- @return boolean
function IsPedInVehicle(ped, vehicle, atGetIn) end

--- @name IS_PED_IN_MODEL
--- @param ped Ped 
--- @param modelHash Hash 
--- @return boolean
function IsPedInModel(ped, modelHash) end

--- @name IS_PED_IN_PARACHUTE_FREE_FALL
--- @param ped Ped 
--- @return boolean
function IsPedInParachuteFreeFall(ped) end

--- @name IS_PED_IN_HIGH_COVER
--- @param ped Ped 
--- @return boolean
function IsPedInHighCover(ped) end

--- @name IS_PED_JACKING
--- @param ped Ped 
--- @return boolean
function IsPedJacking(ped) end

--- @name IS_PED_JUMPING_OUT_OF_VEHICLE
--- @param ped Ped 
--- @return boolean
function IsPedJumpingOutOfVehicle(ped) end

--- @name _IS_PED_LIPSTICK_COLOR_VALID_2
--- @param colorId number 
--- @return boolean
function IsPedLipstickColorValid2(colorId) end

--- Returns true/false if the ped is/isn't male.  
--- @name IS_PED_MALE
--- @param ped Ped 
--- @return boolean
function IsPedMale(ped) end

--- @name IS_PED_JUMPING
--- @param ped Ped 
--- @return boolean
function IsPedJumping(ped) end

--- @name _IS_PED_LIPSTICK_COLOR_VALID
--- @param colorID number 
--- @return boolean
function IsPedLipstickColorValid(colorID) end

--- @name IS_PED_MODEL
--- @param ped Ped 
--- @param modelHash Hash 
--- @return boolean
function IsPedModel(ped, modelHash) end

--- @name IS_PED_ON_FOOT
--- @param ped Ped 
--- @return boolean
function IsPedOnFoot(ped) end

--- @name IS_PED_ON_ANY_BIKE
--- @param ped Ped 
--- @return boolean
function IsPedOnAnyBike(ped) end

--- Same function call as PED::GET_MOUNT, aka just returns 0  
--- @name IS_PED_ON_MOUNT
--- @param ped Ped 
--- @return boolean
function IsPedOnMount(ped) end

--- Gets a value indicating whether the specified ped is on top of any vehicle.  
--- Return 1 when ped is on vehicle.  
--- Return 0 when ped is not on a vehicle.  
--- @name IS_PED_ON_VEHICLE
--- @param ped Ped 
--- @return boolean
function IsPedOnVehicle(ped) end

--- IS_PED_*
--- Returns true if the ped is currently opening a door (CTaskOpenDoor).
--- @name _IS_PED_OPENING_A_DOOR
--- @param ped Ped 
--- @return boolean
function IsPedOpeningADoor(ped) end

--- @name IS_PED_ON_SPECIFIC_VEHICLE
--- @param ped Ped 
--- @param vehicle Vehicle 
--- @return boolean
function IsPedOnSpecificVehicle(ped, vehicle) end

--- @name IS_PED_PERFORMING_MELEE_ACTION
--- @param ped Ped 
--- @return boolean
function IsPedPerformingMeleeAction(ped) end

--- @name IS_PED_PERFORMING_DEPENDENT_COMBO_LIMIT
--- @param ped Ped 
--- @return boolean
function IsPedPerformingDependentComboLimit(ped) end

--- @name IS_PED_PLANTING_BOMB
--- @param ped Ped 
--- @return boolean
function IsPedPlantingBomb(ped) end

--- @name IS_PED_PERFORMING_STEALTH_KILL
--- @param ped Ped 
--- @return boolean
function IsPedPerformingStealthKill(ped) end

--- If the ped handle passed through the parenthesis is in a ragdoll state this will return true.  
--- @name IS_PED_RAGDOLL
--- @param ped Ped 
--- @return boolean
function IsPedRagdoll(ped) end

--- @name IS_PED_RESPONDING_TO_EVENT
--- @param ped Ped 
--- @param event  
--- @return boolean
function IsPedRespondingToEvent(ped, event) end

--- @name IS_PED_PRONE
--- @param ped Ped 
--- @return boolean
function IsPedProne(ped) end

--- Returns whether the specified ped is reloading.  
--- @name IS_PED_RELOADING
--- @param ped Ped 
--- @return boolean
function IsPedReloading(ped) end

--- @name IS_PED_RUNNING_MOBILE_PHONE_TASK
--- @param ped Ped 
--- @return boolean
function IsPedRunningMobilePhoneTask(ped) end

--- @name _IS_PED_SHADER_EFFECT_VALID
--- @param ped Ped 
--- @return boolean
function IsPedShaderEffectValid(ped) end

--- @name IS_PED_RUNNING_RAGDOLL_TASK
--- @param ped Ped 
--- @return boolean
function IsPedRunningRagdollTask(ped) end

--- Returns whether the specified ped is shooting.  
--- @name IS_PED_SHOOTING
--- @param ped Ped 
--- @return boolean
function IsPedShooting(ped) end

--- @name IS_PED_SHOOTING_IN_AREA
--- @param ped Ped 
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param p7 boolean 
--- @param p8 boolean 
--- @return boolean
function IsPedShootingInArea(ped, x1, y1, z1, x2, y2, z2, p7, p8) end

--- @name IS_PED_RUNNING_MELEE_TASK
--- @param ped Ped 
--- @return boolean
function IsPedRunningMeleeTask(ped) end

--- Detect if ped is in any vehicle  
--- [True/False]  
--- @name IS_PED_SITTING_IN_ANY_VEHICLE
--- @param ped Ped 
--- @return boolean
function IsPedSittingInAnyVehicle(ped) end

--- Detect if ped is sitting in the specified vehicle  
--- [True/False]  
--- @name IS_PED_SITTING_IN_VEHICLE
--- @param ped Ped 
--- @param vehicle Vehicle 
--- @return boolean
function IsPedSittingInVehicle(ped, vehicle) end

--- @name _IS_PED_SWAPPING_WEAPON
--- @param Ped Ped 
--- @return boolean
function IsPedSwappingWeapon(Ped) end

--- Returns true if the ped doesn't do any movement. If the ped is being pushed forwards by using APPLY_FORCE_TO_ENTITY for example, the function returns false.  
--- @name IS_PED_STOPPED
--- @param ped Ped 
--- @return boolean
function IsPedStopped(ped) end

--- @name IS_PED_SWIMMING
--- @param ped Ped 
--- @return boolean
function IsPedSwimming(ped) end

--- @name IS_PED_TAKING_OFF_HELMET
--- @param ped Ped 
--- @return boolean
function IsPedTakingOffHelmet(ped) end

--- @name IS_PED_SWIMMING_UNDER_WATER
--- @param ped Ped 
--- @return boolean
function IsPedSwimmingUnderWater(ped) end

--- @name IS_PED_TRYING_TO_ENTER_A_LOCKED_VEHICLE
--- @param ped Ped 
--- @return boolean
function IsPedTryingToEnterALockedVehicle(ped) end

--- @name IS_PED_USING_ANY_SCENARIO
--- @param ped Ped 
--- @return boolean
function IsPedUsingAnyScenario(ped) end

--- @name IS_PED_TRACKED
--- @param ped Ped 
--- @return boolean
function IsPedTracked(ped) end

--- @name IS_PED_USING_ACTION_MODE
--- @param ped Ped 
--- @return boolean
function IsPedUsingActionMode(ped) end

--- @name IS_PED_VAULTING
--- @param ped Ped 
--- @return boolean
function IsPedVaulting(ped) end

--- @name IS_PED_USING_SCENARIO
--- @param ped Ped 
--- @param scenario string 
--- @return boolean
function IsPedUsingScenario(ped, scenario) end

--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
--- @name IS_PEDHEADSHOT_VALID
--- @param id number 
--- @return boolean
function IsPedheadshotValid(id) end

--- Returns true if the ped passed through the parenthesis is wearing a helmet.  
--- @name IS_PED_WEARING_HELMET
--- @param ped Ped 
--- @return boolean
function IsPedWearingHelmet(ped) end

--- NativeDB Introduced: v1493
--- @name _IS_SCUBA_GEAR_LIGHT_ENABLED
--- @param ped Ped 
--- @return boolean
function IsScubaGearLightEnabled(ped) end

--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
--- @name IS_PEDHEADSHOT_READY
--- @param id number 
--- @return boolean
function IsPedheadshotReady(id) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM
--- @param ped Ped 
--- @param animDict string 
--- @param anim string 
--- @return boolean
function IsScriptedScenarioPedUsingConditionalAnim(ped, animDict, anim) end

--- @name IS_PEDHEADSHOT_IMG_UPLOAD_AVAILABLE
--- @return boolean
function IsPedheadshotImgUploadAvailable() end

--- @name IS_SYNCHRONIZED_SCENE_HOLD_LAST_FRAME
--- @param sceneID number 
--- @return boolean
function IsSynchronizedSceneHoldLastFrame(sceneID) end

--- Returns true if a synchronized scene is running  
--- @name IS_SYNCHRONIZED_SCENE_RUNNING
--- @param sceneId number 
--- @return boolean
function IsSynchronizedSceneRunning(sceneId) end

--- returns whether or not a ped is visible within your FOV, not this check auto's to false after a certain distance.  
--- Target needs to be tracked.. won't work otherwise.  
--- @name IS_TRACKED_PED_VISIBLE
--- @param ped Ped 
--- @return boolean
function IsTrackedPedVisible(ped) end

--- @name KNOCK_PED_OFF_VEHICLE
--- @param ped Ped 
--- @return void (Type not found)
function KnockPedOffVehicle(ped) end

--- @name IS_SYNCHRONIZED_SCENE_LOOPED
--- @param sceneID number 
--- @return boolean
function IsSynchronizedSceneLooped(sceneID) end

--- @name KNOCK_OFF_PED_PROP
--- @param ped Ped 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @param p4 boolean 
--- @return void (Type not found)
function KnockOffPedProp(ped, p1, p2, p3, p4) end

--- Similar to REGISTER_PEDHEADSHOT but creates a transparent background instead of black.
--- **Result of the example code:**
--- <https://i.imgur.com/iHz8ztn.png>
--- @name REGISTER_PEDHEADSHOT_TRANSPARENT
--- @param ped Ped A ped handle.
--- @return number
function RegisterPedheadshotTransparent(ped) end

--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
--- @name REGISTER_PEDHEADSHOT
--- @param ped Ped 
--- @return number
function RegisterPedheadshot(ped) end

--- Based on TASK_COMBAT_HATED_TARGETS_AROUND_PED, the parameters are likely similar (PedHandle, and area to attack in).  
--- @name REGISTER_HATED_TARGETS_AROUND_PED
--- @param ped Ped 
--- @param radius number 
--- @return void (Type not found)
function RegisterHatedTargetsAroundPed(ped, radius) end

--- @name PLAY_FACIAL_ANIM
--- @param ped Ped 
--- @param animName string 
--- @param animDict string 
--- @return void (Type not found)
function PlayFacialAnim(ped, animName, animDict) end

--- PED::REGISTER_TARGET(l_216, PLAYER::PLAYER_PED_ID()); from re_prisonbreak.txt.  
--- l_216 = RECSBRobber1  
--- @name REGISTER_TARGET
--- @param ped Ped 
--- @param target Ped 
--- @return void (Type not found)
function RegisterTarget(ped, target) end

--- @name RELEASE_PED_PRELOAD_PROP_DATA
--- @param ped Ped 
--- @return void (Type not found)
function ReleasePedPreloadPropData(ped) end

--- @name RELEASE_PED_PRELOAD_VARIATION_DATA
--- @param ped Ped 
--- @return void (Type not found)
function ReleasePedPreloadVariationData(ped) end

--- @name _REGISTER_PEDHEADSHOT_3
--- @param ped Ped 
--- @return number
function RegisterPedheadshot3(ped) end

--- @name REMOVE_GROUP
--- @param groupId number 
--- @return void (Type not found)
function RemoveGroup(groupId) end

--- @name RELEASE_PEDHEADSHOT_IMG_UPLOAD
--- @param id number 
--- @return void (Type not found)
function ReleasePedheadshotImgUpload(id) end

--- @name REMOVE_PED_FROM_GROUP
--- @param ped Ped 
--- @return void (Type not found)
function RemovePedFromGroup(ped) end

--- @name REMOVE_ACTION_MODE_ASSET
--- @param asset string 
--- @return void (Type not found)
function RemoveActionModeAsset(asset) end

--- Ped will no longer get angry when you stay near him.  
--- @name REMOVE_PED_DEFENSIVE_AREA
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function RemovePedDefensiveArea(ped, toggle) end

--- Judging purely from a quick disassembly, if the ped is in a vehicle, the ped will be deleted immediately. If not, it'll be marked as no longer needed. 
--- @name REMOVE_PED_ELEGANTLY
--- @param ped Ped 
--- @return void (Type not found)
function RemovePedElegantly(ped) end

--- @name REMOVE_PED_PREFERRED_COVER_SET
--- @param ped Ped 
--- @return void (Type not found)
function RemovePedPreferredCoverSet(ped) end

--- @name REMOVE_RELATIONSHIP_GROUP
--- @param groupHash Hash 
--- @return void (Type not found)
function RemoveRelationshipGroup(groupHash) end

--- @name REMOVE_SCENARIO_BLOCKING_AREA
--- @param p0  
--- @param p1 boolean 
--- @return void (Type not found)
function RemoveScenarioBlockingArea(p0, p1) end

--- @name REMOVE_SCENARIO_BLOCKING_AREAS
--- @return void (Type not found)
function RemoveScenarioBlockingAreas() end

--- @name REMOVE_STEALTH_MODE_ASSET
--- @param asset string 
--- @return void (Type not found)
function RemoveStealthModeAsset(asset) end

--- @name REMOVE_PED_HELMET
--- @param ped Ped 
--- @param instantly boolean 
--- @return void (Type not found)
function RemovePedHelmet(ped, instantly) end

--- @name REQUEST_PED_VEHICLE_VISIBILITY_TRACKING
--- @param ped Ped 
--- @param p1 boolean 
--- @return void (Type not found)
function RequestPedVehicleVisibilityTracking(ped, p1) end

--- @name REQUEST_PEDHEADSHOT_IMG_UPLOAD
--- @param id number 
--- @return boolean
function RequestPedheadshotImgUpload(id) end

--- @name REQUEST_ACTION_MODE_ASSET
--- @param asset string 
--- @return void (Type not found)
function RequestActionModeAsset(asset) end

--- @name RESET_AI_MELEE_WEAPON_DAMAGE_MODIFIER
--- @return void (Type not found)
function ResetAiMeleeWeaponDamageModifier() end

--- @name REQUEST_PED_VISIBILITY_TRACKING
--- @param ped Ped 
--- @return void (Type not found)
function RequestPedVisibilityTracking(ped) end

--- @name RESET_GROUP_FORMATION_DEFAULT_SPACING
--- @param groupHandle number 
--- @return void (Type not found)
function ResetGroupFormationDefaultSpacing(groupHandle) end

--- @name REQUEST_STEALTH_MODE_ASSET
--- @param asset string 
--- @return void (Type not found)
function RequestStealthModeAsset(asset) end

--- @name RESET_PED_IN_VEHICLE_CONTEXT
--- @param ped Ped 
--- @return void (Type not found)
function ResetPedInVehicleContext(ped) end

--- Resets the value for the last vehicle driven by the Ped.  
--- @name RESET_PED_LAST_VEHICLE
--- @param ped Ped 
--- @return void (Type not found)
function ResetPedLastVehicle(ped) end

--- @name RESET_AI_WEAPON_DAMAGE_MODIFIER
--- @return void (Type not found)
function ResetAiWeaponDamageModifier() end

--- @name RESET_PED_MOVEMENT_CLIPSET
--- @param ped Ped 
--- @param transitionSpeed number 
--- @return void (Type not found)
function ResetPedMovementClipset(ped, transitionSpeed) end

--- @name RESET_PED_STRAFE_CLIPSET
--- @param ped Ped 
--- @return void (Type not found)
function ResetPedStrafeClipset(ped) end

--- @name RESET_PED_VISIBLE_DAMAGE
--- @param ped Ped 
--- @return void (Type not found)
function ResetPedVisibleDamage(ped) end

--- @name SET_AI_WEAPON_DAMAGE_MODIFIER
--- @param value number 
--- @return void (Type not found)
function SetAiWeaponDamageModifier(value) end

--- It will revive/cure the injured ped. The condition is ped must not be dead.  
--- Upon setting and converting the health int, found, if health falls below 5, the ped will lay on the ground in pain(Maximum default health is 100).  
--- This function is well suited there.  
--- @name REVIVE_INJURED_PED
--- @param ped Ped 
--- @return void (Type not found)
function ReviveInjuredPed(ped) end

--- @name RESET_PED_RAGDOLL_TIMER
--- @param ped Ped 
--- @return void (Type not found)
function ResetPedRagdollTimer(ped) end

--- @name RESET_PED_WEAPON_MOVEMENT_CLIPSET
--- @param ped Ped 
--- @return void (Type not found)
function ResetPedWeaponMovementClipset(ped) end

--- works with TASK::TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS to make a ped completely oblivious to all events going on around him
--- @name SET_BLOCKING_OF_NON_TEMPORARY_EVENTS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBlockingOfNonTemporaryEvents(ped, toggle) end

--- This function will simply bring the dead person back to life.
--- Try not to use it alone, since using this function alone, will make peds fall through ground in hell(well for the most of the times).
--- Instead, before calling this function, you may want to declare the position, where your Resurrected ped to be spawn at.(For instance, Around 2 floats of Player's current position.)
--- Also, disabling any assigned task immediately helped in the number of scenarios, where If you want peds to perform certain decided tasks.
--- @name RESURRECT_PED
--- @param ped Ped 
--- @return void (Type not found)
function ResurrectPed(ped) end

--- @name SET_AI_MELEE_WEAPON_DAMAGE_MODIFIER
--- @param modifier number 
--- @return void (Type not found)
function SetAiMeleeWeaponDamageModifier(modifier) end

--- @name SET_COMBAT_FLOAT
--- @param ped Ped 
--- @param combatType number A value between 0-14, See [`GET_COMBAT_FLOAT`](#\_0x52DFF8A10508090A) for a list of possible parameters.
--- @param p2 number 
--- @return void (Type not found)
function SetCombatFloat(ped, combatType, p2) end

--- Setting ped to true allows the ped to shoot "friendlies".  
--- p2 set to true when toggle is also true seams to make peds permanently unable to aim at, even if you set p2 back to false.  
--- p1 = false & p2 = false for unable to aim at.  
--- p1 = true & p2 = false for able to aim at.  
--- @name SET_CAN_ATTACK_FRIENDLY
--- @param ped Ped 
--- @param toggle boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetCanAttackFriendly(ped, toggle, p2) end

--- @name SET_AMBIENT_PEDS_DROP_MONEY
--- @param p0 boolean 
--- @return void (Type not found)
function SetAmbientPedsDropMoney(p0) end

--- @name SET_CREATE_RANDOM_COPS_NOT_ON_SCENARIOS
--- @param toggle boolean 
--- @return void (Type not found)
function SetCreateRandomCopsNotOnScenarios(toggle) end

--- @name SET_CREATE_RANDOM_COPS
--- @param toggle boolean 
--- @return void (Type not found)
function SetCreateRandomCops(toggle) end

--- @name SET_CREATE_RANDOM_COPS_ON_SCENARIOS
--- @param toggle boolean 
--- @return void (Type not found)
function SetCreateRandomCopsOnScenarios(toggle) end

--- The function specifically verifies the value is equal to, or less than 1.0f. If it is greater than 1.0f, the function does nothing at all.  
--- @name SET_DRIVER_ABILITY
--- @param driver Ped 
--- @param ability number 
--- @return void (Type not found)
function SetDriverAbility(driver, ability) end

--- Scripts use 0.2, 0.5 and 1.0. Value must be >= 0.0 && <= 1.0
--- @name SET_DRIVER_RACING_MODIFIER
--- @param driver Ped 
--- @param modifier number 
--- @return void (Type not found)
function SetDriverRacingModifier(driver, modifier) end

--- Used with [SET_ENABLE_HANDCUFFS](#\_0xDF1AF8B5D56542FA) in decompiled scripts. From my observations, I have noticed that while being ragdolled you are not able to get up but you can still run. Your legs can also bend.
--- @name SET_ENABLE_BOUND_ANKLES
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEnableBoundAnkles(ped, toggle) end

--- ped can not pull out a weapon when true  
--- @name SET_ENABLE_HANDCUFFS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEnableHandcuffs(ped, toggle) end

--- range 0.0f - 1.0f  
--- @name SET_DRIVER_AGGRESSIVENESS
--- @param driver Ped 
--- @param aggressiveness number 
--- @return void (Type not found)
function SetDriverAggressiveness(driver, aggressiveness) end

--- NativeDB Introduced: v1493
--- @name _SET_ENABLE_SCUBA_GEAR_LIGHT
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEnableScubaGearLight(ped, toggle) end

--- @name SET_ENABLE_PED_ENVEFF_SCALE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEnablePedEnveffScale(ped, toggle) end

--- Clipsets:
--- "facials@gen_female@base"
--- "facials@gen_male@base"
--- "facials@p_m_zero@base"
--- Typically followed with [SET_FACIAL_IDLE_ANIM_OVERRIDE](#\_0xFFC24B988B938B38):
--- "mood_drunk\_1"
--- "mood_stressed\_1"
--- "mood_happy\_1"
--- "mood_talking\_1"
--- NativeDB Introduced: v1493
--- @name _SET_FACIAL_CLIPSET_OVERRIDE
--- @param ped Ped 
--- @param animDict string 
--- @return void (Type not found)
function SetFacialClipsetOverride(ped, animDict) end

--- @name SET_FORCE_FOOTSTEP_UPDATE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetForceFootstepUpdate(ped, toggle) end

--- Enables diving motion when underwater.  
--- @name SET_ENABLE_SCUBA
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEnableScuba(ped, toggle) end

--- @name SET_FACIAL_IDLE_ANIM_OVERRIDE
--- @param ped Ped 
--- @param animName string 
--- @param animDict string 
--- @return void (Type not found)
function SetFacialIdleAnimOverride(ped, animName, animDict) end

--- 0: Freedom to move
--- 1: Circle Around Leader
--- 2: Alternative Circle Around Leader  
--- 3: Line, with Leader at center  
--- 4: Arrow Formation
--- 5: "V" Formation
--- 6: Line Follow Formation
--- 7: Single Formation
--- 8: Pairwise
--- @name SET_GROUP_FORMATION
--- @param groupId number 
--- @param formationType number 
--- @return void (Type not found)
function SetGroupFormation(groupId, formationType) end

--- @name SET_IK_TARGET
--- @param ped Ped 
--- @param ikIndex number 
--- @param entityLookAt Entity 
--- @param boneLookAt number 
--- @param offsetX number 
--- @param offsetY number 
--- @param offsetZ number 
--- @param p7  
--- @param blendInDuration number 
--- @param blendOutDuration number 
--- @return void (Type not found)
function SetIkTarget(ped, ikIndex, entityLookAt, boneLookAt, offsetX, offsetY, offsetZ, p7, blendInDuration, blendOutDuration) end

--- Preview: https://gfycat.com/MaleRareAmazonparrot
--- @name SET_HEAD_BLEND_PALETTE_COLOR
--- @param ped Ped 
--- @param r number 
--- @param g number 
--- @param b number 
--- @param id number From 0 to 3.
--- @return void (Type not found)
function SetHeadBlendPaletteColor(ped, r, g, b, id) end

--- Sets the range at which members will automatically leave the group.  
--- @name SET_GROUP_SEPARATION_RANGE
--- @param groupHandle number 
--- @param separationRange number 
--- @return void (Type not found)
function SetGroupSeparationRange(groupHandle, separationRange) end

--- @name SET_FORCE_STEP_TYPE
--- @param ped Ped 
--- @param p1 boolean 
--- @param type number 
--- @param p3 number 
--- @return void (Type not found)
function SetForceStepType(ped, p1, type, p3) end

--- @name SET_GROUP_FORMATION_SPACING
--- @param groupId number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function SetGroupFormationSpacing(groupId, p1, p2, p3) end

--- name: "MP_FEMALE_ACTION" found multiple times in the b617d scripts.
--- @name SET_MOVEMENT_MODE_OVERRIDE
--- @param ped Ped 
--- @param name string 
--- @return void (Type not found)
function SetMovementModeOverride(ped, name) end

--- value ranges from 0 to 3.  
--- @name SET_PED_ALERTNESS
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedAlertness(ped, value) end

--- accuracy = 0-100, 100 being perfectly accurate
--- @name SET_PED_ACCURACY
--- @param ped Ped 
--- @param accuracy number 
--- @return void (Type not found)
function SetPedAccuracy(ped, accuracy) end

--- stance:  
--- 0 = idle  
--- 1 = walk  
--- 2 = running  
--- p5 = usually set to true  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name SET_PED_ALTERNATE_MOVEMENT_ANIM
--- @param ped Ped 
--- @param stance number 
--- @param animDictionary string 
--- @param animationName string 
--- @param p4 number 
--- @param p5 boolean 
--- @return void (Type not found)
function SetPedAlternateMovementAnim(ped, stance, animDictionary, animationName, p4, p5) end

--- @name SET_PED_ALLOW_VEHICLES_OVERRIDE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedAllowVehiclesOverride(ped, toggle) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name SET_PED_ALTERNATE_WALK_ANIM
--- @param ped Ped 
--- @param animDict string 
--- @param animName string 
--- @param p3 number 
--- @param p4 boolean 
--- @return void (Type not found)
function SetPedAlternateWalkAnim(ped, animDict, animName, p3, p4) end

--- Enable/disable ped shadow (ambient occlusion). https://gfycat.com/thankfulesteemedgecko
--- @name SET_PED_AO_BLOB_RENDERING
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedAoBlobRendering(ped, toggle) end

--- @name SET_PED_ALLOWED_TO_DUCK
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedAllowedToDuck(ped, toggle) end

--- @name SET_PED_ANGLED_DEFENSIVE_AREA
--- @param ped Ped 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8 boolean 
--- @param p9 boolean 
--- @return void (Type not found)
function SetPedAngledDefensiveArea(ped, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- Turns the desired ped into a cop. If you use this on the player ped, you will become almost invisible to cops dispatched for you. You will also report your own crimes, get a generic cop voice, get a cop-vision-cone on the radar, and you will be unable to shoot at other cops. SWAT and Army will still shoot at you. Toggling ped as "false" has no effect; you must change p0's ped model to disable the effect.  
--- @name SET_PED_AS_COP
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedAsCop(ped, toggle) end

--- Sets the armor of the specified ped.  
--- ped: The Ped to set the armor of.  
--- amount: A value between 0 and 100 indicating the value to set the Ped's armor to.  
--- @name SET_PED_ARMOUR
--- @param ped Ped 
--- @param amount number 
--- @return void (Type not found)
function SetPedArmour(ped, amount) end

--- @name SET_PED_AS_ENEMY
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedAsEnemy(ped, toggle) end

--- @name SET_PED_BLEND_FROM_PARENTS
--- @param ped Ped 
--- @param father Ped 
--- @param mother Ped 
--- @param fathersSide number 
--- @param mothersSide number 
--- @return void (Type not found)
function SetPedBlendFromParents(ped, father, mother, fathersSide, mothersSide) end

--- @name SET_PED_AS_GROUP_LEADER
--- @param ped Ped 
--- @param groupId number 
--- @return void (Type not found)
function SetPedAsGroupLeader(ped, groupId) end

--- @name SET_PED_BOUNDS_ORIENTATION
--- @param ped Ped 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @return void (Type not found)
function SetPedBoundsOrientation(ped, p1, p2, p3, p4, p5) end

--- @name SET_PED_CAN_ARM_IK
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanArmIk(ped, toggle) end

--- @name SET_PED_AS_GROUP_MEMBER
--- @param ped Ped 
--- @param groupId number 
--- @return void (Type not found)
function SetPedAsGroupMember(ped, groupId) end

--- @name SET_PED_BLOCKS_PATHING_WHEN_DEAD
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedBlocksPathingWhenDead(ped, toggle) end

--- state: https://alloc8or.re/gta5/doc/enums/eKnockOffVehicle.txt
--- @name SET_PED_CAN_BE_KNOCKED_OFF_VEHICLE
--- @param ped Ped 
--- @param state number 
--- @return void (Type not found)
function SetPedCanBeKnockedOffVehicle(ped, state) end

--- @name SET_PED_CAN_BE_TARGETED_WHEN_INJURED
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanBeTargetedWhenInjured(ped, toggle) end

--- @name SET_PED_CAN_BE_SHOT_IN_VEHICLE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanBeShotInVehicle(ped, toggle) end

--- @name SET_PED_CAN_BE_TARGETTED_BY_PLAYER
--- @param ped Ped 
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanBeTargettedByPlayer(ped, player, toggle) end

--- @name SET_PED_CAN_BE_TARGETED_WITHOUT_LOS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanBeTargetedWithoutLos(ped, toggle) end

--- @name SET_PED_CAN_BE_TARGETTED
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanBeTargetted(ped, toggle) end

--- It simply makes the said ped to cower behind cover object(wall, desk, car)  
--- Peds flee attributes must be set to not to flee, first. Else, most of the peds, will just flee from gunshot sounds or any other panic situations.  
--- @name SET_PED_CAN_COWER_IN_COVER
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanCowerInCover(ped, toggle) end

--- @name SET_PED_CAN_BE_TARGETTED_BY_TEAM
--- @param ped Ped 
--- @param team number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanBeTargettedByTeam(ped, team, toggle) end

--- @name SET_PED_CAN_BE_DRAGGED_OUT
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanBeDraggedOut(ped, toggle) end

--- @name SET_PED_CAN_HEAD_IK
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanHeadIk(ped, toggle) end

--- It makes the ped lose (or not lose) their props (like glasses or helmets/hat) when someone punches or pushes the ped.
--- This is probably what's being used in GTA:O to keep players from knocking other player's hats/glasses off when in combat.
--- @name SET_PED_CAN_LOSE_PROPS_ON_DAMAGE
--- @param ped Ped The target ped
--- @param loseProps boolean true = allow props to fall off, false = don't let props fall off
--- @param p2 number purpose unknown, usually 0
--- @return void (Type not found)
function SetPedCanLosePropsOnDamage(ped, loseProps, p2) end

--- @name SET_PED_CAN_EVASIVE_DIVE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanEvasiveDive(ped, toggle) end

--- @name SET_PED_CAN_LEG_IK
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanLegIk(ped, toggle) end

--- @name SET_PED_CAN_PLAY_GESTURE_ANIMS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanPlayGestureAnims(ped, toggle) end

--- @name SET_PED_CAN_PLAY_AMBIENT_BASE_ANIMS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanPlayAmbientBaseAnims(ped, toggle) end

--- p2 usually 0  
--- @name SET_PED_CAN_PLAY_VISEME_ANIMS
--- @param ped Ped 
--- @param toggle boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetPedCanPlayVisemeAnims(ped, toggle, p2) end

--- @name SET_PED_CAN_PLAY_AMBIENT_ANIMS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanPlayAmbientAnims(ped, toggle) end

--- @name _SET_PED_CAN_PLAY_INJURED_ANIMS
--- @param ped Ped 
--- @param p1 boolean 
--- @return void (Type not found)
function SetPedCanPlayInjuredAnims(ped, p1) end

--- @name SET_PED_CAN_PEEK_IN_COVER
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanPeekInCover(ped, toggle) end

--- @name SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanRagdollFromPlayerImpact(ped, toggle) end

--- @name SET_PED_CAN_SMASH_GLASS
--- @param ped Ped 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetPedCanSmashGlass(ped, p1, p2) end

--- @name SET_PED_CAN_RAGDOLL
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanRagdoll(ped, toggle) end

--- @name SET_PED_CAN_TORSO_REACT_IK
--- @param ped Ped 
--- @param p1 boolean 
--- @return void (Type not found)
function SetPedCanTorsoReactIk(ped, p1) end

--- This only will teleport the ped to the group leader if the group leader teleports (sets coords).  
--- Only works in singleplayer  
--- @name SET_PED_CAN_TELEPORT_TO_GROUP_LEADER
--- @param pedHandle Ped 
--- @param groupHandle number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanTeleportToGroupLeader(pedHandle, groupHandle, toggle) end

--- @name SET_PED_CAN_SWITCH_WEAPON
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanSwitchWeapon(ped, toggle) end

--- @name SET_PED_CAN_USE_AUTO_CONVERSATION_LOOKAT
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanUseAutoConversationLookat(ped, toggle) end

--- @name SET_PED_CLOTH_PACKAGE_INDEX
--- @param ped Ped 
--- @param p1 number 
--- @return void (Type not found)
function SetPedClothPackageIndex(ped, p1) end

--- 100 would equal attack  
--- less then 50ish would mean run away  
--- Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described in combatbehaviour.meta:  
--- 0: CA_Poor  
--- 1: CA_Average  
--- 2: CA_Professional  
--- Tested this and got the same results as the first explanation here. Could not find any difference between 0, 1 and 2.  
--- @name SET_PED_COMBAT_ABILITY
--- @param ped Ped 
--- @param p1 number 
--- @return void (Type not found)
function SetPedCombatAbility(ped, p1) end

--- Overrides the ped's collision capsule radius for the current tick.  
--- Must be called every tick to be effective.  
--- Setting this to 0.001 will allow warping through some objects.  
--- @name SET_PED_CAPSULE
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedCapsule(ped, value) end

--- @name SET_PED_CAN_TORSO_IK
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedCanTorsoIk(ped, toggle) end

--- These combat attributes seem to be the same as the BehaviourFlags from combatbehaviour.meta.
--- So far, these are the equivalents found:
--- enum CombatAttributes  
--- {
--- 	BF_CanUseCover = 0,
--- 	BF_CanUseVehicles = 1,
--- 	BF_CanDoDrivebys = 2,
--- 	BF_CanLeaveVehicle = 3,
--- 	BF_CanUseDynamicStrafeDecisions = 4,
--- 	BF_AlwaysFight = 5,
--- 	_0x66BB9FCC = 6,
--- 	_0x6837DA41 = 7,
--- 	_0xB4A13A5A = 8,
--- 	_0xEE326AAD = 9,
--- 	_0x7DF2CCFA = 10,
--- 	_0x0036D422 = 11,
--- 	BF_BlindFireWhenInCover = 12,
--- 	BF_Aggressive = 13,
--- 	BF_CanInvestigate = 14,
--- 	BF_HasRadio = 15,
--- 	_0x6BDE28D1 = 16,
--- 	BF_AlwaysFlee = 17,
--- 	_0x7852797D = 18,
--- 	_0x33497B95 = 19,
--- 	BF_CanTauntInVehicle = 20,
--- 	BF_CanChaseTargetOnFoot = 21,
--- 	BF_WillDragInjuredPedsToSafety = 22,
--- 	_0xCD7168B8 = 23,
--- 	BF_UseProximityFiringRate = 24,
--- 	_0x48F914F8 = 25,
--- 	_0x2EA543D0 = 26,
--- 	BF_PerfectAccuracy = 27,
--- 	BF_CanUseFrustratedAdvance = 28,
--- 	_0x3D131AC1 = 29,
--- 	_0x3AD95F27 = 30,
--- 	BF_MaintainMinDistanceToTarget = 31,
--- 	_0xEAD68AD2 = 32,
--- 	_0xA206C2E0 = 33,
--- 	BF_CanUsePeekingVariations = 34,
--- 	_0xA5715184 = 35,
--- 	_0xD5265533 = 36,
--- 	_0x2B84C2BF = 37,
--- 	BF_DisableBulletReactions = 38,
--- 	BF_CanBust = 39,
--- 	_0xAA525726 = 40,
--- 	BF_CanCommandeerVehicles = 41,
--- 	BF_CanFlank = 42,
--- 	BF_SwitchToAdvanceIfCantFindCover = 43,
--- 	BF_SwitchToDefensiveIfInCover = 44,
--- 	_0xEB4786A0 = 45,
--- 	BF_CanFightArmedPedsWhenNotArmed = 46,
--- 	_0xA08E9402 = 47,
--- 	_0x952EAD7D = 48,
--- 	BF_UseEnemyAccuracyScaling = 49,
--- 	BF_CanCharge = 50,
--- 	_0xDA8C2BD3 = 51,
--- 	_0x6562F017 = 52,
--- 	_0xA2C3D53B = 53,
--- 	BF_AlwaysEquipBestWeapon = 54,
--- 	BF_CanSeeUnderwaterPeds = 55,
--- 	_0xF619486B = 56,
--- 	_0x61EB63A3 = 57,
--- 	BF_DisableFleeFromCombat = 58,
--- 	_0x8976D12B = 59,
--- 	BF_CanThrowSmokeGrenade = 60,
--- 	BF_NonMissionPedsFleeFromThisPedUnlessArmed = 61,
--- 	_0x5452A10C = 62,
--- 	BF_FleesFromInvincibleOpponents = 63,
--- 	BF_DisableBlockFromPursueDuringVehicleChase = 64,
--- 	BF_DisableSpinOutDuringVehicleChase = 65,
--- 	BF_DisableCruiseInFrontDuringBlockDuringVehicleChase = 66,
--- 	_0x0B404731 = 67,
--- 	BF_DisableReactToBuddyShot = 68,
--- 	_0x7FFD6AEB = 69,
--- 	_0x51F4AEF8 = 70,
--- 	BF_PermitChargeBeyondDefensiveArea = 71,
--- 	_0x63E0A8E2 = 72,
--- 	_0xDF974436 = 73,
--- 	_0x556C080B = 74,
--- 	_0xA4D50035 = 75,
--- 	BF_SetDisableShoutTargetPositionOnCombatStart = 76,
--- 	BF_DisableRespondedToThreatBroadcast = 77,
--- 	_0xCBB01765 = 78,
--- 	_0x4F862ED4 = 79,
--- 	_0xEF9C7C40 = 80,
--- 	_0xE51B494F = 81,
--- 	_0x054D0199 = 82,
--- 	_0xD36BCE94 = 83,
--- 	_0xFB11F690 = 84,
--- 	_0xD208A9AD = 85,
--- 	BF_AllowDogFighting = 86,
--- 	_0x07A6E531 = 87,
--- 	_0x34F9317B = 88,
--- 	_0x4240F5A9 = 89,
--- 	_0xEE129DBD = 90,
--- 	_0x053AEAD9 = 91, 
--- };
--- The source for this enum is [here](https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5\&build=2944#\_0x0E8E7201).
--- @name SET_PED_COMBAT_ATTRIBUTES
--- @param ped Ped The ped to set attributes to.
--- @param attributeIndex number The attribute index to set.
--- @param enabled boolean A boolean to enable/disable the attribute (true/false).
--- @return void (Type not found)
function SetPedCombatAttributes(ped, attributeIndex, enabled) end

--- @name SET_PED_CAN_TORSO_VEHICLE_IK
--- @param ped Ped 
--- @param p1 boolean 
--- @return void (Type not found)
function SetPedCanTorsoVehicleIk(ped, p1) end

--- Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described as AttackRange in combatbehaviour.meta:  
--- 0: CR_Near  
--- 1: CR_Medium  
--- 2: CR_Far  
--- @name SET_PED_COMBAT_RANGE
--- @param ped Ped 
--- @param p1 number 
--- @return void (Type not found)
function SetPedCombatRange(ped, p1) end

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
---     PV_COMP_INVALID = 0xFFFFFFFF,
---     PV_COMP_HEAD = 0, // "HEAD"
---     PV_COMP_BERD = 1, // "BEARD"
---     PV_COMP_HAIR = 2, // "HAIR"
---     PV_COMP_UPPR = 3, // "UPPER"
---     PV_COMP_LOWR = 4, // "LOWER"
---     PV_COMP_HAND = 5, // "HAND"
---     PV_COMP_FEET = 6, // "FEET"
---     PV_COMP_TEEF = 7, // "TEETH"
---     PV_COMP_ACCS = 8, // "ACCESSORIES"
---     PV_COMP_TASK = 9, // "TASK"
---     PV_COMP_DECL = 10, // "DECL"
---     PV_COMP_JBIB = 11, // "JBIB"
---     PV_COMP_MAX = 12,
--- };
--- @name SET_PED_COMPONENT_VARIATION
--- @param ped Ped The ped handle.
--- @param componentId number The component that you want to set.
--- @param drawableId number The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#\_0x27561561732A7842).
--- @param textureId number The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#\_0x8F7156A3142A6BAD).
--- @param paletteId number 0 to 3.
--- @return void (Type not found)
function SetPedComponentVariation(ped, componentId, drawableId, textureId, paletteId) end

--- 0 - Stationary (Will just stand in place)  
--- 1 - Defensive (Will try to find cover and very likely to blind fire)  
--- 2 - Offensive (Will attempt to charge at enemy but take cover as well)  
--- 3 - Suicidal Offensive (Will try to flank enemy in a suicidal attack)  
--- @name SET_PED_COMBAT_MOVEMENT
--- @param ped Ped 
--- @param combatMovement number 
--- @return void (Type not found)
function SetPedCombatMovement(ped, combatMovement) end

--- ```cpp
--- // Potential names and hash collisions included as comments
--- enum ePedConfigFlags {
--- 	_0x67D1A445 = 0,
--- 	_0xC63DE95E = 1,
--- 	CPED_CONFIG_FLAG_NoCriticalHits = 2,
--- 	CPED_CONFIG_FLAG_DrownsInWater = 3,
--- 	CPED_CONFIG_FLAG_DisableReticuleFixedLockon = 4,
--- 	_0x37D196F4 = 5,
--- 	_0xE2462399 = 6,
--- 	CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly = 7,
--- 	_0xEDDEB838 = 8,
--- 	_0xB398B6FD = 9,
--- 	_0xF6664E68 = 10,
--- 	_0xA05E7CA3 = 11,
--- 	_0xCE394045 = 12,
--- 	CPED_CONFIG_FLAG_NeverLeavesGroup = 13,
--- 	_0xCD8D1411 = 14,
--- 	_0xB031F1A9 = 15,
--- 	_0xFE65BEE3 = 16,
--- 	CPED_CONFIG_FLAG_BlockNonTemporaryEvents = 17,
--- 	_0x380165BD = 18,
--- 	_0x07C045C7 = 19,
--- 	_0x583B5E2D = 20,
--- 	_0x475EDA58 = 21,
--- 	_0x8629D05B = 22,
--- 	_0x1522968B = 23,
--- 	CPED_CONFIG_FLAG_IgnoreSeenMelee = 24,
--- 	_0x4CC09C4B = 25,
--- 	_0x034F3053 = 26,
--- 	_0xD91BA7CC = 27,
--- 	_0x5C8DC66E = 28,
--- 	_0x8902EAA0 = 29,
--- 	_0x6580B9D2 = 30,
--- 	_0x0EF7A297 = 31,
--- 	_0x6BF86E5B = 32,
--- 	CPED_CONFIG_FLAG_DieWhenRagdoll = 33,
--- 	CPED_CONFIG_FLAG_HasHelmet = 34,
--- 	CPED_CONFIG_FLAG_UseHelmet = 35,
--- 	_0xEEB3D630 = 36,
--- 	_0xB130D17B = 37,
--- 	_0x5F071200 = 38,
--- 	CPED_CONFIG_FLAG_DisableEvasiveDives = 39,
--- 	_0xC287AAFF = 40,
--- 	_0x203328CC = 41,
--- 	CPED_CONFIG_FLAG_DontInfluenceWantedLevel = 42,
--- 	CPED_CONFIG_FLAG_DisablePlayerLockon = 43,
--- 	CPED_CONFIG_FLAG_DisableLockonToRandomPeds = 44,
--- 	_0xEC4A8ACF = 45,
--- 	_0xDB115BFA = 46,
--- 	CPED_CONFIG_FLAG_PedBeingDeleted = 47,
--- 	CPED_CONFIG_FLAG_BlockWeaponSwitching = 48,
--- 	_0xF8E99565 = 49,
--- 	_0xDD17FEE6 = 50,
--- 	_0x7ED9B2C9 = 51,
--- 	_0x655E8618 = 52,
--- 	_0x5A6C1F6E = 53,
--- 	_0xD749FC41 = 54,
--- 	_0x357F63F3 = 55,
--- 	_0xC5E60961 = 56,
--- 	_0x29275C3E = 57,
--- 	CPED_CONFIG_FLAG_IsFiring = 58,
--- 	CPED_CONFIG_FLAG_WasFiring = 59,
--- 	CPED_CONFIG_FLAG_IsStanding = 60,
--- 	CPED_CONFIG_FLAG_WasStanding = 61,
--- 	CPED_CONFIG_FLAG_InVehicle = 62,
--- 	CPED_CONFIG_FLAG_OnMount = 63,
--- 	CPED_CONFIG_FLAG_AttachedToVehicle = 64,
--- 	CPED_CONFIG_FLAG_IsSwimming = 65,
--- 	CPED_CONFIG_FLAG_WasSwimming = 66,
--- 	CPED_CONFIG_FLAG_IsSkiing = 67,
--- 	CPED_CONFIG_FLAG_IsSitting = 68,
--- 	CPED_CONFIG_FLAG_KilledByStealth = 69,
--- 	CPED_CONFIG_FLAG_KilledByTakedown = 70,
--- 	CPED_CONFIG_FLAG_Knockedout = 71,
--- 	_0x3E3C4560 = 72,
--- 	_0x2994C7B7 = 73,
--- 	_0x6D59D275 = 74,
--- 	CPED_CONFIG_FLAG_UsingCoverPoint = 75,
--- 	CPED_CONFIG_FLAG_IsInTheAir = 76,
--- 	_0x2D493FB7 = 77,
--- 	CPED_CONFIG_FLAG_IsAimingGun = 78,
--- 	_0x14D69875 = 79,
--- 	_0x40B05311 = 80,
--- 	_0x8B230BC5 = 81,
--- 	_0xC74E5842 = 82,
--- 	_0x9EA86147 = 83,
--- 	_0x674C746C = 84,
--- 	_0x3E56A8C2 = 85,
--- 	_0xC144A1EF = 86,
--- 	_0x0548512D = 87,
--- 	_0x31C93909 = 88,
--- 	_0xA0269315 = 89,
--- 	_0xD4D59D4D = 90,
--- 	_0x411D4420 = 91,
--- 	_0xDF4AEF0D = 92,
--- 	CPED_CONFIG_FLAG_ForcePedLoadCover = 93,
--- 	_0x300E4CD3 = 94,
--- 	_0xF1C5BF04 = 95,
--- 	_0x89C2EF13 = 96,
--- 	CPED_CONFIG_FLAG_VaultFromCover = 97,
--- 	_0x02A852C8 = 98,
--- 	_0x3D9407F1 = 99,
--- 	_0x319B4558 = 100,
--- 	CPED_CONFIG_FLAG_ForcedAim = 101,
--- 	_0xB942D71A = 102,
--- 	_0xD26C55A8 = 103,
--- 	_0xB89E703B = 104,
--- 	CPED_CONFIG_FLAG_ForceReload = 105,
--- 	_0xD9E73DA2 = 106,
--- 	_0xFF71DC2C = 107,
--- 	_0x1E27E8D8 = 108,
--- 	_0xF2C53966 = 109,
--- 	_0xC4DBE247 = 110,
--- 	_0x83C0A4BF = 111,
--- 	_0x0E0FAF8C = 112,
--- 	_0x26616660 = 113,
--- 	_0x43B80B79 = 114,
--- 	_0x0D2A9309 = 115,
--- 	_0x12C1C983 = 116,
--- 	CPED_CONFIG_FLAG_BumpedByPlayer = 117,
--- 	_0xE586D504 = 118,
--- 	_0x52374204 = 119,
--- 	CPED_CONFIG_FLAG_IsHandCuffed = 120,
--- 	CPED_CONFIG_FLAG_IsAnkleCuffed = 121,
--- 	CPED_CONFIG_FLAG_DisableMelee = 122,
--- 	_0xFE714397 = 123,
--- 	_0xB3E660BD = 124,
--- 	_0x5FED6BFD = 125,
--- 	_0xC9D6F66F = 126,
--- 	_0x519BC986 = 127,
--- 	CPED_CONFIG_FLAG_CanBeAgitated = 128,
--- 	_0x9A4B617C = 129, // CPED_CONFIG_FLAG_FaceDirInsult
--- 	_0xDAB70E9F = 130,
--- 	_0xE569438A = 131,
--- 	_0xBBC77D6D = 132,
--- 	_0xCB59EF0F = 133,
--- 	_0x8C5EA971 = 134,
--- 	CPED_CONFIG_FLAG_IsScuba = 135,
--- 	CPED_CONFIG_FLAG_WillArrestRatherThanJack = 136,
--- 	_0xDCE59B58 = 137,
--- 	CPED_CONFIG_FLAG_RidingTrain = 138,
--- 	CPED_CONFIG_FLAG_ArrestResult = 139,
--- 	CPED_CONFIG_FLAG_CanAttackFriendly = 140,
--- 	_0x98A4BE43 = 141,
--- 	_0x6901E731 = 142,
--- 	_0x9EC9BF6C = 143,
--- 	_0x42841A8F = 144,
--- 	CPED_CONFIG_FLAG_ShootingAnimFlag = 145,
--- 	CPED_CONFIG_FLAG_DisableLadderClimbing = 146,
--- 	CPED_CONFIG_FLAG_StairsDetected = 147,
--- 	CPED_CONFIG_FLAG_SlopeDetected = 148,
--- 	_0x1A15670B = 149,
--- 	_0x61786EE5 = 150,
--- 	_0xCB9186BD = 151,
--- 	_0xF0710152 = 152,
--- 	_0x43DFE310 = 153,
--- 	_0xC43C624E = 154,
--- 	CPED_CONFIG_FLAG_CanPerformArrest = 155,
--- 	CPED_CONFIG_FLAG_CanPerformUncuff = 156,
--- 	CPED_CONFIG_FLAG_CanBeArrested = 157,
--- 	_0xF7960FF5 = 158,
--- 	_0x59564113 = 159,
--- 	_0x0C6C3099 = 160,
--- 	_0x645F927A = 161,
--- 	_0xA86549B9 = 162,
--- 	_0x8AAF337A = 163,
--- 	_0x13BAA6E7 = 164,
--- 	_0x5FB9D1F5 = 165,
--- 	CPED_CONFIG_FLAG_IsInjured = 166,
--- 	_0x6398A20B = 167,
--- 	_0xD8072639 = 168,
--- 	_0xA05B1845 = 169,
--- 	_0x83F6D220 = 170,
--- 	_0xD8430331 = 171,
--- 	_0x4B547520 = 172,
--- 	_0xE66E1406 = 173,
--- 	_0x1C4BFE0C = 174,
--- 	_0x90008BFA = 175,
--- 	_0x07C7A910 = 176,
--- 	_0xF15F8191 = 177,
--- 	_0xCE4E8BE2 = 178,
--- 	_0x1D46E4F2 = 179,
--- 	CPED_CONFIG_FLAG_IsInCustody = 180,
--- 	_0xE4FD9B3A = 181,
--- 	_0x67AE0812 = 182,
--- 	CPED_CONFIG_FLAG_IsAgitated = 183,
--- 	CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat = 184,
--- 	_0x7B2D325E = 185,
--- 	CPED_CONFIG_FLAG_EnableWeaponBlocking = 186,
--- 	CPED_CONFIG_FLAG_HasHurtStarted = 187,
--- 	CPED_CONFIG_FLAG_DisableHurt = 188,
--- 	CPED_CONFIG_FLAG_PlayerIsWeird = 189,
--- 	_0x32FC208B = 190,
--- 	_0x0C296E5A = 191,
--- 	_0xE63B73EC = 192,
--- 	_0x04E9CC80 = 193,
--- 	CPED_CONFIG_FLAG_UsingScenario = 194,
--- 	CPED_CONFIG_FLAG_VisibleOnScreen = 195,
--- 	_0xD88C58A1 = 196,
--- 	_0x5A3DCF43 = 197, // CPED_CONFIG_FLAG_AvoidUnderSide
--- 	_0xEA02B420 = 198,
--- 	_0x3F559CFF = 199,
--- 	_0x8C55D029 = 200,
--- 	_0x5E6466F6 = 201,
--- 	_0xEB5AD706 = 202,
--- 	_0x0EDDDDE7 = 203,
--- 	_0xA64F7B1D = 204,
--- 	_0x48532CBA = 205,
--- 	_0xAA25A9E7 = 206,
--- 	_0x415B26B9 = 207,
--- 	CPED_CONFIG_FLAG_DisableExplosionReactions = 208,
--- 	CPED_CONFIG_FLAG_DodgedPlayer = 209,
--- 	_0x67405504 = 210,
--- 	_0x75DDD68C = 211,
--- 	_0x2AD879B4 = 212,
--- 	_0x51486F91 = 213,
--- 	_0x32F79E21 = 214,
--- 	_0xBF099213 = 215,
--- 	_0x054AC8E2 = 216,
--- 	_0x14E495CC = 217,
--- 	_0x3C7DF9DF = 218,
--- 	_0x848FFEF2 = 219,
--- 	CPED_CONFIG_FLAG_DontEnterLeadersVehicle = 220,
--- 	_0x2618E1CF = 221,
--- 	_0x84F722FA = 222,
--- 	_0xD1B87B1F = 223,
--- 	_0x728AA918 = 224,
--- 	CPED_CONFIG_FLAG_DisablePotentialToBeWalkedIntoResponse = 225,
--- 	CPED_CONFIG_FLAG_DisablePedAvoidance = 226,
--- 	_0x59E91185 = 227,
--- 	_0x1EA7225F = 228,
--- 	CPED_CONFIG_FLAG_DisablePanicInVehicle = 229,
--- 	_0x6DCA7D88 = 230,
--- 	_0xFC3E572D = 231,
--- 	_0x08E9F9CF = 232,
--- 	_0x2D3BA52D = 233,
--- 	_0xFD2F53EA = 234,
--- 	_0x31A1B03B = 235,
--- 	CPED_CONFIG_FLAG_IsHoldingProp = 236,
--- 	_0x82ED0A66 = 237, // CPED_CONFIG_FLAG_BlocksPathingWhenDead
--- 	_0xCE57C9A3 = 238,
--- 	_0x26149198 = 239,
--- 	_0x1B33B598 = 240,
--- 	_0x719B6E87 = 241,
--- 	_0x13E8E8E8 = 242,
--- 	_0xF29739AE = 243,
--- 	_0xABEA8A74 = 244,
--- 	_0xB60EA2BA = 245,
--- 	_0x536B0950 = 246,
--- 	_0x0C754ACA = 247,
--- 	CPED_CONFIG_FLAG_DisableVehicleSeatRandomAnimations = 248,
--- 	_0x12659168 = 249,
--- 	_0x1BDF2F04 = 250,
--- 	_0x7728FAA3 = 251,
--- 	_0x6A807ED8 = 252,
--- 	CPED_CONFIG_FLAG_OnStairs = 253,
--- 	_0xE1A2F73F = 254,
--- 	_0x5B3697C8 = 255,
--- 	_0xF1EB20A9 = 256,
--- 	_0x8B7DF407 = 257,
--- 	_0x329DCF1A = 258,
--- 	_0x8D90DD1B = 259,
--- 	_0xB8A292B7 = 260,
--- 	_0x8374B087 = 261,
--- 	_0x2AF558F0 = 262,
--- 	_0x82251455 = 263,
--- 	_0x30CF498B = 264,
--- 	_0xE1CD50AF = 265,
--- 	_0x72E4AE48 = 266,
--- 	_0xC2657EA1 = 267,
--- 	_0x29FF6030 = 268,
--- 	_0x8248A5EC = 269,
--- 	CPED_CONFIG_FLAG_OnStairSlope = 270,
--- 	_0xA0897933 = 271,
--- 	CPED_CONFIG_FLAG_DontBlipCop = 272,
--- 	CPED_CONFIG_FLAG_ClimbedShiftedFence = 273,
--- 	_0xF7823618 = 274,
--- 	_0xDC305CCE = 275, // CPED_CONFIG_FLAG_KillWhenTrapped
--- 	CPED_CONFIG_FLAG_EdgeDetected = 276,
--- 	_0x92B67896 = 277,
--- 	_0xCAD677C9 = 278,
--- 	CPED_CONFIG_FLAG_AvoidTearGas = 279,
--- 	_0x5276AC7B = 280,
--- 	_0x1032692A = 281,
--- 	_0xDA23E7F1 = 282,
--- 	_0x9139724D = 283,
--- 	_0xA1457461 = 284,
--- 	_0x4186E095 = 285,
--- 	_0xAC68E2EB = 286,
--- 	CPED_CONFIG_FLAG_RagdollingOnBoat = 287,
--- 	CPED_CONFIG_FLAG_HasBrandishedWeapon = 288,
--- 	_0x1B9EE8A1 = 289,
--- 	_0xF3F5758C = 290,
--- 	_0x2A9307F1 = 291,
--- 	_0x7403D216 = 292,
--- 	_0xA06A3C6C = 293,
--- 	CPED_CONFIG_FLAG_DisableShockingEvents = 294,
--- 	_0xF8DA25A5 = 295,
--- 	_0x7EF55802 = 296,
--- 	_0xB31F1187 = 297,
--- 	_0x84315402 = 298,
--- 	_0x0FD69867 = 299,
--- 	_0xC7829B67 = 300,
--- 	CPED_CONFIG_FLAG_DisablePedConstraints = 301,
--- 	_0x6D23CF25 = 302,
--- 	_0x2ADA871B = 303,
--- 	_0x47BC8A58 = 304,
--- 	_0xEB692FA5 = 305,
--- 	_0x4A133C50 = 306,
--- 	_0xC58099C3 = 307,
--- 	_0xF3D76D41 = 308,
--- 	_0xB0EEE9F2 = 309,
--- 	CPED_CONFIG_FLAG_IsInCluster = 310,
--- 	_0x0FA153EF = 311,
--- 	_0xD73F5CD3 = 312,
--- 	_0xD4136C22 = 313,
--- 	_0xE404CA6B = 314,
--- 	_0xB9597446 = 315,
--- 	_0xD5C98277 = 316,
--- 	_0xD5060A9C = 317,
--- 	_0x3E5F1CBB = 318,
--- 	_0xD8BE1D54 = 319,
--- 	_0x0B1F191F = 320,
--- 	_0xC995167A = 321,
--- 	CPED_CONFIG_FLAG_HasHighHeels = 322,
--- 	_0x86B01E54 = 323,
--- 	_0x3A56FE15 = 324,
--- 	_0xC03B736C = 325, // CPED_CONFIG_FLAG_SpawnedAtScenario
--- 	_0xBBF47729 = 326,
--- 	_0x22B668A8 = 327,
--- 	_0x2624D4D4 = 328,
--- 	CPED_CONFIG_FLAG_DisableTalkTo = 329,
--- 	CPED_CONFIG_FLAG_DontBlip = 330,
--- 	CPED_CONFIG_FLAG_IsSwitchingWeapon = 331,
--- 	_0x630F55F3 = 332,
--- 	_0x150468FD = 333,
--- 	_0x914EBD6B = 334,
--- 	_0x79AF3B6D = 335,
--- 	_0x75C7A632 = 336,
--- 	_0x52D530E2 = 337,
--- 	_0xDB2A90E0 = 338,
--- 	_0x5922763D = 339,
--- 	_0x12ADB567 = 340,
--- 	_0x105C8518 = 341,
--- 	_0x106F703D = 342,
--- 	_0xED152C3E = 343,
--- 	_0xA0EFE6A8 = 344,
--- 	_0xBF348C82 = 345,
--- 	_0xCDDFE830 = 346,
--- 	_0x7B59BD9B = 347,
--- 	_0x0124C788 = 348,
--- 	CPED_CONFIG_FLAG_EquipJetpack = 349,
--- 	_0x08D361A5 = 350,
--- 	_0xE13D1F7C = 351,
--- 	_0x40E25FB9 = 352,
--- 	_0x930629D9 = 353,
--- 	_0xECCF0C7F = 354,
--- 	_0xB6E9613B = 355,
--- 	_0x490C0478 = 356,
--- 	_0xE8865BEA = 357,
--- 	_0xF3C34A29 = 358,
--- 	CPED_CONFIG_FLAG_IsDuckingInVehicle = 359,
--- 	_0xF660E115 = 360,
--- 	_0xAB0E6DED = 361,
--- 	CPED_CONFIG_FLAG_HasReserveParachute = 362,
--- 	CPED_CONFIG_FLAG_UseReserveParachute = 363,
--- 	_0x5C5D9CD3 = 364,
--- 	_0x8F7701F3 = 365,
--- 	_0xBC4436AD = 366,
--- 	_0xD7E07D37 = 367,
--- 	_0x03C4FD24 = 368,
--- 	_0x7675789A = 369,
--- 	_0xB7288A88 = 370,
--- 	_0xC06B6291 = 371,
--- 	_0x95A4A805 = 372,
--- 	_0xA8E9A042 = 373,
--- 	CPED_CONFIG_FLAG_NeverLeaveTrain = 374,
--- 	_0xBAC674B3 = 375,
--- 	_0x147F1FFB = 376,
--- 	_0x4376DD79 = 377,
--- 	_0xCD3DB518 = 378,
--- 	_0xFE4BA4B6 = 379,
--- 	_0x5DF03A55 = 380,
--- 	_0xBCD816CD = 381,
--- 	_0xCF02DD69 = 382,
--- 	_0xF73AFA2E = 383,
--- 	_0x80B9A9D0 = 384,
--- 	_0xF601F7EE = 385,
--- 	_0xA91350FC = 386,
--- 	_0x3AB23B96 = 387,
--- 	CPED_CONFIG_FLAG_IsClimbingLadder = 388,
--- 	CPED_CONFIG_FLAG_HasBareFeet = 389,
--- 	_0xB4B1CD4C = 390,
--- 	_0x5459AFB8 = 391,
--- 	_0x54F27667 = 392,
--- 	_0xC11D3E8F = 393,
--- 	_0x5419EB3E = 394,
--- 	_0x82D8DBB4 = 395,
--- 	_0x33B02D2F = 396,
--- 	_0xAE66176D = 397,
--- 	_0xA2692593 = 398,
--- 	_0x714C7E31 = 399,
--- 	_0xEC488AC7 = 400,
--- 	_0xAE398504 = 401,
--- 	_0xABC58D72 = 402,
--- 	_0x5E5B9591 = 403,
--- 	_0x6BA1091E = 404,
--- 	_0x77840177 = 405,
--- 	_0x1C7ACAC4 = 406,
--- 	_0x124420E9 = 407,
--- 	_0x75A65587 = 408,
--- 	_0xDFD2D55B = 409,
--- 	_0xBDD39919 = 410,
--- 	_0x43DEC267 = 411,
--- 	_0xE42B7797 = 412,
--- 	CPED_CONFIG_FLAG_IsHolsteringWeapon = 413,
--- 	_0x4F8149F5 = 414,
--- 	_0xDD9ECA7A = 415,
--- 	_0x9E7EF9D2 = 416,
--- 	_0x2C6ED942 = 417,
--- 	CPED_CONFIG_FLAG_IsSwitchingHelmetVisor = 418,
--- 	_0xA488727D = 419,
--- 	_0xCFF5F6DE = 420,
--- 	_0x6D614599 = 421,
--- 	CPED_CONFIG_FLAG_DisableVehicleCombat = 422,
--- 	_0xFE401D26 = 423,
--- 	CPED_CONFIG_FLAG_FallsLikeAircraft = 424,
--- 	_0x2B42AE82 = 425,
--- 	_0x7A95734F = 426,
--- 	_0xDF4D8617 = 427,
--- 	_0x578F1F14 = 428,
--- 	CPED_CONFIG_FLAG_DisableStartEngine = 429,
--- 	CPED_CONFIG_FLAG_IgnoreBeingOnFire = 430,
--- 	_0x153C9500 = 431,
--- 	_0xCB7A632E = 432,
--- 	_0xDE727981 = 433,
--- 	CPED_CONFIG_FLAG_DisableHomingMissileLockon = 434,
--- 	_0x12BBB935 = 435,
--- 	_0xAD0A1277 = 436,
--- 	_0xEA6AA46A = 437,
--- 	CPED_CONFIG_FLAG_DisableHelmetArmor = 438,
--- 	_0xCB7F3A1E = 439,
--- 	_0x50178878 = 440,
--- 	_0x051B4F0D = 441,
--- 	_0x2FC3DECC = 442,
--- 	_0xC0030B0B = 443,
--- 	_0xBBDAF1E9 = 444,
--- 	_0x944FE59C = 445,
--- 	_0x506FBA39 = 446,
--- 	_0xDD45FE84 = 447,
--- 	_0xE698AE75 = 448,
--- 	_0x199633F8 = 449,
--- 	CPED_CONFIG_FLAG_PedIsArresting = 450,
--- 	CPED_CONFIG_FLAG_IsDecoyPed = 451,
--- 	_0x3A251D83 = 452,
--- 	_0xA56F6986 = 453,
--- 	_0x1D19C622 = 454,
--- 	_0xB68D3EAB = 455,
--- 	CPED_CONFIG_FLAG_CanBeIncapacitated = 456,
--- 	_0x4BD5EBAD = 457,
--- }
--- @name SET_PED_CONFIG_FLAG
--- @param ped Ped 
--- @param flagId number 
--- @param value boolean 
--- @return void (Type not found)
function SetPedConfigFlag(ped, flagId, value) end

--- @name SET_PED_CLOTH_PRONE
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function SetPedClothProne(p0, p1) end

--- teleports ped to coords along with the vehicle ped is in  
--- @name SET_PED_COORDS_KEEP_VEHICLE
--- @param ped Ped 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return void (Type not found)
function SetPedCoordsKeepVehicle(ped, posX, posY, posZ) end

--- p1: Only "CODE_HUMAN_STAND_COWER" found in the b617d scripts.  
--- @name SET_PED_COWER_HASH
--- @param ped Ped 
--- @param p1 string 
--- @return void (Type not found)
function SetPedCowerHash(ped, p1) end

--- @name SET_PED_COORDS_NO_GANG
--- @param ped Ped 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return void (Type not found)
function SetPedCoordsNoGang(ped, posX, posY, posZ) end

--- Sets Ped Default Clothes  
--- @name SET_PED_DEFAULT_COMPONENT_VARIATION
--- @param ped Ped 
--- @return void (Type not found)
function SetPedDefaultComponentVariation(ped) end

--- @name SET_PED_DEFENSIVE_AREA_ATTACHED_TO_PED
--- @param ped Ped 
--- @param attachPed Ped 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8 number 
--- @param p9 boolean 
--- @param p10 boolean 
--- @return void (Type not found)
function SetPedDefensiveAreaAttachedToPed(ped, attachPed, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

--- @name SET_PED_DEFENSIVE_AREA_DIRECTION
--- @param ped Ped 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 boolean 
--- @return void (Type not found)
function SetPedDefensiveAreaDirection(ped, p1, p2, p3, p4) end

--- @name SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_PED
--- @param ped Ped 
--- @param target Ped 
--- @param xOffset number 
--- @param yOffset number 
--- @param zOffset number 
--- @param radius number 
--- @param p6 boolean 
--- @return void (Type not found)
function SetPedDefensiveSphereAttachedToPed(ped, target, xOffset, yOffset, zOffset, radius, p6) end

--- @name SET_PED_DENSITY_MULTIPLIER_THIS_FRAME
--- @param multiplier number 
--- @return void (Type not found)
function SetPedDensityMultiplierThisFrame(multiplier) end

--- @name SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_VEHICLE
--- @param ped Ped 
--- @param target Vehicle 
--- @param xOffset number 
--- @param yOffset number 
--- @param zOffset number 
--- @param radius number 
--- @param p6 boolean 
--- @return void (Type not found)
function SetPedDefensiveSphereAttachedToVehicle(ped, target, xOffset, yOffset, zOffset, radius, p6) end

--- Found in the b617d scripts:
--- PED::_9DBA107B4937F809(v_7, "trevor_heist_cover_2h");
--- SET_PED_MO*
--- @name _SET_PED_COVER_CLIPSET_OVERRIDE
--- @param ped Ped 
--- @param p1 string 
--- @return void (Type not found)
function SetPedCoverClipsetOverride(ped, p1) end

--- @name SET_PED_DIES_IN_SINKING_VEHICLE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedDiesInSinkingVehicle(ped, toggle) end

--- @name SET_PED_DESIRED_HEADING
--- @param ped Ped 
--- @param heading number 
--- @return void (Type not found)
function SetPedDesiredHeading(ped, heading) end

--- @name SET_PED_DRIVE_BY_CLIPSET_OVERRIDE
--- @param ped Ped 
--- @param clipset string 
--- @return void (Type not found)
function SetPedDriveByClipsetOverride(ped, clipset) end

--- This is the SET_CHAR_DUCKING from GTA IV, that makes Peds duck. This function does nothing in GTA V. It cannot set the ped as ducking in vehicles, and IS_PED_DUCKING will always return false.  
--- @name SET_PED_DUCKING
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedDucking(ped, toggle) end

--- @name SET_PED_DIES_IN_VEHICLE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedDiesInVehicle(ped, toggle) end

--- @name SET_PED_DIES_INSTANTLY_IN_WATER
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedDiesInstantlyInWater(ped, toggle) end

--- Something related to the environmental effects natives.
--- In the "agency_heist3b" script, p1 - p3 are always under 100 - usually they are {87, 81, 68}. If SET_PED_ENVEFF_SCALE is set to 0.65 (instead of the usual 1.0), they use {74, 69, 60}
--- @name SET_PED_ENVEFF_COLOR_MODULATOR
--- @param ped Ped 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function SetPedEnveffColorModulator(ped, r, g, b) end

--- @name SET_PED_DIES_IN_WATER
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedDiesInWater(ped, toggle) end

--- @name SET_PED_DIES_WHEN_INJURED
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedDiesWhenInjured(ped, toggle) end

--- This native sets the glow intensity of illuminated clothing items.
--- This native does **NOT** need to be executed every tick.
--- This native is **NOT** synced with other connected players, you will have to set the opacity on the ped on all clients individually.
--- Glow intensity is a value between `0.0` and `1.0`.
--- In some older decompiled scripts this is known as `_SET_PED_REFLECTION_INTENSITY`.
--- Since there's no joaat hash for this, I find `_SET_PED_ILLUMINATED_CLOTHING_GLOW_INTENSITY` more descriptive than `_SET_PED_REFLECTION_INTENSITY`.
--- Use [`GetPedIlluminatedClothingGlowIntensity`](#\_0x1461B28A06717D68) to get the illuminated clothing glow intensity of a specific ped.
--- Intensity: `1.0`:
--- ![](https://www.vespura.com/hi/i/2018-11-13\_17-03\_c2e23\_229.png)
--- Intensity: `0.0`:
--- ![](https://www.vespura.com/hi/i/2018-11-13\_17-03\_35c33\_230.png)
--- **Examples code result**:
--- ![](https://www.vespura.com/hi/i/2018-11-13\_17-11\_10199\_232.gif)
--- (Direct link if embed doesn't work: [here](https://www.vespura.com/hi/i/2018-11-13\_17-11\_10199\_232.gif))
--- @name _SET_PED_EMISSIVE_INTENSITY
--- @param ped Ped The ped to set the glow intensity on.
--- @param intensity number The glow intensity, value between `0.0` and `1.0`.
--- @return void (Type not found)
function SetPedEmissiveIntensity(ped, intensity) end

--- FIRING_PATTERN_BURST_FIRE = 0xD6FF6D61 ( 1073727030 )  
--- FIRING_PATTERN_BURST_FIRE_IN_COVER = 0x026321F1 ( 40051185 )  
--- FIRING_PATTERN_BURST_FIRE_DRIVEBY = 0xD31265F2 ( -753768974 )  
--- FIRING_PATTERN_FROM_GROUND = 0x2264E5D6 ( 577037782 )  
--- FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC = 0x7A845691 ( 2055493265 )  
--- FIRING_PATTERN_FULL_AUTO = 0xC6EE6B4C ( -957453492 )  
--- FIRING_PATTERN_SINGLE_SHOT = 0x5D60E4E0 ( 1566631136 )  
--- FIRING_PATTERN_BURST_FIRE_PISTOL = 0xA018DB8A ( -1608983670 )  
--- FIRING_PATTERN_BURST_FIRE_SMG = 0xD10DADEE ( 1863348768 )  
--- FIRING_PATTERN_BURST_FIRE_RIFLE = 0x9C74B406 ( -1670073338 )  
--- FIRING_PATTERN_BURST_FIRE_MG = 0xB573C5B4 ( -1250703948 )  
--- FIRING_PATTERN_BURST_FIRE_PUMPSHOTGUN = 0x00BAC39B ( 12239771 )  
--- FIRING_PATTERN_BURST_FIRE_HELI = 0x914E786F ( -1857128337 )  
--- FIRING_PATTERN_BURST_FIRE_MICRO = 0x42EF03FD ( 1122960381 )  
--- FIRING_PATTERN_SHORT_BURSTS = 0x1A92D7DF ( 445831135 )  
--- FIRING_PATTERN_SLOW_FIRE_TANK = 0xE2CA3A71 ( -490063247 )  
--- if anyone is interested firing pattern info: pastebin.com/Px036isB  
--- @name SET_PED_FIRING_PATTERN
--- @param ped Ped 
--- @param patternHash Hash 
--- @return void (Type not found)
function SetPedFiringPattern(ped, patternHash) end

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
--- **Note:**
--- You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
--- @name _SET_PED_FACE_FEATURE
--- @param ped Ped The ped entity
--- @param index number An integer ranging from 0 to 19
--- @param scale number A float ranging from -1.0 to 1.0
--- @return void (Type not found)
function SetPedFaceFeature(ped, index, scale) end

--- Values look to be between 0.0 and 1.0  
--- From decompiled scripts: 0.0, 0.6, 0.65, 0.8, 1.0  
--- You are correct, just looked in IDA it breaks from the function if it's less than 0.0f or greater than 1.0f.  
--- @name SET_PED_ENVEFF_SCALE
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedEnveffScale(ped, value) end

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
--- @name _SET_PED_EYE_COLOR
--- @param ped Ped 
--- @param index number 
--- @return void (Type not found)
function SetPedEyeColor(ped, index) end

--- @name SET_PED_ENABLE_WEAPON_BLOCKING
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedEnableWeaponBlocking(ped, toggle) end

--- bit 15 (0x8000) = force cower
--- @name SET_PED_FLEE_ATTRIBUTES
--- @param ped Ped 
--- @param attributeFlags number 
--- @param enable boolean 
--- @return void (Type not found)
function SetPedFleeAttributes(ped, attributeFlags, enable) end

--- @name SET_PED_GET_OUT_UPSIDE_DOWN_VEHICLE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedGetOutUpsideDownVehicle(ped, toggle) end

--- From the scripts:  
--- PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),  
--- "ANIM_GROUP_GESTURE_MISS_FRA0");  
--- PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),  
--- "ANIM_GROUP_GESTURE_MISS_DocksSetup1");  
--- @name SET_PED_GESTURE_GROUP
--- @param ped Ped 
--- @param animGroupGesture string 
--- @return void (Type not found)
function SetPedGestureGroup(ped, animGroupGesture) end

--- @name SET_PED_GENERATES_DEAD_BODY_EVENTS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedGeneratesDeadBodyEvents(ped, toggle) end

--- @name SET_PED_GROUP_MEMBER_PASSENGER_INDEX
--- @param ped Ped 
--- @param index number 
--- @return void (Type not found)
function SetPedGroupMemberPassengerIndex(ped, index) end

--- Used for freemode (online) characters.  
--- @name _SET_PED_HAIR_COLOR
--- @param ped Ped 
--- @param colorID number 
--- @param highlightColorID number 
--- @return void (Type not found)
function SetPedHairColor(ped, colorID, highlightColorID) end

--- enable or disable the gravity of a ped  
--- Examples:  
--- PED::SET_PED_GRAVITY(PLAYER::PLAYER_PED_ID(), 0x00000001);  
--- PED::SET_PED_GRAVITY(Local_289[iVar0 /*20*/], 0x00000001);  
--- @name SET_PED_GRAVITY
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedGravity(ped, toggle) end

--- For more info please refer to [this](https://gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained) topic.
--- **Other information:**
--- IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.</br>
--- This native function is often called prior to calling natives such as:
--- *   [`SetPedHairColor`](#\_0xBB43F090)
--- *   [`SetPedHeadOverlayColor`](#\_0x78935A27)
--- *   [`SetPedHeadOverlay`](#\_0xD28DBA90)
--- *   [`SetPedFaceFeature`](#\_0x6C8D4458)
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
--- You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
--- @name SET_PED_HEAD_OVERLAY
--- @param ped Ped The ped entity
--- @param overlayID number The overlay id displayed up above.
--- @param index number An integer representing the index (from 0 to `_GET_NUM_OVERLAY_VALUES(overlayID)-1`)
--- @param opacity number A float ranging from 0.0 to 1.0
--- @return void (Type not found)
function SetPedHeadOverlay(ped, overlayID, index, opacity) end

--- @name SET_PED_HEATSCALE_OVERRIDE
--- @param ped Ped 
--- @param heatScale number 
--- @return void (Type not found)
function SetPedHeatscaleOverride(ped, heatScale) end

--- Used for freemode (online) characters. 
--- Called after SET_PED_HEAD_OVERLAY().  
--- **Note:**
--- You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
--- @name _SET_PED_HEAD_OVERLAY_COLOR
--- @param ped Ped The ped entity
--- @param overlayID number An integer representing the overlay id
--- @param colorType number 1 for eyebrows, beards, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.
--- @param colorID number An integer representing the primary color id
--- @param secondColorID number An integer representing the secondary color id
--- @return void (Type not found)
function SetPedHeadOverlayColor(ped, overlayID, colorType, colorID, secondColorID) end

--- @name SET_PED_HEARING_RANGE
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedHearingRange(ped, value) end

--- @name SET_PED_HELMET
--- @param ped Ped 
--- @param canWearHelmet boolean 
--- @return void (Type not found)
function SetPedHelmet(ped, canWearHelmet) end

--- NativeDB Added Parameter 3: BOOL p2
--- @name SET_PED_HELMET_PROP_INDEX
--- @param ped Ped The ped handle.
--- @param propIndex number The prop index to set the helmet to. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F).
--- @return void (Type not found)
function SetPedHelmetPropIndex(ped, propIndex) end

--- @name SET_PED_HELMET_TEXTURE_INDEX
--- @param ped Ped 
--- @param textureIndex number 
--- @return void (Type not found)
function SetPedHelmetTextureIndex(ped, textureIndex) end

--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, MISC::GET_HASH_KEY("MINI_PROSTITUTE_LOW_PASSENGER"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, MISC::GET_HASH_KEY("MINI_PROSTITUTE_LOW_RESTRICTED_PASSENGER"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, MISC::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, MISC::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT_REAR"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_95, MISC::GET_HASH_KEY("MISS_FAMILY2_JIMMY_BICYCLE"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(num3, MISC::GET_HASH_KEY("MISSFBI2_MICHAEL_DRIVEBY"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("MISS_ARMENIAN3_FRANKLIN_TENSE"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("MISSFBI5_TREVOR_DRIVING"));
--- @name SET_PED_IN_VEHICLE_CONTEXT
--- @param ped Ped 
--- @param context Hash 
--- @return void (Type not found)
function SetPedInVehicleContext(ped, context) end

--- @name SET_PED_ID_RANGE
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedIdRange(ped, value) end

--- @name SET_PED_HELMET_FLAG
--- @param ped Ped 
--- @param helmetFlag number 
--- @return void (Type not found)
function SetPedHelmetFlag(ped, helmetFlag) end

--- @name SET_PED_HIGHLY_PERCEPTIVE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedHighlyPerceptive(ped, toggle) end

--- @name SET_PED_INTO_VEHICLE
--- @param ped Ped 
--- @param vehicle Vehicle 
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669). -2 for the first available seat.
--- @return void (Type not found)
function SetPedIntoVehicle(ped, vehicle, seatIndex) end

--- @name _SET_PED_HELMET_UNK
--- @param ped Ped 
--- @param p1 boolean 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function SetPedHelmetUnk(ped, p1, p2, p3) end

--- @name SET_PED_INCREASED_AVOIDANCE_RADIUS
--- @param ped Ped 
--- @return void (Type not found)
function SetPedIncreasedAvoidanceRadius(ped) end

--- @name SET_PED_LOD_MULTIPLIER
--- @param ped Ped 
--- @param multiplier number 
--- @return void (Type not found)
function SetPedLodMultiplier(ped, multiplier) end

--- "IK" stands for "Inverse kinematics." I assume this has something to do with how the ped uses his legs to balance. In the scripts, the second parameter is always an int with a value of 2, 0, or sometimes 1  
--- @name SET_PED_LEG_IK_MODE
--- @param ped Ped 
--- @param mode number 
--- @return void (Type not found)
function SetPedLegIkMode(ped, mode) end

--- @name SET_PED_MAX_MOVE_BLEND_RATIO
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedMaxMoveBlendRatio(ped, value) end

--- @name SET_PED_KEEP_TASK
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedKeepTask(ped, toggle) end

--- sets the maximum health of a ped  
--- I think it's never been used in any script  
--- @name SET_PED_MAX_HEALTH
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedMaxHealth(ped, value) end

--- Ped will stay on the ground after being stunned for at lest ms time. (in milliseconds)  
--- @name SET_PED_MIN_GROUND_TIME_FOR_STUNGUN
--- @param ped Ped 
--- @param ms number 
--- @return void (Type not found)
function SetPedMinGroundTimeForStungun(ped, ms) end

--- Set the maximum time a ped can stay underwater. Maximum seems to be 50 seconds.
--- @name SET_PED_MAX_TIME_UNDERWATER
--- @param ped Ped Ped id.
--- @param value number Time in seconds. Maximum is 50.0, any value above will be changed to 50.0.
--- @return void (Type not found)
function SetPedMaxTimeUnderwater(ped, value) end

--- @name SET_PED_MIN_MOVE_BLEND_RATIO
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedMinMoveBlendRatio(ped, value) end

--- @name SET_PED_MODEL_IS_SUPPRESSED
--- @param model Hash 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedModelIsSuppressed(model, toggle) end

--- @name SET_PED_MAX_TIME_IN_WATER
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedMaxTimeInWater(ped, value) end

--- @name SET_PED_NEVER_LEAVES_GROUP
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedNeverLeavesGroup(ped, toggle) end

--- Min: 0.00  
--- Max: 10.00  
--- Can be used in combo with fast run cheat.  
--- When value is set to 10.00:  
--- Sprinting without fast run cheat: 66 m/s  
--- Sprinting with fast run cheat: 77 m/s  
--- Needs to be looped!  
--- Note: According to IDA for the Xbox360 xex, when they check bgt they seem to have the min to 0.0f, but the max set to 1.15f not 10.0f.  
--- @name SET_PED_MOVE_RATE_OVERRIDE
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedMoveRateOverride(ped, value) end

--- @name SET_PED_MOTION_BLUR
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedMotionBlur(ped, toggle) end

--- Maximum possible amount of money on MP is 2000. ~JX  
--- -----------------------------------------------------------------------------  
--- Maximum amount that a ped can theoretically have is 65535 (0xFFFF) since the amount is stored as an unsigned short (uint16_t) value.  
--- @name SET_PED_MONEY
--- @param ped Ped 
--- @param amount number 
--- @return void (Type not found)
function SetPedMoney(ped, amount) end

--- @name SET_PED_MOVE_ANIMS_BLEND_OUT
--- @param ped Ped 
--- @return void (Type not found)
function SetPedMoveAnimsBlendOut(ped) end

--- The distance between these points, is the diagonal of a box (remember it's 3D).  
--- @name SET_PED_NON_CREATION_AREA
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @return void (Type not found)
function SetPedNonCreationArea(x1, y1, z1, x2, y2, z2) end

--- List of movement clipsets:
--- Thanks to elsewhat for list.
---  "ANIM_GROUP_MOVE_BALLISTIC"
---  "ANIM_GROUP_MOVE_LEMAR_ALLEY"
---  "clipset@move@trash_fast_turn"
---  "FEMALE_FAST_RUNNER"
---  "missfbi4prepp1_garbageman"
---  "move_characters@franklin@fire"
---  "move_characters@Jimmy@slow@"
---  "move_characters@michael@fire"
---  "move_f@flee@a"
---  "move_f@scared"
---  "move_f@sexy@a"
---  "move_heist_lester"
---  "move_injured_generic"
---  "move_lester_CaneUp"
---  "move_m@bag"
---  "MOVE_M@BAIL_BOND_NOT_TAZERED"
---  "MOVE_M@BAIL_BOND_TAZERED"
---  "move_m@brave"
---  "move_m@casual@d"
---  "move_m@drunk@moderatedrunk"
---  "MOVE_M@DRUNK@MODERATEDRUNK"
---  "MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP"
---  "MOVE_M@DRUNK@SLIGHTLYDRUNK"
---  "MOVE_M@DRUNK@VERYDRUNK"
---  "move_m@fire"
---  "move_m@gangster@var_e"
---  "move_m@gangster@var_f"
---  "move_m@gangster@var_i"
---  "move_m@JOG@"
---  "MOVE_M@PRISON_GAURD"
---  "MOVE_P_M_ONE"
---  "MOVE_P_M_ONE_BRIEFCASE"
---  "move_p_m_zero_janitor"
---  "move_p_m_zero_slow"
---  "move_ped_bucket"
---  "move_ped_crouched"
---  "move_ped_mop"
---  "MOVE_M@FEMME@"
---  "MOVE_F@FEMME@"
---  "MOVE_M@GANGSTER@NG"
---  "MOVE_F@GANGSTER@NG"
---  "MOVE_M@POSH@"
---  "MOVE_F@POSH@"
---  "MOVE_M@TOUGH_GUY@"
---  "MOVE_F@TOUGH_GUY@"
--- ~ NotCrunchyTaco
--- @name SET_PED_MOVEMENT_CLIPSET
--- @param ped Ped 
--- @param clipSet string 
--- @param transitionSpeed number time in seconds it takes to transition from one movement clipset to another.
--- @return void (Type not found)
function SetPedMovementClipset(ped, clipSet, transitionSpeed) end

--- @name SET_PED_PANIC_EXIT_SCENARIO
--- @param ped Ped 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return 
function SetPedPanicExitScenario(ped, x, y, z) end

--- NOTE: Debugging functions are not present in the retail version of the game.  
--- *untested but char *name could also be a hash for a localized string  
--- @name SET_PED_NAME_DEBUG
--- @param ped Ped 
--- @param name string 
--- @return void (Type not found)
function SetPedNameDebug(ped, name) end

--- @name SET_PED_PARACHUTE_TINT_INDEX
--- @param ped Ped 
--- @param tintIndex number 
--- @return void (Type not found)
function SetPedParachuteTintIndex(ped, tintIndex) end

--- **This native does absolutely nothing, just a nullsub**
--- Points to the same function as for example GET_RANDOM_VEHICLE_MODEL_IN_MEMORY and it does absolutely nothing.  
--- @name SET_PED_PLAYS_HEAD_ON_HORN_ANIM_WHEN_DIES_IN_VEHICLE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedPlaysHeadOnHornAnimWhenDiesInVehicle(ped, toggle) end

--- @name SET_PED_PRELOAD_PROP_DATA
--- @param ped Ped The ped handle.
--- @param componentId number The component that you want to set. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
--- @param drawableId number The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
--- @param textureId number The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171).
--- @return boolean
function SetPedPreloadPropData(ped, componentId, drawableId, textureId) end

--- @name SET_PED_RAGDOLL_FORCE_FALL
--- @param ped Ped 
--- @return void (Type not found)
function SetPedRagdollForceFall(ped) end

--- @name SET_PED_PREFERRED_COVER_SET
--- @param ped Ped 
--- @param itemSet  
--- @return void (Type not found)
function SetPedPreferredCoverSet(ped, itemSet) end

--- i could be time. Only example in the decompiled scripts uses it as -1.
--- @name SET_PED_PINNED_DOWN
--- @param ped Ped 
--- @param pinned boolean 
--- @param i number 
--- @return 
function SetPedPinnedDown(ped, pinned, i) end

--- This is only called once in the scripts.
--- sub_1CD9(&l_49, 0, getElem(3, &l_34, 4), "MICHAEL", 0, 1);
---                     sub_1CA8("WORLD_HUMAN_SMOKING", 2);
---                     PED::SET_PED_PRIMARY_LOOKAT(getElem(3, &l_34, 4), PLAYER::PLAYER_PED_ID());
--- @name SET_PED_PRIMARY_LOOKAT
--- @param ped Ped 
--- @param lookAt Ped 
--- @return void (Type not found)
function SetPedPrimaryLookat(ped, lookAt) end

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
---     ANCHOR_HEAD = 0, // "p_head"
---     ANCHOR_EYES = 1, // "p_eyes"
---     ANCHOR_EARS = 2, // "p_ears"
---     ANCHOR_MOUTH = 3, // "p_mouth"
---     ANCHOR_LEFT_HAND = 4, // "p_lhand"
---     ANCHOR_RIGHT_HAND = 5, // "p_rhand"
---     ANCHOR_LEFT_WRIST = 6, // "p_lwrist"
---     ANCHOR_RIGHT_WRIST = 7, // "p_rwrist"
---     ANCHOR_HIP = 8, // "p_lhip"
---     ANCHOR_LEFT_FOOT = 9, // "p_lfoot"
---     ANCHOR_RIGHT_FOOT = 10, // "p_rfoot"
---     ANCHOR_PH_L_HAND = 11, // "ph_lhand"
---     ANCHOR_PH_R_HAND = 12, // "ph_rhand"
---     NUM_ANCHORS = 13,
--- };
--- @name SET_PED_PROP_INDEX
--- @param ped Ped The ped handle.
--- @param componentId number The component that you want to set. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
--- @param drawableId number The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
--- @param textureId number The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171).
--- @param attach boolean Attached or not.
--- @return void (Type not found)
function SetPedPropIndex(ped, componentId, drawableId, textureId, attach) end

--- from extreme3.c4
--- PED::_39D55A620FCB6A3A(PLAYER::PLAYER_PED_ID(), 8, PED::GET_PED_DRAWABLE_VARIATION(PLAYER::PLAYER_PED_ID(), 8), PED::GET_PED_TEXTURE_VARIATION(PLAYER::PLAYER_PED_ID(), 8));
--- p1 is probably componentId
--- @name SET_PED_PRELOAD_VARIATION_DATA
--- @param ped Ped 
--- @param slot number 
--- @param drawableId number 
--- @param textureId number 
--- @return 
function SetPedPreloadVariationData(ped, slot, drawableId, textureId) end

--- Causes Ped to ragdoll on collision with any object (e.g Running into trashcan). If applied to player you will sometimes trip on the sidewalk.
--- Needs to be recalled after each ragdoll from a Collision.
--- @name SET_PED_RAGDOLL_ON_COLLISION
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedRagdollOnCollision(ped, toggle) end

--- @name SET_PED_RELATIONSHIP_GROUP_HASH
--- @param ped Ped 
--- @param hash Hash 
--- @return void (Type not found)
function SetPedRelationshipGroupHash(ped, hash) end

--- p1 is always 0 in R* scripts; and a quick disassembly seems to indicate that p1 is unused.  
--- @name SET_PED_RANDOM_COMPONENT_VARIATION
--- @param ped Ped 
--- @param p1 number 
--- @return void (Type not found)
function SetPedRandomComponentVariation(ped, p1) end

--- @name SET_PED_RANDOM_PROPS
--- @param ped Ped The ped handle.
--- @return void (Type not found)
function SetPedRandomProps(ped) end

--- PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);
--- Known values:
--- @name SET_PED_RESET_FLAG
--- @param ped Ped 
--- @param flagId number 
--- @param doReset boolean 
--- @return void (Type not found)
function SetPedResetFlag(ped, flagId, doReset) end

--- This native sets a scuba mask for freemode models and an oxygen bottle for player_\* models. It works on freemode and player_\* models.
--- @name _SET_PED_SCUBA_GEAR_VARIATION
--- @param ped Ped 
--- @return void (Type not found)
function SetPedScubaGearVariation(ped) end

--- shootRate 0-1000  
--- @name SET_PED_SHOOT_RATE
--- @param ped Ped 
--- @param shootRate number 
--- @return void (Type not found)
function SetPedShootRate(ped, shootRate) end

--- @name SET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH
--- @param ped Ped 
--- @param hash Hash 
--- @return void (Type not found)
function SetPedRelationshipGroupDefaultHash(ped, hash) end

--- @name SET_PED_SHOOTS_AT_COORD
--- @param ped Ped 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedShootsAtCoord(ped, x, y, z, toggle) end

--- @name SET_PED_RESERVE_PARACHUTE_TINT_INDEX
--- @param ped Ped 
--- @param p1  
--- @return void (Type not found)
function SetPedReserveParachuteTintIndex(ped, p1) end

--- @name SET_PED_SEEING_RANGE
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedSeeingRange(ped, value) end

--- @name _SET_PED_SHOULD_PLAY_DIRECTED_SCENARIO_EXIT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return 
function SetPedShouldPlayDirectedScenarioExit(p0, p1, p2, p3) end

--- @name SET_PED_SHOULD_PLAY_FLEE_SCENARIO_EXIT
--- @param ped Ped 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return 
function SetPedShouldPlayFleeScenarioExit(ped, p1, p2, p3) end

--- @name SET_PED_SHOULD_PLAY_IMMEDIATE_SCENARIO_EXIT
--- @param ped Ped 
--- @return void (Type not found)
function SetPedShouldPlayImmediateScenarioExit(ped) end

--- @name SET_PED_STAY_IN_VEHICLE_WHEN_JACKED
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedStayInVehicleWhenJacked(ped, toggle) end

--- @name SET_PED_SHOULD_PLAY_NORMAL_SCENARIO_EXIT
--- @param ped Ped 
--- @return void (Type not found)
function SetPedShouldPlayNormalScenarioExit(ped) end

--- @name SET_PED_SPHERE_DEFENSIVE_AREA
--- @param ped Ped 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param p5 boolean 
--- @param p6 boolean 
--- @return void (Type not found)
function SetPedSphereDefensiveArea(ped, x, y, z, radius, p5, p6) end

--- p1 is usually 0 in the scripts. action is either 0 or a pointer to "DEFAULT_ACTION".  
--- @name SET_PED_STEALTH_MOVEMENT
--- @param ped Ped 
--- @param p1 boolean 
--- @param action string 
--- @return void (Type not found)
function SetPedStealthMovement(ped, p1, action) end

--- @name SET_PED_STEERS_AROUND_OBJECTS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedSteersAroundObjects(ped, toggle) end

--- @name SET_PED_STRAFE_CLIPSET
--- @param ped Ped 
--- @param clipSet string 
--- @return void (Type not found)
function SetPedStrafeClipset(ped, clipSet) end

--- @name SET_PED_STEERS_AROUND_PEDS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedSteersAroundPeds(ped, toggle) end

--- @name SET_PED_STEERS_AROUND_VEHICLES
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedSteersAroundVehicles(ped, toggle) end

--- Ped no longer takes critical damage modifiers if set to FALSE.
--- Example: Headshotting a player no longer one shots them. Instead they will take the same damage as a torso shot.
--- @name SET_PED_SUFFERS_CRITICAL_HITS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedSuffersCriticalHits(ped, toggle) end

--- @name SET_PED_TO_LOAD_COVER
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedToLoadCover(ped, toggle) end

--- Only 1 and 2 appear in the scripts. combatbehaviour.meta seems to only have TLR_SearchForTarget for all peds, but we don't know if that's 1 or 2.  
--- @name SET_PED_TARGET_LOSS_RESPONSE
--- @param ped Ped 
--- @param responseType number 
--- @return void (Type not found)
function SetPedTargetLossResponse(ped, responseType) end

--- Sweat is set to 100.0 or 0.0 in the decompiled scripts.  
--- @name SET_PED_SWEAT
--- @param ped Ped 
--- @param sweat number 
--- @return void (Type not found)
function SetPedSweat(ped, sweat) end

--- p4/p5: Unusued in TU27
--- ### Ragdoll Types
--- **0**: CTaskNMRelax
--- **1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
--- **Else**: CTaskNMBalance
--- @name SET_PED_TO_RAGDOLL
--- @param ped Ped 
--- @param time1 number Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.
--- @param time2 number 
--- @param ragdollType number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @param p6 boolean 
--- @return boolean
function SetPedToRagdoll(ped, time1, time2, ragdollType, p4, p5, p6) end

--- Return variable is never used in R*'s scripts.  
--- Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.  
--- x, y, and z are coordinates, most likely to where the ped will fall.  
--- p7 is probably the force of the fall, but untested, so I left the variable name the same.  
--- p8 to p13 are always 0f in R*'s scripts.  
--- (Simplified) Example of the usage of the function from R*'s scripts:  
--- ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);  
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
--- @return boolean
function SetPedToRagdollWithFall(ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13) end

--- p2 is usually -1 in the scripts. action is either 0 or "DEFAULT_ACTION".  
--- @name SET_PED_USING_ACTION_MODE
--- @param ped Ped 
--- @param p1 boolean 
--- @param p2 number 
--- @param action string 
--- @return void (Type not found)
function SetPedUsingActionMode(ped, p1, p2, action) end

--- NativeDB Added Parameter 5: Any p4
--- @name SET_PED_VEHICLE_FORCED_SEAT_USAGE
--- @param ped Ped 
--- @param vehicle Vehicle 
--- @param seatIndex number See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
--- @param flags number 
--- @return void (Type not found)
function SetPedVehicleForcedSeatUsage(ped, vehicle, seatIndex, flags) end

--- @name SET_PED_TO_INFORM_RESPECTED_FRIENDS
--- @param ped Ped 
--- @param radius number 
--- @param maxFriends number 
--- @return void (Type not found)
function SetPedToInformRespectedFriends(ped, radius, maxFriends) end

--- @name SET_PED_VISUAL_FIELD_CENTER_ANGLE
--- @param ped Ped 
--- @param angle number 
--- @return void (Type not found)
function SetPedVisualFieldCenterAngle(ped, angle) end

--- This native refers to the field of vision the ped has above them, starting at 0 degrees. 90f would let the ped see enemies directly above of them.  
--- @name SET_PED_VISUAL_FIELD_MAX_ELEVATION_ANGLE
--- @param ped Ped 
--- @param angle number 
--- @return void (Type not found)
function SetPedVisualFieldMaxElevationAngle(ped, angle) end

--- @name SET_PED_VISUAL_FIELD_MAX_ANGLE
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedVisualFieldMaxAngle(ped, value) end

--- @name SET_PED_VISUAL_FIELD_MIN_ANGLE
--- @param ped Ped 
--- @param value number 
--- @return void (Type not found)
function SetPedVisualFieldMinAngle(ped, value) end

--- This native refers to the field of vision the ped has below them, starting at 0 degrees. The angle value should be negative.  
--- @name SET_PED_VISUAL_FIELD_MIN_ELEVATION_ANGLE
--- @param ped Ped 
--- @param angle number 
--- @return void (Type not found)
function SetPedVisualFieldMinElevationAngle(ped, angle) end

--- @name SET_PED_WEAPON_MOVEMENT_CLIPSET
--- @param ped Ped 
--- @param clipSet string 
--- @return void (Type not found)
function SetPedWeaponMovementClipset(ped, clipSet) end

--- @name SET_PED_VISUAL_FIELD_PERIPHERAL_RANGE
--- @param ped Ped 
--- @param range number 
--- @return void (Type not found)
function SetPedVisualFieldPeripheralRange(ped, range) end

--- It adds the wetness level to the player clothing/outfit. As if player just got out from water surface.  
--- @name SET_PED_WETNESS_HEIGHT
--- @param ped Ped 
--- @param height number 
--- @return void (Type not found)
function SetPedWetnessHeight(ped, height) end

--- Works for both player and peds, but some flags don't seem to work for the player (1, for example)  
--- 1 - Blocks ragdolling when shot.  
--- 2 - Blocks ragdolling when hit by a vehicle. The ped still might play a falling animation.  
--- 4 - Blocks ragdolling when set on fire.  
--- -----------------------------------------------------------------------  
--- There seem to be 26 flags  
--- @name SET_RAGDOLL_BLOCKING_FLAGS
--- @param ped Ped 
--- @param flags number 
--- @return void (Type not found)
function SetRagdollBlockingFlags(ped, flags) end

--- Sets the relationship between two groups. This should be called twice (once for each group).  
--- Relationship types:  
--- 0 = Companion  
--- 1 = Respect  
--- 2 = Like  
--- 3 = Neutral  
--- 4 = Dislike  
--- 5 = Hate  
--- 255 = Pedestrians  
--- Example:  
--- PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);  
--- PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);  
--- @name SET_RELATIONSHIP_BETWEEN_GROUPS
--- @param relationship number 
--- @param group1 Hash 
--- @param group2 Hash 
--- @return void (Type not found)
function SetRelationshipBetweenGroups(relationship, group1, group2) end

--- combined with PED::SET_PED_WETNESS_HEIGHT(), this native makes the ped drenched in water up to the height specified in the other function  
--- @name SET_PED_WETNESS_ENABLED_THIS_FRAME
--- @param ped Ped 
--- @return void (Type not found)
function SetPedWetnessEnabledThisFrame(ped) end

--- Min and max are usually 100.0 and 200.0
--- @name SET_POP_CONTROL_SPHERE_THIS_FRAME
--- @param x number 
--- @param y number 
--- @param z number 
--- @param min number 
--- @param max number 
--- @return void (Type not found)
function SetPopControlSphereThisFrame(x, y, z, min, max) end

--- Sets a value indicating whether scenario peds should be returned by the next call to a command that returns peds. Eg. GET_CLOSEST_PED.  
--- @name SET_SCENARIO_PEDS_TO_BE_RETURNED_BY_NEXT_COMMAND
--- @param value boolean 
--- @return void (Type not found)
function SetScenarioPedsToBeReturnedByNextCommand(value) end

--- @name SET_SCRIPTED_CONVERSION_COORD_THIS_FRAME
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetScriptedConversionCoordThisFrame(x, y, z) end

--- @name SET_SCENARIO_PEDS_SPAWN_IN_SPHERE_AREA
--- @param x number 
--- @param y number 
--- @param z number 
--- @param range number 
--- @param p4 number 
--- @return void (Type not found)
function SetScenarioPedsSpawnInSphereArea(x, y, z, range, p4) end

--- @name SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME
--- @param p0 number 
--- @param p1 number 
--- @return void (Type not found)
function SetScenarioPedDensityMultiplierThisFrame(p0, p1) end

--- @name SET_SYNCHRONIZED_SCENE_HOLD_LAST_FRAME
--- @param sceneID number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetSynchronizedSceneHoldLastFrame(sceneID, toggle) end

--- @name _SET_RELATIONSHIP_GROUP_DONT_AFFECT_WANTED_LEVEL
--- @param group Hash 
--- @param p1 boolean 
--- @return void (Type not found)
function SetRelationshipGroupDontAffectWantedLevel(group, p1) end

--- @name SET_SYNCHRONIZED_SCENE_PHASE
--- @param sceneID number 
--- @param phase number 
--- @return void (Type not found)
function SetSynchronizedScenePhase(sceneID, phase) end

--- @name SET_SYNCHRONIZED_SCENE_LOOPED
--- @param sceneID number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetSynchronizedSceneLooped(sceneID, toggle) end

--- @name SET_SCRIPTED_ANIM_SEAT_OFFSET
--- @param ped Ped 
--- @param p1 number 
--- @return void (Type not found)
function SetScriptedAnimSeatOffset(ped, p1) end

--- @name SET_SYNCHRONIZED_SCENE_ORIGIN
--- @param sceneID number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param roll number 
--- @param pitch number 
--- @param yaw number 
--- @param p7 boolean 
--- @return void (Type not found)
function SetSynchronizedSceneOrigin(sceneID, x, y, z, roll, pitch, yaw, p7) end

--- @name SET_SYNCHRONIZED_SCENE_RATE
--- @param sceneID number 
--- @param rate number 
--- @return void (Type not found)
function SetSynchronizedSceneRate(sceneID, rate) end

--- @name SPAWNPOINTS_GET_SEARCH_RESULT
--- @param randomInt number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SpawnpointsGetSearchResult(randomInt, x, y, z) end

--- @name SPAWNPOINTS_CANCEL_SEARCH
--- @return void (Type not found)
function SpawnpointsCancelSearch() end

--- @name SPAWNPOINTS_GET_NUM_SEARCH_RESULTS
--- @return number
function SpawnpointsGetNumSearchResults() end

--- @name SPAWNPOINTS_GET_SEARCH_RESULT_FLAGS
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function SpawnpointsGetSearchResultFlags(p0, p1) end

--- @name SPAWNPOINTS_IS_SEARCH_ACTIVE
--- @return boolean
function SpawnpointsIsSearchActive() end

--- @name SPAWNPOINTS_IS_SEARCH_COMPLETE
--- @return boolean
function SpawnpointsIsSearchComplete() end

--- @name SPAWNPOINTS_START_SEARCH
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param interiorFlags number 
--- @param scale number 
--- @param duration number 
--- @return void (Type not found)
function SpawnpointsStartSearch(p0, p1, p2, p3, p4, interiorFlags, scale, duration) end

--- @name STOP_ANY_PED_MODEL_BEING_SUPPRESSED
--- @return void (Type not found)
function StopAnyPedModelBeingSuppressed() end

--- @name SPAWNPOINTS_IS_SEARCH_FAILED
--- @return boolean
function SpawnpointsIsSearchFailed() end

--- @name SPAWNPOINTS_START_SEARCH_IN_ANGLED_AREA
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param interiorFlags number 
--- @param scale number 
--- @param duration number 
--- @return void (Type not found)
function SpawnpointsStartSearchInAngledArea(x, y, z, p3, p4, p5, p6, interiorFlags, scale, duration) end

--- See [`SET_PED_HEAD_BLEND_DATA`](#\_0x9414E18B9434C2FE)
--- @name UPDATE_PED_HEAD_BLEND_DATA
--- @param ped Ped 
--- @param shapeMix number 
--- @param skinMix number 
--- @param thirdMix number 
--- @return void (Type not found)
function UpdatePedHeadBlendData(ped, shapeMix, skinMix, thirdMix) end

--- @name STOP_PED_WEAPON_FIRING_WHEN_DROPPED
--- @param ped Ped 
--- @return void (Type not found)
function StopPedWeaponFiringWhenDropped(ped) end

--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
--- @name UNREGISTER_PEDHEADSHOT
--- @param id number 
--- @return void (Type not found)
function UnregisterPedheadshot(id) end

--- @name WAS_PED_KILLED_BY_STEALTH
--- @param ped Ped 
--- @return boolean
function WasPedKilledByStealth(ped) end

--- @name WAS_PED_KNOCKED_OUT
--- @param ped Ped 
--- @return boolean
function WasPedKnockedOut(ped) end

--- @name WAS_PED_KILLED_BY_TAKEDOWN
--- @param ped Ped 
--- @return boolean
function WasPedKilledByTakedown(ped) end

--- Gets a value indicating whether this ped's health is below its injured threshold.  
--- The default threshold is 100.  
--- @name IS_PED_INJURED
--- @param ped Ped 
--- @return boolean
function IsPedInjured(ped) end

--- Despite this function's name, it simply returns whether the specified handle is a Ped.  
--- @name WAS_PED_SKELETON_UPDATED
--- @param ped Ped 
--- @return boolean
function WasPedSkeletonUpdated(ped) end
