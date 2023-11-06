
--- Creates a navmesh blocking object, vehicles will avoid driving through this area.
--- Only 32 blocking objects may exist at a given time and must be manually managed. See [`REMOVE_NAVMESH_BLOCKING_OBJECT`](#\_0x46399A7895957C0E) and [onResourceStop](https://docs.fivem.net/docs/scripting-reference/events/list/onResourceStop/)
--- @param x number The x coordinate to create the block on.
--- @param y number The y coordinate.
--- @param z number The z coordinate.
--- @param width number The width of the block.
--- @param length number The length of the block.
--- @param height number The height of the block.
--- @param heading number The heading of object in degrees.
--- @param p7 boolean Usually false.
--- @param p8  A bitfield; usually 7.
--- @return 
function AddNavmeshBlockingObject(x, y, z, width, length, height, heading, p7, p8) end

--- @param x1 number 
--- @param y1 number 
--- @param x2 number 
--- @param y2 number 
--- @return boolean
function AreNodesLoadedForArea(x1, y1, x2, y2) end

--- @return boolean
function AreAllNavmeshRegionsLoaded() end

--- @param x number 
--- @param y number 
--- @param radius number 
--- @return void (Type not found)
function AddNavmeshRequiredRegion(x, y, radius) end

--- @param p0  
--- @return boolean
function DoesNavmeshBlockingObjectExist(p0) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @return void (Type not found)
function DisableNavmeshInArea(p0, p1, p2, p3, p4, p5, p6) end

--- Clears a disabled GPS route area from a certain index previously set using [`SET_GPS_DISABLED_ZONE_AT_INDEX`](#\_0xD0BC1C6FB18EE154).
--- @param index number Index of disabled zone.
--- @return void (Type not found)
function ClearGpsDisabledZoneAtIndex(index) end

--- Calculates the travel distance between a set of points.
--- Doesn't seem to correlate with distance on gps sometimes.
--- This function returns the value 100000.0 over long distances, seems to be a failure mode result, potentially occurring when not all path nodes are loaded into pathfind.
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @return number
function CalculateTravelDistanceBetweenPoints(x1, y1, z1, x2, y2, z2) end

--- p3 is 0 in the only game script occurrence (trevor3) but 1 doesn't seem to make a difference
--- distToNxJunction seems to be the distance in metres * 10.0f
--- direction:
--- 0 = This happens randomly during the drive for seemingly no reason but if you consider that this native is only used in trevor3, it seems to mean "Next frame, stop whatever's being said and tell the player the direction."
--- 1 = Route is being calculated or the player is going in the wrong direction
--- 2 = Please Proceed the Highlighted Route
--- 3 = In (distToNxJunction) Turn Left
--- 4 = In (distToNxJunction) Turn Right
--- 5 = In (distToNxJunction) Keep Straight
--- 6 = In (distToNxJunction) Turn Sharply To The Left
--- 7 = In (distToNxJunction) Turn Sharply To The Right
--- 8 = Route is being recalculated or the navmesh is confusing. This happens randomly during the drive but consistently at {2044.0358, 2996.6116, 44.9717} if you face towards the bar and the route needs you to turn right. In that particular case, it could be a bug with how the turn appears to be 270 deg. CCW instead of "right." Either way, this seems to be the engine saying "I don't know the route right now."
--- return value set to 0 always
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3 boolean 
--- @param direction number 
--- @param vehicle number 
--- @param distToNxJunction number 
--- @return number
function GenerateDirectionsToCoord(x, y, z, p3, direction, vehicle, distToNxJunction) end

--- p1 seems to be always 1.0f in the scripts  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 Vector3 
--- @param p6 Vector3 
--- @param p7  
--- @param p8  
--- @param p9 number 
--- @param p10 boolean 
--- @return 
function GetClosestRoad(x, y, z, p3, p4, p5, p6, p7, p8, p9, p10) end

--- FYI: When falling through the map (or however you got under it) you will respawn when your player ped's height is <= -200.0 meters (I think you all know this) and when in a vehicle you will actually respawn at the closest vehicle node.
--- ----------
--- Vector3 nodePos;
--- GET_CLOSEST_VEHICLE_NODE(x,y,z,&nodePos,...)
--- p4 is either 0, 1 or 8. 1 means any path/road. 0 means node in the middle of the closest main (asphalt) road.
--- p5, p6 are always the same:
--- 0x40400000 (3.0), 0
--- p5 can also be 100.0 and p6 can be 2.5:
--- PATHFIND::GET_CLOSEST_VEHICLE_NODE(a_0, &v_5, v_9, 100.0, 2.5)
--- Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.
--- The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.
--- Starting at 2, every fourth node is under the map, always same coords.
--- Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).
--- gtaforums.com/topic/843561-pathfind-node-types
--- @param x number 
--- @param y number 
--- @param z number 
--- @param outPosition Vector3 
--- @param nodeType number 
--- @param p5 number 
--- @param p6 number 
--- @return boolean
function GetClosestVehicleNode(x, y, z, outPosition, nodeType, p5, p6) end

--- p5, p6 and p7 seems to be about the same as p4, p5 and p6 for GET_CLOSEST_VEHICLE_NODE. p6 and/or p7 has something to do with finding a node on the same path/road and same direction(at least for this native, something to do with the heading maybe). Edit this when you find out more.  
--- p5 is either 1 or 12. 1 means any path/road. 12, 8, 0 means node in the middle of the closest main (asphalt) road.  
--- p6 is always 3.0  
--- p7 is always 0.  
--- Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   
--- The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.   
--- Starting at 2, every fourth node is under the map, always same coords.  
--- Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).  
--- gtaforums.com/topic/843561-pathfind-node-types  
--- Example of usage, moving vehicle to closest path/road:  
--- Vector3 coords = ENTITY::GET_ENTITY_COORDS(playerVeh, true);  
--- Vector3 closestVehicleNodeCoords;   
--- float roadHeading;   
--- PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x, coords.y, coords.z, &closestVehicleNodeCoords, &roadHeading, 1, 3, 0);   
--- ENTITY::SET_ENTITY_HEADING(playerVeh, roadHeading);  
--- ENTITY::SET_ENTITY_COORDS(playerVeh, closestVehicleNodeCoords.x, closestVehicleNodeCoords.y, closestVehicleNodeCoords.z, 1, 0, 0, 1);  
--- VEHICLE::SET_VEHICLE_ON_GROUND_PROPERLY(playerVeh);  
--- ------------------------------------------------------------------  
--- C# Example (ins1de) : pastebin.com/fxtMWAHD  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param outPosition Vector3 
--- @param outHeading number 
--- @param nodeType number 
--- @param p6 number 
--- @param p7 number 
--- @return boolean
function GetClosestVehicleNodeWithHeading(x, y, z, outPosition, outHeading, nodeType, p6, p7) end

