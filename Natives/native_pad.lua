
--- @name _DISABLE_INPUT_GROUP
--- @param padIndex number 
--- @return void (Type not found)
function DisableInputGroup(padIndex) end

--- [Control values and meaning](https://docs.fivem.net/docs/game-references/controls/#controls)
--- Example: `CONTROLS::DISABLE_CONTROL_ACTION(2, 19, true)` disables the switching UI from appearing both when using a keyboard and Xbox 360 controller. Needs to be executed each frame.
--- Control group 1 and 0 gives the same results as 2. Same results for all players.
--- @name DISABLE_CONTROL_ACTION
--- @param padIndex number 
--- @param control number 
--- @param disable boolean 
--- @return void (Type not found)
function DisableControlAction(padIndex, control, disable) end

--- control values and meaning: github.com/crosire/scripthookvdotnet/blob/dev_v3/source/scripting/Control.cs  
--- and  
--- https://docs.fivem.net/game-references/controls/
--- 0, 1 and 2 used in the scripts.  
--- Control values from the decompiled scripts:   
--- 0,1,2,3,4,5,6,8,9,10,11,14,15,16,17,19,21,22,24,25,26,30,31,32,33,34,35,36,  
--- 37,44,46,47,59,60,65,68,69,70,71,72,73,74,75,76,79,80,81,82,86,95,98,99,100  
--- ,101,114,140,141,143,172,173,174,175,176,177,178,179,180,181,187,188,189,19  
--- 0,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,217,218,219,2  
--- 20,221,225,228,229,230,231,234,235,236,237,238,239,240,241,242,245,246,257,  
--- 261,262,263,264,286,287,288,289,337,338,339,340,341,342,343  
--- INPUTGROUP_MOVE  
--- INPUTGROUP_LOOK  
--- INPUTGROUP_WHEEL  
--- INPUTGROUP_CELLPHONE_NAVIGATE  
--- INPUTGROUP_CELLPHONE_NAVIGATE_UD  
--- INPUTGROUP_CELLPHONE_NAVIGATE_LR  
--- INPUTGROUP_FRONTEND_DPAD_ALL  
--- INPUTGROUP_FRONTEND_DPAD_UD  
--- INPUTGROUP_FRONTEND_DPAD_LR  
--- INPUTGROUP_FRONTEND_LSTICK_ALL  
--- INPUTGROUP_FRONTEND_RSTICK_ALL  
--- INPUTGROUP_FRONTEND_GENERIC_UD  
--- INPUTGROUP_FRONTEND_GENERIC_LR  
--- INPUTGROUP_FRONTEND_GENERIC_ALL  
--- INPUTGROUP_FRONTEND_BUMPERS  
--- INPUTGROUP_FRONTEND_TRIGGERS  
--- INPUTGROUP_FRONTEND_STICKS  
--- INPUTGROUP_SCRIPT_DPAD_ALL  
--- INPUTGROUP_SCRIPT_DPAD_UD  
--- INPUTGROUP_SCRIPT_DPAD_LR  
--- INPUTGROUP_SCRIPT_LSTICK_ALL  
--- INPUTGROUP_SCRIPT_RSTICK_ALL  
--- INPUTGROUP_SCRIPT_BUMPERS  
--- INPUTGROUP_SCRIPT_TRIGGERS  
--- INPUTGROUP_WEAPON_WHEEL_CYCLE  
--- INPUTGROUP_FLY  
--- INPUTGROUP_SUB  
--- INPUTGROUP_VEH_MOVE_ALL  
--- INPUTGROUP_CURSOR  
--- INPUTGROUP_CURSOR_SCROLL  
--- INPUTGROUP_SNIPER_ZOOM_SECONDARY  
--- INPUTGROUP_VEH_HYDRAULICS_CONTROL  
--- Took those in IDA Pro.Not sure in which order they go  
--- @name ENABLE_CONTROL_ACTION
--- @param padIndex number 
--- @param control number 
--- @param enable boolean 
--- @return void (Type not found)
function EnableControlAction(padIndex, control, enable) end

--- Returns profile setting 17.
--- @name GET_ALLOW_MOVEMENT_WHILE_ZOOMED
--- @return boolean
function GetAllowMovementWhileZoomed() end

--- @name DISABLE_ALL_CONTROL_ACTIONS
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @return void (Type not found)
function DisableAllControlActions(padIndex) end

--- formerly called _GET_CONTROL_ACTION_NAME incorrectly  
--- p2 appears to always be true.  
--- p2 is unused variable in function.  
--- EG:  
--- GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 201, 1) /*INPUT_FRONTEND_ACCEPT (e.g. Enter button)*/  
--- GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 202, 1) /*INPUT_FRONTEND_CANCEL (e.g. ESC button)*/  
--- GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 51, 1) /*INPUT_CONTEXT (e.g. E button)*/  
--- gtaforums.com/topic/819070-c-draw-instructional-buttons-scaleform-movie/#entry1068197378  
--- 0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
--- @name GET_CONTROL_INSTRUCTIONAL_BUTTON
--- @param padIndex number 
--- @param control number 
--- @param p2 boolean 
--- @return string
function GetControlInstructionalButton(padIndex, control, p2) end

--- padIndex: 
--- 0 - PLAYER_CONTROL
--- 1 - Unknown 
--- 2 - FRONTEND_CONTROL
--- @name ENABLE_ALL_CONTROL_ACTIONS
--- @param padIndex number The control system instance to use.
--- @return void (Type not found)
function EnableAllControlActions(padIndex) end

