
--- NativeDB Introduced: v2699
--- @name _ADD_OIL_DECAL
--- @param x number 
--- @param y number 
--- @param z number 
--- @param groundLvl number 
--- @param width number 
--- @param transparency number 
--- @return number
function AddOilDecal(x, y, z, groundLvl, width, transparency) end

--- @name ADD_PETROL_DECAL
--- @param x number 
--- @param y number 
--- @param z number 
--- @param groundLvl number 
--- @param width number 
--- @param transparency number 
--- @return number
function AddPetrolDecal(x, y, z, groundLvl, width, transparency) end

--- decal types:  
--- public enum DecalTypes  
--- {  
---     splatters_blood = 1010,  
---     splatters_blood_dir = 1015,  
---     splatters_blood_mist = 1017,  
---     splatters_mud = 1020,  
---     splatters_paint = 1030,  
---     splatters_water = 1040,  
---     splatters_water_hydrant = 1050,  
---     splatters_blood2 = 1110,  
---     weapImpact_metal = 4010,  
---     weapImpact_concrete = 4020,  
---     weapImpact_mattress = 4030,  
---     weapImpact_mud = 4032,  
---     weapImpact_wood = 4050,  
---     weapImpact_sand = 4053,  
---     weapImpact_cardboard = 4040,  
---     weapImpact_melee_glass = 4100,  
---     weapImpact_glass_blood = 4102,  
---     weapImpact_glass_blood2 = 4104,  
---     weapImpact_shotgun_paper = 4200,  
---     weapImpact_shotgun_mattress,  
---     weapImpact_shotgun_metal,  
---     weapImpact_shotgun_wood,  
---     weapImpact_shotgun_dirt,  
---     weapImpact_shotgun_tvscreen,  
---     weapImpact_shotgun_tvscreen2,  
---     weapImpact_shotgun_tvscreen3,  
---     weapImpact_melee_concrete = 4310,  
---     weapImpact_melee_wood = 4312,  
---     weapImpact_melee_metal = 4314,  
---     burn1 = 4421,  
---     burn2,  
---     burn3,  
---     burn4,  
---     burn5,  
---     bang_concrete_bang = 5000,  
---     bang_concrete_bang2,  
---     bang_bullet_bang,  
---     bang_bullet_bang2 = 5004,  
---     bang_glass = 5031,  
---     bang_glass2,  
---     solidPool_water = 9000,  
---     solidPool_blood,  
---     solidPool_oil,  
---     solidPool_petrol,  
---     solidPool_mud,  
---     porousPool_water,  
---     porousPool_blood,  
---     porousPool_oil,  
---     porousPool_petrol,  
---     porousPool_mud,  
---     porousPool_water_ped_drip,  
---     liquidTrail_water = 9050  
--- }  
--- @name ADD_DECAL
--- @param decalType number 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8 number 
--- @param p9 number 
--- @param width number 
--- @param height number 
--- @param rCoef number 
--- @param gCoef number 
--- @param bCoef number 
--- @param opacity number 
--- @param timeout number 
--- @param p17 boolean 
--- @param p18 boolean 
--- @param p19 boolean 
--- @return number
function AddDecal(decalType, posX, posY, posZ, p4, p5, p6, p7, p8, p9, width, height, rCoef, gCoef, bCoef, opacity, timeout, p17, p18, p19) end

--- See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724)
--- @name _ANIMPOSTFX_GET_UNK
--- @param effectName string 
--- @return number
function AnimpostfxGetUnk(effectName) end

--- Example:  
--- GRAPHICS::ADD_ENTITY_ICON(a_0, "MP_Arrow");  
--- I tried this and nothing happened...  
--- @name ADD_ENTITY_ICON
--- @param entity Entity 
--- @param icon string 
--- @return 
function AddEntityIcon(entity, icon) end

--- @name ADD_PETROL_TRAIL_DECAL_INFO
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3 number 
--- @return void (Type not found)
function AddPetrolTrailDecalInfo(x, y, z, p3) end

--- @name ADD_TCMODIFIER_OVERRIDE
--- @param modifierName1 string 
--- @param modifierName2 string 
--- @return void (Type not found)
function AddTcmodifierOverride(modifierName1, modifierName2) end

--- @name ANIMPOSTFX_STOP_ALL
--- @return void (Type not found)
function AnimpostfxStopAll() end

--- boneIndex is always chassis_dummy in the scripts. The x/y/z params are location relative to the chassis bone.
--- @name ADD_VEHICLE_CREW_EMBLEM
--- @param vehicle Vehicle 
--- @param ped Ped 
--- @param boneIndex number 
--- @param x1 number 
--- @param x2 number 
--- @param x3 number 
--- @param y1 number 
--- @param y2 number 
--- @param y3 number 
--- @param z1 number 
--- @param z2 number 
--- @param z3 number 
--- @param scale number 
--- @param p13  
--- @param alpha number 
--- @return boolean
function AddVehicleCrewEmblem(vehicle, ped, boneIndex, x1, x2, x3, y1, y2, y3, z1, z2, z3, scale, p13, alpha) end

--- duration - is how long to play the effect for in milliseconds. If 0, it plays the default length
--- if loop is true, the effect won't stop until you call ANIMPOSTFX_STOP on it. (only loopable effects)
--- @name ANIMPOSTFX_PLAY
--- @param effectName string 
--- @param duration number 
--- @param looped boolean 
--- @return void (Type not found)
function AnimpostfxPlay(effectName, duration, looped) end

--- See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
--- @name ANIMPOSTFX_STOP
--- @param effectName string 
--- @return void (Type not found)
function AnimpostfxStop(effectName) end

--- Might be more appropriate in AUDIO?  
--- @name ATTACH_TV_AUDIO_TO_ENTITY
--- @param entity Entity 
--- @return void (Type not found)
function AttachTvAudioToEntity(entity) end

--- See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
--- @name ANIMPOSTFX_IS_RUNNING
--- @param effectName string 
--- @return boolean
function AnimpostfxIsRunning(effectName) end