--- @return boolean
function GetGpsBlipRouteFound() end

--- Get the closest vehicle node to a given position, unknown1 = 3.0, unknown2 = 0  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param outPosition Vector3 
--- @param unknown1 number 
--- @param unknown2 number 
--- @return boolean
function GetClosestMajorVehicleNode(x, y, z, outPosition, unknown1, unknown2) end

--- @return number
function GetGpsBlipRouteLength() end

--- Returns CGameWorldHeightMap's maximum Z among all grid nodes that intersect with the specified rectangle.
--- @param x1 number 
--- @param y1 number 
--- @param x2 number 
--- @param y2 number 
--- @return number
function GetHeightmapTopZForArea(x1, y1, x2, y2) end

--- Returns CGameWorldHeightMap's minimum Z among all grid nodes that intersect with the specified rectangle.
--- @param x1 number 
--- @param y1 number 
--- @param x2 number 
--- @param y2 number 
--- @return number
function GetHeightmapBottomZForArea(x1, y1, x2, y2) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param nthClosest number 
--- @param outPosition Vector3 
--- @param unknown1  
--- @param unknown2  
--- @param unknown3  
--- @return boolean
function GetNthClosestVehicleNode(x, y, z, nthClosest, outPosition, unknown1, unknown2, unknown3) end

