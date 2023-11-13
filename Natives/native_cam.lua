
--- @name ADD_CAM_SPLINE_NODE_USING_GAMEPLAY_FRAME
--- @param cam Cam 
--- @param p1 number 
--- @param p2 number 
--- @return void (Type not found)
function AddCamSplineNodeUsingGameplayFrame(cam, p1, p2) end

--- @name ADD_CAM_SPLINE_NODE_USING_CAMERA_FRAME
--- @param cam Cam 
--- @param cam2 Cam 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function AddCamSplineNodeUsingCameraFrame(cam, cam2, p2, p3) end

--- I filled p1-p6 (the floats) as they are as other natives with 6 floats in a row are similar and I see no other method. So if a test from anyone proves them wrong please correct.  
--- p7 (length) determines the length of the spline, affects camera path and duration of transition between previous node and this one  
--- p8 big values ~100 will slow down the camera movement before reaching this node  
--- p9 != 0 seems to override the rotation/pitch (bool?)  
--- @name ADD_CAM_SPLINE_NODE
--- @param camera Cam 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param length number 
--- @param p8 number 
--- @param transitionType number 
--- @return void (Type not found)
function AddCamSplineNode(camera, x, y, z, xRot, yRot, zRot, length, p8, transitionType) end

--- Example from michael2 script.  
--- CAM::ANIMATED_SHAKE_CAM(l_5069, "shake_cam_all@", "light", "", 1f);  
--- @name ANIMATED_SHAKE_CAM
--- @param cam Cam 
--- @param p1 string 
--- @param p2 string 
--- @param p3 string 
--- @param amplitude number 
--- @return void (Type not found)
function AnimatedShakeCam(cam, p1, p2, p3, amplitude) end

--- Takes a camera and uses the information from it as a camera spline node.
--- @name ADD_CAM_SPLINE_NODE_USING_CAMERA
--- @param cam Cam Camera to add cam2 as a node to
--- @param cam2 Cam Camera used for reference
--- @param length number Duration used for transition, has no effect for the first node.
--- @param p3 number 
--- @return void (Type not found)
function AddCamSplineNodeUsingCamera(cam, cam2, length, p3) end

--- Seems to animate the gameplay camera zoom.  
--- Eg. _ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1000f);  
--- will animate the camera zooming in from 1000 meters away.  
--- Game scripts use it like this:  
--- // Setting this to 1 prevents V key from changing zoom  
--- PLAYER::SET_PLAYER_FORCED_ZOOM(PLAYER::PLAYER_ID(), 1);  
--- // These restrict how far you can move cam up/down left/right  
--- CAM::_CLAMP_GAMEPLAY_CAM_YAW(-20f, 50f);  
--- CAM::_CLAMP_GAMEPLAY_CAM_PITCH(-60f, 0f);  
--- CAM::_ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1f);  
--- @name _ANIMATE_GAMEPLAY_CAM_ZOOM
--- @param p0 number 
--- @param distance number 
--- @return void (Type not found)
function AnimateGameplayCamZoom(p0, distance) end

--- CAM::ANIMATED_SHAKE_SCRIPT_GLOBAL("SHAKE_CAM_medium", "medium", "", 0.5f);
--- @name ANIMATED_SHAKE_SCRIPT_GLOBAL
--- @param p0 string 
--- @param p1 string 
--- @param p2 string 
--- @param p3 number 
--- @return void (Type not found)
function AnimatedShakeScriptGlobal(p0, p1, p2, p3) end

