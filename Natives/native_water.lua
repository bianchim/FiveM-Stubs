
--- Gets the aggressiveness factor of the ocean waves.  
--- @name GET_DEEP_OCEAN_SCALER
--- @return number
function GetDeepOceanScaler() end

--- Sets the waves intensity back to original (1.0 in most cases). 
--- @name RESET_DEEP_OCEAN_SCALER
--- @return void (Type not found)
function ResetDeepOceanScaler() end

--- @name GET_WATER_HEIGHT_NO_WAVES
--- @param x number 
--- @param y number 
--- @param z number 
--- @param height number 
--- @return boolean
function GetWaterHeightNoWaves(x, y, z, height) end

--- This function set height to the value of z-axis of the water surface.  
--- This function works with sea and lake. However it does not work with shallow rivers (e.g. raton canyon will return -100000.0f)  
--- note: seems to return true when you are in water  
--- @name GET_WATER_HEIGHT
--- @param x number 
--- @param y number 
--- @param z number 
--- @param height number 
--- @return boolean
function GetWaterHeight(x, y, z, height) end

--- Flags are identical to START_SHAPE_TEST\*, however, 128 is automatically set.
--- @name TEST_PROBE_AGAINST_ALL_WATER
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param flag number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
--- @param result Vector3 
--- @return boolean
function TestProbeAgainstAllWater(x1, y1, z1, x2, y2, z2, flag, result) end

--- Only 8 current rises can exist. If rises need to be changed, use REMOVE_EXTRA_CALMING_QUAD and then ADD_EXTRA_CALMING_QUAD again.
--- After removing a rise, you will be able to add a rise again.
--- @name ADD_EXTRA_CALMING_QUAD
--- @param xLow number 
--- @param yLow number 
--- @param xHigh number 
--- @param yHigh number 
--- @param height number 
--- @return number
function AddExtraCalmingQuad(xLow, yLow, xHigh, yHigh, height) end

--- p0 is the handle returned from _0xFDBF4CDBC07E1706  
--- @name _REMOVE_CURRENT_RISE
--- @param p0 number 
--- @return void (Type not found)
function RemoveCurrentRise(p0) end

--- Sets the water height for a given position and radius.  
--- @name MODIFY_WATER
--- @param x number 
--- @param y number 
--- @param height number 
--- @param radius number 
--- @return void (Type not found)
function ModifyWater(x, y, height, radius) end

--- @name TEST_PROBE_AGAINST_WATER
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param result Vector3 
--- @return boolean
function TestProbeAgainstWater(x1, y1, z1, x2, y2, z2, result) end

--- @name TEST_VERTICAL_PROBE_AGAINST_ALL_WATER
--- @param x number 
--- @param y number 
--- @param z number 
--- @param flag number See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
--- @param height number 
--- @return boolean
function TestVerticalProbeAgainstAllWater(x, y, z, flag, height) end

--- Sets a value that determines how aggressive the ocean waves will be. Values of 2.0 or more make for very aggressive waves like you see during a thunderstorm.  
--- Works only ~200 meters around the player.  
--- @name SET_DEEP_OCEAN_SCALER
--- @param intensity number 
--- @return void (Type not found)
function SetDeepOceanScaler(intensity) end