--- p3 can be 0, 1 or 2.
--- @param result Vector3 
--- @param p1 boolean 
--- @param p2 number 
--- @param p3 number 
--- @return boolean
function GetGpsWaypointRouteEnd(result, p1, p2, p3) end

--- Returns the id.  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param nth number 
--- @param nodetype number 
--- @param p5 number 
--- @param p6 number 
--- @return number
function GetNthClosestVehicleNodeId(x, y, z, nth, nodetype, p5, p6) end

--- Returns CGameWorldHeightMap's minimum Z value at specified point (grid node).
--- @param x number 
--- @param y number 
--- @return number
function GetHeightmapBottomZForPosition(x, y) end

--- Get the nth closest vehicle node and its heading. (unknown2 = 9, unknown3 = 3.0, unknown4 = 2.5)  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param nthClosest number 
--- @param outPosition Vector3 
--- @param heading number 
--- @param unknown1  
--- @param unknown2 number 
--- @param unknown3 number 
--- @param unknown4 number 
--- @return boolean
function GetNthClosestVehicleNodeWithHeading(x, y, z, nthClosest, outPosition, heading, unknown1, unknown2, unknown3, unknown4) end

--- Returns CGameWorldHeightMap's maximum Z value at specified point (grid node).
--- @param x number 
--- @param y number 
--- @return number
function GetHeightmapTopZForPosition(x, y) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3 number 
--- @param outPosition Vector3 
--- @return boolean
function GetPointOnRoadSide(x, y, z, p3, outPosition) end

--- Flags are:
--- 1 = 1 = B02_IsFootpath
--- 2 = 4 = !B15_InteractionUnk
--- 4 = 0x20 = !B14_IsInterior
--- 8 = 0x40 = !B07_IsWater
--- 16 = 0x200 = B17_IsFlatGround
--- When onGround == true outPosition is a position located on the nearest pavement.
--- When a safe coord could not be found the result of a function is false and outPosition == Vector3.Zero.
--- In the scripts these flags are used: 0, 14, 12, 16, 20, 21, 28. 0 is most commonly used, then 16.
--- 16 works for me, 0 crashed the script.
--- @param x number 
--- @param y number 
--- @param z number 
--- @param onGround boolean 
--- @param outPosition Vector3 
--- @param flags number 
--- @return boolean
function GetSafeCoordForPed(x, y, z, onGround, outPosition, flags) end

--- See gtaforums.com/topic/843561-pathfind-node-types for node type info. 0 = paved road only, 1 = any road, 3 = water  
--- p10 always equal 0x40400000  
--- p11 always equal 0  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param desiredX number 
--- @param desiredY number 
--- @param desiredZ number 
--- @param nthClosest number 
--- @param outPosition Vector3 
--- @param outHeading number 
--- @param nodetype number 
--- @param p10 number 
--- @param p11  
--- @return boolean
function GetNthClosestVehicleNodeFavourDirection(x, y, z, desiredX, desiredY, desiredZ, nthClosest, outPosition, outHeading, nodetype, p10, p11) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @param p6 boolean 
--- @param outPosition Vector3 
--- @param nodeId number 
--- @return boolean
function GetRandomVehicleNode(x, y, z, radius, p4, p5, p6, outPosition, nodeId) end

--- Determines the name of the street which is the closest to the given coordinates.
--- x,y,z - the coordinates of the street
--- streetName - returns a hash to the name of the street the coords are on
--- crossingRoad - if the coordinates are on an intersection, a hash to the name of the crossing road
--- Note: the names are returned as hashes, the strings can be returned using the function HUD::GET_STREET_NAME_FROM_HASH_KEY.
--- @param x number 
--- @param y number 
--- @param z number 
--- @param streetName Hash 
--- @param crossingRoad Hash 
--- @return void (Type not found)
function GetStreetNameAtCoord(x, y, z, streetName, crossingRoad) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param heading number 
--- @param outPosition Vector3 
--- @return boolean
function GetRoadBoundaryUsingHeading(x, y, z, heading, outPosition) end

