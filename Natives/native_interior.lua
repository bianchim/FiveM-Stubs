
--- More info: http://gtaforums.com/topic/836367-adding-props-to-interiors/  
--- @name ACTIVATE_INTERIOR_ENTITY_SET
--- @param interior number 
--- @param entitySetName string 
--- @return void (Type not found)
function ActivateInteriorEntitySet(interior, entitySetName) end

--- Does something similar to INTERIOR::DISABLE_INTERIOR  
--- @name CAP_INTERIOR
--- @param interiorID number 
--- @param toggle boolean 
--- @return void (Type not found)
function CapInterior(interiorID, toggle) end

--- @name ADD_PICKUP_TO_INTERIOR_ROOM_BY_NAME
--- @param pickup Pickup 
--- @param roomName string 
--- @return void (Type not found)
function AddPickupToInteriorRoomByName(pickup, roomName) end

--- Immediately removes entity from an interior. Like sets entity to `limbo` room.
--- NativeDB Introduced: v2189
--- @name _CLEAR_INTERIOR_FOR_ENTITY
--- @param entity Entity 
--- @return void (Type not found)
function ClearInteriorForEntity(entity) end

--- @name CLEAR_ROOM_FOR_ENTITY
--- @param entity Entity 
--- @return void (Type not found)
function ClearRoomForEntity(entity) end

--- @name DEACTIVATE_INTERIOR_ENTITY_SET
--- @param interior number 
--- @param entitySetName string 
--- @return void (Type not found)
function DeactivateInteriorEntitySet(interior, entitySetName) end

--- @name CLEAR_ROOM_FOR_GAME_VIEWPORT
--- @return void (Type not found)
function ClearRoomForGameViewport() end

--- This is the native that is used to hide the exterior of GTA Online apartment buildings when you are inside an apartment.
--- @name ENABLE_EXTERIOR_CULL_MODEL_THIS_FRAME
--- @param mapObjectHash Hash 
--- @return void (Type not found)
function EnableExteriorCullModelThisFrame(mapObjectHash) end

--- @name FORCE_ROOM_FOR_GAME_VIEWPORT
--- @param interiorID number 
--- @param roomHashKey Hash 
--- @return void (Type not found)
function ForceRoomForGameViewport(interiorID, roomHashKey) end

--- @name _ENABLE_SCRIPT_CULL_MODEL_THIS_FRAME
--- @param mapObjectHash Hash 
--- @return void (Type not found)
function EnableScriptCullModelThisFrame(mapObjectHash) end

--- Example:   
--- This removes the interior from the strip club and when trying to walk inside the player just falls:  
--- INTERIOR::DISABLE_INTERIOR(118018, true);  
--- @name DISABLE_INTERIOR
--- @param interiorID number 
--- @param toggle boolean 
--- @return void (Type not found)
function DisableInterior(interiorID, toggle) end

--- Returns interior ID from specified coordinates. If coordinates are outside, then it returns 0.  
--- Example for VB.NET  
--- Dim interiorID As Integer = Native.Function.Call(Of Integer)(Hash.GET_INTERIOR_AT_COORDS, X, Y, Z)  
--- @name GET_INTERIOR_AT_COORDS
--- @param x number 
--- @param y number 
--- @param z number 
--- @return number
function GetInteriorAtCoords(x, y, z) end

--- Hashed version of GET_INTERIOR_AT_COORDS_WITH_TYPE
--- @name GET_INTERIOR_AT_COORDS_WITH_TYPEHASH
--- @param x number 
--- @param y number 
--- @param z number 
--- @param typeHash Hash 
--- @return number
function GetInteriorAtCoordsWithTypehash(x, y, z, typeHash) end

--- Forces the particular room in an interior to load incase not teleporting into the portal.
--- @name FORCE_ROOM_FOR_ENTITY
--- @param entity Entity 
--- @param interior number 
--- @param roomHashKey Hash 
--- @return void (Type not found)
function ForceRoomForEntity(entity, interior, roomHashKey) end

--- Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.  
--- Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))  
--- Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.  
--- Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.  
--- @name GET_INTERIOR_AT_COORDS_WITH_TYPE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param interiorType string 
--- @return number
function GetInteriorAtCoordsWithType(x, y, z, interiorType) end