--- This native works with peds only.
--- @name ATTACH_CAM_TO_PED_BONE
--- @param cam Cam The camera handle.
--- @param ped Ped The ped handle.
--- @param boneIndex number This is different to boneID, use ['GET_PED_BONE_INDEX'](#\_0x3F428D08BE5AAE31) to get the index from the ID. use the index for attaching to specific bones. `cam` will be attached to the center of `ped` if bone index given doesn't correspond to bone indexes for that entity type.
--- @param xOffset number X-axis offset
--- @param yOffset number Y-axis offset
--- @param zOffset number Z-axis offset
--- @param isRelative boolean Whether or not the camera will be relative to the bone
--- @return void (Type not found)
function AttachCamToPedBone(cam, ped, boneIndex, xOffset, yOffset, zOffset, isRelative) end

--- minimum: Degrees between -180f and 180f.
--- maximum: Degrees between -180f and 180f.
--- Clamps the gameplay camera's current yaw.
--- Eg. _CLAMP_GAMEPLAY_CAM_YAW(0.0f, 0.0f) will set the horizontal angle directly behind the player.
--- @name _CLAMP_GAMEPLAY_CAM_YAW
--- @param minimum number 
--- @param maximum number 
--- @return void (Type not found)
function ClampGameplayCamYaw(minimum, maximum) end

--- Last param determines if its relative to the Entity  
--- @name ATTACH_CAM_TO_ENTITY
--- @param cam Cam The camera handle.
--- @param entity Entity The entity handle.
--- @param xOffset number X-axis offset
--- @param yOffset number Y-axis offset
--- @param zOffset number Z-axis offset
--- @param isRelative boolean Whether or not the camera will be relative to the entity
--- @return void (Type not found)
function AttachCamToEntity(cam, entity, xOffset, yOffset, zOffset, isRelative) end

--- This native works with vehicles only.
--- Bone indexes are usually given by this native [GET_ENTITY_BONE_INDEX_BY_NAME](#\_0xFB71170B7E76ACBA).
--- @name _ATTACH_CAM_TO_VEHICLE_BONE
--- @param cam Cam The camera handle.
--- @param vehicle Vehicle The vehicle handle.
--- @param boneIndex number 
--- @param relativeRotation boolean Whether or not the camera rotation will relative the vehicle rotation.
--- @param rotX number The X rotation.
--- @param rotY number The Y rotation.
--- @param rotZ number The Z rotation.
--- @param offX number The X offset direction.
--- @param offY number The Y offset direction.
--- @param offZ number The Z offset direction.
--- @param fixedDirection boolean Whether or not the camera direction will relative to the vehicle direction.
--- @return void (Type not found)
function AttachCamToVehicleBone(cam, vehicle, boneIndex, relativeRotation, rotX, rotY, rotZ, offX, offY, offZ, fixedDirection) end

--- minimum: Degrees between -90f and 90f.
--- maximum: Degrees between -90f and 90f.
--- Clamps the gameplay camera's current pitch.
--- Eg. _CLAMP_GAMEPLAY_CAM_PITCH(0.0f, 0.0f) will set the vertical angle directly behind the player.
--- @name _CLAMP_GAMEPLAY_CAM_PITCH
--- @param minimum number 
--- @param maximum number 
--- @return void (Type not found)
function ClampGameplayCamPitch(minimum, maximum) end

--- Creates a camera with the specified cam name, You can use `SET_CAM_` natives to manipulate the camera.\
--- Make sure to call [RENDER_SCRIPT_CAMS](#\_0x07E5B515DB0636FC) once the camera is created, or this won't have any visible effect.
--- ### Camera names:
--- *   DEFAULT_SCRIPTED_CAMERA
--- *   DEFAULT_ANIMATED_CAMERA
--- *   DEFAULT_SPLINE_CAMERA
--- *   DEFAULT_SCRIPTED_FLY_CAMERA
--- *   TIMED_SPLINE_CAMERA
--- *   CUSTOM_TIMED_SPLINE_CAMERA
--- *   ROUNDED_SPLINE_CAMERA
--- *   SMOOTHED_SPLINE_CAMERA
--- @name CREATE_CAM
--- @param camName string A string representing the camera type, the game will convert the string into a joaat hash upon native execution.
--- @param active boolean Set to true if you wish to make this new camera the active camera.
--- @return Cam
function CreateCam(camName, active) end

--- some camera effect that is used in the drunk-cheat, and turned off (by setting it to 0.0) along with the shaking effects once the drunk cheat is disabled.  
--- @name CUSTOM_MENU_COORDINATES
--- @param p0 number 
--- @return void (Type not found)
function CustomMenuCoordinates(p0) end

--- NativeDB Introduced: v1180
--- @name _ATTACH_CAM_TO_PED_BONE_2
--- @param cam Cam 
--- @param ped Ped 
--- @param boneIndex number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8 number 
--- @param p9 boolean 
--- @return void (Type not found)
function AttachCamToPedBone2(cam, ped, boneIndex, p3, p4, p5, p6, p7, p8, p9) end

--- Create a camera with the specified cam name/type, You can use `SET_CAM_` natives to manipulate the camera.
--- Take a look at [CREATE_CAM](#\_0xC3981DCE61D9E13F) if you would like to see the available camera names.
--- @name CREATE_CAM_WITH_PARAMS
--- @param camName string A string representing the camera type, the game will convert the string into a joaat hash upon native execution.
--- @param posX number The x position of the camera (you can also send a vector3 instead of the bulk coordinates)
--- @param posY number The y position of the camera (you can also send a vector3 instead of the bulk coordinates)
--- @param posZ number The z position of the camera (you can also send a vector3 instead of the bulk coordinates)
--- @param rotX number The x rotation of the camera
--- @param rotY number The y rotation of the camera
--- @param rotZ number The z rotation of the camera
--- @param fov number The Field Of View of the camera, is the observable world that is seen
--- @param active boolean Set to true if you wish to make this new camera the active camera.
--- @param rotationOrder number The order of rotation, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
--- @return Cam
function CreateCamWithParams(camName, posX, posY, posZ, rotX, rotY, rotZ, fov, active, rotationOrder) end

--- @name CREATE_CAMERA
--- @param camHash Hash 
--- @param active boolean 
--- @return Cam
function CreateCamera(camHash, active) end

--- BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.  
--- @name DESTROY_CAM
--- @param cam Cam 
--- @param bScriptHostCam boolean 
--- @return void (Type not found)
function DestroyCam(cam, bScriptHostCam) end

--- CAM::\_GET_GAMEPLAY_CAM_COORDS can be used instead of posX,Y,Z\
--- CAM::\_GET_GAMEPLAY_CAM_ROT can be used instead of rotX,Y,Z\
--- CAM::\_GET_FINAL_RENDERED_CAM_FOV can be used instead of p7 (Possible p7 is FOV parameter. )\
--- rotationOrder is 2 usually
--- @name CREATE_CAMERA_WITH_PARAMS
--- @param camHash Hash 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param fov number 
--- @param active boolean 
--- @param rotationOrder number 
--- @return Cam
function CreateCameraWithParams(camHash, posX, posY, posZ, rotX, rotY, rotZ, fov, active, rotationOrder) end

--- @name DISABLE_CAM_COLLISION_FOR_OBJECT
--- @param entity Entity 
--- @return void (Type not found)
function DisableCamCollisionForObject(entity) end

--- @name _DISABLE_CAM_COLLISION_FOR_ENTITY
--- @param entity Entity 
--- @return void (Type not found)
function DisableCamCollisionForEntity(entity) end

--- @name CREATE_CINEMATIC_SHOT
--- @param p0  
--- @param p1 number 
--- @param p2  
--- @param entity Entity 
--- @return void (Type not found)
function CreateCinematicShot(p0, p1, p2, entity) end

--- BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.  
--- @name DESTROY_ALL_CAMS
--- @param bScriptHostCam boolean 
--- @return void (Type not found)
function DestroyAllCams(bScriptHostCam) end

--- Fades the screen in.  
--- duration: The time the fade should take, in milliseconds.  
--- @name DO_SCREEN_FADE_IN
--- @param duration number 
--- @return void (Type not found)
function DoScreenFadeIn(duration) end

--- @name DETACH_CAM
--- @param cam Cam 
--- @return void (Type not found)
function DetachCam(cam) end

--- @name _DISABLE_VEHICLE_FIRST_PERSON_CAM_THIS_FRAME
--- @return void (Type not found)
function DisableVehicleFirstPersonCamThisFrame() end

--- Looks up a camera handle in the current camera pool and returns `true` if the handle is found, otherwise it returns `false`.
--- @name DOES_CAM_EXIST
--- @param cam Cam The camera handle to look for.
--- @return boolean
function DoesCamExist(cam) end

--- Disables first person camera for the current frame.  
--- Found in decompiled scripts:  
--- GRAPHICS::DRAW_DEBUG_TEXT_2D("Disabling First Person Cam", 0.5, 0.8, 0.0, 0, 0, 255, 255);  
--- CAM::_DE2EF5DA284CC8DF();  
--- @name _DISABLE_FIRST_PERSON_CAM_THIS_FRAME
--- @return void (Type not found)
function DisableFirstPersonCamThisFrame() end

--- @name GET_CAM_ANIM_CURRENT_PHASE
--- @param cam Cam 
--- @return number
function GetCamAnimCurrentPhase(cam) end

--- @name DISABLE_AIM_CAM_THIS_UPDATE
--- @return void (Type not found)
function DisableAimCamThisUpdate() end

--- @name FORCE_CINEMATIC_RENDERING_THIS_UPDATE
--- @param p0 boolean 
--- @return void (Type not found)
function ForceCinematicRenderingThisUpdate(p0) end

--- Fades the screen out.  
--- duration: The time the fade should take, in milliseconds.  
--- @name DO_SCREEN_FADE_OUT
--- @param duration number 
--- @return void (Type not found)
function DoScreenFadeOut(duration) end

--- Enumerated type defined in camControlHelperMetadataViewModes:
--- ```cpp
--- enum Context {
---     ON_FOOT = 0, // [G|S]ET_FOLLOW_PED_CAM_*
---     IN_VEHICLE = 1, // [G|S]ET_FOLLOW_VEHICLE_CAM_*
---     ON_BIKE = 2,
---     IN_BOAT = 3,
---     IN_AIRCRAFT = 4,
---     IN_SUBMARINE = 5,
---     IN_HELI = 6,
---     IN_TURRET = 7,
--- }
--- @name _GET_CAM_ACTIVE_VIEW_MODE_CONTEXT
--- @return number
function GetCamActiveViewModeContext() end

--- @name GET_CAM_COORD
--- @param cam Cam 
--- @return Vector3
function GetCamCoord(cam) end

--- NativeDB Introduced: v2699
--- @name _GET_CAM_DOF_STRENGTH
--- @param cam Cam 
--- @return number
function GetCamDofStrength(cam) end

--- Shows the crosshair even if it wouldn't show normally. Only works for one frame, so make sure to call it repeatedly.  
--- @name _ENABLE_CROSSHAIR_THIS_FRAME
--- @return void (Type not found)
function EnableCrosshairThisFrame() end

--- @name GET_CAM_FAR_CLIP
--- @param cam Cam 
--- @return number
function GetCamFarClip(cam) end

--- @name GET_CAM_NEAR_CLIP
--- @param cam Cam 
--- @return number
function GetCamNearClip(cam) end

--- @name GET_CAM_FOV
--- @param cam Cam 
--- @return number
function GetCamFov(cam) end

--- @name GET_CAM_SPLINE_NODE_INDEX
--- @param cam Cam 
--- @return number
function GetCamSplineNodeIndex(cam) end

--- I'm pretty sure the parameter is the camera as usual, but I am not certain so I'm going to leave it as is.  
--- @name GET_CAM_SPLINE_NODE_PHASE
--- @param cam Cam 
--- @return number
function GetCamSplineNodePhase(cam) end

--- NativeDB Introduced: v2699
--- @name _GET_CAM_NEAR_DOF
--- @param cam Cam 
--- @return number
function GetCamNearDof(cam) end

--- Can use this with SET_CAM_SPLINE_PHASE to set the float it this native returns.  
--- (returns 1.0f when no nodes has been added, reached end of non existing spline)  
--- @name GET_CAM_SPLINE_PHASE
--- @param cam Cam 
--- @return number
function GetCamSplinePhase(cam) end

--- @name GET_CAM_FAR_DOF
--- @param cam Cam 
--- @return number
function GetCamFarDof(cam) end

--- NativeDB Introduced: v2372
--- @name _GET_DEBUG_CAMERA
--- @return Cam
function GetDebugCamera() end

--- Gets a camera's rotation by handle (`cam`) lookup, outputs a `Vector3` in degrees.
--- @name GET_CAM_ROT
--- @param cam Cam The camera handle.
--- @param rotationOrder number The order of rotation, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
--- @return Vector3
function GetCamRot(cam, rotationOrder) end

--- @name GET_FINAL_RENDERED_CAM_MOTION_BLUR_STRENGTH
--- @return number
function GetFinalRenderedCamMotionBlurStrength() end

--- @name GET_FINAL_RENDERED_CAM_FAR_CLIP
--- @return number
function GetFinalRenderedCamFarClip() end

--- See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the view mode enum.
--- @name GET_CAM_VIEW_MODE_FOR_CONTEXT
--- @param context number See [`_GET_CAM_ACTIVE_VIEW_MODE_CONTEXT`](#\_0x19CAFA3C87F7C2FF).
--- @return number
function GetCamViewModeForContext(context) end

--- @name GET_FINAL_RENDERED_CAM_FAR_DOF
--- @return number
function GetFinalRenderedCamFarDof() end

--- @name GET_FINAL_RENDERED_CAM_NEAR_CLIP
--- @return number
function GetFinalRenderedCamNearClip() end

--- @name GET_FINAL_RENDERED_CAM_FOV
--- @return number
function GetFinalRenderedCamFov() end

--- @name GET_FINAL_RENDERED_CAM_NEAR_DOF
--- @return number
function GetFinalRenderedCamNearDof() end

--- @name GET_FINAL_RENDERED_IN_WHEN_FRIENDLY_ROT
--- @param player Player 
--- @param rotationOrder number 
--- @return Vector3
function GetFinalRenderedInWhenFriendlyRot(player, rotationOrder) end

--- @name GET_FINAL_RENDERED_CAM_ROT
--- @param rotationOrder number 
--- @return Vector3
function GetFinalRenderedCamRot(rotationOrder) end

--- @name GET_FINAL_RENDERED_IN_WHEN_FRIENDLY_FOV
--- @param player Player 
--- @return number
function GetFinalRenderedInWhenFriendlyFov(player) end

--- @name GET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR
--- @return number
function GetFirstPersonAimCamZoomFactor() end

--- @name GET_FOCUS_PED_ON_SCREEN
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8 number 
--- @return Ped
function GetFocusPedOnScreen(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
--- @name GET_FOLLOW_PED_CAM_ZOOM_LEVEL
--- @return number
function GetFollowPedCamZoomLevel() end

--- ```cpp
--- // view mode enumeration
--- enum _0xA11D7CA8
--- {
--- 	THIRD_PERSON_NEAR = 0,
--- 	THIRD_PERSON_MEDIUM = 1,
--- 	THIRD_PERSON_FAR = 2,
--- 	CINEMATIC = 3,
--- 	FIRST_PERSON = 4,
--- };
--- @name GET_FOLLOW_PED_CAM_VIEW_MODE
--- @return number
function GetFollowPedCamViewMode() end

--- See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
--- @name GET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL
--- @return number
function GetFollowVehicleCamZoomLevel() end

--- See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
--- @name GET_FOLLOW_VEHICLE_CAM_VIEW_MODE
--- @return number
function GetFollowVehicleCamViewMode() end

--- @name GET_GAMEPLAY_CAM_FOV
--- @return number
function GetGameplayCamFov() end

--- @name GET_GAMEPLAY_CAM_COORD
--- @return Vector3
function GetGameplayCamCoord() end

--- @name GET_FINAL_RENDERED_CAM_COORD
--- @return Vector3
function GetFinalRenderedCamCoord() end

--- @name GET_GAMEPLAY_CAM_RELATIVE_PITCH
--- @return number
function GetGameplayCamRelativePitch() end

--- This function takes a rotation order and outputs a `Vector3` in degrees.
--- It first calls a game function to calculate these values given the rotation order and effectively multiplies those values by `180/PI`, hence degrees since the function it calls outputs radians which are then converted to degrees.
--- @name GET_GAMEPLAY_CAM_ROT
--- @param rotationOrder number The order of rotation, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
--- @return Vector3
function GetGameplayCamRot(rotationOrder) end

--- Resets the idle camera timer. Calling that in a loop once every few seconds is enough to disable the idle cinematic camera.
--- @name INVALIDATE_IDLE_CAM
--- @return void (Type not found)
function InvalidateIdleCam() end

--- @name GET_GAMEPLAY_CAM_RELATIVE_HEADING
--- @return number
function GetGameplayCamRelativeHeading() end

--- Resets the vehicle idle camera timer. Calling this in a loop will disable the idle camera.
--- @name _INVALIDATE_VEHICLE_IDLE_CAM
--- @return void (Type not found)
function InvalidateVehicleIdleCam() end

--- @name GET_RENDERING_CAM
--- @return Cam
function GetRenderingCam() end

--- @name IS_AIM_CAM_ACTIVE
--- @return boolean
function IsAimCamActive() end

--- @name IS_BONNET_CINEMATIC_CAM_RENDERING
--- @return boolean
function IsBonnetCinematicCamRendering() end

--- Returns whether or not the passed camera handle is active.  
--- @name IS_CAM_ACTIVE
--- @param cam Cam 
--- @return boolean
function IsCamActive(cam) end

--- @name IS_CAM_RENDERING
--- @param cam Cam 
--- @return boolean
function IsCamRendering(cam) end

--- @name IS_CAM_INTERPOLATING
--- @param cam Cam 
--- @return boolean
function IsCamInterpolating(cam) end

--- IS_A*
--- @name _IS_AIM_CAM_THIRD_PERSON_ACTIVE
--- @return boolean
function IsAimCamThirdPersonActive() end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name IS_CAM_PLAYING_ANIM
--- @param cam Cam 
--- @param animName string 
--- @param animDictionary string 
--- @return boolean
function IsCamPlayingAnim(cam, animName, animDictionary) end

--- @name IS_CAM_SHAKING
--- @param cam Cam 
--- @return boolean
function IsCamShaking(cam) end

--- @name IS_CAM_SPLINE_PAUSED
--- @param p0  
--- @return boolean
function IsCamSplinePaused(p0) end

--- @name IS_CINEMATIC_CAM_RENDERING
--- @return boolean
function IsCinematicCamRendering() end

--- @name IS_CINEMATIC_IDLE_CAM_RENDERING
--- @return boolean
function IsCinematicIdleCamRendering() end

--- NativeDB Introduced: v1493
--- @name IS_CINEMATIC_CAM_INPUT_ACTIVE
--- @return boolean
function IsCinematicCamInputActive() end

--- @name IS_CINEMATIC_SHOT_ACTIVE
--- @param p0  
--- @return boolean
function IsCinematicShotActive(p0) end

--- @name IS_CINEMATIC_CAM_SHAKING
--- @return boolean
function IsCinematicCamShaking() end

--- @name IS_GAMEPLAY_CAM_LOOKING_BEHIND
--- @return boolean
function IsGameplayCamLookingBehind() end

--- @name IS_FOLLOW_PED_CAM_ACTIVE
--- @return boolean
function IsFollowPedCamActive() end

--- @name IS_FIRST_PERSON_AIM_CAM_ACTIVE
--- @return boolean
function IsFirstPersonAimCamActive() end

--- @name IS_SCREEN_FADED_IN
--- @return boolean
function IsScreenFadedIn() end

--- @name IS_FOLLOW_VEHICLE_CAM_ACTIVE
--- @return boolean
function IsFollowVehicleCamActive() end

--- @name IS_GAMEPLAY_HINT_ACTIVE
--- @return boolean
function IsGameplayHintActive() end

--- Examples when this function will return 0 are:
--- - During busted screen.
--- - When player is coming out from a hospital.
--- - When player is coming out from a police station.
--- - When player is buying gun from AmmuNation.
--- @name IS_GAMEPLAY_CAM_RENDERING
--- @return boolean
function IsGameplayCamRendering() end

--- @name IS_GAMEPLAY_CAM_SHAKING
--- @return boolean
function IsGameplayCamShaking() end

--- @name _IS_IN_VEHICLE_CAM_DISABLED
--- @return boolean
function IsInVehicleCamDisabled() end

--- @name IS_SCREEN_FADED_OUT
--- @return boolean
function IsScreenFadedOut() end

--- @name IS_SCREEN_FADING_OUT
--- @return boolean
function IsScreenFadingOut() end

--- In drunk_controller.c4, sub_309
--- if (CAM::IS_SCRIPT_GLOBAL_SHAKING()) {
---     CAM::STOP_SCRIPT_GLOBAL_SHAKING(0);
--- }
--- @name IS_SCRIPT_GLOBAL_SHAKING
--- @return boolean
function IsScriptGlobalShaking() end

--- Max value for p1 is 15.  
--- @name OVERRIDE_CAM_SPLINE_MOTION_BLUR
--- @param cam Cam 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function OverrideCamSplineMotionBlur(cam, p1, p2, p3) end

--- @name IS_SCREEN_FADING_IN
--- @return boolean
function IsScreenFadingIn() end

--- @name IS_SPHERE_VISIBLE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @return boolean
function IsSphereVisible(x, y, z, radius) end

--- @name POINT_CAM_AT_COORD
--- @param cam Cam 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function PointCamAtCoord(cam, x, y, z) end

--- @name OVERRIDE_CAM_SPLINE_VELOCITY
--- @param cam Cam 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function OverrideCamSplineVelocity(cam, p1, p2, p3) end

--- Atleast one time in a script for the zRot Rockstar uses GET_ENTITY_HEADING to help fill the parameter.  
--- p9 is unknown at this time.  
--- p10 throughout all the X360 Scripts is always 2.  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name PLAY_CAM_ANIM
--- @param cam Cam 
--- @param animName string 
--- @param animDictionary string 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param p9 boolean 
--- @param p10 number 
--- @return boolean
function PlayCamAnim(cam, animName, animDictionary, x, y, z, xRot, yRot, zRot, p9, p10) end

--- ease - smooth transition between the camera's positions  
--- easeTime - Time in milliseconds for the transition to happen  
--- If you have created a script (rendering) camera, and want to go back to the   
--- character (gameplay) camera, call this native with render set to 0.  
--- Setting ease to 1 will smooth the transition.  
--- NativeDB Added Parameter 6: Any p5
--- @name RENDER_SCRIPT_CAMS
--- @param render boolean 
--- @param ease boolean 
--- @param easeTime number 
--- @param p3 boolean 
--- @param p4 boolean 
--- @return void (Type not found)
function RenderScriptCams(render, ease, easeTime, p3, p4) end

--- Examples:  
--- CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_2734, NETWORK::_02C40BF885C567B6(l_2739), "PLAYER_EXIT_L_CAM", "mp_doorbell");  
--- CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_F0D[7/*1*/], l_F4D[15/*1*/], "ah3b_attackheli_cam2", "missheistfbi3b_helicrash");  
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @name PLAY_SYNCHRONIZED_CAM_ANIM
--- @param camera Cam 
--- @param scene number 
--- @param animName string 
--- @param animDictionary string 
--- @return boolean
function PlaySynchronizedCamAnim(camera, scene, animName, animDictionary) end

--- Points the camera at the specified entity.
--- Offset works like [GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS](#\_0x1899F328B0E12848).
--- @name POINT_CAM_AT_ENTITY
--- @param cam Cam Cam (Return value of CREATE_CAM or CREATE_CAM_WITH_PARAMS).
--- @param entity Entity Entity for the camera to point at.
--- @param offsetX number X offset for the camera (left/right).
--- @param offsetY number Y offset for the camera (forward/backward).
--- @param offsetZ number Z offset for the camera (up/down).
--- @param p5 boolean Always seems to be 1 (true).
--- @return void (Type not found)
function PointCamAtEntity(cam, entity, offsetX, offsetY, offsetZ, p5) end

--- @name _REPLAY_FREE_CAM_GET_MAX_RANGE
--- @return number
function ReplayFreeCamGetMaxRange() end

--- Set camera as active/inactive.  
--- @name SET_CAM_ACTIVE
--- @param cam Cam 
--- @param active boolean 
--- @return void (Type not found)
function SetCamActive(cam, active) end

--- Parameters p0-p5 seems correct. The bool p6 is unknown, but through every X360 script it's always 1. Please correct p0-p5 if any prove to be wrong.  
--- @name POINT_CAM_AT_PED_BONE
--- @param cam Cam 
--- @param ped Ped 
--- @param boneIndex number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p6 boolean 
--- @return void (Type not found)
function PointCamAtPedBone(cam, ped, boneIndex, x, y, z, p6) end

--- @name SET_CAM_ANIM_CURRENT_PHASE
--- @param cam Cam 
--- @param phase number 
--- @return void (Type not found)
function SetCamAnimCurrentPhase(cam, phase) end

--- Previous declaration void SET_CAM_ACTIVE_WITH_INTERP(Cam camTo, Cam camFrom, int duration, BOOL easeLocation, BOOL easeRotation) is completely wrong. The last two params are integers not BOOLs...  
--- @name SET_CAM_ACTIVE_WITH_INTERP
--- @param camTo Cam 
--- @param camFrom Cam 
--- @param duration number 
--- @param easeLocation number 
--- @param easeRotation number 
--- @return void (Type not found)
function SetCamActiveWithInterp(camTo, camFrom, duration, easeLocation, easeRotation) end

--- NOTE: Debugging functions are not present in the retail version of the game.  
--- @name SET_CAM_DEBUG_NAME
--- @param camera Cam 
--- @param name string 
--- @return void (Type not found)
function SetCamDebugName(camera, name) end

--- Sets the position of the cam.  
--- @name SET_CAM_COORD
--- @param cam Cam 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return void (Type not found)
function SetCamCoord(cam, posX, posY, posZ) end

--- Allows you to aim and shoot at the direction the camera is facing.  
--- @name SET_CAM_AFFECTS_AIMING
--- @param cam Cam 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCamAffectsAiming(cam, toggle) end

--- Native name labeled within its code
--- @name _SET_CAM_DOF_FOCAL_LENGTH_MULTIPLIER
--- @param camera Cam 
--- @param multiplier number 
--- @return void (Type not found)
function SetCamDofFocalLengthMultiplier(camera, multiplier) end

--- This native has a name defined inside its code  
--- @name _SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE
--- @param camera Cam 
--- @param p1 number 
--- @return void (Type not found)
function SetCamDofMaxNearInFocusDistance(camera, p1) end

--- @name SET_CAM_DOF_PLANES
--- @param cam Cam 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @return void (Type not found)
function SetCamDofPlanes(cam, p1, p2, p3, p4) end

--- This native has a name defined inside its code  
--- @name _SET_CAM_DOF_FOCUS_DISTANCE_BIAS
--- @param camera Cam 
--- @param p1 number 
--- @return void (Type not found)
function SetCamDofFocusDistanceBias(camera, p1) end

--- This native has a name defined inside its code  
--- @name _SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE_BLEND_LEVEL
--- @param camera Cam 
--- @param p1 number 
--- @return void (Type not found)
function SetCamDofMaxNearInFocusDistanceBlendLevel(camera, p1) end

--- @name SET_CAM_DOF_STRENGTH
--- @param cam Cam 
--- @param dofStrength number 
--- @return void (Type not found)
function SetCamDofStrength(cam, dofStrength) end

--- This native has its name defined inside its codE  
--- @name _SET_CAM_DOF_FNUMBER_OF_LENS
--- @param camera Cam 
--- @param p1 number 
--- @return void (Type not found)
function SetCamDofFnumberOfLens(camera, p1) end

--- if p0 is 0, effect is cancelled  
--- if p0 is 1, effect zooms in, gradually tilts cam clockwise apx 30 degrees, wobbles slowly. Motion blur is active until cancelled.  
--- if p0 is 2, effect immediately tilts cam clockwise apx 30 degrees, begins to wobble slowly, then gradually tilts cam back to normal. The wobbling will continue until the effect is cancelled.  
--- @name _SET_CAM_EFFECT
--- @param p0 number 
--- @return void (Type not found)
function SetCamEffect(p0) end

--- Sets the field of view of the cam.  
--- ---------------------------------------------  
--- Min: 1.0f  
--- Max: 130.0f  
--- @name SET_CAM_FOV
--- @param cam Cam 
--- @param fieldOfView number 
--- @return void (Type not found)
function SetCamFov(cam, fieldOfView) end

--- @name SET_CAM_FAR_DOF
--- @param cam Cam 
--- @param farDOF number 
--- @return void (Type not found)
function SetCamFarDof(cam, farDOF) end

--- @name SET_CAM_FAR_CLIP
--- @param cam Cam 
--- @param farClip number 
--- @return void (Type not found)
function SetCamFarClip(cam, farClip) end

--- @name SET_CAM_MOTION_BLUR_STRENGTH
--- @param cam Cam 
--- @param strength number 
--- @return void (Type not found)
function SetCamMotionBlurStrength(cam, strength) end

--- The native seems to only be called once.  
--- The native is used as so,  
--- CAM::SET_CAM_INHERIT_ROLL_VEHICLE(l_544, getElem(2, &l_525, 4));  
--- In the exile1 script.  
--- @name SET_CAM_INHERIT_ROLL_VEHICLE
--- @param cam Cam 
--- @param p1 boolean 
--- @return void (Type not found)
function SetCamInheritRollVehicle(cam, p1) end

--- @name SET_CAM_PARAMS
--- @param cam Cam 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param fieldOfView number 
--- @param transitionSpeed number The speed of transition/interpolation to these new values
--- @param p9 number 
--- @param p10 number 
--- @param rotationOrder number The order of rotation, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
--- @return void (Type not found)
function SetCamParams(cam, posX, posY, posZ, rotX, rotY, rotZ, fieldOfView, transitionSpeed, p9, p10, rotationOrder) end

--- @name SET_CAM_NEAR_DOF
--- @param cam Cam 
--- @param nearDOF number 
--- @return void (Type not found)
function SetCamNearDof(cam, nearDOF) end

--- @name SET_CAM_NEAR_CLIP
--- @param cam Cam 
--- @param nearClip number 
--- @return void (Type not found)
function SetCamNearClip(cam, nearClip) end

--- @name SET_CAM_SHAKE_AMPLITUDE
--- @param cam Cam 
--- @param amplitude number 
--- @return void (Type not found)
function SetCamShakeAmplitude(cam, amplitude) end

--- Sets the rotation of the camera.
--- @name SET_CAM_ROT
--- @param cam Cam The camera handle to use, in order to change the rotation
--- @param rotX number Rotation on X
--- @param rotY number Rotation on Y
--- @param rotZ number Rotation on Z
--- @param rotationOrder number The order of rotation, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
--- @return void (Type not found)
function SetCamRot(cam, rotX, rotY, rotZ, rotationOrder) end

--- @name SET_CAM_SPLINE_NODE_VELOCITY_SCALE
--- @param cam Cam 
--- @param p1 number 
--- @param scale number 
--- @return void (Type not found)
function SetCamSplineNodeVelocityScale(cam, p1, scale) end

--- I named p1 as timeDuration as it is obvious. I'm assuming tho it is ran in ms(Milliseconds) as usual.  
--- @name SET_CAM_SPLINE_DURATION
--- @param cam Cam 
--- @param timeDuration number 
--- @return void (Type not found)
function SetCamSplineDuration(cam, timeDuration) end

--- Sets the smoothing style for a DEFAULT_SPLINE_CAMERA
--- Ranges from 0 to 3 in rockstar scripts although there are actually 26
--- 0: No lead-in or lead-out smoothing
--- 1: Smooth lead-in
--- 2: Smooth lead-out
--- 3: Both lead-in and lead-out are smoothed
--- 4-6: Longer speed up, lead-in, lead-out, and both in order as above. 
--- 6: see above, but missed a node in testing(?)
--- 7: Smoothed lead-in, longer smoothed lead-out
--- 8: Longer lead-in and lead-out than 6, didn't drop node
--- 9: Constant acceleration
--- 10: Constant deceleration. Dropped 2 nodes in testing.
--- 11: Same as 0
--- 12: 10 but slower lead-in, reaches end node less early
--- 13: Extremely close to 3, slightly longer lead-in/lead-out
--- 14: Constant acceleration, dropped last 2 nodes in testing and halted (?)
--- 15: Very similar to 10, did not drop any nodes.
--- 16: Long lead-in, dropped 2 nodes in testing, very long leadout.
--- 17: Constant acceleration, slower speed-up than 9
--- 18: Same as 17 is to 9, slightly longer lead-out, lingers at end node
--- 19: Very long lead in and out
--- 20: Very long, gradual lead-in acceleration at start, gets extremely fast
--- 21: Same as 20 but for constant deceleration
--- 22: 20 and 21 combined, long linger at end node. Dropped 2 nodes in testing
--- 23: Constant acceleration, doesn't complete path before it stops
--- 24: Same as 23 but with constant deceleration, but completes path
--- 25: 23 and 24 combined, insanely fast at middle.
--- 26: No noticable lead-in, misses last 2 nodes in testing
--- 27+: Alternates between 0 and 26
--- The above is documented and graphed at [Spline Cam Interp Graphs](https://docs.google.com/spreadsheets/d/1ejyiMcEYrhhQOL0mLe8664UN-vU4Oh-SBqQnVcKlFIk/edit?usp=sharing)
--- Using 1-3 will result in misalignment from the passed durations for the spline nodes, the overall duration will remain but other nodes will be shortened if smoothing anything.
--- Graph below demonstrates interpolation between 0-1000 and back 10 times.
--- ![](https://i.imgur.com/cixWh7m.png)
--- ## Parameters
--- * **cam**: The DEFAULT_SPLINE_CAMERA to apply the smoothing to
--- * **smoothingStyle**: 0 to 3, 0 no additional smoothing, 1 smooth lead-in, 2 smooth lead-out, 3 smooth lead-in & lead-out
--- @name SET_CAM_SPLINE_SMOOTHING_STYLE
--- @param cam Cam 
--- @param smoothingStyle number 
--- @return void (Type not found)
function SetCamSplineSmoothingStyle(cam, smoothingStyle) end

--- @name SET_CAM_SPLINE_NODE_EASE
--- @param cam Cam 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function SetCamSplineNodeEase(cam, p1, p2, p3) end

--- @name SET_CAM_VIEW_MODE_FOR_CONTEXT
--- @param context number The view context; see [`_GET_CAM_ACTIVE_VIEW_MODE_CONTEXT`](#\_0x19CAFA3C87F7C2FF).
--- @param viewMode number The view mode; see [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A).
--- @return void (Type not found)
function SetCamViewModeForContext(context, viewMode) end

--- @name SET_CAM_SPLINE_NODE_EXTRA_FLAGS
--- @param cam Cam 
--- @param p1 number 
--- @param flags number 
--- @return void (Type not found)
function SetCamSplineNodeExtraFlags(cam, p1, flags) end

--- @name SET_CAM_SPLINE_PHASE
--- @param cam Cam 
--- @param p1 number 
--- @return void (Type not found)
function SetCamSplinePhase(cam, p1) end

--- Toggles the vehicle cinematic cam; requires the player ped to be in a vehicle to work.
--- @name SET_CINEMATIC_MODE_ACTIVE
--- @param toggle boolean 
--- @return void (Type not found)
function SetCinematicModeActive(toggle) end

--- @name SET_CINEMATIC_BUTTON_ACTIVE
--- @param p0 boolean 
--- @return void (Type not found)
function SetCinematicButtonActive(p0) end

--- @name SET_CAM_USE_SHALLOW_DOF_MODE
--- @param cam Cam 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCamUseShallowDofMode(cam, toggle) end

--- @name SET_CINEMATIC_NEWS_CHANNEL_ACTIVE_THIS_UPDATE
--- @return void (Type not found)
function SetCinematicNewsChannelActiveThisUpdate() end

--- @name SET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR
--- @param zoomFactor number 
--- @return void (Type not found)
function SetFirstPersonAimCamZoomFactor(zoomFactor) end

--- @name SET_FLY_CAM_COORD_AND_CONSTRAIN
--- @param cam Cam 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetFlyCamCoordAndConstrain(cam, x, y, z) end

--- @name _SET_FIRST_PERSON_CAM_PITCH_RANGE
--- @param minAngle number 
--- @param maxAngle number 
--- @return void (Type not found)
function SetFirstPersonCamPitchRange(minAngle, maxAngle) end

--- @name SET_FIRST_PERSON_AIM_CAM_NEAR_CLIP_THIS_UPDATE
--- @param distance number 
--- @return void (Type not found)
function SetFirstPersonAimCamNearClipThisUpdate(distance) end

--- @name _SET_FLY_CAM_VERTICAL_SPEED_MULTIPLIER
--- @param cam Cam 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function SetFlyCamVerticalSpeedMultiplier(cam, p1, p2, p3) end

--- See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
--- @name SET_FOLLOW_PED_CAM_VIEW_MODE
--- @param viewMode number 
--- @return void (Type not found)
function SetFollowPedCamViewMode(viewMode) end

--- @name SET_CINEMATIC_CAM_SHAKE_AMPLITUDE
--- @param p0 number 
--- @return void (Type not found)
function SetCinematicCamShakeAmplitude(p0) end

--- @name SET_FLY_CAM_HORIZONTAL_RESPONSE
--- @param cam Cam 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function SetFlyCamHorizontalResponse(cam, p1, p2, p3) end

--- @name SET_FLY_CAM_MAX_HEIGHT
--- @param cam Cam 
--- @param height number 
--- @return void (Type not found)
function SetFlyCamMaxHeight(cam, height) end

--- See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
--- @name SET_FOLLOW_VEHICLE_CAM_VIEW_MODE
--- @param viewMode number 
--- @return void (Type not found)
function SetFollowVehicleCamViewMode(viewMode) end

--- From the scripts:
--- CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA", 0);
--- CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_ON_EXILE1_LADDER_CAMERA", 1500);
--- CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_SKY_DIVING_CAMERA", 0);
--- CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_SKY_DIVING_CAMERA", 3000);
--- CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_SKY_DIVING_FAMILY5_CAMERA", 0);
--- CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_SKY_DIVING_CAMERA", 0);
--- @name SET_FOLLOW_PED_CAM_THIS_UPDATE
--- @param camName string 
--- @param p1 number 
--- @return boolean
function SetFollowPedCamThisUpdate(camName, p1) end

--- @name _SET_GAMEPLAY_CAM_RAW_PITCH
--- @param pitch number 
--- @return void (Type not found)
function SetGameplayCamRawPitch(pitch) end

--- See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
--- @name SET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL
--- @param zoomLevel number 
--- @return void (Type not found)
function SetFollowVehicleCamZoomLevel(zoomLevel) end

--- @name SET_GAMEPLAY_CAM_FOLLOW_PED_THIS_UPDATE
--- @param ped Ped 
--- @return void (Type not found)
function SetGameplayCamFollowPedThisUpdate(ped) end

--- NativeDB Introduced: v1365
--- @name _SET_FOLLOW_TURRET_SEAT_CAM
--- @param seatIndex number See [IS_TURRET_SEAT](#\_0xE33FFA906CE74880)
--- @return void (Type not found)
function SetFollowTurretSeatCam(seatIndex) end

--- @name _SET_GAMEPLAY_CAM_RELATIVE_ROTATION
--- @param roll number 
--- @param pitch number 
--- @param yaw number 
--- @return void (Type not found)
function SetGameplayCamRelativeRotation(roll, pitch, yaw) end

--- Does nothing  
--- NativeDB Added Parameter 2: Any p1
--- @name _SET_GAMEPLAY_CAM_RAW_YAW
--- @param yaw number 
--- @return void (Type not found)
function SetGameplayCamRawYaw(yaw) end

--- Sets gameplay camera to hash
--- NativeDB Introduced: v1180
--- @name _SET_GAMEPLAY_CAM_HASH
--- @param camName string 
--- @return void (Type not found)
function SetGameplayCamHash(camName) end

--- @name SET_GAMEPLAY_COORD_HINT
--- @param x number 
--- @param y number 
--- @param z number 
--- @param duration number 
--- @param blendOutDuration number 
--- @param blendInDuration number 
--- @param unk number 
--- @return void (Type not found)
function SetGameplayCoordHint(x, y, z, duration, blendOutDuration, blendInDuration, unk) end

--- Sets the camera position relative to heading in float from -360 to +360.  
--- Heading is alwyas 0 in aiming camera.  
--- @name SET_GAMEPLAY_CAM_RELATIVE_HEADING
--- @param heading number 
--- @return void (Type not found)
function SetGameplayCamRelativeHeading(heading) end

--- From b617 scripts:
--- CAM::_21E253A7F8DA5DFB("DINGHY");
--- CAM::_21E253A7F8DA5DFB("ISSI2");
--- CAM::_21E253A7F8DA5DFB("SPEEDO");
--- @name _SET_GAMEPLAY_CAM_VEHICLE_CAMERA
--- @param vehicleName string 
--- @return void (Type not found)
function SetGameplayCamVehicleCamera(vehicleName) end

--- This native sets the camera's pitch (rotation on the x-axis).
--- @name SET_GAMEPLAY_CAM_RELATIVE_PITCH
--- @param angle number the angle to rotate the camera by
--- @param scalingFactor number always seems to be set to 1.0 in native calls
--- @return void (Type not found)
function SetGameplayCamRelativePitch(angle, scalingFactor) end

--- p6 & p7 - possibly length or time  
--- @name SET_GAMEPLAY_ENTITY_HINT
--- @param entity Entity 
--- @param xOffset number 
--- @param yOffset number 
--- @param zOffset number 
--- @param p4 boolean 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8  
--- @return void (Type not found)
function SetGameplayEntityHint(entity, xOffset, yOffset, zOffset, p4, p5, p6, p7, p8) end

--- @name _SET_GAMEPLAY_CAM_VEHICLE_CAMERA_NAME
--- @param vehicleModel Hash 
--- @return void (Type not found)
function SetGameplayCamVehicleCameraName(vehicleModel) end

--- @name _SET_GAMEPLAY_HINT_ANIM_OFFSETX
--- @param xOffset number 
--- @return void (Type not found)
function SetGameplayHintAnimOffsetx(xOffset) end

--- Sets the amplitude for the gameplay (i.e. 3rd or 1st) camera to shake. Used in script "drunk_controller.ysc.c4" to simulate making the player drunk.  
--- @name SET_GAMEPLAY_CAM_SHAKE_AMPLITUDE
--- @param amplitude number 
--- @return void (Type not found)
function SetGameplayCamShakeAmplitude(amplitude) end

--- @name _SET_GAMEPLAY_HINT_ANIM_CLOSEUP
--- @param toggle boolean 
--- @return void (Type not found)
function SetGameplayHintAnimCloseup(toggle) end

--- @name SET_GAMEPLAY_HINT_BASE_ORBIT_PITCH_OFFSET
--- @param value number 
--- @return void (Type not found)
function SetGameplayHintBaseOrbitPitchOffset(value) end

--- @name SET_GAMEPLAY_HINT_FOLLOW_DISTANCE_SCALAR
--- @param value number 
--- @return void (Type not found)
function SetGameplayHintFollowDistanceScalar(value) end

--- @name _SET_GAMEPLAY_HINT_ANIM_OFFSETY
--- @param yOffset number 
--- @return void (Type not found)
function SetGameplayHintAnimOffsety(yOffset) end

--- @name SET_GAMEPLAY_HINT_FOV
--- @param FOV number 
--- @return void (Type not found)
function SetGameplayHintFov(FOV) end

--- @name SET_GAMEPLAY_PED_HINT
--- @param p0 Ped 
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param p4 boolean 
--- @param duration number 
--- @param blendOutDuration number 
--- @param blendInDuration number 
--- @return void (Type not found)
function SetGameplayPedHint(p0, x1, y1, z1, p4, duration, blendOutDuration, blendInDuration) end

--- Focuses the camera on the specified vehicle.
--- @name SET_GAMEPLAY_VEHICLE_HINT
--- @param vehicle Vehicle The vehicle to focus on.
--- @param offsetX number Position offset X
--- @param offsetY number Position offset Y
--- @param offsetZ number Position offset Z
--- @param p4 boolean 
--- @param time number Effect duration
--- @param easeInTime number Effect fade in duration
--- @param easeOutTime number EFfect fade out duration
--- @return void (Type not found)
function SetGameplayVehicleHint(vehicle, offsetX, offsetY, offsetZ, p4, time, easeInTime, easeOutTime) end

--- @name SET_GAMEPLAY_OBJECT_HINT
--- @param p0  
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 boolean 
--- @param p5  
--- @param p6  
--- @param p7  
--- @return void (Type not found)
function SetGameplayObjectHint(p0, p1, p2, p3, p4, p5, p6, p7) end

--- @name SET_THIRD_PERSON_AIM_CAM_NEAR_CLIP_THIS_UPDATE
--- @param distance number 
--- @return void (Type not found)
function SetThirdPersonAimCamNearClipThisUpdate(distance) end

--- Only used in R* Script fm_mission_controller_2020
--- NativeDB Introduced: v2699
--- @name _SET_USE_HI_DOF_IN_CUTSCENE
--- @return void (Type not found)
function SetUseHiDofInCutscene() end

--- @name SET_IN_VEHICLE_CAM_STATE_THIS_UPDATE
--- @param p0 Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function SetInVehicleCamStateThisUpdate(p0, p1) end

--- @name SET_WIDESCREEN_BORDERS
--- @param p0 boolean 
--- @param p1 number 
--- @return void (Type not found)
function SetWidescreenBorders(p0, p1) end

--- Possible shake types (updated b617d):  
--- DEATH_FAIL_IN_EFFECT_SHAKE  
--- DRUNK_SHAKE  
--- FAMILY5_DRUG_TRIP_SHAKE  
--- HAND_SHAKE  
--- JOLT_SHAKE  
--- LARGE_EXPLOSION_SHAKE  
--- MEDIUM_EXPLOSION_SHAKE  
--- SMALL_EXPLOSION_SHAKE  
--- ROAD_VIBRATION_SHAKE  
--- SKY_DIVING_SHAKE  
--- VIBRATE_SHAKE  
--- @name SHAKE_CAM
--- @param cam Cam 
--- @param type string 
--- @param amplitude number 
--- @return void (Type not found)
function ShakeCam(cam, type, amplitude) end

--- Possible shake types (updated b617d):  
--- DEATH_FAIL_IN_EFFECT_SHAKE  
--- DRUNK_SHAKE  
--- FAMILY5_DRUG_TRIP_SHAKE  
--- HAND_SHAKE  
--- JOLT_SHAKE  
--- LARGE_EXPLOSION_SHAKE  
--- MEDIUM_EXPLOSION_SHAKE  
--- SMALL_EXPLOSION_SHAKE  
--- ROAD_VIBRATION_SHAKE  
--- SKY_DIVING_SHAKE  
--- VIBRATE_SHAKE  
--- @name SHAKE_GAMEPLAY_CAM
--- @param shakeName string 
--- @param intensity number 
--- @return void (Type not found)
function ShakeGameplayCam(shakeName, intensity) end

--- @name SET_USE_HI_DOF
--- @return void (Type not found)
function SetUseHiDof() end

--- CAM::SHAKE_SCRIPT_GLOBAL("HAND_SHAKE", 0.2);
--- @name SHAKE_SCRIPT_GLOBAL
--- @param p0 string 
--- @param p1 number 
--- @return void (Type not found)
function ShakeScriptGlobal(p0, p1) end

--- @name STOP_CAM_SHAKING
--- @param cam Cam 
--- @param p1 boolean 
--- @return void (Type not found)
function StopCamShaking(cam, p1) end

--- p0 argument found in the b617d scripts: "DRUNK_SHAKE"  
--- @name SHAKE_CINEMATIC_CAM
--- @param p0 string 
--- @param p1 number 
--- @return void (Type not found)
function ShakeCinematicCam(p0, p1) end

--- @name STOP_CINEMATIC_SHOT
--- @param p0 Hash 
--- @return void (Type not found)
function StopCinematicShot(p0) end

--- @name STOP_GAMEPLAY_CAM_SHAKING
--- @param p0 boolean 
--- @return void (Type not found)
function StopGameplayCamShaking(p0) end

--- @name STOP_CAM_POINTING
--- @param cam Cam 
--- @return void (Type not found)
function StopCamPointing(cam) end

--- @name STOP_CINEMATIC_CAM_SHAKING
--- @param p0 boolean 
--- @return void (Type not found)
function StopCinematicCamShaking(p0) end

--- @name _USE_STUNT_CAMERA_THIS_FRAME
--- @return void (Type not found)
function UseStuntCameraThisFrame() end

--- @name STOP_CUTSCENE_CAM_SHAKING
--- @return void (Type not found)
function StopCutsceneCamShaking() end

--- @name STOP_GAMEPLAY_HINT
--- @param p0 boolean 
--- @return void (Type not found)
function StopGameplayHint(p0) end

--- In drunk_controller.c4, sub_309
--- if (CAM::IS_SCRIPT_GLOBAL_SHAKING()) {
---     CAM::STOP_SCRIPT_GLOBAL_SHAKING(0);
--- }
--- @name STOP_SCRIPT_GLOBAL_SHAKING
--- @param p0 boolean 
--- @return void (Type not found)
function StopScriptGlobalShaking(p0) end

--- This native makes the gameplay camera zoom into first person/third person with a special effect.
--- NativeDB Added Parameter 4: Any p3
--- @name STOP_RENDERING_SCRIPT_CAMS_USING_CATCH_UP
--- @param render boolean 
--- @param p1 number 
--- @param p2 number 
--- @return void (Type not found)
function StopRenderingScriptCamsUsingCatchUp(render, p1, p2) end
