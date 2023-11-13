
--- For move the finger of player, the value of int goes 1 at 5.  
--- @name _CELL_CAM_MOVE_FINGER
--- @param direction number 
--- @return void (Type not found)
function CellCamMoveFinger(direction) end

--- This one is weird and seems to return a TRUE state regardless of whether the phone is visible on screen or tucked away.  
--- I can confirm the above. This function is hard-coded to always return 1.  
--- @name CAN_PHONE_BE_SEEN_ON_SCREEN
--- @return boolean
function CanPhoneBeSeenOnScreen() end

--- @name _CELL_CAM_SET_HEAD_HEIGHT
--- @param p0 number Value from -1.0 to 0.0
--- @return void (Type not found)
function CellCamSetHeadHeight(p0) end

--- Disables the phone up-button, oddly enough.   
--- i.e.: When the phone is out, and this method is called with false as it's parameter, the phone will not be able to scroll up. However, when you use the down arrow key, it's functionality still, works on the phone.   
--- When the phone is not out, and this method is called with false as it's parameter, you will not be able to bring up the phone. Although the up arrow key still works for whatever functionality it's used for, just not for the phone.  
--- This can be used for creating menu's when trying to disable the phone from being used.   
--- You do not have to call the function again with false as a parameter, as soon as the function stops being called, the phone will again be usable.  
--- @name _CELL_CAM_DISABLE_THIS_FRAME
--- @param toggle boolean 
--- @return void (Type not found)
function CellCamDisableThisFrame(toggle) end

--- @name CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK
--- @param entity Entity 
--- @return boolean
function CellCamIsCharVisibleNoFaceCheck(entity) end

--- @name CELL_CAM_ACTIVATE
--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function CellCamActivate(p0, p1) end

--- @name _CELL_CAM_SET_DISTANCE
--- @param p0 number Value from -1.0 to 1.0
--- @return void (Type not found)
function CellCamSetDistance(p0) end

--- @name _CELL_CAM_SET_HEAD_ROLL
--- @param p0 number Value from -1.0 to 1.0
--- @return void (Type not found)
function CellCamSetHeadRoll(p0) end

--- if the bool "Toggle" is "true" so the phone is lean.  
--- if the bool "Toggle" is "false" so the phone is not lean.  
--- @name _CELL_CAM_SET_LEAN
--- @param toggle boolean 
--- @return void (Type not found)
function CellCamSetLean(toggle) end

--- @name _CELL_CAM_SET_VERTICAL_OFFSET
--- @param p0 number Value from 0.0 to 2.0
--- @return void (Type not found)
function CellCamSetVerticalOffset(p0) end

--- @name _CELL_CAM_SET_HORIZONTAL_OFFSET
--- @param p0 number Value from -1.0 to 1.0
--- @return void (Type not found)
function CellCamSetHorizontalOffset(p0) end

--- @name _CELL_CAM_SET_ROLL
--- @param p0 number Value from -1.0 to 1.0
--- @return void (Type not found)
function CellCamSetRoll(p0) end

--- Creates a mobile phone of the specified type.  
--- Possible phone types:  
--- 0 - Default phone / Michael's phone  
--- 1 - Trevor's phone  
--- 2 - Franklin's phone  
--- 4 - Prologue phone  
--- These values represent bit flags, so a value of '3' would toggle Trevor and Franklin's phones together, causing unexpected behavior and most likely crash the game.  
--- @name CREATE_MOBILE_PHONE
--- @param phoneType number 
--- @return void (Type not found)
function CreateMobilePhone(phoneType) end

--- @name GET_MOBILE_PHONE_POSITION
--- @param position Vector3 
--- @return void (Type not found)
function GetMobilePhonePosition(position) end

--- Destroys the currently active mobile phone.  
--- @name DESTROY_MOBILE_PHONE
--- @return void (Type not found)
function DestroyMobilePhone() end

--- @name _CELL_CAM_SET_HEAD_PITCH
--- @param p0 number Value from -1.0 to 1.0
--- @return void (Type not found)
function CellCamSetHeadPitch(p0) end

--- Last parameter is unknown and always zero.  
--- @name SET_MOBILE_PHONE_ROTATION
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param p3  
--- @return void (Type not found)
function SetMobilePhoneRotation(rotX, rotY, rotZ, p3) end

--- @name GET_MOBILE_PHONE_ROTATION
--- @param rotation Vector3 
--- @param p1 Vehicle 
--- @return void (Type not found)
function GetMobilePhoneRotation(rotation, p1) end

--- If bool Toggle = true so the mobile is hide to screen.  
--- If bool Toggle = false so the mobile is show to screen.  
--- @name SCRIPT_IS_MOVING_MOBILE_PHONE_OFFSCREEN
--- @param toggle boolean 
--- @return void (Type not found)
function ScriptIsMovingMobilePhoneOffscreen(toggle) end

--- @name _SET_MOBILE_PHONE_UNK
--- @param toggle boolean 
--- @return void (Type not found)
function SetMobilePhoneUnk(toggle) end

--- The minimum/default is 500.0f. If you plan to make it bigger set it's position as well. Also this seems to need to be called in a loop as when you close the phone the scale is reset. If not in a loop you'd need to call it everytime before you re-open the phone.  
--- @name SET_MOBILE_PHONE_SCALE
--- @param scale number 
--- @return void (Type not found)
function SetMobilePhoneScale(scale) end

--- @name SET_MOBILE_PHONE_POSITION
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return void (Type not found)
function SetMobilePhonePosition(posX, posY, posZ) end

--- @name GET_MOBILE_PHONE_RENDER_ID
--- @param renderId number 
--- @return void (Type not found)
function GetMobilePhoneRenderId(renderId) end