--- @name GET_INTERIOR_FROM_COLLISION
--- @param x number 
--- @param y number 
--- @param z number 
--- @return number
function GetInteriorFromCollision(x, y, z) end

--- Returns the handle of the interior that the entity is in. Returns 0 if outside.  
--- @name GET_INTERIOR_FROM_ENTITY
--- @param entity Entity 
--- @return number
function GetInteriorFromEntity(entity) end

--- Returns the group ID of the specified interior. For example, regular interiors have group 0, subway interiors have group 1. There are a few other groups too.  
--- @name GET_INTERIOR_GROUP_ID
--- @param interior number 
--- @return number
function GetInteriorGroupId(interior) end

--- GET_INTERIOR_*
--- NativeDB Introduced: v1493
--- @name _GET_INTERIOR_HEADING
--- @param interior number 
--- @return number
function GetInteriorHeading(interior) end

--- NativeDB Introduced: v1604
--- @name GET_INTERIOR_FROM_PRIMARY_VIEW
--- @return number
function GetInteriorFromPrimaryView() end

--- Seems to do the exact same as INTERIOR::GET_ROOM_KEY_FROM_ENTITY  
--- @name GET_KEY_FOR_ENTITY_IN_ROOM
--- @param entity Entity 
--- @return Hash
function GetKeyForEntityInRoom(entity) end

--- NativeDB Introduced: v1290
--- @name GET_INTERIOR_LOCATION_AND_NAMEHASH
--- @param interior number 
--- @param position Vector3 
--- @param nameHash Hash 
--- @return void (Type not found)
function GetInteriorLocationAndNamehash(interior, position, nameHash) end

--- @name GET_ROOM_KEY_FOR_GAME_VIEWPORT
--- @return Hash
function GetRoomKeyForGameViewport() end

--- Gets the room hash key from the room that the specified entity is in. Each room in every interior has a unique key. Returns 0 if the entity is outside.  
--- @name GET_ROOM_KEY_FROM_ENTITY
--- @param entity Entity 
--- @return Hash
function GetRoomKeyFromEntity(entity) end

--- @name IS_INTERIOR_DISABLED
--- @param interior number 
--- @return boolean
function IsInteriorDisabled(interior) end

--- @name GET_OFFSET_FROM_INTERIOR_IN_WORLD_COORDS
--- @param interior number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return Vector3
function GetOffsetFromInteriorInWorldCoords(interior, x, y, z) end

--- Returns true if the collision at the specified coords is marked as being outside (false if there's an interior)
--- @name IS_COLLISION_MARKED_OUTSIDE
--- @param x number 
--- @param y number 
--- @param z number 
--- @return boolean
function IsCollisionMarkedOutside(x, y, z) end

--- @name IS_INTERIOR_CAPPED
--- @param interiorID number 
--- @return boolean
function IsInteriorCapped(interiorID) end

--- @name IS_INTERIOR_ENTITY_SET_ACTIVE
--- @param interior number 
--- @param entitySetName string 
--- @return boolean
function IsInteriorEntitySetActive(interior, entitySetName) end

--- @name IS_VALID_INTERIOR
--- @param interior number 
--- @return boolean
function IsValidInterior(interior) end

--- @name IS_INTERIOR_READY
--- @param interiorID number 
--- @return boolean
function IsInteriorReady(interiorID) end

--- @name PIN_INTERIOR_IN_MEMORY
--- @param interior number 
--- @return void (Type not found)
function PinInteriorInMemory(interior) end

--- @name REFRESH_INTERIOR
--- @param interiorID number 
--- @return void (Type not found)
function RefreshInterior(interiorID) end

--- @name _SET_INTERIOR_ENTITY_SET_COLOR
--- @param interior number 
--- @param entitySetName string 
--- @param color number 
--- @return void (Type not found)
function SetInteriorEntitySetColor(interior, entitySetName, color) end

--- Does something similar to INTERIOR::DISABLE_INTERIOR.  
--- You don't fall through the floor but everything is invisible inside and looks the same as when INTERIOR::DISABLE_INTERIOR is used. Peds behaves normally inside.  
--- @name UNPIN_INTERIOR
--- @param interior number 
--- @return void (Type not found)
function UnpinInterior(interior) end

--- @name IS_INTERIOR_SCENE
--- @return boolean
function IsInteriorScene() end