--- Gets the next zone that has been disabled using SET_GPS_DISABLED_ZONE_AT_INDEX.
--- NativeDB Removed Parameter 1: int index
--- @param index number 
--- @return number
function GetNextGpsDisabledZoneIndex(index) end

--- Calling this with an invalid node id, will crash the game.
--- Note that IS_VEHICLE_NODE_ID_VALID simply checks if nodeId is not zero. It does not actually ensure that the id is valid.
--- Eg. IS_VEHICLE_NODE_ID_VALID(1) will return true, but will crash when calling GET_VEHICLE_NODE_POSITION().
--- @param nodeId number 
--- @param outPosition Vector3 
--- @return void (Type not found)
function GetVehicleNodePosition(nodeId, outPosition) end

--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @return number
function GetNumNavmeshesExistingInArea(p0, p1, p2, p3, p4, p5) end

--- Returns whether navmesh for the region is loaded. The region is a rectangular prism defined by it's top left deepest corner to it's bottom right shallowest corner.  
--- If you can re-word this so it makes more sense, please do. I'm horrible with words sometimes...  
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @return boolean
function IsNavmeshLoadedInArea(x1, y1, z1, x2, y2, z2) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param nthClosest number 
--- @param outPosition Vector3 
--- @param outHeading number 
--- @param p6  
--- @param p7 number 
--- @param p8 number 
--- @return number
function GetNthClosestVehicleNodeIdWithHeading(x, y, z, nthClosest, outPosition, outHeading, p6, p7, p8) end

--- IS_*
--- @return boolean
function IsNavmeshRequiredRegionOwnedByAnyThread() end

--- Returns false for nodes that aren't used for GPS routes.
--- Example:
--- Nodes in Fort Zancudo and LSIA are false
--- @param nodeID number 
--- @return boolean
function GetVehicleNodeIsGpsAllowed(nodeID) end

--- Returns true when the node is Offroad. Alleys, some dirt roads, and carparks return true.
--- Normal roads where plenty of Peds spawn will return false
--- @param nodeID number 
--- @return boolean
function GetVehicleNodeIsSwitchedOff(nodeID) end

--- This native has been removed in v1180.  
--- @param keepInMemory boolean if true, all path nodes will be loaded and be kept in memory; otherwise, all path nodes will be loaded, but unloaded as the game sees fit.
--- @return boolean
function LoadAllPathNodes(keepInMemory) end

--- Gets the density and flags of the closest node to the specified position.  
--- Density is a value between 0 and 15, indicating how busy the road is.  
--- Flags is a bit field.  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param density number 
--- @param flags number 
--- @return boolean
function GetVehicleNodeProperties(x, y, z, density, flags) end

--- @param p0  
--- @return void (Type not found)
function RemoveNavmeshBlockingObject(p0) end

--- Gets a value indicating whether the specified position is on a road.  
--- The vehicle parameter is not implemented (ignored).  
--- @param x number 
--- @param y number 
--- @param z number 
--- @param vehicle Vehicle 
--- @return boolean
function IsPointOnRoad(x, y, z, vehicle) end

--- Activates Cayo Perico path nodes if passed `1`. GPS navigation will start working, maybe more stuff will change, not sure. It seems if you try to unload (pass `0`) when close to the island, your game might crash.
--- NativeDB Introduced: v2189
--- @param type number 
--- @return void (Type not found)
function SetAiGlobalPathNodesType(type) end

--- @param multiplier number 
--- @return void (Type not found)
function SetAmbientPedRangeMultiplierThisFrame(multiplier) end

--- Returns true if the id is non zero.  
--- @param vehicleNodeId number 
--- @return boolean
function IsVehicleNodeIdValid(vehicleNodeId) end

--- Toggles a global boolean, name is probably a hash collision but describes its functionality.
--- @param toggle boolean 
--- @return void (Type not found)
function SetAllPathsCacheBoundingstruct(toggle) end

--- Used internally for long range tasks
--- @param x1 number 
--- @param y1 number 
--- @param x2 number 
--- @param y2 number 
--- @return boolean
function RequestPathsPreferAccurateBoundingstruct(x1, y1, x2, y2) end

