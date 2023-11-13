
--- @name ABSF
--- @param value number 
--- @return number
function Absf(value) end

--- @name ABSI
--- @param value number 
--- @return number
function Absi(value) end

--- @name ACOS
--- @param p0 number 
--- @return number
function Acos(p0) end

--- @name _ADD_DISPATCH_SPAWN_BLOCKING_AREA
--- @param x1 number 
--- @param y1 number 
--- @param x2 number 
--- @param y2 number 
--- @return 
function AddDispatchSpawnBlockingArea(x1, y1, x2, y2) end

--- To remove, see: [`REMOVE_DISPATCH_SPAWN_BLOCKING_AREA`](#\_0x264AC28B01B353A5).
--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- @name _ADD_DISPATCH_SPAWN_BLOCKING_ANGLED_AREA
--- @param x1 number X dimension of the angled area 'origin'
--- @param y1 number Y dimension of the angled area 'origin'
--- @param z1 number Z dimension of the angled area 'origin'
--- @param x2 number X dimension of the angled area 'extent'
--- @param y2 number Y dimension of the angled area 'extent'
--- @param z2 number Z dimension of the angled area 'extent'
--- @param width number Width of the angled area
--- @return 
function AddDispatchSpawnBlockingAngledArea(x1, y1, z1, x2, y2, z2, width) end

--- NativeDB Added Parameter 10: BOOL p9
--- @name ADD_POP_MULTIPLIER_AREA
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8 boolean 
--- @return number
function AddPopMultiplierArea(x1, y1, z1, x2, y2, z2, p6, p7, p8) end

--- @name ADD_POLICE_RESTART
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4  
--- @return 
function AddPoliceRestart(p0, p1, p2, p3, p4) end

--- Returns the index of the newly created hospital spawn point.  
--- p3 might be radius?  
--- @name ADD_HOSPITAL_RESTART
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3 number 
--- @param p4  
--- @return number
function AddHospitalRestart(x, y, z, p3, p4) end

--- Creates a new stunt jump.
--- The radius1 and radius2 might actually not be a radius at all, but that's what it seems to me testing them in-game. But they may be 'angle' floats instead, considering this native is named ADD_STUNT_JUMP\_**ANGLED**.
--- Info about the specific 'parameter sections':
--- **x1, y1, z1, x2, y2, z2 and radius1:**
--- First coordinates are for the jump entry area, and the radius that will be checked around that area. So if you're not exactly within the coordinates, but you are within the outter radius limit then it will still register as entering the stunt jump. Note as mentioned above, the radius is just a guess, I'm not really sure about it's exact purpose.
--- **x3, y3, z3, x4, y4, z4 and radius2:**
--- Next part is the landing area, again starting with the left bottom (nearest to the stunt jump entry zone) coordinate, and the second one being the top right furthest away part of the landing area. Followed by another (most likely) radius float, this is usually slightly larger than the entry zone 'radius' float value, just because you have quite a lot of places where you can land (I'm guessing).
--- **camX, camY and camZ:**
--- The final coordinate in this native is the Camera position. Rotation and zoom/FOV is managed by the game itself, you just need to provide the camera location.
--- **unk1, unk2 and unk3:**
--- Not sure what these are for, but they're always `150, 0, 0` in decompiled scripts.
--- Visualized example in-game:
--- ![](https://d.fivem.dev/2019-03-15\_18-24\_c7802\_846.png)
--- Here is a list of almost all of the stunt jumps from GTA V (taken from decompiled scripts): https://pastebin.com/EW1jBPkY
--- @name ADD_STUNT_JUMP_ANGLED
--- @param x1 number Entry zone bottom left corner x.
--- @param y1 number Entry zone bottom left corner y.
--- @param z1 number Entry zone bottom left corner z.
--- @param x2 number Entry zone top right corner x.
--- @param y2 number Entry zone top right corner y.
--- @param z2 number Entry zone top right corner z.
--- @param radius1 number Probably a "feather" radius for entry zone, you need to enter the jump within the min/max coordinates, or within this radius of those two coordinates.
--- @param x3 number Landing zone start corner coordinate x.
--- @param y3 number Landing zone start corner coordinate y.
--- @param z3 number Landing zone start corner coordinate z.
--- @param x4 number Landing zone end corner coordinate x.
--- @param y4 number Landing zone end corner coordinate y.
--- @param z4 number Landing zone end corner coordinate z.
--- @param radius2 number Probably a "feather" radius for landing zone, you need to land within the min/max coordinates, or within this radius of those two coordinates.
--- @param camX number Stunt (cinematic) camera x position.
--- @param camY number Stunt (cinematic) camera y position.
--- @param camZ number Stunt (cinematic) camera z position.
--- @param unk1 number always 150
--- @param unk2 number always 0
--- @param unk3 number always 0
--- @return number
function AddStuntJumpAngled(x1, y1, z1, x2, y2, z2, radius1, x3, y3, z3, x4, y4, z4, radius2, camX, camY, camZ, unk1, unk2, unk3) end

--- This native is adding a zone, where you can change density settings. For example, you can add a zone on 0.0, 0.0, 0.0 with radius 900.0 and vehicleMultiplier 0.0, and you will not see any new population vehicle spawned in a radius of 900.0 from 0.0, 0.0, 0.0. Returns the id. You can have only 15 zones at the same time. You can remove zone using REMOVE_POP_MULTIPLIER_SPHERE
--- @name ADD_POP_MULTIPLIER_SPHERE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param pedMultiplier number 
--- @param vehicleMultiplier number 
--- @param p6 boolean 
--- @param p7 boolean 
--- @return number
function AddPopMultiplierSphere(x, y, z, radius, pedMultiplier, vehicleMultiplier, p6, p7) end

--- @name ADD_REPLAY_STAT_VALUE
--- @param value  
--- @return void (Type not found)
function AddReplayStatValue(value) end

--- See description of [`ADD_STUNT_JUMP_ANGLED`](#\_0xBBE5D803A5360CBF) for detailed info. The only difference really is this one does not have the radius (or angle, not sure) floats parameters for entry and landing zones.
--- @name ADD_STUNT_JUMP
--- @param x1 number Jump entry left far bottom corner coordinate X.
--- @param y1 number Jump entry left far bottom corner coordinate Y.
--- @param z1 number Jump entry left far bottom corner coordinate Z.
--- @param x2 number Jump entry right near top corner coordinate X.
--- @param y2 number Jump entry right near top corner coordinate Y.
--- @param z2 number Jump entry right near top corner coordinate Z.
--- @param x3 number Landing zone end coordinate X.
--- @param y3 number Landing zone end coordinate Y.
--- @param z3 number Landing zone end coordinate Z.
--- @param x4 number Landing zone start coordinate X.
--- @param y4 number Landing zone start coordinate Y.
--- @param z4 number Landing zone start coordinate Z.
--- @param camX number Stuntcam (cinematic) coordinate x.
--- @param camY number Stuntcam (cinematic) coordinate y.
--- @param camZ number Stuntcam (cinematic) coordinate z.
--- @param unk1 number Unknown, always 150.
--- @param unk2 number Unknown, always 0.
--- @param unk3 number Unknown, always 0.
--- @return number
function AddStuntJump(x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4, z4, camX, camY, camZ, unk1, unk2, unk3) end

--- Adds a point related to CTacticalAnalysis
--- @name _ADD_TACTICAL_ANALYSIS_POINT
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function AddTacticalAnalysisPoint(x, y, z) end

--- @name ASIN
--- @param p0 number 
--- @return number
function Asin(p0) end

--- @name ALLOW_MISSION_CREATOR_WARP
--- @param toggle boolean 
--- @return void (Type not found)
function AllowMissionCreatorWarp(toggle) end

--- @name ARE_PROFILE_SETTINGS_VALID
--- @return boolean
function AreProfileSettingsValid() end

--- @name ARE_STRINGS_EQUAL
--- @param string1 string 
--- @param string2 string 
--- @return boolean
function AreStringsEqual(string1, string2) end

--- @name BEGIN_REPLAY_STATS
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function BeginReplayStats(p0, p1) end

--- @name BLOCK_DISPATCH_SERVICE_RESOURCE_CREATION
--- @param dispatchService number 
--- @param toggle boolean 
--- @return void (Type not found)
function BlockDispatchServiceResourceCreation(dispatchService, toggle) end

--- @name CANCEL_STUNT_JUMP
--- @return void (Type not found)
function CancelStuntJump() end

--- @name ATAN2
--- @param p0 number 
--- @param p1 number 
--- @return number
function Atan2(p0, p1) end

--- DO NOT use this as it doesn't clean up the text input box properly and your script will get stuck in the UPDATE_ONSCREEN_KEYBOARD() loop.
--- Use _FORCE_CLOSE_TEXT_INPUT_BOX instead.
--- CANCEL_*
--- @name _CANCEL_ONSCREEN_KEYBOARD
--- @return void (Type not found)
function CancelOnscreenKeyboard() end

--- @name _CLEANUP_ASYNC_INSTALL
--- @return void (Type not found)
function CleanupAsyncInstall() end

--- NativeDB Added Parameter 13: Any p12
--- @name CLEAR_ANGLED_AREA_OF_VEHICLES
--- @param x1 number X dimension of the angled area 'origin'
--- @param y1 number Y dimension of the angled area 'origin'
--- @param z1 number Z dimension of the angled area 'origin'
--- @param x2 number X dimension of the angled area 'extent'
--- @param y2 number Y dimension of the angled area 'extent'
--- @param z2 number Z dimension of the angled area 'extent'
--- @param width number Width of the angled area
--- @param p7 boolean 
--- @param p8 boolean 
--- @param p9 boolean 
--- @param p10 boolean 
--- @param p11 boolean 
--- @return void (Type not found)
function ClearAngledAreaOfVehicles(x1, y1, z1, x2, y2, z2, width, p7, p8, p9, p10, p11) end

--- Example: CLEAR_AREA(0, 0, 0, 30, true, false, false, false);  
--- @name CLEAR_AREA
--- @param X number 
--- @param Y number 
--- @param Z number 
--- @param radius number 
--- @param p4 boolean 
--- @param ignoreCopCars boolean 
--- @param ignoreObjects boolean 
--- @param p7 boolean 
--- @return void (Type not found)
function ClearArea(X, Y, Z, radius, p4, ignoreCopCars, ignoreObjects, p7) end

--- MISC::_0x957838AAF91BD12D(x, y, z, radius, false, false, false, false); seem to make all objects go away, peds, vehicles etc. All booleans set to true doesn't seem to change anything.
--- @name CLEAR_AREA_LEAVE_VEHICLE_HEALTH
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @param p6 boolean 
--- @param p7 boolean 
--- @return void (Type not found)
function ClearAreaLeaveVehicleHealth(x, y, z, radius, p4, p5, p6, p7) end

--- Clears an area of cops at the given coordinates and radius.
--- @name CLEAR_AREA_OF_COPS
--- @param x number The x coordinate of where to clear cops.
--- @param y number The y coordinate of where to clear cops.
--- @param z number The z coordinate of where to clear cops.
--- @param radius number The area radius to clear cops.
--- @param createNetEvent boolean specifies whether a `CClearAreaEvent` event of should be created for online use.
--- @return void (Type not found)
function ClearAreaOfCops(x, y, z, radius, createNetEvent) end

--- I looked through the PC scripts that this site provides you with a link to find. It shows the last param mainly uses, (0, 2, 6, 16, and 17) so I am going to assume it is a type of flag.  
--- @name CLEAR_AREA_OF_OBJECTS
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param flags number 
--- @return void (Type not found)
function ClearAreaOfObjects(x, y, z, radius, flags) end

--- Clears an area of peds at the given coordinates and radius.
--- @name CLEAR_AREA_OF_PEDS
--- @param x number The x coordinate of where to clear peds.
--- @param y number The y coordinate of where to clear peds.
--- @param z number The z coordinate of where to clear peds.
--- @param radius number The area radius to clear peds.
--- @param createNetEvent boolean specifies whether a `CClearAreaEvent` event of should be created for online use.
--- @return void (Type not found)
function ClearAreaOfPeds(x, y, z, radius, createNetEvent) end

--- Clears an area of projectiles at the given coordinates and radius.
--- @name CLEAR_AREA_OF_PROJECTILES
--- @param x number The x coordinate of where to clear projectiles.
--- @param y number The y coordinate of where to clear projectiles.
--- @param z number The z coordinate of where to clear projectiles.
--- @param radius number The area radius to clear projectiles.
--- @param createNetEvent boolean specifies whether a `CClearAreaEvent` event of should be created for online use.
--- @return void (Type not found)
function ClearAreaOfProjectiles(x, y, z, radius, createNetEvent) end

--- Example: 		CLEAR_AREA_OF_VEHICLES(0, 0, 0, 10000, false, false, false, false, false);  
--- NativeDB Added Parameter 10: BOOL p9
--- @name CLEAR_AREA_OF_VEHICLES
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @param p6 boolean 
--- @param p7 boolean 
--- @param p8 boolean 
--- @return void (Type not found)
function ClearAreaOfVehicles(x, y, z, radius, p4, p5, p6, p7, p8) end

--- @name ATAN
--- @param p0 number 
--- @return number
function Atan(p0) end

--- @name _CLEAR_CLOUD_HAT
--- @return void (Type not found)
function ClearCloudHat() end

--- This sets bit [offset] of [address] to off.
--- Example:
--- MISC::CLEAR_BIT(&bitAddress, 1);
--- To check if this bit has been enabled:
--- MISC::IS_BIT_SET(bitAddress, 1); // will return 0 afterwards
--- @name CLEAR_BIT
--- @param address number 
--- @param offset number 
--- @return void (Type not found)
function ClearBit(address, offset) end

--- @name CLEAR_OVERRIDE_WEATHER
--- @return void (Type not found)
function ClearOverrideWeather() end

--- @name _CLEAR_TACTICAL_ANALYSIS_POINTS
--- @return void (Type not found)
function ClearTacticalAnalysisPoints() end

--- @name _CLEAR_RESTART_CUSTOM_POSITION
--- @return void (Type not found)
function ClearRestartCustomPosition() end

--- p0 could be type (valueused in scripts: 14, 7, 5, 3, 11)  
--- p1 is a return from get_player_ped() in am_gang_call.c, but player_ped_id() in other (non am) scripts.  
--- p3 is usually 0f or 3f  
--- =====================================================  
--- enum IncidentTypes  
--- {  
---     FireDepartment = 3,  
---     Paramedics = 5,  
---     Police = 7,  
---     PedsInCavalcades = 11,   
---     Merryweather = 14  
--- };  
--- As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   
--- Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  
--- Side Note 2: I say it breaks as if you call this proper,  
--- if(CREATE_INCIDENT) etc it will return false if you do as I said above.  
--- =====================================================  
--- NativeDB Added Parameter 6: Any p5
--- NativeDB Added Parameter 7: Any p6
--- @name CREATE_INCIDENT_WITH_ENTITY
--- @param dispatchService number 
--- @param ped Ped 
--- @param numUnits number 
--- @param radius number 
--- @param outIncidentID number 
--- @return boolean
function CreateIncidentWithEntity(dispatchService, ped, numUnits, radius, outIncidentID) end

--- @name DELETE_STUNT_JUMP
--- @param p0 number 
--- @return void (Type not found)
function DeleteStuntJump(p0) end

--- @name CLEAR_REPLAY_STATS
--- @return void (Type not found)
function ClearReplayStats() end

--- @name CLEAR_WEATHER_TYPE_PERSIST
--- @return void (Type not found)
function ClearWeatherTypePersist() end

--- Compares two strings up to a specified number of characters.
--- Parameters:
--- str1 - String to be compared.
--- str2 - String to be compared.
--- matchCase - Comparison will be case-sensitive.
--- maxLength - Maximum number of characters to compare. A value of -1 indicates an infinite length.
--- Returns:
--- A value indicating the relationship between the strings:
--- <0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'A' < 'B', so result = -1)
--- 0 - The contents of both strings are equal.
--- >0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'B' > 'A', so result = 1)
--- Examples:
--- MISC::COMPARE_STRINGS("STRING", "string", false, -1); // 0; equal
--- MISC::COMPARE_STRINGS("TESTING", "test", false, 4); // 0; equal
--- MISC::COMPARE_STRINGS("R2D2", "R2xx", false, 2); // 0; equal
--- MISC::COMPARE_STRINGS("foo", "bar", false, -1); // 4; 'f' > 'b'
--- MISC::COMPARE_STRINGS("A", "A", true, 1); // 0; equal
--- When comparing case-sensitive strings, lower-case characters are greater than upper-case characters:
--- MISC::COMPARE_STRINGS("A", "a", true, 1); // -1; 'A' < 'a'
--- MISC::COMPARE_STRINGS("a", "A", true, 1); // 1; 'a' > 'A'
--- @name COMPARE_STRINGS
--- @param str1 string 
--- @param str2 string 
--- @param matchCase boolean 
--- @param maxLength number 
--- @return number
function CompareStrings(str1, str2, matchCase, maxLength) end

--- Disables the spawn point at the police house on the specified index.
--- policeIndex: The police house index.
--- toggle: true to enable the spawn point, false to disable.
--- - Nacorpio
--- @name DISABLE_POLICE_RESTART
--- @param policeIndex number 
--- @param toggle boolean 
--- @return void (Type not found)
function DisablePoliceRestart(policeIndex, toggle) end

--- enum IncidentTypes  
--- {  
---     FireDepartment = 3,  
---     Paramedics = 5,  
---     Police = 7,  
---     PedsInCavalcades = 11,   
---     Merryweather = 14  
--- };  
--- As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   
--- Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  
--- Side Note 2: I say it breaks as if you call this proper,  
--- if(CREATE_INCIDENT) etc it will return false if you do as I said above.  
--- =====================================================  
--- NativeDB Added Parameter 8: Any p7
--- NativeDB Added Parameter 9: Any p8
--- @name CREATE_INCIDENT
--- @param dispatchService number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param numUnits number 
--- @param radius number 
--- @param outIncidentID number 
--- @return boolean
function CreateIncident(dispatchService, x, y, z, numUnits, radius, outIncidentID) end

--- The game by default has 5 hospital respawn points. Disabling them all will cause the player to respawn at the last position they were.
--- @name DISABLE_HOSPITAL_RESTART
--- @param hospitalIndex number 
--- @param toggle boolean 
--- @return void (Type not found)
function DisableHospitalRestart(hospitalIndex, toggle) end

--- @name _COPY_MEMORY
--- @param dst  
--- @param src  
--- @param size number 
--- @return void (Type not found)
function CopyMemory(dst, src, size) end

--- @name DISABLE_STUNT_JUMP_SET
--- @param p0 number 
--- @return void (Type not found)
function DisableStuntJumpSet(p0) end

--- Delete an incident with a given id.  
--- =======================================================  
--- Correction, I have change this to int, instead of int*  
--- as it doesn't use a pointer to the createdIncident.  
--- If you try it you will crash (or) freeze.  
--- =======================================================  
--- @name DELETE_INCIDENT
--- @param incidentId number 
--- @return void (Type not found)
function DeleteIncident(incidentId) end

--- @name DISPLAY_ONSCREEN_KEYBOARD_WITH_LONGER_INITIAL_STRING
--- @param p0 number 
--- @param windowTitle string 
--- @param p2  
--- @param defaultText string 
--- @param defaultConcat1 string 
--- @param defaultConcat2 string 
--- @param defaultConcat3 string 
--- @param defaultConcat4 string 
--- @param defaultConcat5 string 
--- @param defaultConcat6 string 
--- @param defaultConcat7 string 
--- @param maxInputLength number 
--- @return void (Type not found)
function DisplayOnscreenKeyboardWithLongerInitialString(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, defaultConcat4, defaultConcat5, defaultConcat6, defaultConcat7, maxInputLength) end

--- windowTitle's  
--- -----------------  
--- CELL_EMAIL_BOD	=	"Enter your Eyefind message"  
--- CELL_EMAIL_BODE	=	"Message too long. Try again"  
--- CELL_EMAIL_BODF	=	"Forbidden message. Try again"  
--- CELL_EMAIL_SOD	=	"Enter your Eyefind subject"  
--- CELL_EMAIL_SODE	=	"Subject too long. Try again"  
--- CELL_EMAIL_SODF	=	"Forbidden text. Try again"  
--- CELL_EMASH_BOD	=	"Enter your Eyefind message"  
--- CELL_EMASH_BODE	=	"Message too long. Try again"  
--- CELL_EMASH_BODF	=	"Forbidden message. Try again"  
--- CELL_EMASH_SOD	=	"Enter your Eyefind subject"  
--- CELL_EMASH_SODE	=	"Subject too long. Try again"  
--- CELL_EMASH_SODF	=	"Forbidden Text. Try again"  
--- FMMC_KEY_TIP10	=	"Enter Synopsis"  
--- FMMC_KEY_TIP12	=	"Enter Custom Team Name"  
--- FMMC_KEY_TIP12F	=	"Forbidden Text. Try again"  
--- FMMC_KEY_TIP12N	=	"Custom Team Name"  
--- FMMC_KEY_TIP8	=	"Enter Message"  
--- FMMC_KEY_TIP8F	=	"Forbidden Text. Try again"  
--- FMMC_KEY_TIP8FS	=	"Invalid Message. Try again"  
--- FMMC_KEY_TIP8S	=	"Enter Message"  
--- FMMC_KEY_TIP9	=	"Enter Outfit Name"  
--- FMMC_KEY_TIP9F	=	"Invalid Outfit Name. Try again"  
--- FMMC_KEY_TIP9N	=	"Outfit Name"  
--- PM_NAME_CHALL	=	"Enter Challenge Name"  
--- @name DISPLAY_ONSCREEN_KEYBOARD
--- @param p0 number 
--- @param windowTitle string 
--- @param p2 string 
--- @param defaultText string 
--- @param defaultConcat1 string 
--- @param defaultConcat2 string 
--- @param defaultConcat3 string 
--- @param maxInputLength number 
--- @return void (Type not found)
function DisplayOnscreenKeyboard(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength) end

--- @name DOES_POP_MULTIPLIER_AREA_EXIST
--- @param id number 
--- @return boolean
function DoesPopMultiplierAreaExist(id) end

--- @name DOES_POP_MULTIPLIER_SPHERE_EXIST
--- @param id number 
--- @return boolean
function DoesPopMultiplierSphereExist(id) end

--- Enables or disables the specified 'dispatch service' type. 'Dispatch services' are used for spawning AI response peds/vehicles for events such as a fire in the street (type 3 - DT_FireDepartment), or gunfire in a gang area (type 11 - DT_Gangs).
--- List of dispatch services:
--- ```cpp
--- enum DispatchType
--- {
--- 	DT_Invalid = 0,
--- 	DT_PoliceAutomobile,
--- 	DT_PoliceHelicopter,
--- 	DT_FireDepartment,
--- 	DT_SwatAutomobile,
--- 	DT_AmbulanceDepartment,
--- 	DT_PoliceRiders,
--- 	DT_PoliceVehicleRequest,
--- 	DT_PoliceRoadBlock,
--- 	DT_PoliceAutomobileWaitPulledOver,
--- 	DT_PoliceAutomobileWaitCruising,
--- 	DT_Gangs,
--- 	DT_SwatHelicopter,
--- 	DT_PoliceBoat,
--- 	DT_ArmyVehicle,
--- 	DT_BikerBackup = 15
--- };
--- Note that 'dispatch service' has nothing to do with the police scanner (audio), to toggle that, use [SET_AUDIO_FLAG](#\_0xB9EFD5C25018725A) with `'PoliceScannerDisabled'`.
--- @name ENABLE_DISPATCH_SERVICE
--- @param dispatchService number The ID of the dispatch service to toggle.
--- @param toggle boolean True to enable the dispatch service, false to disable the dispatch service.
--- @return void (Type not found)
function EnableDispatchService(dispatchService, toggle) end

--- Makes the ped jump around like they're in a tennis match  
--- @name ENABLE_TENNIS_MODE
--- @param ped Ped 
--- @param toggle boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function EnableTennisMode(ped, toggle, p2) end

--- @name ENABLE_STUNT_JUMP_SET
--- @param p0 number 
--- @return void (Type not found)
function EnableStuntJumpSet(p0) end

--- @name DO_AUTO_SAVE
--- @return void (Type not found)
function DoAutoSave() end

--- @name END_REPLAY_STATS
--- @return void (Type not found)
function EndReplayStats() end

--- Sets the localplayer playerinfo state back to playing (State 0)  
--- States are:  
--- -1: "Invalid"  
--- 0: "Playing"  
--- 1: "Died"  
--- 2: "Arrested"  
--- 3: "Failed Mission"  
--- 4: "Left Game"  
--- 5: "Respawn"  
--- 6: "In MP Cutscene"  
--- @name FORCE_GAME_STATE_PLAYING
--- @return void (Type not found)
function ForceGameStatePlaying() end

--- Finds a position ahead of the player by predicting the players next actions.  
--- The positions match path finding node positions.  
--- When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.  
--- @name FIND_SPAWN_POINT_IN_DIRECTION
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param dirX number 
--- @param dirY number 
--- @param dirZ number 
--- @param distance number 
--- @param spawnPoint Vector3 
--- @return boolean
function FindSpawnPointInDirection(posX, posY, posZ, dirX, dirY, dirZ, distance, spawnPoint) end

--- Exits the game and downloads a fresh social club update on next restart.  
--- @name _FORCE_SOCIAL_CLUB_UPDATE
--- @return void (Type not found)
function ForceSocialClubUpdate() end

--- @name GET_ALLOCATED_STACK_SIZE
--- @return number
function GetAllocatedStackSize() end

--- @name GET_ANGLE_BETWEEN_2D_VECTORS
--- @param x1 number 
--- @param y1 number 
--- @param x2 number 
--- @param y2 number 
--- @return number
function GetAngleBetween2dVectors(x1, y1, x2, y2) end

--- Returns value of the '-benchmarkPass' command line option.
--- @name _GET_BENCHMARK_PASS_FROM_COMMAND_LINE
--- @return number
function GetBenchmarkPassFromCommandLine() end

--- @name _GET_BASE_ELEMENT_METADATA
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4 boolean 
--- @return boolean
function GetBaseElementMetadata(p1, p2, p3, p4) end

--- Returns value of the '-benchmarkIterations' command line option.
--- @name _GET_BENCHMARK_ITERATIONS_FROM_COMMAND_LINE
--- @return number
function GetBenchmarkIterationsFromCommandLine() end

--- @name GET_BITS_IN_RANGE
--- @param var number 
--- @param rangeStart number 
--- @param rangeEnd number 
--- @return number
function GetBitsInRange(var, rangeStart, rangeEnd) end

--- creates single lightning+thunder at random position  
--- @name FORCE_LIGHTNING_FLASH
--- @return void (Type not found)
function ForceLightningFlash() end

--- @name _GET_BENCHMARK_TIME
--- @return number
function GetBenchmarkTime() end

--- @name GET_COORDS_OF_PROJECTILE_TYPE_IN_AREA
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param projectileHash Hash 
--- @param projectilePos Vector3 
--- @param ownedByPlayer boolean 
--- @return boolean
function GetCoordsOfProjectileTypeInArea(x1, y1, z1, x2, y2, z2, projectileHash, projectilePos, ownedByPlayer) end

--- @name _GET_CLOUD_HAT_OPACITY
--- @return number
function GetCloudHatOpacity() end

--- Returns the distance between two three-dimensional points, optionally ignoring the Z values.
--- If useZ is false, only the 2D plane (X-Y) will be considered for calculating the distance.
--- Consider using this faster native instead: SYSTEM::VDIST - DVIST always takes in consideration the 3D coordinates.
--- @name GET_DISTANCE_BETWEEN_COORDS
--- @param x1 number The X coordinate of the first point.
--- @param y1 number The Y coordinate of the first point.
--- @param z1 number The Z coordinate of the first point.
--- @param x2 number The X coordinate of the second point.
--- @param y2 number The Y coordinate of the second point.
--- @param z2 number The Z coordinate of the second point.
--- @param useZ boolean Whether or not to use the Z coordinate.
--- @return number
function GetDistanceBetweenCoords(x1, y1, z1, x2, y2, z2, useZ) end

--- Gets the number of the current frame being displayed.
--- @name GET_FRAME_COUNT
--- @return number
function GetFrameCount() end

--- @name GET_COORDS_OF_PROJECTILE_TYPE_WITHIN_DISTANCE
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param distance number 
--- @param outCoords Vector3 
--- @param ownedByPlayer boolean 
--- @return boolean
function GetCoordsOfProjectileTypeWithinDistance(ped, weaponHash, distance, outCoords, ownedByPlayer) end

--- Bear in mind this native can only calculate the elevation when the coordinates are within the client's render distance.
--- NativeDB Added Parameter 6: BOOL p5
--- @name GET_GROUND_Z_FOR_3D_COORD
--- @param x number Position on the X-axis to get ground elevation at.
--- @param y number Position on the Y-axis to get ground elevation at.
--- @param z number Position on the Z-axis to get ground elevation at.
--- @param groundZ number The ground elevation at the specified position.
--- @param ignoreWater boolean 
--- @return boolean
function GetGroundZFor3dCoord(x, y, z, groundZ, ignoreWater) end

--- NativeDB Added Parameter 6: BOOL p5
--- @name _GET_GROUND_Z_FOR_3D_COORD_2
--- @param x number 
--- @param y number 
--- @param z number 
--- @param groundZ number 
--- @param p4 boolean 
--- @return boolean
function GetGroundZFor3dCoord2(x, y, z, groundZ, p4) end

--- Gets the high precision frame time of the last frame in seconds.
--- *note: the example above is way less precise.*
--- @name GET_FRAME_TIME
--- @return number
function GetFrameTime() end

--- dx = x1 - x2
--- dy = y1 - y2
--- @name GET_HEADING_FROM_VECTOR_2D
--- @param dx number 
--- @param dy number 
--- @return number
function GetHeadingFromVector2d(dx, dy) end

--- @name GET_GAME_TIMER
--- @return number
function GetGameTimer() end

--- Returns pointer to an empty string.
--- GET_C*
--- @name _GET_GLOBAL_CHAR_BUFFER
--- @return string
function GetGlobalCharBuffer() end

--- Returns true if profile setting 208 is equal to 0.
--- @name GET_IS_AUTO_SAVE_OFF
--- @return boolean
function GetIsAutoSaveOff() end

--- @name GET_GROUND_Z_AND_NORMAL_FOR_3D_COORD
--- @param x number 
--- @param y number 
--- @param z number 
--- @param groundZ number 
--- @param normal Vector3 
--- @return boolean
function GetGroundZAndNormalFor3dCoord(x, y, z, groundZ, normal) end

--- @name GET_MISSION_FLAG
--- @return boolean
function GetMissionFlag() end

--- @name GET_FAKE_WANTED_LEVEL
--- @return number
function GetFakeWantedLevel() end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- @name GET_NEXT_WEATHER_TYPE_HASH_NAME
--- @return Hash
function GetNextWeatherTypeHashName() end

--- @name _GET_NUM_DISPATCHED_UNITS_FOR_PLAYER
--- @param dispatchService number 
--- @return number
function GetNumDispatchedUnitsForPlayer(dispatchService) end

--- This native converts its past string to hash. It is hashed using jenkins one at a time method.
--- @name GET_HASH_KEY
--- @param string string The string to hash.
--- @return Hash
function GetHashKey(string) end

--- @name GET_INDEX_OF_CURRENT_LEVEL
--- @return number
function GetIndexOfCurrentLevel() end

--- Although we don't have a jenkins hash for this one, the name is 100% confirmed.
--- @name _GET_IS_PLAYER_IN_ANIMAL_FORM
--- @return boolean
function GetIsPlayerInAnimalForm() end

--- Gets the dimensions of a model.
--- Calculate (maximum - minimum) to get the size, in which case, Y will be how long the model is.
--- Example from the scripts: MISC::GET_MODEL_DIMENSIONS(ENTITY::GET_ENTITY_MODEL(PLAYER::PLAYER_PED_ID()), &v_1A, &v_17);
--- @name GET_MODEL_DIMENSIONS
--- @param modelHash Hash 
--- @param minimum Vector3 
--- @param maximum Vector3 
--- @return void (Type not found)
function GetModelDimensions(modelHash, minimum, maximum) end

--- Returns duration of how long the game has been in power-saving mode (aka "constrained") in milliseconds.
--- @name _GET_POWER_SAVING_MODE_DURATION
--- @return number
function GetPowerSavingModeDuration() end

--- @name GET_NUMBER_OF_FREE_STACKS_OF_THIS_SIZE
--- @param stackSize number 
--- @return number
function GetNumberOfFreeStacksOfThisSize(stackSize) end

--- @name _GET_PROJECTILE_NEAR_PED
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param distance number 
--- @param outCoords Vector3 
--- @param outProjectile Object 
--- @param ownedByPlayer boolean 
--- @return boolean
function GetProjectileNearPed(ped, weaponHash, distance, outCoords, outProjectile, ownedByPlayer) end

--- @name GET_PROFILE_SETTING
--- @param profileSetting number 
--- @return number
function GetProfileSetting(profileSetting) end

--- Returns NULL unless UPDATE_ONSCREEN_KEYBOARD() returns 1 in the same tick.  
--- @name GET_ONSCREEN_KEYBOARD_RESULT
--- @return string
function GetOnscreenKeyboardResult() end

--- @name GET_NUM_SUCCESSFUL_STUNT_JUMPS
--- @return number
function GetNumSuccessfulStuntJumps() end

--- @name GET_RANDOM_FLOAT_IN_RANGE
--- @param startRange number 
--- @param endRange number 
--- @return number
function GetRandomFloatInRange(startRange, endRange) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- @name GET_PREV_WEATHER_TYPE_HASH_NAME
--- @return Hash
function GetPrevWeatherTypeHashName() end

--- @name GET_RAIN_LEVEL
--- @return number
function GetRainLevel() end

--- @name GET_RANDOM_EVENT_FLAG
--- @return boolean
function GetRandomEventFlag() end

--- @name GET_RANDOM_INT_IN_RANGE
--- @param startRange number 
--- @param endRange number 
--- @return number
function GetRandomIntInRange(startRange, endRange) end

--- @name GET_REPLAY_STAT_COUNT
--- @return number
function GetReplayStatCount() end

--- NativeDB Introduced: v1734
--- @name _GET_RANDOM_INT_IN_RANGE_2
--- @param startRange number 
--- @param endRange number 
--- @return number
function GetRandomIntInRange2(startRange, endRange) end

--- @name GET_SIZE_OF_SAVE_DATA
--- @param p0 boolean 
--- @return number
function GetSizeOfSaveData(p0) end

--- @name GET_REPLAY_STAT_AT_INDEX
--- @param index number 
--- @return number
function GetReplayStatAtIndex(index) end

--- @name GET_REPLAY_STAT_MISSION_TYPE
--- @return number
function GetReplayStatMissionType() end

--- @name GET_SNOW_LEVEL
--- @return number
function GetSnowLevel() end

--- @name GET_STATUS_OF_MISSION_REPEAT_SAVE
--- @return number
function GetStatusOfMissionRepeatSave() end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- @name _GET_WEATHER_TYPE_TRANSITION
--- @param weatherType1 Hash 
--- @param weatherType2 Hash 
--- @param percentWeather2 number 
--- @return void (Type not found)
function GetWeatherTypeTransition(weatherType1, weatherType2, percentWeather2) end

--- @name GET_TENNIS_SWING_ANIM_COMPLETE
--- @param ped Ped 
--- @return boolean
function GetTennisSwingAnimComplete(ped) end

--- @name GET_WIND_SPEED
--- @return number
function GetWindSpeed() end

--- @name GET_TOTAL_SUCCESSFUL_STUNT_JUMPS
--- @return number
function GetTotalSuccessfulStuntJumps() end

--- @name GET_WIND_DIRECTION
--- @return Vector3
function GetWindDirection() end

--- p3 - possibly radius?  
--- @name HAS_BULLET_IMPACTED_IN_AREA
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p3 number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return boolean
function HasBulletImpactedInArea(x, y, z, p3, p4, p5) end

--- Hardcoded to always return true.
--- @name _HAS_ASYNC_INSTALL_FINISHED
--- @return boolean
function HasAsyncInstallFinished() end

--- @name HAS_BULLET_IMPACTED_IN_BOX
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 boolean 
--- @param p7 boolean 
--- @return boolean
function HasBulletImpactedInBox(p0, p1, p2, p3, p4, p5, p6, p7) end

--- Get inputted "Cheat code", for example:
--- while (TRUE)
--- {
---     if (MISC::_557E43C447E700A8(${fugitive}))
---     {
---        // Do something.
---     }
---     SYSTEM::WAIT(0);
--- }
--- Calling this will also set the last saved string hash to zero.
--- @name _HAS_CHEAT_STRING_JUST_BEEN_ENTERED
--- @param hash Hash 
--- @return boolean
function HasCheatStringJustBeenEntered(hash) end

--- @name IGNORE_NEXT_RESTART
--- @param toggle boolean 
--- @return void (Type not found)
function IgnoreNextRestart(toggle) end

--- This native appears on the cheat_controller script and tracks a combination of buttons, which may be used to toggle cheats in-game. Credits to ThreeSocks for the info. The hash contains the combination, while the "amount" represents the amount of buttons used in a combination. The following page can be used to make a button combination: gta5offset.com/ts/hash/
--- INT_SCORES_SCORTED was a hash collision
--- @name _HAS_BUTTON_COMBINATION_JUST_BEEN_ENTERED
--- @param hash Hash 
--- @param amount number 
--- @return boolean
function HasButtonCombinationJustBeenEntered(hash, amount) end

--- if (MISC::IS_AUSSIE_VERSION()) {
---     sub_127a9(&l_31, 1024); // l_31 |= 1024
---     l_129 = 3;
---     sub_129d2("AUSSIE VERSION IS TRUE!?!?!"); // DEBUG
--- }
--- Used to block some of the prostitute stuff due to laws in Australia.
--- @name IS_AUSSIE_VERSION
--- @return boolean
function IsAussieVersion() end

--- @name IS_AREA_OCCUPIED
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 boolean 
--- @param p7 boolean 
--- @param p8 boolean 
--- @param p9 boolean 
--- @param p10 boolean 
--- @param p11  
--- @param p12 boolean 
--- @return boolean
function IsAreaOccupied(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) end

--- Hardcoded to return false.
--- @name _HAS_RESUMED_FROM_SUSPEND
--- @return boolean
function HasResumedFromSuspend() end

--- @name HAVE_CREDITS_REACHED_END
--- @return boolean
function HaveCreditsReachedEnd() end

--- Returns bit's boolean state from [offset] of [address].
--- Example:
--- MISC::IS_BIT_SET(bitAddress, 1);
--- To enable and disable bits, see:
--- MISC::SET_BIT(&bitAddress, 1);   // enable
--- MISC::CLEAR_BIT(&bitAddress, 1); // disable
--- @name IS_BIT_SET
--- @param address number 
--- @param offset number 
--- @return boolean
function IsBitSet(address, offset) end

--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- For projectiles, see: [`IS_PROJECTILE_TYPE_IN_ANGLED_AREA`](#\_0xF0BC12401061DEA0)
--- @name IS_BULLET_IN_ANGLED_AREA
--- @param x1 number X dimension of the angled area 'origin'
--- @param y1 number Y dimension of the angled area 'origin'
--- @param z1 number Z dimension of the angled area 'origin'
--- @param x2 number X dimension of the angled area 'extent'
--- @param y2 number Y dimension of the angled area 'extent'
--- @param z2 number Z dimension of the angled area 'extent'
--- @param width number Width of the angled area
--- @param ownedByPlayer boolean 
--- @return boolean
function IsBulletInAngledArea(x1, y1, z1, x2, y2, z2, width, ownedByPlayer) end

--- @name IS_AUTO_SAVE_IN_PROGRESS
--- @return boolean
function IsAutoSaveInProgress() end

--- @name IS_BULLET_IN_AREA
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param ownedByPlayer boolean 
--- @return boolean
function IsBulletInArea(x, y, z, radius, ownedByPlayer) end

--- @name IS_BULLET_IN_BOX
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param ownedByPlayer boolean 
--- @return boolean
function IsBulletInBox(x1, y1, z1, x2, y2, z2, ownedByPlayer) end

--- This function is hard-coded to always return 0.  
--- @name IS_FRONTEND_FADING
--- @return boolean
function IsFrontendFading() end

--- Returns true if command line option '-benchmark' is set.
--- @name _IS_COMMAND_LINE_BENCHMARK_VALUE_SET
--- @return boolean
function IsCommandLineBenchmarkValueSet() end

--- =======================================================  
--- Correction, I have change this to int, instead of int*  
--- as it doesn't use a pointer to the createdIncident.  
--- If you try it you will crash (or) freeze.  
--- =======================================================  
--- @name IS_INCIDENT_VALID
--- @param incidentId number 
--- @return boolean
function IsIncidentValid(incidentId) end

--- @name IS_MINIGAME_IN_PROGRESS
--- @return boolean
function IsMinigameInProgress() end

--- @name IS_DURANGO_VERSION
--- @return boolean
function IsDurangoVersion() end

--- aka "constrained"
--- @name _IS_IN_POWER_SAVING_MODE
--- @return boolean
function IsInPowerSavingMode() end

--- @name IS_POINT_OBSCURED_BY_A_MISSION_ENTITY
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6  
--- @return boolean
function IsPointObscuredByAMissionEntity(p0, p1, p2, p3, p4, p5, p6) end

--- @name IS_PC_VERSION
--- @return boolean
function IsPcVersion() end

--- @name IS_MEMORY_CARD_IN_USE
--- @return boolean
function IsMemoryCardInUse() end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- @name IS_NEXT_WEATHER_TYPE
--- @param weatherType string 
--- @return boolean
function IsNextWeatherType(weatherType) end

--- NativeDB Introduced: v1290
--- @name _IS_POP_MULTIPLIER_AREA_UNK
--- @param id number 
--- @return boolean
function IsPopMultiplierAreaUnk(id) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- @name IS_PREV_WEATHER_TYPE
--- @param weatherType string 
--- @return boolean
function IsPrevWeatherType(weatherType) end

--- The BOOL parameters that are documented have not been confirmed. They are just documented from what I've found during testing. They may not work as expected in all cases.
--- @name IS_POSITION_OCCUPIED
--- @param x number X coordinate of the position to check.
--- @param y number Y coordinate of the position to check.
--- @param z number Z coordinate of the position to check.
--- @param range number The range, seems to not be very accurate during testing.
--- @param p4 boolean Unknown, when set to true it seems to always return true no matter what I try.
--- @param checkVehicles boolean Check for any vehicles in that area.
--- @param checkPeds boolean Check for any peds in that area.
--- @param p7 boolean Unknown.
--- @param p8 boolean Unknown.
--- @param ignoreEntity Entity This entity will be ignored if it's in the area. Set to 0 if you don't want to exclude any entities.
--- @param p10 boolean Unknown.
--- @return boolean
function IsPositionOccupied(x, y, z, range, p4, checkVehicles, checkPeds, p7, p8, ignoreEntity, p10) end

--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- NativeDB Removed Parameter 7: float p7
--- @name IS_PROJECTILE_TYPE_IN_ANGLED_AREA
--- @param x1 number X dimension of the angled area 'origin'
--- @param y1 number Y dimension of the angled area 'origin'
--- @param z1 number Z dimension of the angled area 'origin'
--- @param x2 number X dimension of the angled area 'extent'
--- @param y2 number Y dimension of the angled area 'extent'
--- @param z2 number Z dimension of the angled area 'extent'
--- @param width number Width of the angled area
--- @param p7 number 
--- @param weaponHash Hash 
--- @param ownedByPlayer boolean 
--- @return boolean
function IsProjectileTypeInAngledArea(x1, y1, z1, x2, y2, z2, width, p7, weaponHash, ownedByPlayer) end

--- @name IS_ORBIS_VERSION
--- @return boolean
function IsOrbisVersion() end

--- Determines whether there is a projectile within the specified coordinates. The coordinates form a rectangle.  
--- ownedByPlayer = only projectiles fired by the player will be detected.  
--- @name IS_PROJECTILE_IN_AREA
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param ownedByPlayer boolean 
--- @return boolean
function IsProjectileInArea(x1, y1, z1, x2, y2, z2, ownedByPlayer) end

--- Determines whether there is a projectile of a specific type within the specified coordinates. The coordinates form a axis-aligned bounding box.  
--- @name IS_PROJECTILE_TYPE_IN_AREA
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param type number 
--- @param ownedByPlayer boolean 
--- @return boolean
function IsProjectileTypeInArea(x1, y1, z1, x2, y2, z2, type, ownedByPlayer) end

--- @name IS_PROJECTILE_TYPE_WITHIN_DISTANCE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param projHash Hash 
--- @param radius number 
--- @param ownedByPlayer boolean 
--- @return boolean
function IsProjectileTypeWithinDistance(x, y, z, projHash, radius, ownedByPlayer) end

--- Determines whether there is a sniper bullet within the specified coordinates. The coordinates form an axis-aligned bounding box.  
--- @name IS_SNIPER_BULLET_IN_AREA
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @return boolean
function IsSniperBulletInArea(x1, y1, z1, x2, y2, z2) end

--- @name IS_STRING_NULL_OR_EMPTY
--- @param string string 
--- @return boolean
function IsStringNullOrEmpty(string) end

--- @name IS_PS3_VERSION
--- @return boolean
function IsPs3Version() end

--- This function is hard-coded to always return 0.  
--- @name IS_SNIPER_INVERTED
--- @return boolean
function IsSniperInverted() end

--- @name IS_STUNT_JUMP_MESSAGE_SHOWING
--- @return boolean
function IsStuntJumpMessageShowing() end

--- @name IS_STRING_NULL
--- @param string string 
--- @return boolean
function IsStringNull(string) end

--- @name IS_STUNT_JUMP_IN_PROGRESS
--- @return boolean
function IsStuntJumpInProgress() end

--- @name IS_TENNIS_MODE
--- @param ped Ped 
--- @return boolean
function IsTennisMode(ped) end

--- @name IS_XBOX360_VERSION
--- @return boolean
function IsXbox360Version() end

--- @name IS_THIS_A_MINIGAME_SCRIPT
--- @return boolean
function IsThisAMinigameScript() end

--- The following cloudhats are useable:
--- altostratus
--- Cirrus
--- cirrocumulus
--- Clear 01
--- Cloudy 01
--- Contrails
--- Horizon
--- horizonband1
--- horizonband2
--- horizonband3
--- horsey
--- Nimbus
--- Puffs
--- RAIN
--- Snowy 01
--- Stormy 01
--- stratoscumulus
--- Stripey
--- shower
--- Wispy
--- @name LOAD_CLOUD_HAT
--- @param name string 
--- @param transitionTime number 
--- @return void (Type not found)
function LoadCloudHat(name, transitionTime) end

--- p0 was always 2 in R* scripts.
--- Called before calling DISPLAY_ONSCREEN_KEYBOARD if the input needs to be saved.
--- @name NEXT_ONSCREEN_KEYBOARD_RESULT_WILL_DISPLAY_USING_THESE_FONTS
--- @param p0 number 
--- @return void (Type not found)
function NextOnscreenKeyboardResultWillDisplayUsingTheseFonts(p0) end

--- Returns true if the current frontend menu is FE_MENU_VERSION_LANDING_MENU
--- @name _LANDING_MENU_IS_ACTIVE
--- @return boolean
function LandingMenuIsActive() end

--- spawns a few distant/out-of-sight peds, vehicles, animals etc each time it is called  
--- @name POPULATE_NOW
--- @return void (Type not found)
function PopulateNow() end

--- @name PLAY_TENNIS_DIVE_ANIM
--- @param ped Ped 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 boolean 
--- @return void (Type not found)
function PlayTennisDiveAnim(ped, p1, p2, p3, p4, p5) end

--- @name OVERRIDE_SAVE_HOUSE
--- @param p0 boolean 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 boolean 
--- @param p6 Vector3 
--- @param p7 number 
--- @return boolean
function OverrideSaveHouse(p0, p1, p2, p3, p4, p5, p6, p7) end

--- @name PAUSE_DEATH_ARREST_RESTART
--- @param toggle boolean 
--- @return void (Type not found)
function PauseDeathArrestRestart(toggle) end

--- Found in the scripts:
--- MISC::_11B56FBBF7224868("CONTRAILS");
--- @name PRELOAD_CLOUD_HAT
--- @param name string 
--- @return void (Type not found)
function PreloadCloudHat(name) end

--- @name PLAY_TENNIS_SWING_ANIM
--- @param ped Ped 
--- @param animDict string 
--- @param animName string 
--- @param p3 number 
--- @param p4 number 
--- @param p5 boolean 
--- @return void (Type not found)
function PlayTennisSwingAnim(ped, animDict, animName, p3, p4, p5) end

--- @name NETWORK_SET_SCRIPT_IS_SAFE_FOR_NETWORK_GAME
--- @return void (Type not found)
function NetworkSetScriptIsSafeForNetworkGame() end

--- Shows the screen which is visible before you redo a mission? The game will make a restoration point where you will cameback when the mission is over.
--- @name QUEUE_MISSION_REPEAT_SAVE
--- @return boolean
function QueueMissionRepeatSave() end

--- @name REGISTER_BOOL_TO_SAVE
--- @param p0  
--- @param name string 
--- @return void (Type not found)
function RegisterBoolToSave(p0, name) end

--- @name REGISTER_ENUM_TO_SAVE
--- @param p0  
--- @param name string 
--- @return void (Type not found)
function RegisterEnumToSave(p0, name) end

--- @name REGISTER_FLOAT_TO_SAVE
--- @param p0  
--- @param name string 
--- @return void (Type not found)
function RegisterFloatToSave(p0, name) end

--- @name QUEUE_MISSION_REPEAT_LOAD
--- @return boolean
function QueueMissionRepeatLoad() end

--- @name REGISTER_INT_TO_SAVE
--- @param p0  
--- @param name string 
--- @return void (Type not found)
function RegisterIntToSave(p0, name) end

--- @name REGISTER_TEXT_LABEL_TO_SAVE
--- @param p0  
--- @param name string 
--- @return void (Type not found)
function RegisterTextLabelToSave(p0, name) end

--- @name REGISTER_SAVE_HOUSE
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4  
--- @param p5  
--- @param p6  
--- @return 
function RegisterSaveHouse(p0, p1, p2, p3, p4, p5, p6) end

--- Seems to have the same functionality as REGISTER_TEXT_LABEL_TO_SAVE?
--- MISC::_6F7794F28C6B2535(&a_0._f1, "tlPlateText");
--- MISC::_6F7794F28C6B2535(&a_0._f1C, "tlPlateText_pending");
--- MISC::_6F7794F28C6B2535(&a_0._f10B, "tlCarAppPlateText");
--- "tl" prefix sounds like "Text Label"
--- @name _REGISTER_TEXT_LABEL_TO_SAVE_2
--- @param p0  
--- @param name string 
--- @return void (Type not found)
function RegisterTextLabelToSave2(p0, name) end

--- @name REMOVE_DISPATCH_SPAWN_BLOCKING_AREA
--- @param p0  
--- @return void (Type not found)
function RemoveDispatchSpawnBlockingArea(p0) end

--- @name _REGISTER_INT64_TO_SAVE
--- @param p0  
--- @param name string 
--- @return void (Type not found)
function RegisterInt64ToSave(p0, name) end

--- @name REMOVE_POP_MULTIPLIER_SPHERE
--- @param id number 
--- @param p1 boolean 
--- @return void (Type not found)
function RemovePopMultiplierSphere(id, p1) end

--- Appears to remove stealth kill action from memory
--- @name _REMOVE_STEALTH_KILL
--- @param hash Hash 
--- @param p1 boolean 
--- @return void (Type not found)
function RemoveStealthKill(hash, p1) end

--- Begins with RESET_*. Next character in the name is either D or E.
--- @name _RESET_BENCHMARK_RECORDING
--- @return void (Type not found)
function ResetBenchmarkRecording() end

--- @name REMOVE_POP_MULTIPLIER_AREA
--- @param id number 
--- @param p1 boolean 
--- @return void (Type not found)
function RemovePopMultiplierArea(id, p1) end

--- @name RESET_DISPATCH_IDEAL_SPAWN_DISTANCE
--- @return void (Type not found)
function ResetDispatchIdealSpawnDistance() end

--- NativeDB Introduced: v1868
--- @name _RESET_DISPATCH_SPAWN_LOCATION
--- @return void (Type not found)
function ResetDispatchSpawnLocation() end

--- NativeDB Introduced: v323
--- @name RESET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS
--- @param p0  
--- @return void (Type not found)
function ResetDispatchTimeBetweenSpawnAttempts(p0) end

--- @name RESET_DISPATCH_SPAWN_BLOCKING_AREAS
--- @return void (Type not found)
function ResetDispatchSpawnBlockingAreas() end

--- Saves the benchmark recording to %USERPROFILE%\Documents\Rockstar Games\GTA V\Benchmarks and submits some metrics.
--- @name _SAVE_BENCHMARK_RECORDING
--- @return void (Type not found)
function SaveBenchmarkRecording() end

--- @name SCRIPT_RACE_INIT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function ScriptRaceInit(p0, p1, p2, p3) end

--- In singleplayer it does exactly what the name implies. In FiveM / GTA:Online it shows `Disconnecting from GTA Online` HUD and then quits the game.
--- @name _RESTART_GAME
--- @return void (Type not found)
function RestartGame() end

--- @name _SET_BEAST_MODE_ACTIVE
--- @param player Player 
--- @return void (Type not found)
function SetBeastModeActive(player) end

--- @name SCRIPT_RACE_GET_PLAYER_SPLIT_TIME
--- @param player Player 
--- @param p1 number 
--- @param p2 number 
--- @return boolean
function ScriptRaceGetPlayerSplitTime(player, p1, p2) end

--- @name SCRIPT_RACE_SHUTDOWN
--- @return void (Type not found)
function ScriptRaceShutdown() end

--- @name _SET_CLOUD_HAT_OPACITY
--- @param opacity number 
--- @return void (Type not found)
function SetCloudHatOpacity(opacity) end

--- This sets bit [offset] of [address] to on.
--- The offsets used are different bits to be toggled on and off, typically there is only one address used in a script.
--- Example:
--- MISC::SET_BIT(&bitAddress, 1);
--- To check if this bit has been enabled:
--- MISC::IS_BIT_SET(bitAddress, 1); // will return 1 afterwards
--- Please note, this method may assign a value to [address] when used.
--- @name SET_BIT
--- @param address number 
--- @param offset number 
--- @return void (Type not found)
function SetBit(address, offset) end

--- @name SET_DISPATCH_SPAWN_LOCATION
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetDispatchSpawnLocation(x, y, z) end

--- @name SET_BITS_IN_RANGE
--- @param var number 
--- @param rangeStart number 
--- @param rangeEnd number 
--- @param p3 number 
--- @return void (Type not found)
function SetBitsInRange(var, rangeStart, rangeEnd, p3) end

--- @name SET_DISPATCH_IDEAL_SPAWN_DISTANCE
--- @param p0 number 
--- @return void (Type not found)
function SetDispatchIdealSpawnDistance(p0) end

--- @name SET_CREDITS_ACTIVE
--- @param toggle boolean 
--- @return void (Type not found)
function SetCreditsActive(toggle) end

--- @name SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS
--- @param p0  
--- @param p1 number 
--- @return void (Type not found)
function SetDispatchTimeBetweenSpawnAttempts(p0, p1) end

--- @name SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS_MULTIPLIER
--- @param p0  
--- @param p1 number 
--- @return void (Type not found)
function SetDispatchTimeBetweenSpawnAttemptsMultiplier(p0, p1) end

--- Sets whether the game should fade in after the player dies or is arrested.  
--- @name SET_FADE_IN_AFTER_DEATH_ARREST
--- @param toggle boolean 
--- @return void (Type not found)
function SetFadeInAfterDeathArrest(toggle) end

--- @name SET_EXPLOSIVE_MELEE_THIS_FRAME
--- @param player Player 
--- @return void (Type not found)
function SetExplosiveMeleeThisFrame(player) end

--- @name SET_FADE_IN_AFTER_LOAD
--- @param toggle boolean 
--- @return void (Type not found)
function SetFadeInAfterLoad(toggle) end

--- Sets whether the game should fade out after the player dies.  
--- @name SET_FADE_OUT_AFTER_DEATH
--- @param toggle boolean 
--- @return void (Type not found)
function SetFadeOutAfterDeath(toggle) end

--- Sets whether the game should fade out after the player is arrested.  
--- @name SET_FADE_OUT_AFTER_ARREST
--- @param toggle boolean 
--- @return void (Type not found)
function SetFadeOutAfterArrest(toggle) end

--- Sets a visually fake wanted level on the user interface. Used by Rockstar's scripts to "override" regular wanted levels and make custom ones while the real wanted level and multipliers are still in effect.
--- Max is 6, anything above this makes it just 6. Also the mini-map gets the red & blue flashing effect.
--- @name SET_FAKE_WANTED_LEVEL
--- @param fakeWantedLevel number 
--- @return void (Type not found)
function SetFakeWantedLevel(fakeWantedLevel) end

--- @name SET_FIRE_AMMO_THIS_FRAME
--- @param player Player 
--- @return void (Type not found)
function SetFireAmmoThisFrame(player) end

--- @name SET_EXPLOSIVE_AMMO_THIS_FRAME
--- @param player Player 
--- @return void (Type not found)
function SetExplosiveAmmoThisFrame(player) end

--- Make sure to call this from the correct thread if you're using multiple threads because all other threads except the one which is calling SET_GAME_PAUSED will be paused which means you will lose control and the game remains in paused mode until you exit GTA5.exe  
--- @name SET_GAME_PAUSED
--- @param toggle boolean 
--- @return void (Type not found)
function SetGamePaused(toggle) end

--- NativeDB Introduced: v1180
--- @name _SET_FORCE_PLAYER_TO_JUMP
--- @param player Player 
--- @return void (Type not found)
function SetForcePlayerToJump(player) end

--- level can be from 0 to 3  
--- 0: 9.8   
--- 1: 2.4   
--- 2: 0.1 - very low  
--- 3: 0.0  
--- @name SET_GRAVITY_LEVEL
--- @param level number 
--- @return void (Type not found)
function SetGravityLevel(level) end

--- Sets an unknown flag used by CScene in determining which entities from CMapData scene nodes to draw, similar to SET_INSTANCE_PRIORITY_MODE.
--- @name SET_INSTANCE_PRIORITY_HINT
--- @param flag number 
--- @return void (Type not found)
function SetInstancePriorityHint(flag) end

--- Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. It causes a loading screen to show as it reloads map data.
--- @name SET_INSTANCE_PRIORITY_MODE
--- @param toggle number toggles the instance priority mode
--- @return void (Type not found)
function SetInstancePriorityMode(toggle) end

--- @name SET_INCIDENT_REQUESTED_UNITS
--- @param incidentId number 
--- @param dispatchService number 
--- @param numUnits number 
--- @return void (Type not found)
function SetIncidentRequestedUnits(incidentId, dispatchService, numUnits) end

--- @name SET_MINIGAME_IN_PROGRESS
--- @param toggle boolean 
--- @return void (Type not found)
function SetMinigameInProgress(toggle) end

--- If true, the player can't save the game.   
--- If the parameter is true, sets the mission flag to true, if the parameter is false, the function does nothing at all.  
--- ^ also, if the mission flag is already set, the function does nothing at all  
--- @name SET_MISSION_FLAG
--- @param toggle boolean 
--- @return void (Type not found)
function SetMissionFlag(toggle) end

--- SET_INCIDENT_*
--- @name _SET_INCIDENT_UNK
--- @param incidentId number 
--- @param p1 number 
--- @return void (Type not found)
function SetIncidentUnk(incidentId, p1) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- @name SET_OVERRIDE_WEATHER
--- @param weatherType string 
--- @return void (Type not found)
function SetOverrideWeather(weatherType) end

--- If toggle is true, the ped's head is shown in the pause menu
--- If toggle is false, the ped's head is not shown in the pause menu
--- @name _SET_PLAYER_IS_IN_ANIMAL_FORM
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerIsInAnimalForm(toggle) end

--- If the parameter is true, sets the random event flag to true, if the parameter is false, the function does nothing at all.  
--- Does nothing if the mission flag is set.  
--- @name SET_RANDOM_EVENT_FLAG
--- @param toggle boolean 
--- @return void (Type not found)
function SetRandomEventFlag(toggle) end

--- Controls rain, rain sounds and the creation of puddles.
--- With an `level` higher than `0.5f`, only the creation of puddles gets faster, rain and rain sound won't increase after that.
--- With an `level` of `0.0f` rain and rain sounds are disabled and there won't be any new puddles.
--- To use the rain level of the current weather, call this native with `-1f` as `level`.
--- @name _SET_RAIN_LEVEL
--- @param level number Strength of rain effects
--- @return void (Type not found)
function SetRainLevel(level) end

--- @name SET_RANDOM_WEATHER_TYPE
--- @return void (Type not found)
function SetRandomWeatherType() end

--- SET_PLAYER_*
--- @name _SET_PLAYER_ROCKSTAR_EDITOR_DISABLED
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerRockstarEditorDisabled(toggle) end

--- Activates riot mode. All NPCs are being hostile to each other (including player). Also the game will give weapons (pistols, smgs) to random NPCs.
--- @name SET_RIOT_MODE_ENABLED
--- @param toggle boolean Turn on or off riot mode. Set to `true` to enable riot mode.
--- @return void (Type not found)
function SetRiotModeEnabled(toggle) end

--- ignoreVehicle - bypasses vehicle check of the local player (it will not open if you are in a vehicle and this is set to false)
--- @name SET_SAVE_MENU_ACTIVE
--- @param ignoreVehicle boolean 
--- @return void (Type not found)
function SetSaveMenuActive(ignoreVehicle) end

--- @name SET_SAVE_HOUSE
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetSaveHouse(p0, p1, p2) end

--- @name SET_RANDOM_SEED
--- @param seed number 
--- @return void (Type not found)
function SetRandomSeed(seed) end

--- @name _SET_RESTART_CUSTOM_POSITION
--- @param x number 
--- @param y number 
--- @param z number 
--- @param heading number 
--- @return void (Type not found)
function SetRestartCustomPosition(x, y, z, heading) end

--- Allows the player to perform super jumps. This function must be called every frame for it to work.
--- It basically OR's a flag for a single frame, allowing the ped to perform a super jump only when the flag is set.
--- @name SET_SUPER_JUMP_THIS_FRAME
--- @param player Player The player we are setting this for.
--- @return void (Type not found)
function SetSuperJumpThisFrame(player) end

--- @name SET_STUNT_JUMPS_CAN_TRIGGER
--- @param toggle boolean 
--- @return void (Type not found)
function SetStuntJumpsCanTrigger(toggle) end

--- @name SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT
--- @param toggle boolean 
--- @return void (Type not found)
function SetThisScriptCanRemoveBlipsCreatedByAnyScript(toggle) end

--- // timecycle_keyframe_data
--- BLIZZARD = 0x27EA2814
--- CLEAR = 0x36A83D84
--- CLEARING = 0x6DB1A50D
--- CLOUDS = 0x30FDAF5C
--- EXTRASUNNY = 0x97AA0A79
--- FOGGY = 0xAE737644
--- HALLOWEEN = 0xC91A3202
--- NEUTRAL = 0xA4CA1326
--- OVERCAST = 0xBB898D2D
--- RAIN = 0x54A69840
--- SMOG = 0x10DCF4B5
--- SNOW = 0xEFB6EFF6
--- SNOWLIGHT = 0x23FB812B
--- THUNDER = 0xB677829F
--- XMAS = 0xAAC9C895
--- @name SET_WEATHER_TYPE_NOW
--- @param weatherType string 
--- @return void (Type not found)
function SetWeatherTypeNow(weatherType) end

--- @name SET_THIS_SCRIPT_CAN_BE_PAUSED
--- @param toggle boolean 
--- @return void (Type not found)
function SetThisScriptCanBePaused(toggle) end

--- NativeDB Introduced: v1868
--- @name _SET_SNOW_LEVEL
--- @param level number 
--- @return void (Type not found)
function SetSnowLevel(level) end

--- Maximum value is 1.  
--- At a value of 0 the game will still run at a minimum time scale.  
--- Slow Motion 1: 0.6  
--- Slow Motion 2: 0.4  
--- Slow Motion 3: 0.2  
--- @name SET_TIME_SCALE
--- @param timeScale number 
--- @return void (Type not found)
function SetTimeScale(timeScale) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- Mixes two weather types. If percentWeather2 is set to 0.0f, then the weather will be entirely of weatherType1, if it is set to 1.0f it will be entirely of weatherType2. If it's set somewhere in between, there will be a mixture of weather behaviors. To test, try this in the RPH console, and change the float to different values between 0 and 1:  
--- execute "NativeFunction.Natives.x578C752848ECFA0C(Game.GetHashKey(""RAIN""), Game.GetHashKey(""SMOG""), 0.50f);  
--- @name _SET_WEATHER_TYPE_TRANSITION
--- @param weatherType1 Hash 
--- @param weatherType2 Hash 
--- @param percentWeather2 number 
--- @return void (Type not found)
function SetWeatherTypeTransition(weatherType1, weatherType2, percentWeather2) end

--- Shoots a bullet from the first vector to the second vector. The weapon used as weaponHash should already be loaded via REQUEST_WEAPON_ASSET, otherwise the bullet may fail to materialise.
--- @name SHOOT_SINGLE_BULLET_BETWEEN_COORDS
--- @param x1 number The X coordinate to start the shot at.
--- @param y1 number The Y coordinate to start the shot at.
--- @param z1 number The Z coordinate to start the shot at.
--- @param x2 number The X coordinate the shot should end up at.
--- @param y2 number The Y coordinate the shot should end up at.
--- @param z2 number The Z coordinate the shot should end up at.
--- @param damage number The amount of damage the bullet carries.
--- @param pureAccuracy boolean Whether the bullet should have pinpoint accuracy.
--- @param weaponHash Hash Hash of the weapon the bullet is used as ammunition for.
--- @param ownerPed Ped Owner of the bullet, e.g. if the bullet kills someone the kill feed shows 'X was shot by ownerPed.'
--- @param isAudible boolean Whether the bullet should be audible. Optional, defaults to true
--- @param isInvisible boolean Whether the bullet should be invisible. Optional, defaults to false
--- @param speed number Speed the bullet should fly at. Optional
--- @return void (Type not found)
function ShootSingleBulletBetweenCoords(x1, y1, z1, x2, y2, z2, damage, pureAccuracy, weaponHash, ownerPed, isAudible, isInvisible, speed) end

--- Refer to [`SET_WEATHER_TYPE_NOW`](#\_0x29B487C359E19889) for weather types.
--- @name SET_WEATHER_TYPE_NOW_PERSIST
--- @param weatherType string 
--- @return void (Type not found)
function SetWeatherTypeNowPersist(weatherType) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- @name SET_WEATHER_TYPE_PERSIST
--- @param weatherType string 
--- @return void (Type not found)
function SetWeatherTypePersist(weatherType) end

--- NativeDB Added Parameter 19: Any p18
--- NativeDB Added Parameter 20: Any p19
--- NativeDB Added Parameter 21: Any p20
--- @name SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY_NEW
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param damage number 
--- @param p7 boolean 
--- @param weaponHash Hash 
--- @param ownerPed Ped 
--- @param isAudible boolean 
--- @param isInvisible boolean 
--- @param speed number 
--- @param entity Entity 
--- @param p14 boolean 
--- @param p15 boolean 
--- @param p16 boolean 
--- @param p17 boolean 
--- @return void (Type not found)
function ShootSingleBulletBetweenCoordsIgnoreEntityNew(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity, p14, p15, p16, p17) end

--- This native always come right before SET_ENTITY_QUATERNION where its final 4 parameters are SLERP_NEAR_QUATERNION p9 to p12
--- @name SLERP_NEAR_QUATERNION
--- @param t number acceleration differenzial (am_rollercoaster.c func\_134)
--- @param x number rotation parameter (maybe X axys)
--- @param y number rotation parameter (maybe X axys)
--- @param z number rotation parameter (maybe X axys)
--- @param w number rotation parameter (maybe X axys)
--- @param x1 number rotation parameter (maybe Y axys)
--- @param y1 number rotation parameter (maybe Y axys)
--- @param z1 number rotation parameter (maybe Y axys)
--- @param w1 number rotation parameter (maybe Y axys)
--- @param outX number output value calculated (X)
--- @param outY number output value calculated (Y)
--- @param outZ number output value calculated (Z)
--- @param outW number output value calculated (W)
--- @return void (Type not found)
function SlerpNearQuaternion(t, x, y, z, w, x1, y1, z1, w1, outX, outY, outZ, outW) end

--- Sets the the raw wind speed value.  
--- @name SET_WIND
--- @param speed number 
--- @return void (Type not found)
function SetWind(speed) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- @name SET_WEATHER_TYPE_OVERTIME_PERSIST
--- @param weatherType string The weather type to override to.
--- @param time number A float on how long to take to transition (in seconds).
--- @return void (Type not found)
function SetWeatherTypeOvertimePersist(weatherType, time) end

--- Sets the wind direction.
--- @name SET_WIND_DIRECTION
--- @param direction number the [wind direction](https://en.wikipedia.org/wiki/Wind_direction) in radians
--- @return void (Type not found)
function SetWindDirection(direction) end

--- Using this native will clamp the wind speed value to a range of 0.0- 12.0. Using SET_WIND sets the same value but without the restriction.  
--- @name SET_WIND_SPEED
--- @param speed number 
--- @return void (Type not found)
function SetWindSpeed(speed) end

--- Begins with START_*. Next character in the name is either D or E.
--- @name _START_BENCHMARK_RECORDING
--- @return void (Type not found)
function StartBenchmarkRecording() end

--- @name START_SAVE_ARRAY_WITH_SIZE
--- @param p0  
--- @param size number 
--- @param arrayName string 
--- @return void (Type not found)
function StartSaveArrayWithSize(p0, size, arrayName) end

--- entity - entity to ignore  
--- NativeDB Added Parameter 15: Any p14
--- @name SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param damage number 
--- @param p7 boolean 
--- @param weaponHash Hash 
--- @param ownerPed Ped 
--- @param isAudible boolean 
--- @param isInvisible boolean 
--- @param speed number 
--- @param entity Entity 
--- @return void (Type not found)
function ShootSingleBulletBetweenCoordsIgnoreEntity(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity) end

--- Begins with STOP_*. Next character in the name is either D or E.
--- @name _STOP_BENCHMARK_RECORDING
--- @return void (Type not found)
function StopBenchmarkRecording() end

--- Returns true if the game is using the metric measurement system (profile setting 227), false if imperial is used.
--- @name SHOULD_USE_METRIC_MEASUREMENTS
--- @return boolean
function ShouldUseMetricMeasurements() end

--- @name STOP_SAVE_DATA
--- @return void (Type not found)
function StopSaveData() end

--- @name START_SAVE_DATA
--- @param p0  
--- @param p1  
--- @param p2 boolean 
--- @return void (Type not found)
function StartSaveData(p0, p1, p2) end

--- Returns false if it's a null or empty string or if the string is too long. outInteger will be set to -999 in that case.  
--- If all checks have passed successfully, the return value will be set to whatever strtol(string, 0i64, 10); returns.  
--- @name STRING_TO_INT
--- @param string string 
--- @param outInteger number 
--- @return boolean
function StringToInt(string, outInteger) end

--- @name TAN
--- @param p0 number 
--- @return number
function Tan(p0) end

--- @name START_SAVE_STRUCT_WITH_SIZE
--- @param p0  
--- @param size number 
--- @param structName string 
--- @return void (Type not found)
function StartSaveStructWithSize(p0, size, structName) end

--- For a full list, see [here](https://gist.github.com/4mmonium/f76f3ecef649ed275b260b433ea84494).
--- @name TERMINATE_ALL_SCRIPTS_WITH_THIS_NAME
--- @param scriptName string 
--- @return void (Type not found)
function TerminateAllScriptsWithThisName(scriptName) end

--- @name STOP_SAVE_ARRAY
--- @return void (Type not found)
function StopSaveArray() end

--- @name STOP_SAVE_STRUCT
--- @return void (Type not found)
function StopSaveStruct() end

--- Returns true if the current frontend menu is FE_MENU_VERSION_SP_PAUSE
--- U*
--- @name _UI_IS_SINGLEPLAYER_PAUSE_MENU_ACTIVE
--- @return boolean
function UiIsSingleplayerPauseMenuActive() end

--- Returns the current status of the onscreen keyboard, and updates the output.
--- Status Codes:
--- -1: Keyboard isn't active
--- 0: User still editing
--- 1: User has finished editing
--- 2: User has canceled editing
--- @name UPDATE_ONSCREEN_KEYBOARD
--- @return number
function UpdateOnscreenKeyboard() end

--- @name USING_MISSION_CREATOR
--- @param toggle boolean 
--- @return void (Type not found)
function UsingMissionCreator(toggle) end

--- Called 4 times in the b617d scripts:
--- MISC::_A74802FB8D0B7814("CONTRAILS", 0);
--- @name UNLOAD_CLOUD_HAT
--- @param name string 
--- @param p1 number 
--- @return void (Type not found)
function UnloadCloudHat(name, p1) end

--- @name WATER_OVERRIDE_FADE_OUT
--- @param p0 number 
--- @return void (Type not found)
function WaterOverrideFadeOut(p0) end

--- @name WATER_OVERRIDE_FADE_IN
--- @param p0 number 
--- @return void (Type not found)
function WaterOverrideFadeIn(p0) end

--- @name WATER_OVERRIDE_SET_OCEANNOISEMINAMPLITUDE
--- @param minAmplitude number 
--- @return void (Type not found)
function WaterOverrideSetOceannoiseminamplitude(minAmplitude) end

--- @name WATER_OVERRIDE_SET_RIPPLEDISTURB
--- @param disturb number 
--- @return void (Type not found)
function WaterOverrideSetRippledisturb(disturb) end

--- @name WATER_OVERRIDE_SET_OCEANWAVEMAXAMPLITUDE
--- @param maxAmplitude number 
--- @return void (Type not found)
function WaterOverrideSetOceanwavemaxamplitude(maxAmplitude) end

--- @name WATER_OVERRIDE_SET_RIPPLEMAXBUMPINESS
--- @param maxBumpiness number 
--- @return void (Type not found)
function WaterOverrideSetRipplemaxbumpiness(maxBumpiness) end

--- @name WATER_OVERRIDE_SET_OCEANWAVEMINAMPLITUDE
--- @param minAmplitude number 
--- @return void (Type not found)
function WaterOverrideSetOceanwaveminamplitude(minAmplitude) end

--- @name WATER_OVERRIDE_SET_SHOREWAVEAMPLITUDE
--- @param amplitude number 
--- @return void (Type not found)
function WaterOverrideSetShorewaveamplitude(amplitude) end

--- @name WATER_OVERRIDE_SET_OCEANWAVEAMPLITUDE
--- @param amplitude number 
--- @return void (Type not found)
function WaterOverrideSetOceanwaveamplitude(amplitude) end

--- @name WATER_OVERRIDE_SET_SHOREWAVEMAXAMPLITUDE
--- @param maxAmplitude number 
--- @return void (Type not found)
function WaterOverrideSetShorewavemaxamplitude(maxAmplitude) end

--- @name WATER_OVERRIDE_SET_RIPPLEMINBUMPINESS
--- @param minBumpiness number 
--- @return void (Type not found)
function WaterOverrideSetRippleminbumpiness(minBumpiness) end

--- @name WATER_OVERRIDE_SET_SHOREWAVEMINAMPLITUDE
--- @param minAmplitude number 
--- @return void (Type not found)
function WaterOverrideSetShorewaveminamplitude(minAmplitude) end

--- This seems to edit the water wave, intensity around your current location.  
--- 0.0f = Normal  
--- 1.0f = So Calm and Smooth, a boat will stay still.  
--- 3.0f = Really Intense.  
--- @name WATER_OVERRIDE_SET_STRENGTH
--- @param strength number 
--- @return void (Type not found)
function WaterOverrideSetStrength(strength) end

--- @name WATER_OVERRIDE_SET_RIPPLEBUMPINESS
--- @param bumpiness number 
--- @return void (Type not found)
function WaterOverrideSetRipplebumpiness(bumpiness) end