--- Starts frontend (pause menu) scaleform movie methods.
--- This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.
--- Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER`](#\_0xB9449845F73F5E9C) for header scaleform functions.
--- @name BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND
--- @param functionName string The function name of the scaleform to call.
--- @return boolean
function BeginScaleformMovieMethodOnFrontend(functionName) end

--- Pushes a function from the Hud component Scaleform onto the stack. Same behavior as GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD, just a hud component id instead of a Scaleform.
--- Known components:
--- 19 - MP_RANK_BAR
--- 20 - HUD_DIRECTOR_MODE
--- This native requires more research - all information can be found inside of 'hud.gfx'. Using a decompiler, the different components are located under "scripts\__Packages\com\rockstargames\gtav\hud\hudComponents" and "scripts\__Packages\com\rockstargames\gtav\Multiplayer".
--- @name BEGIN_SCALEFORM_SCRIPT_HUD_MOVIE_METHOD
--- @param hudComponent number 
--- @param methodName string 
--- @return boolean
function BeginScaleformScriptHudMovieMethod(hudComponent, methodName) end

--- @name BEGIN_TAKE_HIGH_QUALITY_PHOTO
--- @return boolean
function BeginTakeHighQualityPhoto() end

--- Push a function from the Scaleform onto the stack  
--- @name BEGIN_SCALEFORM_MOVIE_METHOD
--- @param scaleform number 
--- @param methodName string 
--- @return boolean
function BeginScaleformMovieMethod(scaleform, methodName) end

--- Stops the effect and sets a value (bool) in its data (+0x199) to false; See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
--- @name _ANIMPOSTFX_STOP_AND_DO_UNK
--- @param effectName string 
--- @return void (Type not found)
function AnimpostfxStopAndDoUnk(effectName) end

--- Starts frontend (pause menu) scaleform movie methods for header options.
--- Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND`](#\_0xAB58C27C2E6123C6) to customize the content inside the frontend menus.
--- @name BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER
--- @param functionName string Scaleform function name.
--- @return boolean
function BeginScaleformMovieMethodOnFrontendHeader(functionName) end

--- Called prior to adding a text component to the UI. After doing so, GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING is called.
--- Examples:
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("NUMBER");
--- HUD::ADD_TEXT_COMPONENT_INTEGER(MISC::ABSI(a_1));
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRING");
--- HUD::_ADD_TEXT_COMPONENT_STRING(a_2);
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM2");
--- HUD::_0x17299B63C7683A2B(v_3);
--- HUD::_0x17299B63C7683A2B(v_4);
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM1");
--- HUD::_0x17299B63C7683A2B(v_3);
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
--- @name BEGIN_TEXT_COMMAND_SCALEFORM_STRING
--- @param textLabel string a GXT text label
--- @return void (Type not found)
function BeginTextCommandScaleformString(textLabel) end

--- Calls the Scaleform function.  
--- @name CALL_SCALEFORM_MOVIE_METHOD
--- @param scaleform number 
--- @param method string 
--- @return void (Type not found)
function CallScaleformMovieMethod(scaleform, method) end

--- Calls the Scaleform function and passes the parameters as floats.  
--- The number of parameters passed to the function varies, so the end of the parameter list is represented by -1.0.  
--- @name CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER
--- @param scaleform number 
--- @param methodName string 
--- @param param1 number 
--- @param param2 number 
--- @param param3 number 
--- @param param4 number 
--- @param param5 number 
--- @return void (Type not found)
function CallScaleformMovieMethodWithNumber(scaleform, methodName, param1, param2, param3, param4, param5) end

--- @name BEGIN_TAKE_MISSION_CREATOR_PHOTO
--- @return boolean
function BeginTakeMissionCreatorPhoto() end

--- Calls the Scaleform function and passes both float and string parameters (in their respective order).  
--- The number of parameters passed to the function varies, so the end of the float parameters is represented by -1.0, and the end of the string parameters is represented by 0 (NULL).  
--- NOTE: The order of parameters in the function prototype is important! All float parameters must come first, followed by the string parameters.  
--- Examples:  
--- // function MY_FUNCTION(floatParam1, floatParam2, stringParam)  
--- GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION", 10.0, 20.0, -1.0, -1.0, -1.0, "String param", 0, 0, 0, 0);  
--- // function MY_FUNCTION_2(floatParam, stringParam1, stringParam2)  
--- GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION_2", 10.0, -1.0, -1.0, -1.0, -1.0, "String param #1", "String param #2", 0, 0, 0);  
--- @name CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER_AND_STRING
--- @param scaleform number 
--- @param methodName string 
--- @param floatParam1 number 
--- @param floatParam2 number 
--- @param floatParam3 number 
--- @param floatParam4 number 
--- @param floatParam5 number 
--- @param stringParam1 string 
--- @param stringParam2 string 
--- @param stringParam3 string 
--- @param stringParam4 string 
--- @param stringParam5 string 
--- @return void (Type not found)
function CallScaleformMovieMethodWithNumberAndString(scaleform, methodName, floatParam1, floatParam2, floatParam3, floatParam4, floatParam5, stringParam1, stringParam2, stringParam3, stringParam4, stringParam5) end

--- When this is set to ON, shadows only draw as you get nearer.
--- When OFF, they draw from a further distance.
--- @name CASCADE_SHADOWS_ENABLE_ENTITY_TRACKER
--- @param toggle boolean 
--- @return void (Type not found)
function CascadeShadowsEnableEntityTracker(toggle) end

--- Calls the Scaleform function and passes the parameters as strings.  
--- The number of parameters passed to the function varies, so the end of the parameter list is represented by 0 (NULL).  
--- @name CALL_SCALEFORM_MOVIE_METHOD_WITH_STRING
--- @param scaleform number 
--- @param methodName string 
--- @param param1 string 
--- @param param2 string 
--- @param param3 string 
--- @param param4 string 
--- @param param5 string 
--- @return void (Type not found)
function CallScaleformMovieMethodWithString(scaleform, methodName, param1, param2, param3, param4, param5) end

--- @name _CASCADE_SHADOWS_CLEAR_SHADOW_SAMPLE_TYPE
--- @return void (Type not found)
function CascadeShadowsClearShadowSampleType() end

--- @name CASCADE_SHADOWS_SET_AIRCRAFT_MODE
--- @param p0 boolean 
--- @return void (Type not found)
function CascadeShadowsSetAircraftMode(p0) end

--- @name CASCADE_SHADOWS_SET_DYNAMIC_DEPTH_MODE
--- @param p0 boolean 
--- @return void (Type not found)
function CascadeShadowsSetDynamicDepthMode(p0) end

--- @name CASCADE_SHADOWS_SET_CASCADE_BOUNDS
--- @param p0  
--- @param p1 boolean 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 boolean 
--- @param p7 number 
--- @return void (Type not found)
function CascadeShadowsSetCascadeBounds(p0, p1, p2, p3, p4, p5, p6, p7) end

--- @name CASCADE_SHADOWS_INIT_SESSION
--- @return void (Type not found)
function CascadeShadowsInitSession() end

--- @name CASCADE_SHADOWS_SET_CASCADE_BOUNDS_SCALE
--- @param p0 number 
--- @return void (Type not found)
function CascadeShadowsSetCascadeBoundsScale(p0) end

--- Possible values:
--- "CSM_ST_POINT"
--- "CSM_ST_LINEAR"
--- "CSM_ST_TWOTAP"
--- "CSM_ST_BOX3x3"
--- "CSM_ST_BOX4x4"
--- "CSM_ST_DITHER2_LINEAR"
--- "CSM_ST_CUBIC"
--- "CSM_ST_DITHER4"
--- "CSM_ST_DITHER16"
--- "CSM_ST_SOFT16"
--- "CSM_ST_DITHER16_RPDB"
--- "CSM_ST_POISSON16_RPDB_GNORM"
--- "CSM_ST_HIGHRES_BOX4x4"
--- "CSM_ST_CLOUDS_SIMPLE"
--- "CSM_ST_CLOUDS_LINEAR"
--- "CSM_ST_CLOUDS_TWOTAP"
--- "CSM_ST_CLOUDS_BOX3x3"
--- "CSM_ST_CLOUDS_BOX4x4"
--- "CSM_ST_CLOUDS_DITHER2_LINEAR"
--- "CSM_ST_CLOUDS_SOFT16"
--- "CSM_ST_CLOUDS_DITHER16_RPDB"
--- "CSM_ST_CLOUDS_POISSON16_RPDB_GNORM"
--- @name CASCADE_SHADOWS_SET_SHADOW_SAMPLE_TYPE
--- @param type string 
--- @return void (Type not found)
function CascadeShadowsSetShadowSampleType(type) end

--- @name CASCADE_SHADOWS_SET_ENTITY_TRACKER_SCALE
--- @param p0 number 
--- @return void (Type not found)
function CascadeShadowsSetEntityTrackerScale(p0) end

--- Resets the screen's draw-origin which was changed by the function [`SET_DRAW_ORIGIN`](#\_0xAA0008F3BBB8F416) back to `x=0, y=0`. See [`SET_DRAW_ORIGIN`](#\_0xAA0008F3BBB8F416) for further information.
--- @name CLEAR_DRAW_ORIGIN
--- @return void (Type not found)
function ClearDrawOrigin() end

--- @name CASCADE_SHADOWS_SET_DYNAMIC_DEPTH_VALUE
--- @param p0 number 
--- @return void (Type not found)
function CascadeShadowsSetDynamicDepthValue(p0) end

--- @name CLEAR_TIMECYCLE_MODIFIER
--- @return void (Type not found)
function ClearTimecycleModifier() end

--- Clears the secondary timecycle modifier usually set with [`SetExtraTimecycleModifier`](#\_0x5096FD9CCB49056D)
--- @name _CLEAR_EXTRA_TIMECYCLE_MODIFIER
--- @return void (Type not found)
function ClearExtraTimecycleModifier() end

--- Creates a checkpoint. Returns the handle of the checkpoint.  
--- 20/03/17 : Attention, checkpoints are already handled by the game itself, so you must not loop it like markers.
--- Parameters:  
--- * type - The type of checkpoint to create. See below for a list of checkpoint types.  
--- * pos1 - The position of the checkpoint.  
--- * pos2 - The position of the next checkpoint to point to.  
--- * diameter - The diameter of the checkpoint.
--- * color - The color of the checkpoint.  
--- * reserved - Special parameter, see below for details. Usually set to 0 in the scripts.  
--- Checkpoint types (prior to game build 2189):  
--- 0-4---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
--- 5-9---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
--- 10-14-------Ring: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
--- 15-19-------1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker        
--- 20-24-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
--- 25-29-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker      
--- 30-34-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
--- 35-38-------Ring: Airplane Up, Left, Right, UpsideDown  
--- 39----------?  
--- 40----------Ring: just a ring  
--- 41----------?  
--- 42-44-------Cylinder w/ number (uses 'reserved' parameter)  
--- 45-47-------Cylinder no arrow or number  
--- If using type 42-44, reserved sets number / number and shape to display  
--- 0-99------------Just numbers (0-99)  
--- 100-109-----------------Arrow (0-9)  
--- 110-119------------Two arrows (0-9)  
--- 120-129----------Three arrows (0-9)  
--- 130-139----------------Circle (0-9)  
--- 140-149------------CycleArrow (0-9)  
--- 150-159----------------Circle (0-9)  
--- 160-169----Circle  w/ pointer (0-9)  
--- 170-179-------Perforated ring (0-9)  
--- 180-189----------------Sphere (0-9)  
--- [Checkpoint Types](https://docs.fivem.net/docs/game-references/checkpoints/) as of game build 2189
--- @name CREATE_CHECKPOINT
--- @param type number 
--- @param posX1 number 
--- @param posY1 number 
--- @param posZ1 number 
--- @param posX2 number 
--- @param posY2 number 
--- @param posZ2 number 
--- @param diameter number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @param reserved number 
--- @return number
function CreateCheckpoint(type, posX1, posY1, posZ1, posX2, posY2, posZ2, diameter, red, green, blue, alpha, reserved) end

--- Creates a tracked point: useful for checking the visibility of a 3D point on screen.
--- Tracked points must be manually managed and will not be destroyed on resource stop (they are not an instance of CScriptResource). See [`DESTROY_TRACKED_POINT`](#\_0xB25DC90BAD56CA42) and [onResourceStop](https://docs.fivem.net/docs/scripting-reference/events/list/onResourceStop/).
--- Only 64 points may be tracked at a given time.
--- @name CREATE_TRACKED_POINT
--- @return number
function CreateTrackedPoint() end

--- @name DESTROY_TRACKED_POINT
--- @param point number 
--- @return void (Type not found)
function DestroyTrackedPoint(point) end

--- @name CLEAR_TV_CHANNEL_PLAYLIST
--- @param tvChannel number 
--- @return void (Type not found)
function ClearTvChannelPlaylist(tvChannel) end

--- @name DISABLE_SCREENBLUR_FADE
--- @return void (Type not found)
function DisableScreenblurFade() end

--- @name DELETE_CHECKPOINT
--- @param checkpoint number 
--- @return void (Type not found)
function DeleteCheckpoint(checkpoint) end

--- @name _DISABLE_SCRIPT_AMBIENT_EFFECTS
--- @param p0  
--- @return void (Type not found)
function DisableScriptAmbientEffects(p0) end

--- @name DOES_VEHICLE_HAVE_CREW_EMBLEM
--- @param vehicle Vehicle 
--- @param p1 number 
--- @return boolean
function DoesVehicleHaveCrewEmblem(vehicle, p1) end

--- @name DISABLE_OCCLUSION_THIS_FRAME
--- @return void (Type not found)
function DisableOcclusionThisFrame() end

--- @name DISABLE_VEHICLE_DISTANTLIGHTS
--- @param toggle boolean 
--- @return void (Type not found)
function DisableVehicleDistantlights(toggle) end

--- Used in pi_menu.c. Checks if there is a brief entry for specified value.
--- Values:
--- 0 - Dialogue brief
--- 1 - Help text brief
--- 2 - Mission Objective brief
--- @name DOES_LATEST_BRIEF_STRING_EXIST
--- @param briefValue number A value indicating brief text.
--- @return boolean
function DoesLatestBriefStringExist(briefValue) end

--- Must be called each frame, will play at specified position on screen when called with [`_PLAY_BINK_MOVIE`](#\_0x70D2CC8A542A973C)
--- @name _DRAW_BINK_MOVIE
--- @param binkMovie number The movie to be drawn (from [`_SET_BINK_MOVIE`](#\_0x338D9F609FD632DB)).
--- @param posX number The centered x position of the movie (0.0 - 1.0).
--- @param posY number The centered y position of the movie (0.0 - 1.0).
--- @param scaleX number The x scale of the movie (0.0 - 1.0).
--- @param scaleY number The y scale of the movie (0.0 - 1.0).
--- @param rotation number The rotation of the movie (0.0 - 360.0).
--- @param r number The red value of the movie (0 - 255).
--- @param g number The green value of the movie (0 - 255).
--- @param b number The blue value of the movie (0 - 255).
--- @param a number The alpha value of the movie (0 - 255).
--- @return void (Type not found)
function DrawBinkMovie(binkMovie, posX, posY, scaleX, scaleY, rotation, r, g, b, a) end

--- x,y,z = start pos  
--- x2,y2,z2 = end pos  
--- Draw's a 3D Box between the two x,y,z coords.  
--- --------------  
--- Keep in mind that the edges of the box do only align to the worlds base-vectors. Therefore something like rotation cannot be applied. That means this function is pretty much useless, unless you want a static unicolor box somewhere.  
--- I recommend using a predefined function to call this.  
--- [VB.NET]  
--- Public Sub DrawBox(a As Vector3, b As Vector3, col As Color)  
---     [Function].Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A)  
--- End Sub  
--- [C#]  
--- public void DrawBox(Vector3 a, Vector3 b, Color col)  
--- {  
---     Function.Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A);  
--- }  
--- @name DRAW_BOX
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function DrawBox(x1, y1, z1, x2, y2, z2, red, green, blue, alpha) end

--- @name DOES_PARTICLE_FX_LOOPED_EXIST
--- @param ptfxHandle number 
--- @return boolean
function DoesParticleFxLoopedExist(ptfxHandle) end

--- NOTE: Debugging functions are not present in the retail version of the game.  
--- @name DRAW_DEBUG_BOX
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param r number 
--- @param g number 
--- @param b number 
--- @param a number 
--- @return void (Type not found)
function DrawDebugBox(x1, y1, z1, x2, y2, z2, r, g, b, a) end

--- NOTE: Debugging functions are not present in the retail version of the game.  
--- @name DRAW_DEBUG_LINE
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param r number 
--- @param g number 
--- @param b number 
--- @param a number 
--- @return void (Type not found)
function DrawDebugLine(x1, y1, z1, x2, y2, z2, r, g, b, a) end

--- NOTE: Debugging functions are not present in the retail version of the game.  
--- @name DRAW_DEBUG_SPHERE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function DrawDebugSphere(x, y, z, radius, red, green, blue, alpha) end

--- @name DONT_RENDER_IN_GAME_UI
--- @param p0 boolean 
--- @return void (Type not found)
function DontRenderInGameUi(p0) end

--- NOTE: Debugging functions are not present in the retail version of the game.  
--- @name DRAW_DEBUG_CROSS
--- @param x number 
--- @param y number 
--- @param z number 
--- @param size number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function DrawDebugCross(x, y, z, size, red, green, blue, alpha) end

--- NOTE: Debugging functions are not present in the retail version of the game.  
--- @name DRAW_DEBUG_LINE_WITH_TWO_COLOURS
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param r1 number 
--- @param g1 number 
--- @param b1 number 
--- @param r2 number 
--- @param g2 number 
--- @param b2 number 
--- @param alpha1 number 
--- @param alpha2 number 
--- @return void (Type not found)
function DrawDebugLineWithTwoColours(x1, y1, z1, x2, y2, z2, r1, g1, b1, r2, g2, b2, alpha1, alpha2) end

--- Similar to [\_DRAW_SPRITE](#\_0xE7FFAE5EBF23D890), but seems to be some kind of "interactive" sprite, at least used by render targets.
--- These seem to be the only dicts ever requested by this native:
--- prop_screen_biker_laptop
--- Prop_Screen_GR_Disruption
--- Prop_Screen_TaleOfUs
--- prop_screen_nightclub
--- Prop_Screen_IE_Adhawk
--- prop_screen_sm_free_trade_shipping
--- prop_screen_hacker_truck
--- MPDesktop
--- Prop_Screen_Nightclub
--- And a few others
--- @name _DRAW_INTERACTIVE_SPRITE
--- @param textureDict string Name of texture dictionary to load texture from
--- @param textureName string Name of texture to load from texture dictionary
--- @param screenX number Screen X
--- @param screenY number Screen Y
--- @param width number Scale X
--- @param height number Scale Y
--- @param heading number Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees
--- @param red number Color
--- @param green number Color
--- @param blue number Color
--- @param alpha number Opacity level
--- @return void (Type not found)
function DrawInteractiveSprite(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha) end

--- NOTE: Debugging functions are not present in the retail version of the game.  
--- @name DRAW_DEBUG_TEXT
--- @param text string 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function DrawDebugText(text, x, y, z, red, green, blue, alpha) end

--- NOTE: Debugging functions are not present in the retail version of the game.  
--- @name DRAW_DEBUG_TEXT_2D
--- @param text string 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function DrawDebugText2d(text, x, y, z, red, green, blue, alpha) end

--- Draws a depth-tested line from one point to another.
--- ----------------
--- x1, y1, z1 : Coordinates for the first point
--- x2, y2, z2 : Coordinates for the second point
--- r, g, b, alpha : Color with RGBA-Values
--- I recommend using a predefined function to call this.
--- [VB.NET]
--- Public Sub DrawLine(from As Vector3, [to] As Vector3, col As Color)
---     [Function].Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, [to].X, [to].Y, [to].Z, col.R, col.G, col.B, col.A)
--- End Sub
--- [C#]
--- public void DrawLine(Vector3 from, Vector3 to, Color col)
--- {
---     Function.Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, to.X, to.Y, to.Z, col.R, col.G, col.B, col.A);
--- }
--- @name DRAW_LINE
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function DrawLine(x1, y1, z1, x2, y2, z2, red, green, blue, alpha) end

--- @name DRAW_LOW_QUALITY_PHOTO_TO_PHONE
--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function DrawLowQualityPhotoToPhone(p0, p1) end

--- @name _DRAW_LIGHT_WITH_RANGE_AND_SHADOW
--- @param x number 
--- @param y number 
--- @param z number 
--- @param r number 
--- @param g number 
--- @param b number 
--- @param range number 
--- @param intensity number 
--- @param shadow number 
--- @return void (Type not found)
function DrawLightWithRangeAndShadow(x, y, z, r, g, b, range, intensity, shadow) end

--- Draws a marker with the specified appearance at the target location. This has to be called every frame, e.g. in a `Wait(0)` loop.
--- There's a [list of markers](https://docs.fivem.net/game-references/markers/) on the FiveM documentation site.
--- @name DRAW_MARKER
--- @param type number The marker type to draw.
--- @param posX number The X coordinate to draw the marker at.
--- @param posY number The Y coordinate to draw the marker at.
--- @param posZ number The Z coordinate to draw the marker at.
--- @param dirX number The X component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.
--- @param dirY number The Y component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.
--- @param dirZ number The Z component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.
--- @param rotX number The X rotation for the marker. Only used if the direction vector is 0.0.
--- @param rotY number The Y rotation for the marker. Only used if the direction vector is 0.0.
--- @param rotZ number The Z rotation for the marker. Only used if the direction vector is 0.0.
--- @param scaleX number The scale for the marker on the X axis.
--- @param scaleY number The scale for the marker on the Y axis.
--- @param scaleZ number The scale for the marker on the Z axis.
--- @param red number The red component of the marker color, on a scale from 0-255.
--- @param green number The green component of the marker color, on a scale from 0-255.
--- @param blue number The blue component of the marker color, on a scale from 0-255.
--- @param alpha number The alpha component of the marker color, on a scale from 0-255.
--- @param bobUpAndDown boolean Whether or not the marker should slowly animate up/down.
--- @param faceCamera boolean Whether the marker should be a 'billboard', as in, should constantly face the camera.
--- @param p19 number Typically set to `2`. Does not seem to matter directly.
--- @param rotate boolean Rotations only apply to the heading.
--- @param textureDict string A texture dictionary to draw the marker with, or NULL. Example: 'GolfPutting'
--- @param textureName string A texture name in `textureDict` to draw the marker with, or NULL. Example: 'PuttingMarker'
--- @param drawOnEnts boolean Whether or not the marker should draw on intersecting entities.
--- @return void (Type not found)
function DrawMarker(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts) end

--- NativeDB Added Parameter 26: BOOL p25
--- @name _DRAW_MARKER_2
--- @param type number 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param dirX number 
--- @param dirY number 
--- @param dirZ number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param scaleX number 
--- @param scaleY number 
--- @param scaleZ number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @param bobUpAndDown boolean 
--- @param faceCamera boolean 
--- @param p19 number 
--- @param rotate boolean 
--- @param textureDict string 
--- @param textureName string 
--- @param drawOnEnts boolean 
--- @param p24 boolean 
--- @return void (Type not found)
function DrawMarker2(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts, p24) end

--- x/y/z - Location of a vertex (in world coords), presumably.  
--- ----------------  
--- x1, y1, z1     : Coordinates for the first point  
--- x2, y2, z2     : Coordinates for the second point  
--- x3, y3, z3     : Coordinates for the third point  
--- r, g, b, alpha : Color with RGBA-Values  
--- Keep in mind that only one side of the drawn triangle is visible: It's the side, in which the vector-product of the vectors heads to: (b-a)x(c-a) Or (b-a)x(c-b).  
--- But be aware: The function seems to work somehow differently. I have trouble having them drawn in rotated orientation. Try it yourself and if you somehow succeed, please edit this and post your solution.  
--- I recommend using a predefined function to call this.  
--- [VB.NET]  
--- Public Sub DrawPoly(a As Vector3, b As Vector3, c As Vector3, col As Color)  
---     [Function].Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A)  
--- End Sub  
--- [C#]  
--- public void DrawPoly(Vector3 a, Vector3 b, Vector3 c, Color col)  
--- {  
---     Function.Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A);  
--- }  
--- BTW: Intersecting triangles are not supported: They overlap in the order they were called.  
--- @name DRAW_POLY
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param x3 number 
--- @param y3 number 
--- @param z3 number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function DrawPoly(x1, y1, z1, x2, y2, z2, x3, y3, z3, red, green, blue, alpha) end

--- Draws a rectangle on the screen.  
--- -x: The relative X point of the center of the rectangle. (0.0-1.0, 0.0 is the left edge of the screen, 1.0 is the right edge of the screen)  
--- -y: The relative Y point of the center of the rectangle. (0.0-1.0, 0.0 is the top edge of the screen, 1.0 is the bottom edge of the screen)  
--- -width: The relative width of the rectangle. (0.0-1.0, 1.0 means the whole screen width)  
--- -height: The relative height of the rectangle. (0.0-1.0, 1.0 means the whole screen height)  
--- -R: Red part of the color. (0-255)  
--- -G: Green part of the color. (0-255)  
--- -B: Blue part of the color. (0-255)  
--- -A: Alpha part of the color. (0-255, 0 means totally transparent, 255 means totally opaque)  
--- The total number of rectangles to be drawn in one frame is apparently limited to 399.  
--- NativeDB Added Parameter 9: BOOL p8
--- @name DRAW_RECT
--- @param x number 
--- @param y number 
--- @param width number 
--- @param height number 
--- @param r number 
--- @param g number 
--- @param b number 
--- @param a number 
--- @return void (Type not found)
function DrawRect(x, y, width, height, r, g, b, a) end

--- @name DRAW_SCALEFORM_MOVIE
--- @param scaleformHandle number 
--- @param x number 
--- @param y number 
--- @param width number 
--- @param height number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @param unk number 
--- @return void (Type not found)
function DrawScaleformMovie(scaleformHandle, x, y, width, height, red, green, blue, alpha, unk) end

--- unk is not used so no need  
--- @name DRAW_SCALEFORM_MOVIE_FULLSCREEN
--- @param scaleform number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @param unk number 
--- @return void (Type not found)
function DrawScaleformMovieFullscreen(scaleform, red, green, blue, alpha, unk) end

--- @name DRAW_LIGHT_WITH_RANGE
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param colorR number 
--- @param colorG number 
--- @param colorB number 
--- @param range number 
--- @param intensity number 
--- @return void (Type not found)
function DrawLightWithRange(posX, posY, posZ, colorR, colorG, colorB, range, intensity) end

--- @name DRAW_SCALEFORM_MOVIE_FULLSCREEN_MASKED
--- @param scaleform1 number 
--- @param scaleform2 number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function DrawScaleformMovieFullscreenMasked(scaleform1, scaleform2, red, green, blue, alpha) end

--- @name DRAW_SCALEFORM_MOVIE_3D
--- @param scaleform number 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param p7 number 
--- @param sharpness number 
--- @param p9 number 
--- @param scaleX number 
--- @param scaleY number 
--- @param scaleZ number 
--- @param p13  
--- @return void (Type not found)
function DrawScaleformMovie3d(scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, sharpness, p9, scaleX, scaleY, scaleZ, p13) end

--- It's called after 0xD3A10FC7FD8D98CD and 0xF1CEA8A4198D8E9A  
--- p0 was always "CELEBRATION_WINNER"  
--- @name _DRAW_SHOWROOM
--- @param p0 string 
--- @param ped Ped 
--- @param p2 number 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return boolean
function DrawShowroom(p0, ped, p2, posX, posY, posZ) end

--- Parameters:  
--- * pos - coordinate where the spotlight is located  
--- * dir - the direction vector the spotlight should aim at from its current position  
--- * r,g,b - color of the spotlight  
--- * distance - the maximum distance the light can reach  
--- * brightness - the brightness of the light  
--- * roundness - "smoothness" of the circle edge  
--- * radius - the radius size of the spotlight  
--- * falloff - the falloff size of the light's edge (example: www.i.imgur.com/DemAWeO.jpg)  
--- Example in C# (spotlight aims at the closest vehicle):  
--- Vector3 myPos = Game.Player.Character.Position;  
--- Vehicle nearest = World.GetClosestVehicle(myPos , 1000f);  
--- Vector3 destinationCoords = nearest.Position;  
--- Vector3 dirVector = destinationCoords - myPos;  
--- dirVector.Normalize();  
--- Function.Call(Hash.DRAW_SPOT_LIGHT, pos.X, pos.Y, pos.Z, dirVector.X, dirVector.Y, dirVector.Z, 255, 255, 255, 100.0f, 1f, 0.0f, 13.0f, 1f);  
--- @name DRAW_SPOT_LIGHT
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param dirX number 
--- @param dirY number 
--- @param dirZ number 
--- @param colorR number 
--- @param colorG number 
--- @param colorB number 
--- @param distance number 
--- @param brightness number 
--- @param hardness number 
--- @param radius number 
--- @param falloff number 
--- @return void (Type not found)
function DrawSpotLight(posX, posY, posZ, dirX, dirY, dirZ, colorR, colorG, colorB, distance, brightness, hardness, radius, falloff) end

--- @name DRAW_SCALEFORM_MOVIE_3D_SOLID
--- @param scaleform number 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param p7 number 
--- @param p8 number 
--- @param p9 number 
--- @param scaleX number 
--- @param scaleY number 
--- @param scaleZ number 
--- @param p13  
--- @return void (Type not found)
function DrawScaleformMovie3dSolid(scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, p8, p9, scaleX, scaleY, scaleZ, p13) end

--- Draws a 3D sphere, typically seen in the GTA:O freemode event "Penned In".
--- Example [image](https://imgur.com/nCbtS4H):
--- ```lua
--- DrawSphere(35.45, 172.66, 126.22, 1.0, 0, 0, 255, 0.2)
--- @name _DRAW_SPHERE
--- @param x number X coordinate of the sphere
--- @param y number Y coordinate of the sphere
--- @param z number Z coordinate of the sphere
--- @param radius number Size of the sphere, `1.0` = 1 meter
--- @param r number Color red `0`-`255`
--- @param g number Color green `0`-`255`
--- @param b number Color blue `0`-`255`
--- @param opacity number Opacity from `0.0`-`1.0`
--- @return void (Type not found)
function DrawSphere(x, y, z, radius, r, g, b, opacity) end

--- Similar to DRAW_SPRITE, but allows to specify the texture coordinates used to draw the sprite.
--- u1, v1 - texture coordinates for the top-left corner
--- u2, v2 - texture coordinates for the bottom-right corner
--- NativeDB Introduced: v1868
--- @name _DRAW_SPRITE_UV
--- @param textureDict string 
--- @param textureName string 
--- @param x number 
--- @param y number 
--- @param width number 
--- @param height number 
--- @param u1 number 
--- @param v1 number 
--- @param u2 number 
--- @param v2 number 
--- @param heading number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function DrawSpriteUv(textureDict, textureName, x, y, width, height, u1, v1, u2, v2, heading, red, green, blue, alpha) end

--- Draws a 2D sprite on the screen.  
--- Parameters:  
--- textureDict - Name of texture dictionary to load texture from (e.g. "CommonMenu", "MPWeaponsCommon", etc.)  
--- textureName - Name of texture to load from texture dictionary (e.g. "last_team_standing_icon", "tennis_icon", etc.)  
--- screenX/Y - Screen offset (0.5 = center)  
--- scaleX/Y - Texture scaling. Negative values can be used to flip the texture on that axis. (0.5 = half)  
--- heading - Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees  
--- red,green,blue - Sprite color (default = 255/255/255)  
--- alpha - opacity level  
--- NativeDB Added Parameter 12: BOOL p11
--- @name DRAW_SPRITE
--- @param textureDict string 
--- @param textureName string 
--- @param screenX number 
--- @param screenY number 
--- @param width number 
--- @param height number 
--- @param heading number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function DrawSprite(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha) end

--- Used for drawling Deadline trailing lights, see deadline.ytd
--- For UVW mapping (u,v,w parameters), reference your favourite internet resource for more details.
--- @name _DRAW_SPRITE_POLY
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param x3 number 
--- @param y3 number 
--- @param z3 number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @param textureDict string 
--- @param textureName string 
--- @param u1 number 
--- @param v1 number 
--- @param w1 number 
--- @param u2 number 
--- @param v2 number 
--- @param w2 number 
--- @param u3 number 
--- @param v3 number 
--- @param w3 number 
--- @return void (Type not found)
function DrawSpritePoly(x1, y1, z1, x2, y2, z2, x3, y3, z3, red, green, blue, alpha, textureDict, textureName, u1, v1, w1, u2, v2, w2, u3, v3, w3) end

--- All calls to this native are preceded by calls to GRAPHICS::_0x61BB1D9B3A95D802 and GRAPHICS::_0xC6372ECD45D73BCD, respectively.
--- "act_cinema.ysc", line 1483:
--- HUD::SET_HUD_COMPONENT_POSITION(15, 0.0, -0.0375);
--- HUD::SET_TEXT_RENDER_ID(l_AE);
--- GRAPHICS::_0x61BB1D9B3A95D802(4);
--- GRAPHICS::_0xC6372ECD45D73BCD(1);
--- if (GRAPHICS::_0x0AD973CA1E077B60(${movie_arthouse})) {
---     GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 0.7375, 1.0, 0.0, 255, 255, 255, 255);
--- } else {
---     GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);
--- }
--- "am_mp_property_int.ysc", line 102545:
--- if (ENTITY::DOES_ENTITY_EXIST(a_2._f3)) {
---     if (HUD::IS_NAMED_RENDERTARGET_LINKED(ENTITY::GET_ENTITY_MODEL(a_2._f3))) {
---         HUD::SET_TEXT_RENDER_ID(a_2._f1);
---         GRAPHICS::_0x61BB1D9B3A95D802(4);
---         GRAPHICS::_0xC6372ECD45D73BCD(1);
---         GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);
---         if (GRAPHICS::GET_TV_CHANNEL() == -1) {
---             sub_a8fa5(a_2, 1);
---         } else {
---             sub_a8fa5(a_2, 1);
---             GRAPHICS::ATTACH_TV_AUDIO_TO_ENTITY(a_2._f3);
---         }
---         HUD::SET_TEXT_RENDER_ID(HUD::GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID());
---     }
--- }
--- @name DRAW_TV_CHANNEL
--- @param xPos number 
--- @param yPos number 
--- @param xScale number 
--- @param yScale number 
--- @param rotation number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function DrawTvChannel(xPos, yPos, xScale, yScale, rotation, red, green, blue, alpha) end

--- @name ENABLE_MOVIE_SUBTITLES
--- @param toggle boolean 
--- @return void (Type not found)
function EnableMovieSubtitles(toggle) end

--- @name _DRAW_SPOT_LIGHT_WITH_SHADOW
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param dirX number 
--- @param dirY number 
--- @param dirZ number 
--- @param colorR number 
--- @param colorG number 
--- @param colorB number 
--- @param distance number 
--- @param brightness number 
--- @param roundness number 
--- @param radius number 
--- @param falloff number 
--- @param shadowId number 
--- @return void (Type not found)
function DrawSpotLightWithShadow(posX, posY, posZ, dirX, dirY, dirZ, colorR, colorG, colorB, distance, brightness, roundness, radius, falloff, shadowId) end

--- Used for drawling Deadline trailing lights, see deadline.ytd
--- Each vertex has its own colour that is blended/illuminated on the texture. Additionally, the R, G, and B components are floats that are int-casted internally.
--- For UVW mapping (u,v,w parameters), reference your favourite internet resource for more details.
--- @name _DRAW_SPRITE_POLY_2
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param x3 number 
--- @param y3 number 
--- @param z3 number 
--- @param red1 number 
--- @param green1 number 
--- @param blue1 number 
--- @param alpha1 number 
--- @param red2 number 
--- @param green2 number 
--- @param blue2 number 
--- @param alpha2 number 
--- @param red3 number 
--- @param green3 number 
--- @param blue3 number 
--- @param alpha3 number 
--- @param textureDict string 
--- @param textureName string 
--- @param u1 number 
--- @param v1 number 
--- @param w1 number 
--- @param u2 number 
--- @param v2 number 
--- @param w2 number 
--- @param u3 number 
--- @param v3 number 
--- @param w3 number 
--- @return void (Type not found)
function DrawSpritePoly2(x1, y1, z1, x2, y2, z2, x3, y3, z3, red1, green1, blue1, alpha1, red2, green2, blue2, alpha2, red3, green3, blue3, alpha3, textureDict, textureName, u1, v1, w1, u2, v2, w2, u3, v3, w3) end

--- @name END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
--- @return number
function EndScaleformMovieMethodReturnValue() end

--- @name ENABLE_MOVIE_KEYFRAME_WAIT
--- @param toggle boolean 
--- @return void (Type not found)
function EnableMovieKeyframeWait(toggle) end

--- Creates a motion-blur sort of effect, this native does not seem to work, however by using the [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724) native with `"DrugsMichaelAliensFight"` as the effect parameter, you should be able to get the effect.
--- This native does not seem to work, however by using the [ANIMPOSTFX_PLAY](#\_0x2206BF9A37B7F724) native with "DrugsMichaelAliensFight" as the effect parameter, you should be able to get the effect.
--- @name ENABLE_ALIEN_BLOOD_VFX
--- @param toggle boolean 
--- @return void (Type not found)
function EnableAlienBloodVfx(toggle) end

--- If true, this native will create purple explosions upon projectile impact, add comic-like PTFX when firing a weapon, create a sound on bullet impact and have its own "blood effect".
--- If the PTFX asset "scr_rcbarry2" is not requested using ([`RequestNamedPtfxAsset`](#\_0xD821490579791273)) then this native **will not work as intended**.
--- Excerpt from fm_content_drug_lab_work.c:
--- STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_rcbarry2");
--- if (STREAMING::HAS_NAMED_PTFX_ASSET_LOADED("scr_rcbarry2"))
--- {
---   GRAPHICS::ENABLE_CLOWN_BLOOD_VFX(true);
---   AUDIO::START_AUDIO_SCENE("DLC_CM2022_DRUG_TRIP_SPRINKLERS_SCENE");
---   func_720(26);
--- }
--- @name ENABLE_CLOWN_BLOOD_VFX
--- @param toggle boolean Whether to toggle the clown VFX on or off.
--- @return void (Type not found)
function EnableClownBloodVfx(toggle) end

--- @name FADE_UP_PED_LIGHT
--- @param p0 number 
--- @return void (Type not found)
function FadeUpPedLight(p0) end

--- Same as END_TEXT_COMMAND_SCALEFORM_STRING but does not perform HTML conversion for text tokens.
--- @name _END_TEXT_COMMAND_SCALEFORM_STRING_2
--- @return void (Type not found)
function EndTextCommandScaleformString2() end

--- @name FREE_MEMORY_FOR_HIGH_QUALITY_PHOTO
--- @return void (Type not found)
function FreeMemoryForHighQualityPhoto() end

--- @name FADE_DECALS_IN_RANGE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param duration number A duration in seconds.
--- @return void (Type not found)
function FadeDecalsInRange(x, y, z, radius, duration) end

--- Pops and calls the Scaleform function on the stack  
--- @name END_SCALEFORM_MOVIE_METHOD
--- @return void (Type not found)
function EndScaleformMovieMethod() end

--- @name FREE_MEMORY_FOR_LOW_QUALITY_PHOTO
--- @return void (Type not found)
function FreeMemoryForLowQualityPhoto() end

--- @name _GET_ASPECT_RATIO
--- @param b boolean 
--- @return number
function GetAspectRatio(b) end

--- @name END_TEXT_COMMAND_SCALEFORM_STRING
--- @return void (Type not found)
function EndTextCommandScaleformString() end

--- @name FORCE_RENDER_IN_GAME_UI
--- @param toggle boolean 
--- @return void (Type not found)
function ForceRenderInGameUi(toggle) end

--- @name GET_CURRENT_NUMBER_OF_CLOUD_PHOTOS
--- @return number
function GetCurrentNumberOfCloudPhotos() end

--- @name END_PETROL_TRAIL_DECALS
--- @return void (Type not found)
function EndPetrolTrailDecals() end

--- @name FREE_MEMORY_FOR_MISSION_CREATOR_PHOTO
--- @return void (Type not found)
function FreeMemoryForMissionCreatorPhoto() end

--- Returns current screen resolution.  
--- @name _GET_ACTIVE_SCREEN_RESOLUTION
--- @param x number 
--- @param y number 
--- @return void (Type not found)
function GetActiveScreenResolution(x, y) end

--- See [`GET_TIMECYCLE_MODIFIER_INDEX`](#\_0xFDF3D97C674AFB66) for use, works the same just for the secondary timecycle modifier.
--- @name _GET_EXTRA_TIMECYCLE_MODIFIER_INDEX
--- @return number
function GetExtraTimecycleModifierIndex() end

--- In percentage: 0.0 - 100.0
--- NativeDB Introduced: v1734
--- @name _GET_BINK_MOVIE_TIME
--- @param binkMovie number 
--- @return number
function GetBinkMovieTime(binkMovie) end

--- @name GET_IS_PETROL_DECAL_IN_RANGE
--- @param xCoord number 
--- @param yCoord number 
--- @param zCoord number 
--- @param radius number 
--- @return boolean
function GetIsPetrolDecalInRange(xCoord, yCoord, zCoord, radius) end

--- @name GET_DECAL_WASH_LEVEL
--- @param decal number 
--- @return number
function GetDecalWashLevel(decal) end

--- This function is hard-coded to always return 0.
--- @name GET_MAXIMUM_NUMBER_OF_PHOTOS
--- @return number
function GetMaximumNumberOfPhotos() end

--- This function is hard-coded to always return 96.
--- @name GET_MAXIMUM_NUMBER_OF_CLOUD_PHOTOS
--- @return number
function GetMaximumNumberOfCloudPhotos() end

--- Setting Aspect Ratio Manually in game will return:  
--- false - for Narrow format Aspect Ratios (3:2, 4:3, 5:4, etc. )  
--- true - for Wide format Aspect Ratios (5:3, 16:9, 16:10, etc. )  
--- Setting Aspect Ratio to "Auto" in game will return "false" or "true" based on the actual set Resolution Ratio.  
--- @name GET_IS_WIDESCREEN
--- @return boolean
function GetIsWidescreen() end

--- Used to get a return value from a scaleform function. Returns a string in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT returns an int.
--- @name GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING
--- @param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
--- @return string
function GetScaleformMovieMethodReturnValueString(method_return) end

--- Convert a world coordinate into its relative screen coordinate.  (WorldToScreen)
--- Returns a boolean; whether or not the operation was successful. It will return false if the coordinates given are not visible to the rendering camera.
--- For .NET users...
--- VB:
--- Public Shared Function World3DToScreen2d(pos as vector3) As Vector2
---         Dim x2dp, y2dp As New Native.OutputArgument
---         Native.Function.Call(Of Boolean)(Native.Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.x, pos.y, pos.z, x2dp, y2dp)
---         Return New Vector2(x2dp.GetResult(Of Single), y2dp.GetResult(Of Single))
---     End Function
--- C#:
--- Vector2 World3DToScreen2d(Vector3 pos)
---     {
---         var x2dp = new OutputArgument();
---         var y2dp = new OutputArgument();
---         Function.Call<bool>(Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.X, pos.Y, pos.Z, x2dp, y2dp);
---         return new Vector2(x2dp.GetResult<float>(), y2dp.GetResult<float>());
---     }
--- //USE VERY SMALL VALUES FOR THE SCALE OF RECTS/TEXT because it is dramatically larger on screen than in 3D, e.g '0.05' small.
--- Used to be called _WORLD3D_TO_SCREEN2D
--- I thought we lost you from the scene forever. It does seem however that calling SET_DRAW_ORIGIN then your natives, then ending it. Seems to work better for certain things such as keeping boxes around people for a predator missile e.g.
--- @name GET_SCREEN_COORD_FROM_WORLD_COORD
--- @param worldX number 
--- @param worldY number 
--- @param worldZ number 
--- @param screenX number 
--- @param screenY number 
--- @return boolean
function GetScreenCoordFromWorldCoord(worldX, worldY, worldZ, screenX, screenY) end

--- false = Any resolution < 1280x720  
--- true = Any resolution >= 1280x720  
--- @name GET_IS_HIDEF
--- @return boolean
function GetIsHidef() end

--- Gets the scale of safe zone. if the safe zone size scale is max, it will return 1.0.  
--- @name GET_SAFE_ZONE_SIZE
--- @return number
function GetSafeZoneSize() end

--- @name GET_REQUESTINGNIGHTVISION
--- @return boolean
function GetRequestingnightvision() end

--- @name GET_SCREENBLUR_FADE_CURRENT_TIME
--- @return number
function GetScreenblurFadeCurrentTime() end

--- Used to get a return value from a scaleform function. Returns an int in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING returns a string.
--- @name GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT
--- @param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
--- @return number
function GetScaleformMovieMethodReturnValueInt(method_return) end

--- @name GET_STATUS_OF_SAVE_HIGH_QUALITY_PHOTO
--- @return number
function GetStatusOfSaveHighQualityPhoto() end

--- methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
--- @name _GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_BOOL
--- @param methodReturn number 
--- @return boolean
function GetScaleformMovieMethodReturnValueBool(methodReturn) end

--- Calculates the effective X/Y fractions when applying the values set by `SET_SCRIPT_GFX_ALIGN` and
--- `SET_SCRIPT_GFX_ALIGN_PARAMS`.
--- @name _GET_SCRIPT_GFX_POSITION
--- @param x number The input X coordinate.
--- @param y number The input Y coordinate.
--- @param calculatedX number A pointer to the calculated X value.
--- @param calculatedY number A pointer to the calculated Y value.
--- @return void (Type not found)
function GetScriptGfxPosition(x, y, calculatedX, calculatedY) end

--- @name GET_STATUS_OF_TAKE_MISSION_CREATOR_PHOTO
--- @return number
function GetStatusOfTakeMissionCreatorPhoto() end

--- Hardcoded to always return 1280x720. Use [`_GET_ACTIVE_SCREEN_RESOLUTION`](?\_0x873C9F3104101DD3) to retrieve the correct screen resolution.
--- @name GET_SCREEN_RESOLUTION
--- @param x number 
--- @param y number 
--- @return void (Type not found)
function GetScreenResolution(x, y) end

--- @name GET_STATUS_OF_LOAD_MISSION_CREATOR_PHOTO
--- @param p0 string 
--- @return number
function GetStatusOfLoadMissionCreatorPhoto(p0) end

--- Only use for this in the PC scripts is:
--- if (GRAPHICS::GET_TIMECYCLE_MODIFIER_INDEX() != -1)
--- For a full list, see here: pastebin.com/cnk7FTF2
--- @name GET_TIMECYCLE_MODIFIER_INDEX
--- @return number
function GetTimecycleModifierIndex() end

--- @name GET_STATUS_OF_TAKE_HIGH_QUALITY_PHOTO
--- @return number
function GetStatusOfTakeHighQualityPhoto() end

--- 3 matches across 3 scripts. First 2 were 0, 3rd was 1. Possibly a bool.
--- appcamera, appmedia, and cellphone_controller.
--- @name GET_STATUS_OF_SORTED_LIST_OPERATION
--- @param p0 boolean 
--- @return number
function GetStatusOfSortedListOperation(p0) end

--- Returns the texture resolution of the passed texture dict+name.  
--- Note: Most texture resolutions are doubled compared to the console version of the game.  
--- @name GET_TEXTURE_RESOLUTION
--- @param textureDict string 
--- @param textureName string 
--- @return Vector3
function GetTextureResolution(textureDict, textureName) end

--- @name GET_TV_VOLUME
--- @return number
function GetTvVolume() end

--- @name GET_TIMECYCLE_TRANSITION_MODIFIER_INDEX
--- @return number
function GetTimecycleTransitionModifierIndex() end

--- @name GET_USINGSEETHROUGH
--- @return boolean
function GetUsingseethrough() end

--- @name GET_TOGGLE_PAUSED_RENDERPHASES_STATUS
--- @return boolean
function GetTogglePausedRenderphasesStatus() end

--- @name GET_TV_CHANNEL
--- @return number
function GetTvChannel() end

--- @name GOLF_TRAIL_GET_VISUAL_CONTROL_POINT
--- @param p0 number 
--- @return Vector3
function GolfTrailGetVisualControlPoint(p0) end

--- @name GOLF_TRAIL_SET_COLOUR
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8 number 
--- @param p9 number 
--- @param p10 number 
--- @param p11 number 
--- @return void (Type not found)
function GolfTrailSetColour(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

--- @name GOLF_TRAIL_SET_ENABLED
--- @param toggle boolean 
--- @return void (Type not found)
function GolfTrailSetEnabled(toggle) end

--- @name GET_USINGNIGHTVISION
--- @return boolean
function GetUsingnightvision() end

--- @name GET_VEHICLE_CREW_EMBLEM_REQUEST_STATE
--- @param vehicle Vehicle 
--- @param p1 number 
--- @return number
function GetVehicleCrewEmblemRequestState(vehicle, p1) end

--- @name GOLF_TRAIL_SET_RADIUS
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @return void (Type not found)
function GolfTrailSetRadius(p0, p1, p2) end

--- @name GOLF_TRAIL_GET_MAX_HEIGHT
--- @return number
function GolfTrailGetMaxHeight() end

--- 12 matches across 4 scripts. All 4 scripts were job creators.
--- type ranged from 0 - 2.
--- p4 was always 0.2f. Likely scale.
--- assuming p5 - p8 is RGBA, the graphic is always yellow (255, 255, 0, 255).
--- Tested but noticed nothing.
--- @name GOLF_TRAIL_SET_FIXED_CONTROL_POINT
--- @param type number 
--- @param xPos number 
--- @param yPos number 
--- @param zPos number 
--- @param p4 number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function GolfTrailSetFixedControlPoint(type, xPos, yPos, zPos, p4, red, green, blue, alpha) end

--- @name GOLF_TRAIL_SET_FACING
--- @param p0 boolean 
--- @return void (Type not found)
function GolfTrailSetFacing(p0) end

--- @name GOLF_TRAIL_SET_TESSELLATION
--- @param p0 number 
--- @param p1 number 
--- @return void (Type not found)
function GolfTrailSetTessellation(p0, p1) end

--- Wraps 0xAAE9BE70EC7C69AB with FLT_MAX as p7, Jenkins: 0x73E96210?
--- @name _GRASS_LOD_SHRINK_SCRIPT_AREAS
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @return void (Type not found)
function GrassLodShrinkScriptAreas(x, y, z, radius, p4, p5, p6) end

--- @name _GRASS_LOD_RESET_SCRIPT_AREAS
--- @return void (Type not found)
function GrassLodResetScriptAreas() end

--- Only appeared in Golf & Golf_mp. Parameters were all ptrs  
--- @name GOLF_TRAIL_SET_SHADER_PARAMS
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @return void (Type not found)
function GolfTrailSetShaderParams(p0, p1, p2, p3, p4) end

--- p8 seems to always be false.  
--- @name GOLF_TRAIL_SET_PATH
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8 boolean 
--- @return void (Type not found)
function GolfTrailSetPath(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- @name HAS_STREAMED_TEXTURE_DICT_LOADED
--- @param textureDict string 
--- @return boolean
function HasStreamedTextureDictLoaded(textureDict) end

--- @name HAS_SCALEFORM_CONTAINER_MOVIE_LOADED_INTO_PARENT
--- @param scaleformHandle number 
--- @return boolean
function HasScaleformContainerMovieLoadedIntoParent(scaleformHandle) end

--- Only values used in the scripts are:
--- "heist_mp"
--- "heistmap_mp"
--- "instructional_buttons"
--- "heist_pre"
--- @name HAS_SCALEFORM_MOVIE_FILENAME_LOADED
--- @param scaleformName string 
--- @return boolean
function HasScaleformMovieFilenameLoaded(scaleformName) end

--- @name HAS_SCALEFORM_MOVIE_LOADED
--- @param scaleformHandle number 
--- @return boolean
function HasScaleformMovieLoaded(scaleformHandle) end

--- @name HAS_SCALEFORM_SCRIPT_HUD_MOVIE_LOADED
--- @param hudComponent number 
--- @return boolean
function HasScaleformScriptHudMovieLoaded(hudComponent) end

--- @name IS_TRACKED_POINT_VISIBLE
--- @param point number 
--- @return boolean
function IsTrackedPointVisible(point) end

--- IS_*
--- @name _IS_TV_PLAYLIST_ITEM_PLAYING
--- @param videoCliphash Hash 
--- @return boolean
function IsTvPlaylistItemPlaying(videoCliphash) end

--- NativeDB Introduced: v1604
--- @name _IS_PLAYLIST_UNK
--- @param tvChannel number 
--- @param p1  
--- @return boolean
function IsPlaylistUnk(tvChannel, p1) end

--- @name LOAD_MISSION_CREATOR_PHOTO
--- @param p0 string 
--- @param p1  
--- @param p2  
--- @param p3 boolean 
--- @return boolean
function LoadMissionCreatorPhoto(p0, p1, p2, p3) end

--- methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
--- Returns true if the return value of a scaleform function is ready to be collected (using GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING or GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT).
--- @name IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY
--- @param method_return number The return value of this native: `EndScaleformMovieMethodReturn`
--- @return boolean
function IsScaleformMovieMethodReturnValueReady(method_return) end

--- @name IS_DECAL_ALIVE
--- @param decal number 
--- @return boolean
function IsDecalAlive(decal) end

--- @name LOAD_MOVIE_MESH_SET
--- @param movieMeshSetName string 
--- @return number
function LoadMovieMeshSet(movieMeshSetName) end

--- Returns whether screen transition to blur/from blur is running.
--- @name IS_SCREENBLUR_FADE_RUNNING
--- @return boolean
function IsScreenblurFadeRunning() end

--- @name OVERRIDE_INTERIOR_SMOKE_LEVEL
--- @param level number 
--- @return void (Type not found)
function OverrideInteriorSmokeLevel(level) end

--- @name MOVE_VEHICLE_DECALS
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function MoveVehicleDecals(p0, p1) end

--- Overriding ped badge texture to a passed texture. It's synced between players (even custom textures!), don't forget to request used dict on *all* clients to make it sync properly. Can be removed by passing empty strings.
--- @name _OVERRIDE_PED_BADGE_TEXTURE
--- @param ped Ped 
--- @param txd string 
--- @param txn string 
--- @return boolean
function OverridePedBadgeTexture(ped, txd, txn) end

--- @name OVERRIDE_INTERIOR_SMOKE_END
--- @return void (Type not found)
function OverrideInteriorSmokeEnd() end

--- NativeDB Introduced: v1290
--- @name _PLAY_BINK_MOVIE
--- @param binkMovie number 
--- @return void (Type not found)
function PlayBinkMovie(binkMovie) end

--- Only one match in the scripts:
--- GRAPHICS::PRESET_INTERIOR_AMBIENT_CACHE("int_carrier_hanger");
--- @name PRESET_INTERIOR_AMBIENT_CACHE
--- @param timecycleModifierName string 
--- @return void (Type not found)
function PresetInteriorAmbientCache(timecycleModifierName) end

--- REQUEST_STREAMED_TEXTURE_DICT("MPOnMissMarkers", false);  
--- *uParam0.f_809 = add_decal(9120, vParam1, vVar4, vVar7, 2f, 2f, to_float(iVar0) / 255f, to_float(iVar1) / 255f, to_float(iVar2) / 255f, 1f, -1f, 1, 0, 0);  
--- PATCH_DECAL_DIFFUSE_MAP(9120, "MPOnMissMarkers", "Capture_The_Flag_Base_Icon");  
--- @name PATCH_DECAL_DIFFUSE_MAP
--- @param decalType number 
--- @param textureDict string 
--- @param textureName string 
--- @return void (Type not found)
function PatchDecalDiffuseMap(decalType, textureDict, textureName) end

--- @name POP_TIMECYCLE_MODIFIER
--- @return void (Type not found)
function PopTimecycleModifier() end

--- @name PUSH_TIMECYCLE_MODIFIER
--- @return void (Type not found)
function PushTimecycleModifier() end

--- @name OVERRIDE_INTERIOR_SMOKE_NAME
--- @param name string 
--- @return void (Type not found)
function OverrideInteriorSmokeName(name) end

--- Used with 'NG_filmnoir_BW{01,02}' timecycles and the "NOIR_FILTER_SOUNDS" audioref.
--- @name _REGISTER_NOIR_SCREEN_EFFECT_THIS_FRAME
--- @return void (Type not found)
function RegisterNoirScreenEffectThisFrame() end

--- @name QUERY_MOVIE_MESH_SET_STATE
--- @param p0  
--- @return 
function QueryMovieMeshSetState(p0) end

--- @name RELEASE_MOVIE_MESH_SET
--- @param movieMeshSet number 
--- @return void (Type not found)
function ReleaseMovieMeshSet(movieMeshSet) end

--- NativeDB Introduced: v1290
--- @name _RELEASE_BINK_MOVIE
--- @param binkMovie number 
--- @return void (Type not found)
function ReleaseBinkMovie(binkMovie) end

--- @name REMOVE_DECALS_FROM_VEHICLE
--- @param vehicle Vehicle 
--- @return void (Type not found)
function RemoveDecalsFromVehicle(vehicle) end

--- @name REMOVE_DECALS_FROM_OBJECT
--- @param obj Object 
--- @return void (Type not found)
function RemoveDecalsFromObject(obj) end

--- @name REMOVE_DECALS_FROM_OBJECT_FACING
--- @param obj Object 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function RemoveDecalsFromObjectFacing(obj, x, y, z) end

--- @name REMOVE_PARTICLE_FX
--- @param ptfxHandle number 
--- @param p1 boolean 
--- @return void (Type not found)
function RemoveParticleFx(ptfxHandle, p1) end

--- @name REMOVE_PARTICLE_FX_FROM_ENTITY
--- @param entity Entity 
--- @return void (Type not found)
function RemoveParticleFxFromEntity(entity) end

--- Removes all decals in range from a position, it includes the bullet holes, blood pools, petrol...  
--- @name REMOVE_DECALS_IN_RANGE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param range number 
--- @return void (Type not found)
function RemoveDecalsInRange(x, y, z, range) end

--- @name REMOVE_SCALEFORM_SCRIPT_HUD_MOVIE
--- @param hudComponent number 
--- @return void (Type not found)
function RemoveScaleformScriptHudMovie(hudComponent) end

--- @name REMOVE_DECAL
--- @param decal number 
--- @return void (Type not found)
function RemoveDecal(decal) end

--- @name REMOVE_PARTICLE_FX_IN_RANGE
--- @param X number 
--- @param Y number 
--- @param Z number 
--- @param radius number 
--- @return void (Type not found)
function RemoveParticleFxInRange(X, Y, Z, radius) end

--- @name REMOVE_VEHICLE_CREW_EMBLEM
--- @param vehicle Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function RemoveVehicleCrewEmblem(vehicle, p1) end

--- @name REMOVE_TCMODIFIER_OVERRIDE
--- @param p0 string 
--- @return void (Type not found)
function RemoveTcmodifierOverride(p0) end

--- @name REQUEST_SCALEFORM_MOVIE
--- @param scaleformName string 
--- @return number
function RequestScaleformMovie(scaleformName) end

--- Similar to REQUEST_SCALEFORM_MOVIE, but seems to be some kind of "interactive" scaleform movie?  
--- These seem to be the only scaleforms ever requested by this native:  
--- "breaking_news"  
--- "desktop_pc"  
--- "ECG_MONITOR"  
--- "Hacking_PC"  
--- "TEETH_PULLING"  
--- Note: Unless this hash is out-of-order, this native is next-gen only.  
--- @name _REQUEST_SCALEFORM_MOVIE_INTERACTIVE
--- @param scaleformName string 
--- @return number
function RequestScaleformMovieInteractive(scaleformName) end

--- @name REQUEST_SCALEFORM_SCRIPT_HUD_MOVIE
--- @param hudComponent number 
--- @return void (Type not found)
function RequestScaleformScriptHudMovie(hudComponent) end

--- Another [REQUEST_SCALEFORM_MOVIE](#\_0x11FE353CF9733E6F) equivalent.
--- @name _REQUEST_SCALEFORM_MOVIE_2
--- @param scaleformName string 
--- @return number
function RequestScaleformMovie2(scaleformName) end

--- Same as [REQUEST_SCALEFORM_MOVIE](#\_0x11FE353CF9733E6F), except it seems to fix stretched scaleforms on ultrawide.
--- @name REQUEST_SCALEFORM_MOVIE_INSTANCE
--- @param scaleformName string 
--- @return number
function RequestScaleformMovieInstance(scaleformName) end

--- This function can requests texture dictonaries from following RPFs:
--- scaleform_generic.rpf
--- scaleform_minigames.rpf
--- scaleform_minimap.rpf
--- scaleform_web.rpf
--- last param isnt a toggle
--- @name REQUEST_STREAMED_TEXTURE_DICT
--- @param textureDict string 
--- @param p1 boolean 
--- @return void (Type not found)
function RequestStreamedTextureDict(textureDict, p1) end

--- Resets the extra timecycle modifier strength normally set with [`SetExtraTimecycleModifierStrength`](#\_0x2C328AF17210F009)
--- @name _RESET_EXTRA_TIMECYCLE_MODIFIER_STRENGTH
--- @return void (Type not found)
function ResetExtraTimecycleModifierStrength() end

--- @name RESET_PAUSED_RENDERPHASES
--- @return void (Type not found)
function ResetPausedRenderphases() end

--- Resets the effect of SET_PARTICLE_FX_OVERRIDE
--- @name RESET_PARTICLE_FX_OVERRIDE
--- @param name string 
--- @return void (Type not found)
function ResetParticleFxOverride(name) end

--- This function resets the alignment set using `SET_SCRIPT_GFX_ALIGN` and `SET_SCRIPT_GFX_ALIGN_PARAMS` to the default
--- values ('I', 'I'; 0, 0, 0, 0). This should be used after having used the aforementioned functions in order to not affect
--- any other scripts attempting to draw.
--- @name RESET_SCRIPT_GFX_ALIGN
--- @return void (Type not found)
function ResetScriptGfxAlign() end

--- Pushes a boolean for the Scaleform function onto the stack.  
--- @name SCALEFORM_MOVIE_METHOD_ADD_PARAM_BOOL
--- @param value boolean 
--- @return void (Type not found)
function ScaleformMovieMethodAddParamBool(value) end

--- Values:
--- 0 - Dialogue Brief
--- 1 - Help Text Brief
--- 2 - Mission Objective Brief
--- @name SCALEFORM_MOVIE_METHOD_ADD_PARAM_LATEST_BRIEF_STRING
--- @param value number 
--- @return void (Type not found)
function ScaleformMovieMethodAddParamLatestBriefString(value) end

--- @name SAVE_HIGH_QUALITY_PHOTO
--- @param unused number 
--- @return boolean
function SaveHighQualityPhoto(unused) end

--- @name _RETURN_TWO
--- @param p0 number 
--- @return number
function ReturnTwo(p0) end

--- Pushes a float for the Scaleform function onto the stack.  
--- @name SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT
--- @param value number 
--- @return void (Type not found)
function ScaleformMovieMethodAddParamFloat(value) end

--- This method is the equivalent to PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING when using it to add a new button (like "INSTRUCTIONAL_BUTTONS").  
--- When switching with a controller, the icons update and become the controller's icons.  
--- @name SCALEFORM_MOVIE_METHOD_ADD_PARAM_PLAYER_NAME_STRING
--- @param string string 
--- @return void (Type not found)
function ScaleformMovieMethodAddParamPlayerNameString(string) end

--- Pushes an integer for the Scaleform function onto the stack.  
--- @name SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT
--- @param value number 
--- @return void (Type not found)
function ScaleformMovieMethodAddParamInt(value) end

--- NativeDB Introduced: v323
--- @name SEETHROUGH_RESET
--- @return void (Type not found)
function SeethroughReset() end

--- NativeDB Introduced: v1290
--- @name _SEETHROUGH_GET_MAX_THICKNESS
--- @return number
function SeethroughGetMaxThickness() end

--- @name SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING
--- @param string string 
--- @return void (Type not found)
function ScaleformMovieMethodAddParamTextureNameString(string) end

--- GRAPHICS::\_0x77FE3402004CD1B0(HUD::\_GET_LABEL_TEXT("YACHT_GSY"));
--- GRAPHICS::\_0x77FE3402004CD1B0(PLAYER::GET_PLAYER_NAME(PLAYER::PLAYER_ID()));
--- Both \_0xBA7148484BD90365 / \_0x77FE3402004CD1B0 works, but \_0x77FE3402004CD1B0 is usually used for "name" (organisation, players..).
--- @name _SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING_2
--- @param string string 
--- @return void (Type not found)
function ScaleformMovieMethodAddParamTextureNameString2(string) end

--- @name _SEETHROUGH_SET_FADE_START_DISTANCE
--- @param distance number 
--- @return void (Type not found)
function SeethroughSetFadeStartDistance(distance) end

--- @name SEETHROUGH_SET_COLOR_NEAR
--- @param red number 
--- @param green number 
--- @param blue number 
--- @return void (Type not found)
function SeethroughSetColorNear(red, green, blue) end

--- @name _SEETHROUGH_SET_FADE_END_DISTANCE
--- @param distance number 
--- @return void (Type not found)
function SeethroughSetFadeEndDistance(distance) end

--- @name SEETHROUGH_SET_HEATSCALE
--- @param index number 
--- @param heatScale number min: 0.0 max: 0.75
--- @return void (Type not found)
function SeethroughSetHeatscale(index, heatScale) end

--- @name _SEETHROUGH_SET_HI_LIGHT_NOISE
--- @param noise number 
--- @return void (Type not found)
function SeethroughSetHiLightNoise(noise) end

--- @name _SEETHROUGH_SET_NOISE_AMOUNT_MAX
--- @param amount number 
--- @return void (Type not found)
function SeethroughSetNoiseAmountMax(amount) end

--- @name _SEETHROUGH_SET_HI_LIGHT_INTENSITY
--- @param intensity number 
--- @return void (Type not found)
function SeethroughSetHiLightIntensity(intensity) end

--- @name _SEETHROUGH_SET_MAX_THICKNESS
--- @param thickness number min: 1.0 max: 10000.0
--- @return void (Type not found)
function SeethroughSetMaxThickness(thickness) end

--- Does not affect weapons, particles, fire/explosions, flashlights or the sun.
--- When set to true, all emissive textures (including ped components that have light effects), street lights, building lights, vehicle lights, etc will all be turned off.
--- Used in Humane Labs Heist for EMP.
--- @name SET_ARTIFICIAL_LIGHTS_STATE
--- @param state boolean True turns off all artificial light sources in the map: buildings, street lights, car lights, etc. False turns them back on.
--- @return void (Type not found)
function SetArtificialLightsState(state) end

--- If "blackout" is enabled, this native allows you to ignore "blackout" for vehicles.
--- NativeDB Introduced: v2060
--- @name _SET_ARTIFICIAL_LIGHTS_STATE_AFFECTS_VEHICLES
--- @param toggle boolean 
--- @return void (Type not found)
function SetArtificialLightsStateAffectsVehicles(toggle) end

--- Seeks a BINK movie to a specified position.
--- @name _SET_BINK_MOVIE_TIME
--- @param binkMovie number The movie that is being played.
--- @param progress number As a percentage (0.0 - 100.0).
--- @return void (Type not found)
function SetBinkMovieTime(binkMovie, progress) end

--- @name _SEETHROUGH_SET_NOISE_AMOUNT_MIN
--- @param amount number 
--- @return void (Type not found)
function SeethroughSetNoiseAmountMin(amount) end

--- Creates an integer (usually 1) for a BINK movie to be called with other natives.
--- [List of all BINK movies (alphabetically ordered) as of b2802](https://gist.github.com/ItsJunction/8046f28c29ea8ff2821e9e4f933f595f)
--- @name _SET_BINK_MOVIE
--- @param name string The BINK movie to play (with or without file extension).
--- @return number
function SetBinkMovie(name) end

--- NativeDB Introduced: v1868
--- @name _SET_BINK_MOVIE_UNK_2
--- @param binkMovie number 
--- @param p1 boolean 
--- @return void (Type not found)
function SetBinkMovieUnk2(binkMovie, p1) end

--- binkMovie: Is return value from _SET_BINK_MOVIE. Has something to do with bink volume? (audRequestedSettings::SetVolumeCurveScale)
--- NativeDB Introduced: v1290
--- @name _SET_BINK_MOVIE_VOLUME
--- @param binkMovie number 
--- @param value number 
--- @return void (Type not found)
function SetBinkMovieVolume(binkMovie, value) end

--- NativeDB Introduced: v1290
--- @name _SET_BINK_SHOULD_SKIP
--- @param binkMovie number 
--- @param shouldSkip boolean 
--- @return void (Type not found)
function SetBinkShouldSkip(binkMovie, shouldSkip) end

--- @name _SET_CHECKPOINT_ICON_SCALE
--- @param checkpoint number 
--- @param scale number 
--- @return void (Type not found)
function SetCheckpointIconScale(checkpoint, scale) end

--- @name SET_BACKFACECULLING
--- @param toggle boolean 
--- @return void (Type not found)
function SetBackfaceculling(toggle) end

--- Sets the cylinder height of the checkpoint.  
--- Parameters:  
--- * nearHeight - The height of the checkpoint when inside of the radius.  
--- * farHeight - The height of the checkpoint when outside of the radius.  
--- * radius - The radius of the checkpoint.  
--- @name SET_CHECKPOINT_CYLINDER_HEIGHT
--- @param checkpoint number 
--- @param nearHeight number 
--- @param farHeight number 
--- @param radius number 
--- @return void (Type not found)
function SetCheckpointCylinderHeight(checkpoint, nearHeight, farHeight, radius) end

--- Sets the checkpoint color.  
--- @name SET_CHECKPOINT_RGBA
--- @param checkpoint number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function SetCheckpointRgba(checkpoint, red, green, blue, alpha) end

--- Sets the checkpoint icon color.
--- @name SET_CHECKPOINT_RGBA2
--- @param checkpoint number 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function SetCheckpointRgba2(checkpoint, red, green, blue, alpha) end

--- NOTE: Debugging functions are not present in the retail version of the game.  
--- @name SET_DEBUG_LINES_AND_SPHERES_DRAWING_ACTIVE
--- @param enabled boolean 
--- @return void (Type not found)
function SetDebugLinesAndSpheresDrawingActive(enabled) end

--- @name SET_CURRENT_PLAYER_TCMODIFIER
--- @param modifierName string 
--- @return void (Type not found)
function SetCurrentPlayerTcmodifier(modifierName) end

--- Sets the on-screen drawing origin for draw-functions in world coordinates.
--- The effect can be reset by calling [`CLEAR_DRAW_ORIGIN`](#\_0xFF0B610F6BE0D7AF) and is limited to 32 different origins each frame.
--- @name SET_DRAW_ORIGIN
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3  
--- @return void (Type not found)
function SetDrawOrigin(x, y, z, p3) end

--- @name SET_ENTITY_ICON_VISIBILITY
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEntityIconVisibility(entity, toggle) end

--- This multiplies the height of the icon inside a checkpoint with the default height of about 2 units above the checkpoint's coordinates.
--- @name _SET_CHECKPOINT_ICON_HEIGHT
--- @param checkpoint number The checkpoint the multiplier should be applied to.
--- @param height_multiplier number The multiplier for the icon height above the checkpoint's coordinates. Default is 1.0
--- @return void (Type not found)
function SetCheckpointIconHeight(checkpoint, height_multiplier) end

--- @name SET_DISABLE_DECAL_RENDERING_THIS_FRAME
--- @return void (Type not found)
function SetDisableDecalRenderingThisFrame() end

--- @name SET_ENTITY_ICON_COLOR
--- @param entity Entity 
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function SetEntityIconColor(entity, red, green, blue, alpha) end

--- The same as [`SetTimecycleModifierStrength`](#\_0x82E7FFCD5B2326B3) but for the secondary tiemcycle modifier.
--- @name _SET_EXTRA_TIMECYCLE_MODIFIER_STRENGTH
--- @param strength number 
--- @return void (Type not found)
function SetExtraTimecycleModifierStrength(strength) end

--- Purpose of p0 and p1 unknown.  
--- @name SET_FLASH
--- @param p0 number 
--- @param p1 number 
--- @param fadeIn number 
--- @param duration number 
--- @param fadeOut number 
--- @return void (Type not found)
function SetFlash(p0, p1, fadeIn, duration, fadeOut) end

--- Forces footstep tracks on all surfaces.
--- USE_/USING_*
--- @name _SET_FORCE_PED_FOOTSTEPS_TRACKS
--- @param toggle boolean 
--- @return void (Type not found)
function SetForcePedFootstepsTracks(toggle) end

--- @name _SET_EXTRA_TIMECYCLE_MODIFIER
--- @param modifierName string 
--- @return void (Type not found)
function SetExtraTimecycleModifier(modifierName) end

--- Forces vehicle trails on all surfaces.
--- USE_/USING_*
--- @name _SET_FORCE_VEHICLE_TRAILS
--- @param toggle boolean 
--- @return void (Type not found)
function SetForceVehicleTrails(toggle) end

--- @name SET_HIDOF_OVERRIDE
--- @param p0 boolean 
--- @param p1 boolean 
--- @param nearplaneOut number 
--- @param nearplaneIn number 
--- @param farplaneOut number 
--- @param farplaneIn number 
--- @return void (Type not found)
function SetHidofOverride(p0, p1, nearplaneOut, nearplaneIn, farplaneOut, farplaneIn) end

--- @name SET_PARTICLE_FX_BULLET_IMPACT_SCALE
--- @param scale number 
--- @return void (Type not found)
function SetParticleFxBulletImpactScale(scale) end

--- Enables Night Vision.  
--- Example:  
--- C#: Function.Call(Hash.SET_NIGHTVISION, true);  
--- C++: GRAPHICS::SET_NIGHTVISION(true);  
--- BOOL toggle:  
--- true = turns night vision on for your player.  
--- false = turns night vision off for your player.  
--- @name SET_NIGHTVISION
--- @param toggle boolean 
--- @return void (Type not found)
function SetNightvision(toggle) end

--- @name SET_NEXT_PLAYER_TCMODIFIER
--- @param modifierName string 
--- @return void (Type not found)
function SetNextPlayerTcmodifier(modifierName) end

--- @name SET_NOISEOVERIDE
--- @param toggle boolean 
--- @return void (Type not found)
function SetNoiseoveride(toggle) end

--- @name SET_PARTICLE_FX_CAM_INSIDE_VEHICLE
--- @param p0 boolean 
--- @return void (Type not found)
function SetParticleFxCamInsideVehicle(p0) end

--- @name SET_PARTICLE_FX_LOOPED_ALPHA
--- @param ptfxHandle number 
--- @param alpha number 
--- @return void (Type not found)
function SetParticleFxLoopedAlpha(ptfxHandle, alpha) end

--- @name SET_PARTICLE_FX_CAM_INSIDE_NONPLAYER_VEHICLE
--- @param vehicle Vehicle 
--- @param p1 boolean 
--- @return void (Type not found)
function SetParticleFxCamInsideNonplayerVehicle(vehicle, p1) end

--- @name SET_NOISINESSOVERIDE
--- @param value number 
--- @return void (Type not found)
function SetNoisinessoveride(value) end

--- @name SET_PARTICLE_FX_LOOPED_EVOLUTION
--- @param ptfxHandle number 
--- @param propertyName string 
--- @param amount number 
--- @param noNetwork boolean 
--- @return void (Type not found)
function SetParticleFxLoopedEvolution(ptfxHandle, propertyName, amount, noNetwork) end

--- @name SET_PARTICLE_FX_LOOPED_OFFSETS
--- @param ptfxHandle number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @return void (Type not found)
function SetParticleFxLoopedOffsets(ptfxHandle, x, y, z, rotX, rotY, rotZ) end

--- only works on some fx's  
--- p4 = 0  
--- @name SET_PARTICLE_FX_LOOPED_COLOUR
--- @param ptfxHandle number 
--- @param r number 
--- @param g number 
--- @param b number 
--- @param p4 boolean 
--- @return void (Type not found)
function SetParticleFxLoopedColour(ptfxHandle, r, g, b, p4) end

--- @name SET_PARTICLE_FX_LOOPED_FAR_CLIP_DIST
--- @param ptfxHandle number 
--- @param range number 
--- @return void (Type not found)
function SetParticleFxLoopedFarClipDist(ptfxHandle, range) end

--- Usage example for C#:  
--- Function.Call(Hash.SET_PARTICLE_FX_NON_LOOPED_ALPHA, new InputArgument[] { 0.1f });  
--- 		Note: the argument alpha ranges from 0.0f-1.0f !  
--- @name SET_PARTICLE_FX_NON_LOOPED_ALPHA
--- @param alpha number 
--- @return void (Type not found)
function SetParticleFxNonLoopedAlpha(alpha) end

--- Only works on some fx's, while on others it might SEEM to work "properly", but the colors can be "strange" or even completly different from what you've expected. Reason for this is that those fx's might already have colors "baked into them" which then start to act as a "mixing palette", resulting in a different color than expected. A hypothetical example of this would be if the fx itself is already full (bright) red (RGB: 1.0, 0.0, 0.0) and you then set the color to (bright) green (RGB: 0.0, 1.0, 0.0), that it MIGHT result in Yellow (RGB: 1.0, 1.0, 0.0).
--- This doc previously stated that the set color is **NOT** networked, however it does actually turns out to be networked. Tested with all fireworks effects and several other FX effects resulted in colored fx effects on all clients when used in combination with [START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD](#\_0xF56B8137DF10135D).
--- This might however not be the case for all types of particle fx's, so it's recommended to test this thoroughly with multiple clients before releasing your script for example.
--- @name SET_PARTICLE_FX_NON_LOOPED_COLOUR
--- @param r number Red (0.0 - 1.0)
--- @param g number Green (0.0 - 1.0)
--- @param b number Blue (0.0 - 1.0)
--- @return void (Type not found)
function SetParticleFxNonLoopedColour(r, g, b) end

--- NativeDB Introduced: v2699
--- @name _SET_PARTICLE_FX_NON_LOOPED_EMITTER_SCALE
--- @param p0 number 
--- @param p1 number 
--- @param scale number 
--- @return void (Type not found)
function SetParticleFxNonLoopedEmitterScale(p0, p1, scale) end

--- @name SET_PARTICLE_FX_SHOOTOUT_BOAT
--- @param p0  
--- @return void (Type not found)
function SetParticleFxShootoutBoat(p0) end

--- @name SET_PARTICLE_FX_LOOPED_SCALE
--- @param ptfxHandle number 
--- @param scale number 
--- @return void (Type not found)
function SetParticleFxLoopedScale(ptfxHandle, scale) end

--- @name SET_PLAYER_TCMODIFIER_TRANSITION
--- @param value number 
--- @return void (Type not found)
function SetPlayerTcmodifierTransition(value) end

--- @name SET_PARTICLE_FX_OVERRIDE
--- @param oldAsset string 
--- @param newAsset string 
--- @return void (Type not found)
function SetParticleFxOverride(oldAsset, newAsset) end

--- @name SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED
--- @param scaleformHandle number 
--- @return void (Type not found)
function SetScaleformMovieAsNoLongerNeeded(scaleformHandle) end

--- This native is used in some casino scripts to fit the scaleform in the rendertarget.
--- @name _SET_SCALEFORM_FIT_RENDERTARGET
--- @param scaleformHandle number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetScaleformFitRendertarget(scaleformHandle, toggle) end

--- Sets the draw offset/calculated size for `SET_SCRIPT_GFX_ALIGN`. If using any alignment other than left/top, the game
--- expects the width/height to be configured using this native in order to get a proper starting position for the draw
--- command.
--- @name SET_SCRIPT_GFX_ALIGN_PARAMS
--- @param x number The X offset for the item to be drawn.
--- @param y number The Y offset for the item to be drawn.
--- @param w number The width of the item to be drawn.
--- @param h number The height of the item to be drawn.
--- @return void (Type not found)
function SetScriptGfxAlignParams(x, y, w, h) end

--- This function anchors script draws to a side of the safe zone. This needs to be called to make the interface
--- independent of the player's safe zone configuration.
--- These values are equivalent to `alignX` and `alignY` in `common:/data/ui/frontend.xml`, which can be used as a baseline
--- for default alignment.
--- Valid values for `horizontalAlign`, from original documentation:
--- *   **C (67)** - Center: DRAW_TEXT starts in the middle of the screen, while DRAW_RECT starts on the right; both move with
---     the right side of the screen.
--- *   **L (76)** - Left: Anchors to the left side, DRAW_RECT starts on the left side of the screen, same as DRAW_TEXT when
---     centered.
--- *   **R (82)** - Right: DRAW_TEXT starts on the left side (normal 0,0), while DRAW_RECT starts some short distance away
---     from the right side of the screen, both move with the right side of the screen.
--- Valid values for `verticalAlign`, from original documentation:
--- *   **B (66)** - Bottom: DRAW_RECT starts about as far as the middle of the map from the bottom, while DRAW_TEXT is about
---     rather centered.
--- *   **C (67)** - Center: It starts at a certain distance from the bottom, but the distance is fixed, the distance is
---     different from 66.
--- *   **T (84)** - Top: Anchors to the top, DRAW_RECT starts on the top of the screen, DRAW_TEXT just below it.
--- Using any other value (including 0) will result in the safe zone not being taken into account for this draw. The
--- canonical value for this is 'I' (73).
--- For example, you can use `SET_SCRIPT_GFX_ALIGN(0, 84)` to only scale on the Y axis (to the top), but not change the X
--- axis.
--- To reset the value, use `RESET_SCRIPT_GFX_ALIGN`.
--- @name SET_SCRIPT_GFX_ALIGN
--- @param horizontalAlign number The horizontal alignment. This can be 67 ('C'), 76 ('L'), or 82 ('R').
--- @param verticalAlign number The vertical alignment. This can be 67 ('C'), 66 ('B'), or 84 ('T').
--- @return void (Type not found)
function SetScriptGfxAlign(horizontalAlign, verticalAlign) end

--- @name SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED
--- @param textureDict string 
--- @return void (Type not found)
function SetStreamedTextureDictAsNoLongerNeeded(textureDict) end

--- Sets the draw order for script draw commands.
--- Examples from decompiled scripts:
--- GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);
--- GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v\_4, v\_5, v\_6, a\_0.\_f172, 0);
--- GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);
--- GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);
--- @name SET_SCRIPT_GFX_DRAW_ORDER
--- @param order number The intended draw order/layer.
--- @return void (Type not found)
function SetScriptGfxDrawOrder(order) end

--- Sets a flag defining whether or not script draw commands should continue being drawn behind the pause menu. This is usually used for TV channels and other draw commands that are used with a world render target.
--- @name SET_SCRIPT_GFX_DRAW_BEHIND_PAUSEMENU
--- @param flag boolean A boolean value.
--- @return void (Type not found)
function SetScriptGfxDrawBehindPausemenu(flag) end

--- @name SET_TIMECYCLE_MODIFIER_STRENGTH
--- @param strength number 
--- @return void (Type not found)
function SetTimecycleModifierStrength(strength) end

--- @name SET_SCALEFORM_MOVIE_TO_USE_SYSTEM_TIME
--- @param scaleform number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetScaleformMovieToUseSystemTime(scaleform, toggle) end

--- This native doesn't work like [`SetWeatherTypeTransition`](#\_0x578C752848ECFA0C).
--- @name SET_TRANSITION_TIMECYCLE_MODIFIER
--- @param modifierName string The name of a timecycle
--- @param transition number The speed to transition to `modifierName`. Appears to be half-seconds (?)
--- @return void (Type not found)
function SetTransitionTimecycleModifier(modifierName, transition) end

--- Probably changes tvs from being a 3d audio to being "global" audio
--- @name SET_TV_AUDIO_FRONTEND
--- @param toggle boolean 
--- @return void (Type not found)
function SetTvAudioFrontend(toggle) end

--- Loads the specified timecycle modifier. Modifiers are defined separately in another file (e.g. "timecycle_mods_1.xml")
--- Parameters:
--- modifierName - The modifier to load (e.g. "V_FIB_IT3", "scanline_cam", etc.)
--- @name SET_TIMECYCLE_MODIFIER
--- @param modifierName string 
--- @return void (Type not found)
function SetTimecycleModifier(modifierName) end

--- Loads specified video sequence into the TV Channel
--- TV_Channel ranges from 0-2
--- VideoSequence can be any of the following:
--- "PL_STD_CNT" CNT Standard Channel
--- "PL_STD_WZL" Weazel Standard Channel
--- "PL_LO_CNT"
--- "PL_LO_WZL"
--- "PL_SP_WORKOUT"
--- "PL_SP_INV" - Jay Norris Assassination Mission Fail
--- "PL_SP_INV_EXP" - Jay Norris Assassination Mission Success
--- "PL_LO_RS" - Righteous Slaughter Ad
--- "PL_LO_RS_CUTSCENE" - Righteous Slaughter Cut-scene
--- "PL_SP_PLSH1\_INTRO"
--- "PL_LES1\_FAME_OR_SHAME"
--- "PL_STD_WZL_FOS_EP2"
--- "PL_MP_WEAZEL" - Weazel Logo on loop
--- "PL_MP_CCTV" - Generic CCTV loop
--- Restart:
--- 0=video sequence continues as normal
--- 1=sequence restarts from beginning every time that channel is selected
--- The above playlists work as intended, and are commonly used, but there are many more playlists, as seen in `tvplaylists.xml`. A pastebin below outlines all playlists, they will be surronded by the name tag I.E. (<Name>PL_STD_CNT</Name> = PL_STD_CNT).
--- https://pastebin.com/zUzGB6h7
--- @name SET_TV_CHANNEL_PLAYLIST
--- @param tvChannel number 
--- @param playlistName string 
--- @param restart boolean 
--- @return void (Type not found)
function SetTvChannelPlaylist(tvChannel, playlistName, restart) end

--- @name SET_TRACKED_POINT_INFO
--- @param point number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @return void (Type not found)
function SetTrackedPointInfo(point, x, y, z, radius) end

--- Toggles Heatvision on/off.  
--- @name SET_SEETHROUGH
--- @param toggle boolean 
--- @return void (Type not found)
function SetSeethrough(toggle) end

--- @name SET_TV_CHANNEL_PLAYLIST_AT_HOUR
--- @param tvChannel number 
--- @param playlistName string 
--- @param hour number 
--- @return void (Type not found)
function SetTvChannelPlaylistAtHour(tvChannel, playlistName, hour) end

--- network fx  
--- NativeDB Added Parameter 13: Any p12
--- NativeDB Added Parameter 14: Any p13
--- NativeDB Added Parameter 15: Any p14
--- NativeDB Added Parameter 16: Any p15
--- @name START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY
--- @param effectName string 
--- @param entity Entity 
--- @param xOffset number 
--- @param yOffset number 
--- @param zOffset number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param scale number 
--- @param xAxis boolean 
--- @param yAxis boolean 
--- @param zAxis boolean 
--- @return number
function StartNetworkedParticleFxLoopedOnEntity(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

--- @name SET_TV_VOLUME
--- @param volume number 
--- @return void (Type not found)
function SetTvVolume(volume) end

--- @name SET_TV_CHANNEL
--- @param channel number 
--- @return void (Type not found)
function SetTvChannel(channel) end

--- NOTE: the [USE_PARTICLE_FX_ASSET](#\_0x6C38AF3693A69A91) needs to be called before EVERY StartNetworkedParticleFxNonLoopedAtCoord(....) call!
--- List with lots of particle effects: https://vespura.com/fivem/particle-list/
--- Note: Not all particles on this list are for non looped and vice versa, neither are all of them suited/meant to have SetParticleFxNonLoopedColour(....) called on them.
--- NativeDB Added Parameter 12: BOOL p11
--- @name START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD
--- @param effectName string 
--- @param xPos number 
--- @param yPos number 
--- @param zPos number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param scale number 
--- @param xAxis boolean 
--- @param yAxis boolean 
--- @param zAxis boolean 
--- @return boolean
function StartNetworkedParticleFxNonLoopedAtCoord(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

--- NativeDB Introduced: v2189
--- @name _START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY_BONE
--- @param effectName string 
--- @param entity Entity 
--- @param offsetX number 
--- @param offsetY number 
--- @param offsetZ number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param boneIndex number 
--- @param scale number 
--- @param axisX boolean 
--- @param axisY boolean 
--- @param axisZ boolean 
--- @return boolean
function StartNetworkedParticleFxNonLoopedOnEntityBone(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ) end

--- network fx  
--- NativeDB Added Parameter 14: Any p13
--- NativeDB Added Parameter 15: Any p14
--- NativeDB Added Parameter 16: Any p15
--- NativeDB Added Parameter 17: Any p16
--- @name START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE
--- @param effectName string 
--- @param entity Entity 
--- @param xOffset number 
--- @param yOffset number 
--- @param zOffset number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param boneIndex number 
--- @param scale number 
--- @param xAxis boolean 
--- @param yAxis boolean 
--- @param zAxis boolean 
--- @return number
function StartNetworkedParticleFxLoopedOnEntityBone(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) end

--- @name START_PARTICLE_FX_LOOPED_ON_ENTITY
--- @param effectName string 
--- @param entity Entity 
--- @param xOffset number 
--- @param yOffset number 
--- @param zOffset number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param scale number 
--- @param xAxis boolean 
--- @param yAxis boolean 
--- @param zAxis boolean 
--- @return number
function StartParticleFxLoopedOnEntity(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

--- @name START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY
--- @param effectName string 
--- @param entity Entity 
--- @param offsetX number 
--- @param offsetY number 
--- @param offsetZ number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param scale number 
--- @param axisX boolean 
--- @param axisY boolean 
--- @param axisZ boolean 
--- @return boolean
function StartNetworkedParticleFxNonLoopedOnEntity(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ) end

--- @name START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_PED_BONE
--- @param effectName string 
--- @param ped Ped 
--- @param offsetX number 
--- @param offsetY number 
--- @param offsetZ number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param boneIndex number 
--- @param scale number 
--- @param axisX boolean 
--- @param axisY boolean 
--- @param axisZ boolean 
--- @return boolean
function StartNetworkedParticleFxNonLoopedOnPedBone(effectName, ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ) end

--- GRAPHICS::START_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_paleto_roof_impact", -140.8576f, 6420.789f, 41.1391f, 0f, 0f, 267.3957f, 0x3F800000, 0, 0, 0);  
--- Axis - Invert Axis Flags  
--- list: pastebin.com/N9unUFWY  
--- -------------------------------------------------------------------  
--- C#  
--- Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, = you are calling this function.  
--- char *effectname = This is an in-game effect name, for e.g. "scr_fbi4_trucks_crash" is used to give the effects when truck crashes etc  
--- float x, y, z pos = this one is Simple, you just have to declare, where do you want this effect to take place at, so declare the ordinates  
--- float xrot, yrot, zrot = Again simple? just mention the value in case if you want the effect to rotate.  
--- float scale = is declare the scale of the effect, this may vary as per the effects for e.g 1.0f  
--- bool xaxis, yaxis, zaxis = To bool the axis values.  
--- example:  
--- Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, "scr_fbi4_trucks_crash", GTA.Game.Player.Character.Position.X, GTA.Game.Player.Character.Position.Y, GTA.Game.Player.Character.Position.Z + 4f, 0, 0, 0, 5.5f, 0, 0, 0);  
--- @name START_PARTICLE_FX_NON_LOOPED_AT_COORD
--- @param effectName string 
--- @param xPos number 
--- @param yPos number 
--- @param zPos number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param scale number 
--- @param xAxis boolean 
--- @param yAxis boolean 
--- @param zAxis boolean 
--- @return number
function StartParticleFxNonLoopedAtCoord(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

--- @name START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE
--- @param effectName string 
--- @param entity Entity 
--- @param xOffset number 
--- @param yOffset number 
--- @param zOffset number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param boneIndex number 
--- @param scale number 
--- @param xAxis boolean 
--- @param yAxis boolean 
--- @param zAxis boolean 
--- @return number
function StartParticleFxLoopedOnEntityBone(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) end

--- GRAPHICS::START_PARTICLE_FX_LOOPED_AT_COORD("scr_fbi_falling_debris", 93.7743f, -749.4572f, 70.86904f, 0f, 0f, 0f, 0x3F800000, 0, 0, 0, 0)  
--- p11 seems to be always 0  
--- @name START_PARTICLE_FX_LOOPED_AT_COORD
--- @param effectName string 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param scale number 
--- @param xAxis boolean 
--- @param yAxis boolean 
--- @param zAxis boolean 
--- @param p11 boolean 
--- @return number
function StartParticleFxLoopedAtCoord(effectName, x, y, z, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, p11) end

--- Starts a particle effect on an entity for example your player.  
--- List: pastebin.com/N9unUFWY  
--- Example:  
--- C#:  
--- Function.Call(Hash.REQUEST_NAMED_PTFX_ASSET, "scr_rcbarry2");                     Function.Call(Hash._SET_PTFX_ASSET_NEXT_CALL, "scr_rcbarry2");                             Function.Call(Hash.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY, "scr_clown_appears", Game.Player.Character, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false);  
--- Internally this calls the same function as GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE  
--- however it uses -1 for the specified bone index, so it should be possible to start a non looped fx on an entity bone using that native  
--- @name START_PARTICLE_FX_NON_LOOPED_ON_ENTITY
--- @param effectName string 
--- @param entity Entity 
--- @param offsetX number 
--- @param offsetY number 
--- @param offsetZ number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param scale number 
--- @param axisX boolean 
--- @param axisY boolean 
--- @param axisZ boolean 
--- @return boolean
function StartParticleFxNonLoopedOnEntity(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ) end

--- @name START_PARTICLE_FX_LOOPED_ON_PED_BONE
--- @param effectName string 
--- @param ped Ped 
--- @param xOffset number 
--- @param yOffset number 
--- @param zOffset number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param boneIndex number 
--- @param scale number 
--- @param xAxis boolean 
--- @param yAxis boolean 
--- @param zAxis boolean 
--- @return number
function StartParticleFxLoopedOnPedBone(effectName, ped, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) end

--- GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("scr_sh_bong_smoke", PLAYER::PLAYER_PED_ID(), -0.025f, 0.13f, 0f, 0f, 0f, 0f, 31086, 0x3F800000, 0, 0, 0);  
--- Axis - Invert Axis Flags  
--- list: pastebin.com/N9unUFWY  
--- @name START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE
--- @param effectName string 
--- @param ped Ped 
--- @param offsetX number 
--- @param offsetY number 
--- @param offsetZ number 
--- @param rotX number 
--- @param rotY number 
--- @param rotZ number 
--- @param boneIndex number 
--- @param scale number 
--- @param axisX boolean 
--- @param axisY boolean 
--- @param axisZ boolean 
--- @return boolean
function StartParticleFxNonLoopedOnPedBone(effectName, ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ) end

--- NativeDB Introduced: v1290
--- @name _STOP_BINK_MOVIE
--- @param binkMovie number 
--- @return void (Type not found)
function StopBinkMovie(binkMovie) end

--- p1 is always 0 in the native scripts  
--- @name STOP_PARTICLE_FX_LOOPED
--- @param ptfxHandle number 
--- @param p1 boolean 
--- @return void (Type not found)
function StopParticleFxLooped(ptfxHandle, p1) end

--- This native enables/disables the gold putting grid display (https://i.imgur.com/TC6cku6.png).
--- This requires these two natives to be called as well to configure the grid: [`TERRAINGRID_SET_PARAMS`](#\_0x1C4FC5752BCD8E48) and [`TERRAINGRID_SET_COLOURS`](#\_0x5CE62918F8D703C7).
--- @name TERRAINGRID_ACTIVATE
--- @param toggle boolean Enables or disables the golf putting grid display.
--- @return void (Type not found)
function TerraingridActivate(toggle) end

--- This native is used along with these two natives: [`TERRAINGRID_ACTIVATE`](#\_0xA356990E161C9E65) and [`TERRAINGRID_SET_PARAMS`](#\_0x1C4FC5752BCD8E48).
--- This native sets the colors for the golf putting grid. the 'min...' values are for the lower areas that the grid covers, the 'max...' values are for the higher areas that the grid covers, all remaining values are for the 'normal' ground height.
--- All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png
--- Old description:
--- Only called in golf and golf_mp\
--- parameters used are\
--- GRAPHICS::\_0x5CE62918F8D703C7(255, 0, 0, 64, 255, 255, 255, 5, 255, 255, 0, 64);
--- @name TERRAINGRID_SET_COLOURS
--- @param lowR number red value for the lower level
--- @param lowG number green value for the lower level
--- @param lowB number blue value for the lower level
--- @param lowAlpha number alpha value for the lower level
--- @param R number red value for the normal level
--- @param G number green value for the normal level
--- @param B number blue value for the normal level
--- @param Alpha number alpha value for the normal level
--- @param highR number red value for the upper level
--- @param highG number green value for the upper level
--- @param highB number blue value for the upper level
--- @param highAlpha number alpha value for the upper level
--- @return void (Type not found)
function TerraingridSetColours(lowR, lowG, lowB, lowAlpha, R, G, B, Alpha, highR, highG, highB, highAlpha) end

--- This native is used along with these two natives: [`TERRAINGRID_ACTIVATE`](#\_0xA356990E161C9E65) and [`TERRAINGRID_SET_COLOURS`](#\_0x5CE62918F8D703C7).
--- This native configures the location, size, rotation, normal height, and the difference ratio between min, normal and max.
--- All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png
--- @name TERRAINGRID_SET_PARAMS
--- @param x number Grid center x coord.
--- @param y number Grid center y coord.
--- @param z number Grid center z coord.
--- @param p3 number Not sure, but seems to be the amount of lines top/bottom there are in the grid. -1.0 works best.
--- @param rotation number Grid rotation (keep between 0.0 and 1.0).
--- @param p5 number Offset top/bottom (? not sure about this one, seems weird).
--- @param width number Grid width (usually 15.0).
--- @param height number Grid height (usually 15.0).
--- @param p8 number Not sure, but seems to be the amount of lines left/right there are in the grid. -1.0 works best.
--- @param scale number Zoom / scale (higher values = smaller (more) squares) (lower values = bigger (less) squares).
--- @param glowIntensity number glow intensity / opacity (40.0 is fine for daylight, 15.0 is fine for night time).
--- @param normalHeight number The z coord for 'normal' height (white grid lines level).
--- @param heightDiff number This is the height difference/margin used for line color changes. 0.2 works fine (normalHeight + 0.2 = yellow, normalHeight - 0.2 = red).
--- @return void (Type not found)
function TerraingridSetParams(x, y, z, p3, rotation, p5, width, height, p8, scale, glowIntensity, normalHeight, heightDiff) end

--- @name START_PETROL_TRAIL_DECALS
--- @param p0 number 
--- @return void (Type not found)
function StartPetrolTrailDecals(p0) end

--- @name TOGGLE_PAUSED_RENDERPHASES
--- @param toggle boolean 
--- @return void (Type not found)
function TogglePausedRenderphases(toggle) end

--- @name TRIGGER_SCREENBLUR_FADE_IN
--- @param transitionTime number Time in milliseconds to transition into a fully blurred screen
--- @return boolean
function TriggerScreenblurFadeIn(transitionTime) end

--- @name UI3DSCENE_IS_AVAILABLE
--- @return boolean
function Ui3dsceneIsAvailable() end

--- @name TRIGGER_SCREENBLUR_FADE_OUT
--- @param transitionTime number 
--- @return boolean
function TriggerScreenblurFadeOut(transitionTime) end

--- GRAPHICS::UNPATCH_DECAL_DIFFUSE_MAP(9123);  
--- GRAPHICS::SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED("MPMissMarkers256");  
--- @name UNPATCH_DECAL_DIFFUSE_MAP
--- @param decalType number 
--- @return void (Type not found)
function UnpatchDecalDiffuseMap(decalType) end

--- @name WASH_DECALS_FROM_VEHICLE
--- @param vehicle Vehicle 
--- @param p1 number 
--- @return void (Type not found)
function WashDecalsFromVehicle(vehicle, p1) end

--- All presets can be found in common\data\ui\uiscenes.meta
--- @name UI3DSCENE_PUSH_PRESET
--- @param presetName string 
--- @return boolean
function Ui3dscenePushPreset(presetName) end

--- From the b678d decompiled scripts:
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("FM_Mission_Controler");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_apartment_mp");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_indep_fireworks");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_cig_plane");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_creator");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_ornate_heist");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_prison_break_heist_station");
--- @name USE_PARTICLE_FX_ASSET
--- @param name string 
--- @return void (Type not found)
function UseParticleFxAsset(name) end

--- @name WASH_DECALS_IN_RANGE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function WashDecalsInRange(p0, p1, p2, p3, p4) end

--- @name UPDATE_LIGHTS_ON_ENTITY
--- @param entity Entity 
--- @return void (Type not found)
function UpdateLightsOnEntity(entity) end
