
--- @param entity Entity 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8 number 
--- @param p9  
--- @param p10 boolean 
--- @return void (Type not found)
function BreakEntityGlass(entity, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param vecX number 
--- @param vecY number 
--- @param vecZ number 
--- @param impulse number 
--- @return void (Type not found)
function ApplyImpulseToCloth(posX, posY, posZ, vecX, vecY, vecZ, impulse) end

--- The position supplied can be anywhere, and the entity should anchor relative to that point from it's origin.  
--- @param ropeId number 
--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p5 boolean 
--- @return void (Type not found)
function AttachRopeToEntity(ropeId, entity, x, y, z, p5) end

--- Creates a rope at the specific position, that extends in the specified direction when not attached to any entities.  
--- __  
--- Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).  
--- Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.  
--- @param x number Spawn coordinate X component.
--- @param y number Spawn coordinate Y component.
--- @param z number Spawn coordinate Z component.
--- @param rotX number Rotation X component.
--- @param rotY number Rotation Y component.
--- @param rotZ number Rotation Z component.
--- @param maxLength number The maximum length the rope can droop.
--- @param ropeType number 1 to 4 are thick ropes. 5 and up are thin ropes. Ropes types defined in ropedata.xml. An invalid rope type such as 0 will crash the game.
--- @param initLength number The initial length of the rope.
--- @param minLength number The minimum length the rope can be.
--- @param lengthChangeRate number The speed in which the rope will wind if winding is started.
--- @param onlyPPU boolean 
--- @param collisionOn boolean Whether the rope should have collision. In original scripts this is followed by a LoadRopeData call when set.
--- @param lockFromFront boolean If max length is zero, and this is set to false the rope will become rigid (it will force a specific distance, what ever length is, between the objects).
--- @param timeMultiplier number The speed as which physics should run at. 1.0f is normal, 2.0f is twice as fast, -1.0f is time going backwards. This can affect gravity, etc.
--- @param breakable boolean Whether shooting the rope will break it.
--- @param unkPtr  Unknown pointer, always 0 in original scrips.
--- @return number
function AddRope(x, y, z, rotX, rotY, rotZ, maxLength, ropeType, initLength, minLength, lengthChangeRate, onlyPPU, collisionOn, lockFromFront, timeMultiplier, breakable, unkPtr) end

--- @param entity Entity 
--- @return void (Type not found)
function ActivatePhysics(entity) end

--- @param ropeId number 
--- @return boolean
function DoesRopeExist(ropeId) end

--- @param ropeId number 
--- @return void (Type not found)
function DeleteChildRope(ropeId) end

--- @param ropeId number 
--- @param entity Entity 
--- @return void (Type not found)
function DetachRopeFromEntity(ropeId, entity) end

--- @param ropeId number 
--- @return void (Type not found)
function DeleteRope(ropeId) end

--- Attaches entity 1 to entity 2.  
--- @param ropeId number 
--- @param ent1 Entity 
--- @param ent2 Entity 
--- @param ent1_x number 
--- @param ent1_y number 
--- @param ent1_z number 
--- @param ent2_x number 
--- @param ent2_y number 
--- @param ent2_z number 
--- @param length number 
--- @param p10 boolean 
--- @param p11 boolean 
--- @param boneName1 string 
--- @param boneName2 string 
--- @return void (Type not found)
function AttachEntitiesToRope(ropeId, ent1, ent2, ent1_x, ent1_y, ent1_z, ent2_x, ent2_y, ent2_z, length, p10, p11, boneName1, boneName2) end

--- @param ropeId number 
--- @return number
function GetRopeVertexCount(ropeId) end

--- @param ropeId number 
--- @param vertex number 
--- @return Vector3
function GetRopeVertexCoord(ropeId, vertex) end

--- Return if the rope was generated or not by the script where the native is called.
--- @param ropeId number 
--- @return boolean
function DoesRopeBelongToThisScript(ropeId) end

--- @param ropeId number 
--- @return Vector3
function GetRopeLastVertexCoord(ropeId) end

--- GET_*
--- @param object Object 
--- @return boolean
function GetHasObjectFragInst(object) end

--- @param ropeId number 
--- @param vertex number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function PinRopeVertex(ropeId, vertex, x, y, z) end

--- Rope presets can be found in the gamefiles. One example is "ropeFamily3", it is NOT a hash but rather a string.
--- @param ropeId number 
--- @param rope_preset string 
--- @return void (Type not found)
function LoadRopeData(ropeId, rope_preset) end

--- @param entity Entity 
--- @return Vector3
function GetCgoffset(entity) end

--- @param ropeId number 
--- @return void (Type not found)
function RopeConvertToSimple(ropeId) end

--- Unloads rope textures for all ropes in the current scene.
--- @return void (Type not found)
function RopeUnloadTextures() end

--- @param ropeId number 
--- @param toggle boolean 
--- @return void (Type not found)
function RopeDrawShadowEnabled(ropeId, toggle) end

--- @param ropeId number 
--- @return number
function RopeGetDistanceBetweenEnds(ropeId) end

--- Forces a rope to a certain length.
--- @param ropeId number 
--- @param length number 
--- @return void (Type not found)
function RopeForceLength(ropeId, length) end

--- @param entity Entity 
--- @return void (Type not found)
function SetCgAtBoundcenter(entity) end

--- @param ropeId number 
--- @param p1  
--- @return void (Type not found)
function RopeSetUpdateOrder(ropeId, p1) end

--- Loads rope textures for all ropes in the current scene.
--- @return void (Type not found)
function RopeLoadTextures() end

--- Reset a rope to a certain length.  
--- @param ropeId number 
--- @param length number 
--- @return void (Type not found)
function RopeResetLength(ropeId, length) end

--- @return boolean
function RopeAreTexturesLoaded() end

--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetCgoffset(entity, x, y, z) end

--- @param object Object 
--- @param toggle boolean 
--- @return void (Type not found)
function SetDisableBreaking(object, toggle) end

--- @param ropeId number 
--- @return void (Type not found)
function RopeSetUpdatePinverts(ropeId) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityProofUnk(entity, toggle) end

--- Related to the lower-end of a vehicles fTractionCurve, e.g., from standing starts and acceleration from low/zero speeds.
--- NativeDB Introduced: v1604
--- @param toggle boolean 
--- @return void (Type not found)
function SetLaunchControlEnabled(toggle) end

--- @param object Object 
--- @param toggle boolean 
--- @return void (Type not found)
function SetDisableFragDamage(object, toggle) end

--- @param entity Entity 
--- @param vertex number 
--- @param value number 
--- @return void (Type not found)
function SetDamping(entity, vertex, value) end

--- @param ropeId number 
--- @return void (Type not found)
function StopRopeUnwindingFront(ropeId) end

--- @param ropeId number 
--- @return void (Type not found)
function StartRopeUnwindingFront(ropeId) end

--- @param ropeId number 
--- @return void (Type not found)
function StopRopeWinding(ropeId) end

--- @param ropeId number 
--- @param vertex number 
--- @return void (Type not found)
function UnpinRopeVertex(ropeId, vertex) end

--- @param ropeId number 
--- @return void (Type not found)
function StartRopeWinding(ropeId) end