--- @name GET_CONTROL_NORMAL
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return number
function GetControlNormal(padIndex, control) end

--- Seems to return values between -1 and 1 for controls like gas and steering.
--- @name GET_CONTROL_UNBOUND_NORMAL
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return number
function GetControlUnboundNormal(padIndex, control) end

--- @name GET_CONTROL_GROUP_INSTRUCTIONAL_BUTTON
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param controlGroup number 
--- @param p2 boolean 
--- @return string
function GetControlGroupInstructionalButton(padIndex, controlGroup, p2) end

--- @name GET_DISABLED_CONTROL_NORMAL
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return number
function GetDisabledControlNormal(padIndex, control) end

--- @name GET_DISABLED_CONTROL_UNBOUND_NORMAL
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return number
function GetDisabledControlUnboundNormal(padIndex, control) end

--- @name GET_CONTROL_VALUE
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return number
function GetControlValue(padIndex, control) end

--- Returns profile setting 225.
--- @name GET_IS_USING_ALTERNATE_DRIVEBY
--- @return boolean
function GetIsUsingAlternateDriveby() end

--- Returns the local player's targeting mode. See [`SET_PLAYER_TARGETING_MODE`](#\_0xB1906895227793F3).
--- @name GET_LOCAL_PLAYER_AIM_STATE
--- @return number
function GetLocalPlayerAimState() end

--- Returns whether a control was newly pressed since the last check.
--- @name IS_CONTROL_JUST_PRESSED
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return boolean
function IsControlJustPressed(padIndex, control) end

--- The number of milliseconds since last padIndex registered pressed
--- @name _GET_TIME_SINCE_LAST_INPUT
--- @param padIndex number 
--- @return number
function GetTimeSinceLastInput(padIndex) end

--- @name IS_CONTROL_ENABLED
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return boolean
function IsControlEnabled(padIndex, control) end

--- Returns whether a control is currently pressed.
--- @name IS_CONTROL_PRESSED
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return boolean
function IsControlPressed(padIndex, control) end

--- @name IS_DISABLED_CONTROL_JUST_PRESSED
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return boolean
function IsDisabledControlJustPressed(padIndex, control) end

--- Returns whether a control was newly released since the last check.
--- @name IS_CONTROL_JUST_RELEASED
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return boolean
function IsControlJustReleased(padIndex, control) end

--- @name IS_DISABLED_CONTROL_JUST_RELEASED
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return boolean
function IsDisabledControlJustReleased(padIndex, control) end

--- Returns whether a control is currently *not* pressed.
--- @name IS_CONTROL_RELEASED
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return boolean
function IsControlReleased(padIndex, control) end

--- @name IS_DISABLED_CONTROL_PRESSED
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return boolean
function IsDisabledControlPressed(padIndex, control) end

--- @name _IS_DISABLED_CONTROL_RELEASED
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return boolean
function IsDisabledControlReleased(padIndex, control) end

--- Same behavior as GET_LOCAL_PLAYER_AIM_STATE but only used on the PC version.  
--- @name _GET_LOCAL_PLAYER_AIM_STATE_2
--- @return number
function GetLocalPlayerAimState2() end

--- @name _IS_USING_KEYBOARD
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @return boolean
function IsUsingKeyboard(padIndex) end

--- @name _IS_USING_KEYBOARD_2
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @return boolean
function IsUsingKeyboard2(padIndex) end

--- @name IS_LOOK_INVERTED
--- @return boolean
function IsLookInverted() end

--- S*
--- @name _RESET_INPUT_MAPPING_SCHEME
--- @return void (Type not found)
function ResetInputMappingScheme() end

--- This is for simulating player input.
--- @name _SET_CONTROL_NORMAL
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @param amount number An unbounded normal value.
--- @return boolean
function SetControlNormal(padIndex, control, amount) end

--- @name _SET_CURSOR_LOCATION
--- @param x number 
--- @param y number 
--- @return boolean
function SetCursorLocation(x, y) end

--- @name SET_INPUT_EXCLUSIVE
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param control number The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
--- @return void (Type not found)
function SetInputExclusive(padIndex, control) end

--- @name STOP_PAD_SHAKE
--- @param padIndex number 
--- @return void (Type not found)
function StopPadShake(padIndex) end

--- @name SET_PLAYERPAD_SHAKES_WHEN_CONTROLLER_DISABLED
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerpadShakesWhenControllerDisabled(toggle) end

--- @name _SET_CONTROL_LIGHT_EFFECT_COLOR
--- @param padIndex number The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
--- @param red number 
--- @param green number 
--- @param blue number 
--- @return void (Type not found)
function SetControlLightEffectColor(padIndex, red, green, blue) end

--- Same as 0x3D42B92563939375
--- S*
--- @name _SWITCH_TO_INPUT_MAPPING_SCHEME_2
--- @param name string 
--- @return boolean
function SwitchToInputMappingScheme2(name) end

--- Used in carsteal3 script with p0 = "Carsteal4_spycar".
--- S*
--- @name _SWITCH_TO_INPUT_MAPPING_SCHEME
--- @param name string 
--- @return boolean
function SwitchToInputMappingScheme(name) end

--- p0 always seems to be 0  
--- duration in milliseconds   
--- frequency should range from about 10 (slow vibration) to 255 (very fast)  
--- example:  
--- SET_PAD_SHAKE(0, 100, 200);  
--- @name SET_PAD_SHAKE
--- @param padIndex number 
--- @param duration number 
--- @param frequency number 
--- @return void (Type not found)
function SetPadShake(padIndex, duration, frequency) end