--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @return void (Type not found)
function SetGpsDisabledZone(x1, y1, z1, x2, y2, z2) end

--- Disables the GPS route displayed on the minimap while within a certain zone (area). When in a disabled zone and creating a waypoint, the GPS route is not shown on the minimap until you are outside of the zone. When disabled, the direct distance is shown on minimap opposed to distance to travel. Seems to only work before setting a waypoint.
--- You can clear the disabled zone with CLEAR_GPS_DISABLED_ZONE_AT_INDEX.
--- **Setting a waypoint at the same coordinate:**
--- Disabled Zone: <https://i.imgur.com/P9VUuxM.png>
--- Enabled Zone (normal): <https://i.imgur.com/BPi24aw.png>
--- @param x1 number X coordinate of first vector.
--- @param y1 number Y coordinate of first vector.
--- @param z1 number Z coordinate of first vector.
--- @param x2 number X coordinate of second vector.
--- @param y2 number Y coordinate of second vector.
--- @param z2 number Z coordinate of second vector.
--- @param index number Index of zone.
--- @return void (Type not found)
function SetGpsDisabledZoneAtIndex(x1, y1, z1, x2, y2, z2, index) end

--- @return void (Type not found)
function RemoveNavmeshRequiredRegions() end

--- See: SET_BLIP_ROUTE
--- @param toggle boolean 
--- @return void (Type not found)
function SetIgnoreSecondaryRouteNodes(toggle) end

--- NativeDB Added Parameter 7: Any p6
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return void (Type not found)
function SetPedPathsBackToOriginal(p0, p1, p2, p3, p4, p5) end

--- NativeDB Added Parameter 8: Any p7
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param unknown boolean 
--- @return void (Type not found)
function SetPedPathsInArea(x1, y1, z1, x2, y2, z2, unknown) end

--- @param toggle boolean 
--- @return void (Type not found)
function SetIgnoreNoGpsFlag(toggle) end

--- missing a last parameter int p6  
--- NativeDB Added Parameter 7: Any p6
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @return void (Type not found)
function SetRoadsBackToOriginal(p0, p1, p2, p3, p4, p5) end

--- When this is set to false, all nodes in the area get disabled.
--- `GET_VEHICLE_NODE_IS_SWITCHED_OFF` returns true afterwards.
--- If it's true,
--- `GET_VEHICLE_NODE_IS_SWITCHED_OFF` returns false.
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param nodeEnabled boolean 
--- @param unknown2 boolean 
--- @return void (Type not found)
function SetRoadsInArea(x1, y1, z1, x2, y2, z2, nodeEnabled, unknown2) end

--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- NativeDB Added Parameter 8: Any p7
--- bool p7 - always 1  
--- @param x1 number X dimension of the angled area 'origin'
--- @param y1 number Y dimension of the angled area 'origin'
--- @param z1 number Z dimension of the angled area 'origin'
--- @param x2 number X dimension of the angled area 'extent'
--- @param y2 number Y dimension of the angled area 'extent'
--- @param z2 number Z dimension of the angled area 'extent'
--- @param width number Width of the angled area
--- @return void (Type not found)
function SetRoadsBackToOriginalInAngledArea(x1, y1, z1, x2, y2, z2, width) end

--- @param p0  
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8  
--- @return void (Type not found)
function UpdateNavmeshBlockingObject(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- unknown3 is related to `SEND_SCRIPT_WORLD_STATE_EVENT > CNetworkRoadNodeWorldStateData` in networked environments.
--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- @param x1 number X dimension of the angled area 'origin'
--- @param y1 number Y dimension of the angled area 'origin'
--- @param z1 number Z dimension of the angled area 'origin'
--- @param x2 number X dimension of the angled area 'extent'
--- @param y2 number Y dimension of the angled area 'extent'
--- @param z2 number Z dimension of the angled area 'extent'
--- @param width number Width of the angled area
--- @param unknown1 boolean 
--- @param unknown2 boolean 
--- @param unknown3 boolean 
--- @return void (Type not found)
function SetRoadsInAngledArea(x1, y1, z1, x2, y2, z2, width, unknown1, unknown2, unknown3) end
