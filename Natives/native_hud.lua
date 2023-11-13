
--- Does stuff like this:\
--- gyazo.com/7fcb78ea3520e3dbc5b2c0c0f3712617\
--- Example:\
--- int GetHash = GET_HASH_KEY("fe_menu_version_corona_lobby");\
--- ACTIVATE_FRONTEND_MENU(GetHash, 0, -1);\
--- BOOL p1 is a toggle to define the game in pause.\
--- int p2 is unknown but -1 always works, not sure why though.\
--- \[30/03/2017] ins1de :\
--- the int p2 is actually a component variable. When the pause menu is visible, it opens the tab related to it.\
--- Example : Function.Call(Hash.ACTIVATE_FRONTEND_MENU,-1171018317, 0, 42);\
--- Result : Opens the "Online" tab without pausing the menu, with -1 it opens the map.
--- Below is a list of all known Frontend Menu Hashes.
--- *   FE_MENU_VERSION_SP_PAUSE
--- *   FE_MENU_VERSION_MP_PAUSE
--- *   FE_MENU_VERSION_CREATOR_PAUSE
--- *   FE_MENU_VERSION_CUTSCENE_PAUSE
--- *   FE_MENU_VERSION_SAVEGAME
--- *   FE_MENU_VERSION_PRE_LOBBY
--- *   FE_MENU_VERSION_LOBBY
--- *   FE_MENU_VERSION_MP_CHARACTER_SELECT
--- *   FE_MENU_VERSION_MP_CHARACTER_CREATION
--- *   FE_MENU_VERSION_EMPTY
--- *   FE_MENU_VERSION_EMPTY_NO_BACKGROUND
--- *   FE_MENU_VERSION_TEXT_SELECTION
--- *   FE_MENU_VERSION_CORONA
--- *   FE_MENU_VERSION_CORONA_LOBBY
--- *   FE_MENU_VERSION_CORONA_JOINED_PLAYERS
--- *   FE_MENU_VERSION_CORONA_INVITE_PLAYERS
--- *   FE_MENU_VERSION_CORONA_INVITE_FRIENDS
--- *   FE_MENU_VERSION_CORONA_INVITE_CREWS
--- *   FE_MENU_VERSION_CORONA_INVITE_MATCHED_PLAYERS
--- *   FE_MENU_VERSION_CORONA_INVITE_LAST_JOB_PLAYERS
--- *   FE_MENU_VERSION_CORONA_RACE
--- *   FE_MENU_VERSION_CORONA_BETTING
--- *   FE_MENU_VERSION_JOINING_SCREEN
--- *   FE_MENU_VERSION_LANDING_MENU
--- *   FE_MENU_VERSION_LANDING_KEYMAPPING_MENU
--- @name ACTIVATE_FRONTEND_MENU
--- @param menuhash Hash 
--- @param togglePause boolean 
--- @param component number 
--- @return void (Type not found)
function ActivateFrontendMenu(menuhash, togglePause, component) end

--- @name ADD_BLIP_FOR_PICKUP
--- @param pickup Pickup 
--- @return Blip
function AddBlipForPickup(pickup) end

--- Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
--- @name ADD_BLIP_FOR_COORD
--- @param x number The X coordinate to create the blip on.
--- @param y number The Y coordinate.
--- @param z number The Z coordinate.
--- @return Blip
function AddBlipForCoord(x, y, z) end

--- Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#\_0xC6F43D0E) to make it blue (friend).\
--- Can be used for objects, vehicles and peds.
--- Example of enemy:
--- ![enemy](https://i.imgur.com/fl78svv.png)
--- Example of friend:
--- ![friend](https://i.imgur.com/Q16ho5d.png)
--- @name ADD_BLIP_FOR_ENTITY
--- @param entity Entity The entity handle to create the blip.
--- @return Blip
function AddBlipForEntity(entity) end

--- Adds a rectangular blip for the specified coordinates/area.
--- It is recommended to use [SET_BLIP_ROTATION](#\_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#\_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.
--- By default, the blip will show as a *regular* blip with the specified color/sprite if it is outside of the minimap view.
--- Example image:
--- ![minimap](https://i.imgur.com/qLbXWcQ.png)
--- ![big map](https://i.imgur.com/0j7O7Rh.png)
--- (Native name is *likely* to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
--- @name _ADD_BLIP_FOR_AREA
--- @param x number The X coordinate of the center of the blip.
--- @param y number The Y coordinate of the center of the blip.
--- @param z number The Z coordinate of the center of the blip.
--- @param width number The width of the blip.
--- @param height number The height of the blip.
--- @return Blip
function AddBlipForArea(x, y, z, width, height) end

--- Create a blip with a radius for the specified coordinates (it doesnt create the blip sprite, so you need to use [AddBlipCoords](#\_0xC6F43D0E))
--- Example image:
--- ![example](https://i.imgur.com/9hQl3DB.png)
--- @name ADD_BLIP_FOR_RADIUS
--- @param posX number The x position of the blip (you can also send a vector3 instead of the bulk coordinates)
--- @param posY number The y position of the blip (you can also send a vector3 instead of the bulk coordinates)
--- @param posZ number The z position of the blip (you can also send a vector3 instead of the bulk coordinates)
--- @param radius number The number that defines the radius of the blip circle
--- @return Blip
function AddBlipForRadius(posX, posY, posZ, radius) end

--- @name ADD_POINT_TO_GPS_CUSTOM_ROUTE
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function AddPointToGpsCustomRoute(x, y, z) end

--- Adds a float to a text component placeholder, replacing `~1~` in the current text command's text label.
--- ![Example output](https://i.imgur.com/jvuQ0II.png)
--- @name ADD_TEXT_COMPONENT_FLOAT
--- @param value number The number to substitute in the label.
--- @param decimalPlaces number How many decimal places to add
--- @return void (Type not found)
function AddTextComponentFloat(value, decimalPlaces) end

--- @name ADD_POINT_TO_GPS_MULTI_ROUTE
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function AddPointToGpsMultiRoute(x, y, z) end

--- @name ADD_TEXT_COMPONENT_FORMATTED_INTEGER
--- @param value number The integer to add to the string
--- @param commaSeparated boolean Whether or not to add comma seperators. So if true 1000 would become 1,000.
--- @return void (Type not found)
function AddTextComponentFormattedInteger(value, commaSeparated) end

--- @name ADD_TEXT_COMPONENT_SUBSTRING_KEYBOARD_DISPLAY
--- @param string string 
--- @return void (Type not found)
function AddTextComponentSubstringKeyboardDisplay(string) end

--- @name ADD_TEXT_COMPONENT_INTEGER
--- @param value number 
--- @return void (Type not found)
function AddTextComponentInteger(value) end

--- @name ADD_NEXT_MESSAGE_TO_PREVIOUS_BRIEFS
--- @param p0 boolean 
--- @return void (Type not found)
function AddNextMessageToPreviousBriefs(p0) end

--- @name ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL
--- @param labelName string 
--- @return void (Type not found)
function AddTextComponentSubstringTextLabel(labelName) end

--- p1 was always -1
--- @name ADD_TEXT_COMPONENT_SUBSTRING_PHONE_NUMBER
--- @param p0 string 
--- @param p1 number 
--- @return void (Type not found)
function AddTextComponentSubstringPhoneNumber(p0, p1) end

--- Adds an arbitrary string as a text component placeholder, replacing `~a~` in the current text command's text label.
--- See the documentation on text formatting for more information.
--- @name ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME
--- @param text string A string to add of up to 99 characters. This can contain additional `~` formatting directives.
--- @return void (Type not found)
function AddTextComponentSubstringPlayerName(text) end

--- This native (along with 0x5F68520888E69014 and 0x6C188BE134E074AA) do not actually filter anything. They simply add the provided text (as of 944)  
--- @name ADD_TEXT_COMPONENT_SUBSTRING_WEBSITE
--- @param website string 
--- @return void (Type not found)
function AddTextComponentSubstringWebsite(website) end

--- It adds the localized text of the specified GXT entry name. Eg. if the argument is GET_HASH_KEY("ES_HELP"), adds "Continue". Just uses a text labels hash key  
--- @name ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL_HASH_KEY
--- @param gxtEntryHash Hash 
--- @return void (Type not found)
function AddTextComponentSubstringTextLabelHashKey(gxtEntryHash) end

--- Allows opening the pause menu this frame, when the player is dead.
--- @name _ALLOW_PAUSE_MENU_WHEN_DEAD_THIS_FRAME
--- @return void (Type not found)
function AllowPauseMenuWhenDeadThisFrame() end

--- Adds a timer (e.g. "00:00:00:000"). The appearance of the timer depends on the flags, which needs more research.  
--- @name ADD_TEXT_COMPONENT_SUBSTRING_TIME
--- @param timestamp number 
--- @param flags number 
--- @return void (Type not found)
function AddTextComponentSubstringTime(timestamp, flags) end

--- @name ALLOW_SONAR_BLIPS
--- @param toggle boolean 
--- @return void (Type not found)
function AllowSonarBlips(toggle) end

--- Initializes the text entry for the the text next to a loading prompt. All natives for for building UI texts can be used here  
--- BEGIN_TEXT_COMMAND_PRINT  
--- e.g  
--- void StartLoadingMessage(char *text, int spinnerType = 3)  
--- 	{  
--- _SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- _SHOW_LOADING_PROMPT(spinnerType);  
--- 	}  
--- /*OR*/  
--- 	void ShowLoadingMessage(char *text, int spinnerType = 3, int timeMs = 10000)  
--- 	{  
--- _SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- _SHOW_LOADING_PROMPT(spinnerType);  
--- WAIT(timeMs);  
--- _REMOVE_LOADING_PROMPT();  
--- 	}  
--- These are some localized strings used in the loading spinner.  
--- "PM_WAIT"                   = Please Wait  
--- "CELEB_WPLYRS"              = Waiting For Players.  
--- "CELL_SPINNER2"             = Scanning storage.  
--- "ERROR_CHECKYACHTNAME" = Registering your yacht's name. Please wait.  
--- "ERROR_CHECKPROFANITY"   = Checking your text for profanity. Please wait.  
--- "FM_COR_AUTOD"                        = Just spinner no text  
--- "FM_IHELP_WAT2"                        = Waiting for other players  
--- "FM_JIP_WAITO"                            = Game options are being set  
--- "FMMC_DOWNLOAD"                    = Downloading  
--- "FMMC_PLYLOAD"                         = Loading  
--- "FMMC_STARTTRAN"                    = Launching session  
--- "HUD_QUITTING"                           =  Quiting session  
--- "KILL_STRIP_IDM"                         = Waiting for to accept  
--- "MP_SPINLOADING"                      = Loading  
--- @name BEGIN_TEXT_COMMAND_BUSYSPINNER_ON
--- @param string string 
--- @return void (Type not found)
function BeginTextCommandBusyspinnerOn(string) end

--- The following were found in the decompiled script files:  
--- STRING, TWOSTRINGS, NUMBER, PERCENTAGE, FO_TWO_NUM, ESMINDOLLA, ESDOLLA, MTPHPER_XPNO, AHD_DIST, CMOD_STAT_0, CMOD_STAT_1, CMOD_STAT_2, CMOD_STAT_3, DFLT_MNU_OPT, F3A_TRAFDEST, ES_HELP_SOC3  
--- ESDOLLA   
--- ESMINDOLLA - cash (negative)  
--- Used to be known as _SET_TEXT_ENTRY  
--- @name BEGIN_TEXT_COMMAND_DISPLAY_TEXT
--- @param text string 
--- @return void (Type not found)
function BeginTextCommandDisplayText(text) end

--- clears a print text command with this text  
--- @name BEGIN_TEXT_COMMAND_CLEAR_PRINT
--- @param text string 
--- @return void (Type not found)
function BeginTextCommandClearPrint(text) end

--- Used to be known as _SET_TEXT_COMPONENT_FORMAT  
--- @name BEGIN_TEXT_COMMAND_DISPLAY_HELP
--- @param inputType string 
--- @return void (Type not found)
function BeginTextCommandDisplayHelp(inputType) end

--- BEGIN_TEXT_COMMAND_*
--- Example:
--- _BEGIN_TEXT_COMMAND_GET_WIDTH("NUMBER");
--- ADD_TEXT_COMPONENT_FLOAT(69.420f, 2);
--- float width = _END_TEXT_COMMAND_GET_WIDTH(1);
--- @name _BEGIN_TEXT_COMMAND_GET_WIDTH
--- @param text string 
--- @return void (Type not found)
function BeginTextCommandGetWidth(text) end

--- nothin doin.   
--- BOOL Message(char* text)  
--- 	{  
--- BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED("STRING");  
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- return END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED();  
--- 	}  
--- @name BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED
--- @param text string 
--- @return void (Type not found)
function BeginTextCommandIsMessageDisplayed(text) end

--- get's line count  
--- int GetLineCount(char *text, float x, float y)  
--- 	{  
--- _BEGIN_TEXT_COMMAND_LINE_COUNT("STRING");  
---                 ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- return _END_TEXT_COMMAND_GET_LINE_COUNT(x, y);  
--- 	}  
--- @name _BEGIN_TEXT_COMMAND_LINE_COUNT
--- @param entry string 
--- @return void (Type not found)
function BeginTextCommandLineCount(entry) end

--- @name _BEGIN_TEXT_COMMAND_OBJECTIVE
--- @param p0 string 
--- @return void (Type not found)
function BeginTextCommandObjective(p0) end

--- @name BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED
--- @param labelName string Text entry name. This can be created using [`AddTextEntry`](#\_0x32CA01C3).
--- @return void (Type not found)
function BeginTextCommandIsThisHelpMessageBeingDisplayed(labelName) end

--- Used to be known as _SET_TEXT_ENTRY_2  
--- void ShowSubtitle(char *text)  
--- {  
--- 	BEGIN_TEXT_COMMAND_PRINT("STRING");  
--- 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- 	END_TEXT_COMMAND_PRINT(2000, 1);  
--- }  
--- @name BEGIN_TEXT_COMMAND_PRINT
--- @param GxtEntry string 
--- @return void (Type not found)
function BeginTextCommandPrint(GxtEntry) end

--- @name BEGIN_TEXT_COMMAND_OVERRIDE_BUTTON_TEXT
--- @param gxtEntry string 
--- @return void (Type not found)
function BeginTextCommandOverrideButtonText(gxtEntry) end

--- @name ADD_TEXT_COMPONENT_SUBSTRING_BLIP_NAME
--- @param blip Blip 
--- @return void (Type not found)
function AddTextComponentSubstringBlipName(blip) end

--- Starts a text command to change the name of a blip displayed in the pause menu.
--- This should be paired with [`END_TEXT_COMMAND_SET_BLIP_NAME`](#\_0xBC38B49BCB83BC9B), once adding all required text components.
--- @name BEGIN_TEXT_COMMAND_SET_BLIP_NAME
--- @param textLabel string The text label to set.
--- @return void (Type not found)
function BeginTextCommandSetBlipName(textLabel) end

--- Declares the entry type of a notification, for example "STRING".
--- int ShowNotification(char \*text)
--- {
--- BEGIN_TEXT_COMMAND_THEFEED_POST("STRING");
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
--- return \_DRAW_NOTIFICATION(1, 1);
--- }
--- @name BEGIN_TEXT_COMMAND_THEFEED_POST
--- @param text string The text label to use.
--- @return void (Type not found)
function BeginTextCommandThefeedPost(text) end

--- @name BUSYSPINNER_IS_DISPLAYING
--- @return boolean
function BusyspinnerIsDisplaying() end

--- Removes the loading prompt at the bottom right of the screen.
--- @name BUSYSPINNER_OFF
--- @return void (Type not found)
function BusyspinnerOff() end

--- @name CLEAR_ADDITIONAL_TEXT
--- @param p0 number 
--- @param p1 boolean 
--- @return void (Type not found)
function ClearAdditionalText(p0, p1) end

--- @name BUSYSPINNER_IS_ON
--- @return boolean
function BusyspinnerIsOn() end

--- @name CLEAR_ALL_HELP_MESSAGES
--- @return void (Type not found)
function ClearAllHelpMessages() end

--- Clears all active blip routes that have been set with [`SetBlipRoute`](#\_0x3E160C90).
--- @name _CLEAR_ALL_BLIP_ROUTES
--- @return void (Type not found)
function ClearAllBlipRoutes() end

--- @name CLEAR_DYNAMIC_PAUSE_MENU_ERROR_MESSAGE
--- @return void (Type not found)
function ClearDynamicPauseMenuErrorMessage() end

--- Displays cash change notifications on HUD.  
--- @name CHANGE_FAKE_MP_CASH
--- @param cash number 
--- @param bank number 
--- @return void (Type not found)
function ChangeFakeMpCash(cash, bank) end

--- @name CLEAR_GPS_CUSTOM_ROUTE
--- @return void (Type not found)
function ClearGpsCustomRoute() end

--- @name CLEAR_FLOATING_HELP
--- @param hudIndex number 
--- @param p1 boolean 
--- @return void (Type not found)
function ClearFloatingHelp(hudIndex, p1) end

--- Clears the GPS flags. Only the script that originally called SET_GPS_FLAGS can clear them.  
--- Doesn't seem like the flags are actually read by the game at all.  
--- @name CLEAR_GPS_FLAGS
--- @return void (Type not found)
function ClearGpsFlags() end

--- Does the same as [`SET_GPS_MULTI_ROUTE_RENDER(false)`](#\_0x3DDA37128DD1ACA8)
--- @name CLEAR_GPS_MULTI_ROUTE
--- @return void (Type not found)
function ClearGpsMultiRoute() end

--- @name CLEAR_GPS_PLAYER_WAYPOINT
--- @return void (Type not found)
function ClearGpsPlayerWaypoint() end

--- @name CLEAR_HELP
--- @param toggle boolean 
--- @return void (Type not found)
function ClearHelp(toggle) end

--- Does the same as SET_RACE_TRACK_RENDER(false);
--- @name CLEAR_GPS_RACE_TRACK
--- @return void (Type not found)
function ClearGpsRaceTrack() end

--- @name CLEAR_PED_IN_PAUSE_MENU
--- @return void (Type not found)
function ClearPedInPauseMenu() end

--- @name CLEAR_BRIEF
--- @return void (Type not found)
function ClearBrief() end

--- @name CLEAR_PRINTS
--- @return void (Type not found)
function ClearPrints() end

--- @name _CLOSE_MULTIPLAYER_CHAT
--- @return void (Type not found)
function CloseMultiplayerChat() end

--- @name _CLEAR_RACE_GALLERY_BLIPS
--- @return void (Type not found)
function ClearRaceGalleryBlips() end

--- @name CLEAR_SMALL_PRINTS
--- @return void (Type not found)
function ClearSmallPrints() end

--- **This native does absolutely nothing, just a nullsub**
--- @name CLEAR_REMINDER_MESSAGE
--- @return void (Type not found)
function ClearReminderMessage() end

--- p0: found arguments in the b617d scripts: pastebin.com/X5akCN7z  
--- @name CLEAR_THIS_PRINT
--- @param p0 string 
--- @return void (Type not found)
function ClearThisPrint(p0) end

--- As per the name, this native creates a "fake" gamer tag that is attached to a specific ped.
--- Unlike "real" gamer tags, you cannot set the crew colour of these gamer tags.
--- To create gamer tags for actual players and for more gamer tag information, see [CREATE_MP_GAMER_TAG_WITH_CREW_COLOR](#\_0x6DD05E9D83EFA4C9).
--- @name CREATE_FAKE_MP_GAMER_TAG
--- @param ped Ped The ped that the fake gamer tag will be attached to.
--- @param username string The name displayed on the gamer tag.
--- @param crewIsPrivate boolean If the crew is private. Public crews have a pointed end cap, private crews do not.
--- @param crewIsRockstar boolean If the crew is a Rockstar crew. Rockstar crews include a Rockstar logo before the name.
--- @param crewName string The name of the crew.
--- @param crewRank number The rank from 1-5 that the player is within the crew. Use 0 if the player is the founder of the crew. Only relevant for private crews.
--- @return number
function CreateFakeMpGamerTag(ped, username, crewIsPrivate, crewIsRockstar, crewName, crewRank) end

--- Creates a gamer tag for the specified local player ID, automatically attached to the player's current ped.
--- The created gamer tag will have the same ID as the player. You can use [IS_MP_GAMER_TAG_ACTIVE](#\_0x4E929E7A5796FD26) to check if a gamer tag already exists for a player.
--- After the gamer tag is created, all components will be set as invisible. Use [SET_MP_GAMER_TAG_VISIBILITY](#\_0x63BB75ABEDC1F6A0) to change the visibility of individual components or [\_SET_MP_GAMER_TAG_VISIBILITY_ALL](#\_0xEE76FF7E6A0166B0) to set all of them at once.
--- To create a gamer tag for a ped that is not a player, see [CREATE_FAKE_MP_GAMER_TAG](#\_0xBFEFE3321A3F5015).
--- @name CREATE_MP_GAMER_TAG_WITH_CREW_COLOR
--- @param player Player The local player ID to assign the gamer tag to.
--- @param username string The name displayed on the gamer tag.
--- @param crewIsPrivate boolean If the crew is private. Public crews have a pointed end cap, private crews do not.
--- @param crewIsRockstar boolean If the crew is a Rockstar crew. Rockstar crews include a Rockstar logo before the name.
--- @param crewName string The name of the crew.
--- @param crewRank number The rank from 1-5 that the player is within the crew. Use 0 if the player is the founder of the crew. Only relevant for private crews.
--- @param crewR number Red component of the crew colour.
--- @param crewG number Green component of the crew colour.
--- @param crewB number Blue component of the crew colour.
--- @return void (Type not found)
function CreateMpGamerTagWithCrewColor(player, username, crewIsPrivate, crewIsRockstar, crewName, crewRank, crewR, crewG, crewB) end

--- @name _DELETE_WAYPOINT
--- @return void (Type not found)
function DeleteWaypoint() end

--- @name DISABLE_FRONTEND_THIS_FRAME
--- @return void (Type not found)
function DisableFrontendThisFrame() end

--- If true is passed, the player won't be able to open the multiplayer chat
--- @name _DISABLE_MULTIPLAYER_CHAT
--- @param disable boolean 
--- @return void (Type not found)
function DisableMultiplayerChat(disable) end

--- @name CLOSE_SOCIAL_CLUB_MENU
--- @return void (Type not found)
function CloseSocialClubMenu() end

--- "DISPLAY_CASH(true);" makes the cash amount render on the screen when appropriate  
--- "DISPLAY_CASH(false);" disables cash amount rendering  
--- @name DISPLAY_CASH
--- @param display boolean 
--- @return void (Type not found)
function DisplayCash(display) end

--- @name DISPLAY_AMMO_THIS_FRAME
--- @param display boolean 
--- @return void (Type not found)
function DisplayAmmoThisFrame(display) end

--- Enables drawing some hud components, such as help labels, this frame, when the player is dead.
--- @name _DISPLAY_HUD_WHEN_DEAD_THIS_FRAME
--- @return void (Type not found)
function DisplayHudWhenDeadThisFrame() end

--- If Hud should be displayed  
--- @name DISPLAY_HUD
--- @param toggle boolean 
--- @return void (Type not found)
function DisplayHud(toggle) end

--- The messages are localized strings.  
--- Examples:  
--- "No_bus_money"  
--- "Enter_bus"  
--- "Tour_help"  
--- "LETTERS_HELP2"  
--- "Dummy"  
--- **The bool appears to always be false (if it even is a bool, as it's represented by a zero)**  
--- --------  
--- p1 doesn't seem to make a difference, regardless of the state it's in.   
--- picture of where on the screen this is displayed?  
--- @name DISPLAY_HELP_TEXT_THIS_FRAME
--- @param message string 
--- @param p1 boolean 
--- @return void (Type not found)
function DisplayHelpTextThisFrame(message, p1) end

--- @name DISPLAY_HUD_WHEN_PAUSED_THIS_FRAME
--- @return void (Type not found)
function DisplayHudWhenPausedThisFrame() end

--- @name DISPLAY_AREA_NAME
--- @param toggle boolean 
--- @return void (Type not found)
function DisplayAreaName(toggle) end

--- Toggles whether or not name labels are shown on the expanded minimap next to player blips, like in GTA:O.
--- Doesn't need to be called every frame.
--- Preview: https://i.imgur.com/DfqKWfJ.png
--- Make sure to call SET_BLIP_CATEGORY with index 7 for this to work on the desired blip.
--- @name DISPLAY_PLAYER_NAME_TAGS_ON_BLIPS
--- @param toggle boolean the toggle boolean
--- @return void (Type not found)
function DisplayPlayerNameTagsOnBlips(toggle) end

--- @name DOES_BLIP_EXIST
--- @param blip Blip 
--- @return boolean
function DoesBlipExist(blip) end

--- If Minimap / Radar should be displayed.
--- @name DISPLAY_RADAR
--- @param toggle boolean 
--- @return void (Type not found)
function DisplayRadar(toggle) end

--- Displays the crosshair for this frame.  
--- @name DISPLAY_SNIPER_SCOPE_THIS_FRAME
--- @return void (Type not found)
function DisplaySniperScopeThisFrame() end

--- Returns whether the ped's blip is controlled by the game.   
--- It's the default blip you can see on enemies during freeroam in singleplayer (the one that fades out quickly).  
--- @name DOES_PED_HAVE_AI_BLIP
--- @param ped Ped 
--- @return boolean
function DoesPedHaveAiBlip(ped) end

--- Checks if the passed gxt name exists in the game files.  
--- @name DOES_TEXT_LABEL_EXIST
--- @param gxt string 
--- @return boolean
function DoesTextLabelExist(gxt) end

--- @name DOES_TEXT_BLOCK_EXIST
--- @param gxt string 
--- @return boolean
function DoesTextBlockExist(gxt) end

--- @name DOES_BLIP_HAVE_GPS_ROUTE
--- @param blip Blip 
--- @return boolean
function DoesBlipHaveGpsRoute(blip) end

--- enum eBusySpinnerType
--- {
--- 	BUSY_SPINNER_LEFT,
--- 	BUSY_SPINNER_LEFT_2,
--- 	BUSY_SPINNER_LEFT_3,
--- 	BUSY_SPINNER_SAVE,
--- 	BUSY_SPINNER_RIGHT,
--- };
--- @name END_TEXT_COMMAND_BUSYSPINNER_ON
--- @param busySpinnerType number 
--- @return void (Type not found)
function EndTextCommandBusyspinnerOn(busySpinnerType) end

--- After applying the properties to the text (See UI::SET_TEXT_), this will draw the text in the applied position. Also 0.0f < x, y < 1.0f, percentage of the axis.  
--- NativeDB Added Parameter 3: int p2
--- @name END_TEXT_COMMAND_DISPLAY_TEXT
--- @param x number 
--- @param y number 
--- @return void (Type not found)
function EndTextCommandDisplayText(x, y) end

--- When calling this, the current frame will have the players "arrow icon" be focused on the dead center of the radar.
--- @name DONT_TILT_MINIMAP_THIS_FRAME
--- @return void (Type not found)
function DontTiltMinimapThisFrame() end

--- @name END_TEXT_COMMAND_CLEAR_PRINT
--- @return void (Type not found)
function EndTextCommandClearPrint() end

--- @name END_TEXT_COMMAND_DISPLAY_HELP
--- @param shape number 0 for a normal rectangle shape, 1 and 2 has rounded edges, and can be used for floating help text hud component `FLOATING_HELP_TEXT_1` and `FLOATING_HELP_TEXT_2`. Use 1 for `FLOATING_HELP_TEXT_1` and 2 for `FLOATING_HELP_TEXT_2`, otherwise the help text will be reset to a normal help text on the top left corner on your screen.
--- @param loop boolean If this is true, the message will stay forever unless you call [`CLEAR_ALL_HELP_MESSAGES`](#\_0x6178F68A87A4D3A0).
--- @param beep boolean If this is true, the beeping sound will play. Beeping sound name is `INFO` in sound set `HUD_FRONTEND_DEFAULT_SOUNDSET`.
--- @param duration number Duration in ms of how long this help message should display for. -1 for default.
--- @return void (Type not found)
function EndTextCommandDisplayHelp(shape, loop, beep, duration) end

--- END_TEXT_COMMAND_*
--- Determines how many lines the text string will use when drawn on screen.
--- Must use 0x521FB041D93DD0E4 for setting up
--- @name _END_TEXT_COMMAND_LINE_COUNT
--- @param x number 
--- @param y number 
--- @return number
function EndTextCommandLineCount(x, y) end

--- END_TEXT_COMMAND_*
--- In scripts font most of the time is passed as 1.
--- Use _BEGIN_TEXT_GET_COMMAND_GET_WIDTH
--- param is not font from what i've tested
--- @name _END_TEXT_COMMAND_GET_WIDTH
--- @param p0 boolean 
--- @return number
function EndTextCommandGetWidth(p0) end

--- Returns whether a specific help message is being displayed or not.
--- ```cpp
--- enum HudIndexes {
---     HELP_TEXT = 0,
---     FLOATING_HELP_TEXT_1 = 1,
---     FLOATING_HELP_TEXT_2 = 2,
--- }
--- @name END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED
--- @param hudIndex number The hud index for help message.
--- @return boolean
function EndTextCommandIsThisHelpMessageBeingDisplayed(hudIndex) end

--- @name END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED
--- @return boolean
function EndTextCommandIsMessageDisplayed() end

--- @name _END_TEXT_COMMAND_OBJECTIVE
--- @param p0 boolean 
--- @return void (Type not found)
function EndTextCommandObjective(p0) end

--- @name END_TEXT_COMMAND_OVERRIDE_BUTTON_TEXT
--- @param buttonIndex number Index of the instructional button
--- @return void (Type not found)
function EndTextCommandOverrideButtonText(buttonIndex) end

--- Draws the subtitle at middle center of the screen.  
--- int duration = time in milliseconds to show text on screen before disappearing  
--- drawImmediately = If true, the text will be drawn immediately, if false, the text will be drawn after the previous subtitle has finished  
--- Used to be known as _DRAW_SUBTITLE_TIMED  
--- @name END_TEXT_COMMAND_PRINT
--- @param duration number 
--- @param drawImmediately boolean 
--- @return void (Type not found)
function EndTextCommandPrint(duration, drawImmediately) end

--- Shows an "award" notification above the minimap, lua example result:
--- ![](https://i.imgur.com/e2DNaKX.png)
--- Old description:
--- Example:  
--- UI::_SET_NOTIFICATION_TEXT_ENTRY("HUNT");  
--- UI::_0xAA295B6F28BD587D("Hunting", "Hunting_Gold_128", 0, 109, "HUD_MED_UNLKED");  
--- @name END_TEXT_COMMAND_THEFEED_POST_AWARD
--- @param textureDict string The texture dictionary name for the icon on the left.
--- @param textureName string The texture name for the icon on the left.
--- @param rpBonus number The gained "RP" amount that will be displayed on the right side of the notification.
--- @param colorOverlay number Hudcolor overlay that gets applied on top of the notification, conflicts with text/image visibility in most cases if set to something other than 0.
--- @param titleLabel string The label that will be displayed at the top of the notification (title).
--- @return number
function EndTextCommandThefeedPostAward(textureDict, textureName, rpBonus, colorOverlay, titleLabel) end

--- p0 = 1 or 0  
--- crashes my game...  
--- this is for sending invites to network players - jobs/apartment/ect...   
--- return notification handle  
--- int invite(Player player)  
--- 	{  
--- networkHandleMgr netHandle;  
--- networkClanMgr clan;  
--- char *playerName = GET_PLAYER_NAME(player);  
--- _SET_NOTIFICATION_TEXT_ENTRY("STRING");  
--- _SET_NOTIFACTION_COLOR_NEXT(1);  
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
--- NETWORK_HANDLE_FROM_PLAYER(player, &netHandle.netHandle, 13);  
--- if (NETWORK_CLAN_PLAYER_IS_ACTIVE(&netHandle.netHandle))  
--- {  
--- 	NETWORK_CLAN_PLAYER_GET_DESC(&clan.clanHandle, 35, &netHandle.netHandle);  
--- 	_DRAW_NOTIFICATION_CLAN_INVITE(0, _0x54E79E9C(&clan.clanHandle, 35), &clan.unk17, clan.isLeader, 0, 0, clan.clanHandle, playerName, 0, 0, 0);  
--- }  
--- 	}  
--- @name END_TEXT_COMMAND_THEFEED_POST_CREWTAG_WITH_GAME_NAME
--- @param crewTypeIsPrivate boolean 
--- @param crewTagContainsRockstar boolean 
--- @param crewTag number 
--- @param rank number 
--- @param isLeader boolean 
--- @param isImportant boolean 
--- @param clanHandle number 
--- @param gamerStr string 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return number
function EndTextCommandThefeedPostCrewtagWithGameName(crewTypeIsPrivate, crewTagContainsRockstar, crewTag, rank, isLeader, isImportant, clanHandle, gamerStr, r, g, b) end

--- This function and the one below it are for after you receive an invite, not sending it.  
--- p0 = 1 or 0  
--- nothin doin.   
--- int invite(Player player)  
--- 	{  
--- int iVar2, iVar3;  
--- networkHandleMgr handle;  
--- NETWORK_HANDLE_FROM_PLAYER(player, &handle.netHandle, 13);  
--- networkClanMgr clan;  
--- char *playerName = GET_PLAYER_NAME(player);  
--- _SET_NOTIFICATION_TEXT_ENTRY("STRING");  
--- _SET_NOTIFACTION_COLOR_NEXT(0);  
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
--- if (NETWORK_CLAN_PLAYER_GET_DESC(&clan, 35, &handle.netHandle))  
--- {  
--- 	iVar2 = 0;  
--- 	if (ARE_STRINGS_EQUAL(clan.unk22, "Leader") && clan.unk30 == 0)  
--- 	{  
--- iVar2 = 1;  
--- 	}  
--- 	if (clan.unk21 > 0)  
--- 	{  
--- iVar3 = 0;  
--- 	}  
--- 	else  
--- 	{  
--- iVar3 = 1;  
--- 	}  
--- 	BOOL unused = _0x54E79E9C(&clan.clanHandle, 35);  
--- 	return _DRAW_NOTIFICATION_APARTMENT_INVITE(iVar3, 0 /*unused*/, &clan.unk17, clan.unk30, iVar2, 0, clan.clanHandle, 0, 0, 0);  
--- }  
--- 	}  
--- @name END_TEXT_COMMAND_THEFEED_POST_CREWTAG
--- @param crewTypeIsPrivate boolean 
--- @param crewTagContainsRockstar boolean 
--- @param crewTag number 
--- @param rank number 
--- @param hasFounderStatus boolean 
--- @param isImportant boolean 
--- @param clanHandle number 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return number
function EndTextCommandThefeedPostCrewtag(crewTypeIsPrivate, crewTagContainsRockstar, crewTag, rank, hasFounderStatus, isImportant, clanHandle, r, g, b) end

--- This function can show pictures of every texture that can be requested by REQUEST_STREAMED_TEXTURE_DICT.
--- Needs more research.
--- Only one type of usage in the scripts:
--- HUD::\_C6F580E4C94926AC("CHAR_ACTING_UP", "CHAR_ACTING_UP", 0, 0, "DI_FEED_CHAR", a\_0);
--- @name _END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_GXT_ENTRY
--- @param txdName string 
--- @param textureName string 
--- @param flash boolean 
--- @param iconType number 
--- @param sender string 
--- @param subject string 
--- @return number
function EndTextCommandThefeedPostMessagetextGxtEntry(txdName, textureName, flash, iconType, sender, subject) end

--- @name END_TEXT_COMMAND_THEFEED_POST_CREW_RANKUP
--- @param chTitle string 
--- @param clanTxd string 
--- @param clanTxn string 
--- @param isImportant boolean 
--- @param showSubtitle boolean 
--- @return number
function EndTextCommandThefeedPostCrewRankup(chTitle, clanTxd, clanTxn, isImportant, showSubtitle) end

--- Finalizes a text command started with [`BEGIN_TEXT_COMMAND_SET_BLIP_NAME`](#\_0xF9113A30DE5C6670), setting the name
--- of the specified blip.
--- @name END_TEXT_COMMAND_SET_BLIP_NAME
--- @param blip Blip The blip to change the name for.
--- @return void (Type not found)
function EndTextCommandSetBlipName(blip) end

--- Sets some extra options for a notification. It adds an image (or icon type) and sets a notification title (sender) and subtitle (subject).
--- Texture dictionary and texture name parameters are usually the same exact value.
--- Example result:
--- ![](https://i.imgur.com/LviutDl.png)
--- Old description with list of possible icons and texture names:
--- List of picNames: pastebin.com/XdpJVbHz  
--- flash is a bool for fading in.  
--- iconTypes:  
--- 1 : Chat Box  
--- 2 : Email  
--- 3 : Add Friend Request  
--- 4 : Nothing  
--- 5 : Nothing  
--- 6 : Nothing  
--- 7 : Right Jumping Arrow  
--- 8 : RP Icon  
--- 9 : $ Icon  
--- "sender" is the very top header. This can be any old string.  
--- "subject" is the header under the sender.  
--- @name END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT
--- @param textureDict string The texture dictionary for the icon.
--- @param textureName string The texture name for the icon.
--- @param flash boolean Flash, doesn't seem to work no matter what.
--- @param iconType number The icon type, see the list in the description below.
--- @param sender string The notification title.
--- @param subject string The notification subtitle.
--- @return number
function EndTextCommandThefeedPostMessagetext(textureDict, textureName, flash, iconType, sender, subject) end

--- List of picNames: pastebin.com/XdpJVbHz  
--- flash is a bool for fading in.  
--- iconTypes:  
--- 1 : Chat Box  
--- 2 : Email  
--- 3 : Add Friend Request  
--- 4 : Nothing  
--- 5 : Nothing  
--- 6 : Nothing  
--- 7 : Right Jumping Arrow  
--- 8 : RP Icon  
--- 9 : $ Icon  
--- "sender" is the very top header. This can be any old string.  
--- "subject" is the header under the sender.  
--- "duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
--- "clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)  
--- iconType2 is a mirror of iconType. It shows in the "subject" line, right under the original iconType.  
--- int IconNotification(char *text, char *text2, char *Subject)  
--- {  
--- 	_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
--- 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- 	_SET_NOTIFICATION_MESSAGE_CLAN_TAG_2("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 1, 7, text2, Subject, 1.0f, "__EXAMPLE", 7);  
--- 	return _DRAW_NOTIFICATION(1, 1);  
--- }  
--- @name END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG_AND_ADDITIONAL_ICON
--- @param picTxd string 
--- @param picTxn string 
--- @param flash boolean 
--- @param iconType1 number 
--- @param nameStr string 
--- @param subtitleStr string 
--- @param duration number 
--- @param crewPackedStr string 
--- @param iconType2 number 
--- @param textColor number 
--- @return number
function EndTextCommandThefeedPostMessagetextWithCrewTagAndAdditionalIcon(picTxd, picTxn, flash, iconType1, nameStr, subtitleStr, duration, crewPackedStr, iconType2, textColor) end

--- @name END_TEXT_COMMAND_THEFEED_POST_MPTICKER
--- @param blink boolean 
--- @param bHasTokens boolean 
--- @return number
function EndTextCommandThefeedPostMpticker(blink, bHasTokens) end

--- NOTE: 'duration' is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.
--- Example, only occurrence in the scripts:
--- v_8 = UI::END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 0, 0, &v_9, "", a_5);
--- Example result:
--- ![](https://i.imgur.com/YrN4Bcm.png)
--- @name END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU
--- @param picTxd string 
--- @param picTxn string 
--- @param flash boolean 
--- @param iconType number 
--- @param nameStr string 
--- @param subtitleStr string 
--- @param duration number 
--- @return number
function EndTextCommandThefeedPostMessagetextTu(picTxd, picTxn, flash, iconType, nameStr, subtitleStr, duration) end

--- List of picNames pastebin.com/XdpJVbHz  
--- flash is a bool for fading in.  
--- iconTypes:  
--- 1 : Chat Box  
--- 2 : Email  
--- 3 : Add Friend Request  
--- 4 : Nothing  
--- 5 : Nothing  
--- 6 : Nothing  
--- 7 : Right Jumping Arrow  
--- 8 : RP Icon  
--- 9 : $ Icon  
--- "sender" is the very top header. This can be any old string.  
--- "subject" is the header under the sender.  
--- "duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
--- "clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)  
--- @name END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG
--- @param picTxd string 
--- @param picTxn string 
--- @param flash boolean 
--- @param iconType number 
--- @param nameStr string 
--- @param subtitleStr string 
--- @param duration number 
--- @param crewPackedStr string 
--- @return number
function EndTextCommandThefeedPostMessagetextWithCrewTag(picTxd, picTxn, flash, iconType, nameStr, subtitleStr, duration, crewPackedStr) end

--- returns a notification handle, prints out a notification like below:  
--- type range: 0   
--- if you set type to 1, image goes from 0 - 39 - Xbox you can add text to  
--- example:   
--- UI::_0xD202B92CBF1D816F(1, 20, "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");  
--- @name _END_TEXT_COMMAND_THEFEED_POST_REPLAY_ICON
--- @param eType number 
--- @param iIcon number 
--- @param sTitle string 
--- @return number
function EndTextCommandThefeedPostReplayIcon(eType, iIcon, sTitle) end

--- returns a notification handle, prints out a notification like below:
--- type range: 0 - 2
--- if you set type to 1, button accepts "~INPUT_SOMETHING~"
--- example:
--- HUD::_0xDD6CB2CCE7C2735C(1, "~INPUT_TALK~", "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");
--- - imgur.com/UPy0Ial
--- Examples from the scripts:
--- l_D1[1/*1*/]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");
--- l_D1[2/*1*/]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_SAVE_REPLAY_CLIP~","");
--- l_D1[1/*1*/]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");
--- l_D1[2/*1*/]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING_SECONDARY~","");
--- @name _END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT
--- @param type number 
--- @param button string 
--- @param text string 
--- @return number
function EndTextCommandThefeedPostReplayInput(type, button, text) end

--- [List of picture names](https://pastebin.com/XdpJVbHz)
--- Example result:
--- ![](https://i.imgur.com/SdEZ22m.png)
--- @name END_TEXT_COMMAND_THEFEED_POST_STATS
--- @param statTitle string 
--- @param iconEnum number 
--- @param stepVal boolean 
--- @param barValue number 
--- @param isImportant boolean 
--- @param picTxd string 
--- @param picTxn string 
--- @return number
function EndTextCommandThefeedPostStats(statTitle, iconEnum, stepVal, barValue, isImportant, picTxd, picTxn) end

--- Example output preview:
--- ![](https://i.imgur.com/TJvqkYq.png)
--- @name END_TEXT_COMMAND_THEFEED_POST_TICKER
--- @param isImportant boolean Makes the notification flash on the screen.
--- @param bHasTokens boolean Makes the notification appear in the "Pause Menu > Info/Brief > Notifications" section.
--- @return number
function EndTextCommandThefeedPostTicker(isImportant, bHasTokens) end

--- @name END_TEXT_COMMAND_THEFEED_POST_TICKER_FORCED
--- @param blink boolean 
--- @param bHasTokens boolean 
--- @return number
function EndTextCommandThefeedPostTickerForced(blink, bHasTokens) end

--- @name END_TEXT_COMMAND_THEFEED_POST_UNLOCK
--- @param chTitle string 
--- @param iconType number 
--- @param chSubtitle string 
--- @return 
function EndTextCommandThefeedPostUnlock(chTitle, iconType, chSubtitle) end

--- @name END_TEXT_COMMAND_THEFEED_POST_UNLOCK_TU
--- @param chTitle string 
--- @param iconType number 
--- @param chSubtitle string 
--- @param isImportant boolean 
--- @return 
function EndTextCommandThefeedPostUnlockTu(chTitle, iconType, chSubtitle, isImportant) end

--- @name END_TEXT_COMMAND_THEFEED_POST_UNLOCK_TU_WITH_COLOR
--- @param chTitle string 
--- @param iconType number 
--- @param chSubtitle string 
--- @param isImportant boolean 
--- @param titleColor number 
--- @param p5 boolean 
--- @return 
function EndTextCommandThefeedPostUnlockTuWithColor(chTitle, iconType, chSubtitle, isImportant, titleColor, p5) end

--- NativeDB Added Parameter 7: int hudColorIndex1
--- NativeDB Added Parameter 8: int hudColorIndex2
--- @name END_TEXT_COMMAND_THEFEED_POST_VERSUS_TU
--- @param ch1TXD string 
--- @param ch1TXN string 
--- @param val1 number 
--- @param ch2TXD string 
--- @param ch2TXN string 
--- @param val2 number 
--- @return number
function EndTextCommandThefeedPostVersusTu(ch1TXD, ch1TXN, val1, ch2TXD, ch2TXN, val2) end

--- @name FLAG_PLAYER_CONTEXT_IN_TOURNAMENT
--- @param toggle boolean 
--- @return void (Type not found)
function FlagPlayerContextInTournament(toggle) end

--- @name FLASH_ABILITY_BAR
--- @param millisecondsToFlash number 
--- @return void (Type not found)
function FlashAbilityBar(millisecondsToFlash) end

--- @name FLASH_MINIMAP_DISPLAY_WITH_COLOR
--- @param hudColorIndex number 
--- @return void (Type not found)
function FlashMinimapDisplayWithColor(hudColorIndex) end

--- adds a short flash to the Radar/Minimap  
--- Usage: UI.FLASH_MINIMAP_DISPLAY  
--- @name FLASH_MINIMAP_DISPLAY
--- @return void (Type not found)
function FlashMinimapDisplay() end

--- @name END_TEXT_COMMAND_THEFEED_POST_TICKER_WITH_TOKENS
--- @param isImportant boolean 
--- @param bHasTokens boolean 
--- @return number
function EndTextCommandThefeedPostTickerWithTokens(isImportant, bHasTokens) end

--- @name _FORCE_CLOSE_TEXT_INPUT_BOX
--- @return void (Type not found)
function ForceCloseTextInputBox() end

--- @name FLASH_WANTED_DISPLAY
--- @param p0 boolean 
--- @return void (Type not found)
function FlashWantedDisplay(p0) end

--- Doesn't actually return anything.
--- @name FORCE_SONAR_BLIPS_THIS_FRAME
--- @return 
function ForceSonarBlipsThisFrame() end

--- Returns the current AI BLIP for the specified ped  
--- @name _GET_AI_BLIP
--- @param ped Ped 
--- @return Blip
function GetAiBlip(ped) end

--- @name _GET_AI_BLIP_2
--- @param ped Ped 
--- @return Blip
function GetAiBlip2(ped) end

--- @name FORCE_CLOSE_REPORTUGC_MENU
--- @return void (Type not found)
function ForceCloseReportugcMenu() end

--- @name GET_BLIP_ALPHA
--- @param blip Blip 
--- @return number
function GetBlipAlpha(blip) end

--- @name GET_BLIP_COLOUR
--- @param blip Blip 
--- @return number
function GetBlipColour(blip) end

--- @name GET_BLIP_COORDS
--- @param blip Blip 
--- @return Vector3
function GetBlipCoords(blip) end

--- @name GET_BLIP_INFO_ID_ENTITY_INDEX
--- @param blip Blip 
--- @return Entity
function GetBlipInfoIdEntityIndex(blip) end

--- Returns the Blip handle of given Entity.  
--- @name GET_BLIP_FROM_ENTITY
--- @param entity Entity 
--- @return Blip
function GetBlipFromEntity(entity) end

--- This function is hard-coded to always return 0.  
--- @name GET_BLIP_INFO_ID_PICKUP_INDEX
--- @param blip Blip 
--- @return Pickup
function GetBlipInfoIdPickupIndex(blip) end

--- @name GET_BLIP_INFO_ID_COORD
--- @param blip Blip 
--- @return Vector3
function GetBlipInfoIdCoord(blip) end

--- Returns a value based on what the blip is attached to
--- 1 - Vehicle
--- 2 - Ped
--- 3 - Object
--- 4 - Coord
--- 5 - unk
--- 6 - Pickup
--- 7 - Radius
--- @name GET_BLIP_INFO_ID_TYPE
--- @param blip Blip 
--- @return number
function GetBlipInfoIdType(blip) end

--- @name GET_BLIP_HUD_COLOUR
--- @param blip Blip 
--- @return number
function GetBlipHudColour(blip) end

--- NativeDB Introduced: v2060
--- @name _GET_BLIP_ROTATION
--- @param blip Blip 
--- @return number
function GetBlipRotation(blip) end

--- NativeDB Introduced: v1180
--- @name _GET_CLOSEST_BLIP_OF_TYPE
--- @param blipSprite number 
--- @return Blip
function GetClosestBlipOfType(blipSprite) end

--- Gets the sprite id of the specified blip. Blip sprite ids and images can be found [here](https://docs.fivem.net/docs/game-references/blips/).
--- @name GET_BLIP_SPRITE
--- @param blip Blip The blip handle.
--- @return number
function GetBlipSprite(blip) end

--- @name GET_BLIP_INFO_ID_DISPLAY
--- @param blip Blip 
--- @return number
function GetBlipInfoIdDisplay(blip) end

--- This function is hard-coded to always return 1.  
--- @name GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID
--- @return number
function GetDefaultScriptRendertargetRenderId() end

--- if (HUD::GET_CURRENT_FRONTEND_MENU_VERSION() == joaat("fe_menu_version_empty_no_background"))
--- @name GET_CURRENT_FRONTEND_MENU_VERSION
--- @return Hash
function GetCurrentFrontendMenuVersion() end

--- Returns the ActionScript flagValue.
--- ActionScript flags are global flags that scaleforms use
--- Flags found during testing
--- 0: Returns 1 if the web_browser keyboard is open, otherwise 0
--- 1: Returns 1 if the player has clicked back twice on the opening page, otherwise 0 (web_browser)
--- 2: Returns how many links the player has clicked in the web_browser scaleform, returns 0 when the browser gets closed
--- 9: Returns the current selection on the mobile phone scaleform
--- There are 20 flags in total.
--- @name GET_GLOBAL_ACTIONSCRIPT_FLAG
--- @param flagIndex number 
--- @return number
function GetGlobalActionscriptFlag(flagIndex) end

--- @name GET_CURRENT_WEBSITE_ID
--- @return number
function GetCurrentWebsiteId() end

--- @name GET_FIRST_BLIP_INFO_ID
--- @param blipSprite number 
--- @return Blip
function GetFirstBlipInfoId(blipSprite) end

--- Gets hud color RGBA parameter values by passing a hud color index (hudColorIndex).
--- HUD colors can be found [here](https://docs.fivem.net/docs/game-references/hud-colors/)
--- @name GET_HUD_COLOUR
--- @param hudColorIndex number 
--- @param r number 
--- @param g number 
--- @param b number 
--- @param a number 
--- @return void (Type not found)
function GetHudColour(hudColorIndex, r, g, b, a) end

--- @name GET_CURRENT_WEBPAGE_ID
--- @return number
function GetCurrentWebpageId() end

--- @name GET_HUD_COMPONENT_POSITION
--- @param id number 
--- @return Vector3
function GetHudComponentPosition(id) end

--- Gets a string literal from a label name.
--- GET_F*
--- @name _GET_LABEL_TEXT
--- @param labelName string 
--- @return string
function GetLabelText(labelName) end

--- World to relative screen coords
--- this world to screen will keep the text on screen. it will keep it in the screen pos
--- @name GET_HUD_SCREEN_POSITION_FROM_WORLD_POSITION
--- @param worldX number 
--- @param worldY number 
--- @param worldZ number 
--- @param screenX number 
--- @param screenY number 
--- @return boolean
function GetHudScreenPositionFromWorldPosition(worldX, worldY, worldZ, screenX, screenY) end

--- Returns the length of the string passed (much like strlen).  
--- @name GET_LENGTH_OF_LITERAL_STRING
--- @param string string 
--- @return number
function GetLengthOfLiteralString(string) end

--- Returns the string length of the string from the gxt string .  
--- @name GET_LENGTH_OF_STRING_WITH_THIS_TEXT_LABEL
--- @param gxt string 
--- @return number
function GetLengthOfStringWithThisTextLabel(gxt) end

--- @name GET_MAIN_PLAYER_BLIP_ID
--- @return Blip
function GetMainPlayerBlipId() end

--- p0 was always 0xAE2602A3.
--- @name GET_MENU_PED_BOOL_STAT
--- @param p0 Hash 
--- @param p1  
--- @return boolean
function GetMenuPedBoolStat(p0, p1) end

--- @name GET_MENU_PED_FLOAT_STAT
--- @param p0  
--- @param p1 number 
--- @return boolean
function GetMenuPedFloatStat(p0, p1) end

--- @name GET_LENGTH_OF_LITERAL_STRING_IN_BYTES
--- @param string string 
--- @return number
function GetLengthOfLiteralStringInBytes(string) end

--- @name GET_MENU_PED_MASKED_INT_STAT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function GetMenuPedMaskedIntStat(p0, p1, p2, p3) end

--- @name GET_MENU_PED_INT_STAT
--- @param p0  
--- @param p1  
--- @return boolean
function GetMenuPedIntStat(p0, p1) end

--- @name GET_NEXT_BLIP_INFO_ID
--- @param blipSprite number 
--- @return Blip
function GetNextBlipInfoId(blipSprite) end

--- @name GET_MINIMAP_FOW_COORDINATE_IS_REVEALED
--- @param x number 
--- @param y number 
--- @param z number 
--- @return boolean
function GetMinimapFowCoordinateIsRevealed(x, y, z) end

--- @name GET_MINIMAP_FOW_DISCOVERY_RATIO
--- @return number
function GetMinimapFowDiscoveryRatio() end

--- @name GET_NAMED_RENDERTARGET_RENDER_ID
--- @param name string 
--- @return number
function GetNamedRendertargetRenderId(name) end

--- @name GET_NEW_SELECTED_MISSION_CREATOR_BLIP
--- @return Blip
function GetNewSelectedMissionCreatorBlip() end

--- Name between `GET_ONSCREEN_KEYBOARD_RESULT` and `GET_PAUSE_MENU_STATE`. Likely, `GET_PAUSE_MENU_*`.
--- @name _GET_PAUSE_MENU_CURSOR_POSITION
--- @return Vector3
function GetPauseMenuCursorPosition() end

--- @name GET_NUMBER_OF_ACTIVE_BLIPS
--- @return number
function GetNumberOfActiveBlips() end

--- lastItemMenuId: this is the menuID of the last selected item minus 1000 (lastItem.menuID - 1000)
--- selectedItemMenuId: same as lastItemMenuId except for the currently selected menu item
--- selectedItemUniqueId: this is uniqueID of the currently selected menu item
--- when the pausemenu is closed:
--- lastItemMenuId = -1
--- selectedItemMenuId = -1
--- selectedItemUniqueId = 0
--- when the header gains focus:
--- lastItemMenuId updates as normal or 0 if the pausemenu was just opened
--- selectedItemMenuId becomes a unique id for the pausemenu page that focus was taken from (?) or 0 if the pausemenu was just opened
--- selectedItemUniqueId = -1
--- when focus is moved from the header to a pausemenu page:
--- lastItemMenuId becomes a unique id for the pausemenu page that focus was moved to (?)
--- selectedItemMenuId = -1
--- selectedItemUniqueId updates as normal
--- @name _GET_PAUSE_MENU_SELECTION_DATA
--- @param lastItemMenuId number 
--- @param selectedItemMenuId number 
--- @param selectedItemUniqueId number 
--- @return void (Type not found)
function GetPauseMenuSelectionData(lastItemMenuId, selectedItemMenuId, selectedItemUniqueId) end

--- @name _GET_NORTH_RADAR_BLIP
--- @return Blip
function GetNorthRadarBlip() end

--- This gets the height of the FONT and not the total text. You need to get the number of lines your text uses, and get the height of a newline (I'm using a smaller value) to get the total text height.
--- Old name: _GET_TEXT_SCALE_HEIGHT
--- @name GET_RENDERED_CHARACTER_HEIGHT
--- @param size number 
--- @param font number 
--- @return number
function GetRenderedCharacterHeight(size, font) end

--- @name _GET_PAUSE_MENU_SELECTION
--- @param lastItemMenuId number 
--- @param selectedItemUniqueId number 
--- @return void (Type not found)
function GetPauseMenuSelection(lastItemMenuId, selectedItemUniqueId) end

--- Converts the hash of a street name into a readable string. To retrieve a hash for a given (street) coordinate, see [`GET_STREET_NAME_AT_COORD`](#\_0x2EB41072B4C1E4C0).
--- @name GET_STREET_NAME_FROM_HASH_KEY
--- @param hash Hash 
--- @return string
function GetStreetNameFromHashKey(hash) end

--- Gets mouse selection data from scaleforms with mouse support. Must be checked every frame.
--- Returns item index if using the COLOUR_SWITCHER\_02 scaleform.
--- Selection types, found in MOUSE_EVENTS.as:
--- MOUSE_DRAG_OUT = 0;
--- MOUSE_DRAG_OVER = 1;
--- MOUSE_DOWN = 2;
--- MOUSE_MOVE = 3;
--- MOUSE_UP = 4;
--- MOUSE_PRESS = 5;
--- MOUSE_RELEASE = 6;
--- MOUSE_RELEASE_OUTSIDE = 7;
--- MOUSE_ROLL_OUT = 8;
--- MOUSE_ROLL_OVER = 9;
--- MOUSE_WHEEL_UP = 10;
--- MOUSE_WHEEL_DOWN = 11;
--- Scaleforms that this works with:
--- *   COLOUR_SWITCHER\_02
--- *   MP_RESULTS_PANEL
--- *   MP_NEXT_JOB_SELECTION
--- *   SC_LEADERBOARD
---     Probably works with other scaleforms, needs more research.
---     In order to use this Native you MUST have controls 239, 240, 237, 238 enabled!
---     This native, due to its erroneous redundancy of the returned boolean value, works differently in C#: shifting the parameters (where `received` becomes `selectionType` and so on making the fourth parameter unused and always 0).
--- @name _GET_SCALEFORM_MOVIE_CURSOR_SELECTION
--- @param scaleformHandle number Handle of the scaleform
--- @param received boolean Returns a boolean indicating if the data was received successfully (in Lua).
--- @param selectionType number The type of MouseEvent specified above.
--- @param context number Context of the slot the mouse is hovering on.
--- @param slotIndex number Index of the slot the mouse is hovering on.
--- @return boolean
function GetScaleformMovieCursorSelection(scaleformHandle, received, selectionType, context, slotIndex) end

--- Returns a substring of a specified length starting at a specified position.
--- Example:
--- // Get "STRING" text from "MY_STRING"
--- subStr = HUD::_GET_TEXT_SUBSTRING("MY_STRING", 3, 6);
--- @name _GET_TEXT_SUBSTRING
--- @param text string 
--- @param position number 
--- @param length number 
--- @return string
function GetTextSubstring(text, position, length) end

--- Returns:
--- 0
--- 5
--- 10
--- 15
--- 20
--- 25
--- 30
--- 35
--- @name GET_PAUSE_MENU_STATE
--- @return number
function GetPauseMenuState() end

--- Returns a substring that is between two specified positions. The length of the string will be calculated using (endPosition - startPosition).
--- Example:
--- // Get "STRING" text from "MY_STRING"
--- subStr = HUD::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 9);
--- // Overflows are possibly replaced with underscores (needs verification)
--- subStr = HUD::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 10); // "STRING_"?
--- @name _GET_TEXT_SUBSTRING_SLICE
--- @param text string 
--- @param startPosition number 
--- @param endPosition number 
--- @return string
function GetTextSubstringSlice(text, startPosition, endPosition) end

--- Returns a substring of a specified length starting at a specified position. The result is guaranteed not to exceed the specified max length.
--- NOTE: The 'maxLength' parameter might actually be the size of the buffer that is returned. More research is needed. -CL69
--- Example:
--- // Condensed example of how Rockstar uses this function
--- strLen = HUD::GET_LENGTH_OF_LITERAL_STRING(MISC::GET_ONSCREEN_KEYBOARD_RESULT());
--- subStr = HUD::_GET_TEXT_SUBSTRING_SAFE(MISC::GET_ONSCREEN_KEYBOARD_RESULT(), 0, strLen, 63);
--- --
--- "fm_race_creator.ysc", line 85115:
--- // parameters modified for clarity
--- BOOL sub_8e5aa(char *text, int length) {
---     for (i = 0; i <= (length - 2); i += 1) {
---         if (!MISC::ARE_STRINGS_EQUAL(HUD::_GET_TEXT_SUBSTRING_SAFE(text, i, i + 1, 1), " ")) {
---             return FALSE;
---         }
---     }
---     return TRUE;
--- }
--- @name _GET_TEXT_SUBSTRING_SAFE
--- @param text string 
--- @param position number 
--- @param length number 
--- @param maxLength number 
--- @return string
function GetTextSubstringSafe(text, position, length, maxLength) end

--- @name GET_WAYPOINT_BLIP_ENUM_ID
--- @return number
function GetWaypointBlipEnumId() end

--- @name GET_STANDARD_BLIP_ENUM_ID
--- @return number
function GetStandardBlipEnumId() end

--- p1 is either 1 or 2 in the PC scripts.  
--- This native is used to "give"/duplicate a player ped to a frontend menu as configured via the `ACTIVATE_FRONTEND_MENU` native, you first must utilize the [CLONE_PED](#\_0xEF29A16337FACADB) to clone said ped.
--- @name GIVE_PED_TO_PAUSE_MENU
--- @param ped Ped 
--- @param p1 number 
--- @return void (Type not found)
function GivePedToPauseMenu(ped, p1) end

--- Checks if the specified gxt has loaded into the passed slot.  
--- @name HAS_THIS_ADDITIONAL_TEXT_LOADED
--- @param gxt string 
--- @param slot number 
--- @return boolean
function HasThisAdditionalTextLoaded(gxt, slot) end

--- NativeDB Introduced: v1290
--- @name _GET_WARNING_MESSAGE_TITLE_HASH
--- @return Hash
function GetWarningMessageTitleHash() end

--- @name HIDE_HELP_TEXT_THIS_FRAME
--- @return void (Type not found)
function HideHelpTextThisFrame() end

--- HAS_*
--- @name _HAS_DIRECTOR_MODE_BEEN_TRIGGERED
--- @return boolean
function HasDirectorModeBeenTriggered() end

--- @name HAS_ADDITIONAL_TEXT_LOADED
--- @param slot number 
--- @return boolean
function HasAdditionalTextLoaded(slot) end

--- I think this works, but seems to prohibit switching to other weapons (or accessing the weapon wheel)  
--- @name HIDE_HUD_AND_RADAR_THIS_FRAME
--- @return void (Type not found)
function HideHudAndRadarThisFrame() end

--- This function hides various HUD (Heads-up Display) components.
--- Listed below are the integers and the corresponding HUD component.
--- *   1 : WANTED_STARS
--- *   2 : WEAPON_ICON
--- *   3 : CASH
--- *   4 : MP_CASH
--- *   5 : MP_MESSAGE
--- *   6 : VEHICLE_NAME
--- *   7 : AREA_NAME
--- *   8 : VEHICLE_CLASS
--- *   9 : STREET_NAME
--- *   10 : HELP_TEXT
--- *   11 : FLOATING_HELP_TEXT\_1
--- *   12 : FLOATING_HELP_TEXT\_2
--- *   13 : CASH_CHANGE
--- *   14 : RETICLE
--- *   15 : SUBTITLE_TEXT
--- *   16 : RADIO_STATIONS
--- *   17 : SAVING_GAME
--- *   18 : GAME_STREAM
--- *   19 : WEAPON_WHEEL
--- *   20 : WEAPON_WHEEL_STATS
--- *   21 : HUD_COMPONENTS
--- *   22 : HUD_WEAPONS
--- These integers also work for the [`SHOW_HUD_COMPONENT_THIS_FRAME`](#\_0x0B4DF1FA60C0E664) native, but instead shows the HUD Component.
--- @name HIDE_HUD_COMPONENT_THIS_FRAME
--- @param id number 
--- @return void (Type not found)
function HideHudComponentThisFrame(id) end

--- @name HIDE_MINIMAP_EXTERIOR_MAP_THIS_FRAME
--- @return void (Type not found)
function HideMinimapExteriorMapThisFrame() end

--- HIDE_*_THIS_FRAME
--- Hides area and vehicle name HUD components for one frame.
--- @name _HIDE_AREA_AND_VEHICLE_NAME_THIS_FRAME
--- @return void (Type not found)
function HideAreaAndVehicleNameThisFrame() end

--- @name HIDE_LOADING_ON_FADE_THIS_FRAME
--- @return void (Type not found)
function HideLoadingOnFadeThisFrame() end

--- @name HIDE_NUMBER_ON_BLIP
--- @param blip Blip 
--- @return void (Type not found)
function HideNumberOnBlip(blip) end

--- @name HIDE_SCRIPTED_HUD_COMPONENT_THIS_FRAME
--- @param id number 
--- @return void (Type not found)
function HideScriptedHudComponentThisFrame(id) end

--- Displays loading screen tips, requires `_0x56C8B608CFD49854` to be called beforehand.
--- @name _HUD_DISPLAY_LOADING_SCREEN_TIPS
--- @return void (Type not found)
function HudDisplayLoadingScreenTips() end

--- Set the active slotIndex in the wheel weapon to the slot associated with the provided Weapon hash
--- @name HUD_SET_WEAPON_WHEEL_TOP_SLOT
--- @param weaponHash Hash 
--- @return void (Type not found)
function HudSetWeaponWheelTopSlot(weaponHash) end

--- @name HIDE_MINIMAP_INTERIOR_MAP_THIS_FRAME
--- @return void (Type not found)
function HideMinimapInteriorMapThisFrame() end

--- Returns the weapon hash active in a specific weapon wheel slotList
--- @name _HUD_WEAPON_WHEEL_GET_SLOT_HASH
--- @param weaponTypeIndex number 
--- @return Hash
function HudWeaponWheelGetSlotHash(weaponTypeIndex) end

--- Sets a global that disables many weapon input tasks (shooting, aiming, etc.). Does not work with vehicle weapons, only used in selector.ysc
--- @name _HUD_WEAPON_WHEEL_IGNORE_CONTROL_INPUT
--- @param toggle boolean 
--- @return void (Type not found)
function HudWeaponWheelIgnoreControlInput(toggle) end

--- Forces the weapon wheel to show/hide.
--- @name HUD_FORCE_WEAPON_WHEEL
--- @param show boolean 
--- @return void (Type not found)
function HudForceWeaponWheel(show) end

--- Returns the weapon hash to the selected/highlighted weapon in the wheel
--- @name _HUD_WEAPON_WHEEL_GET_SELECTED_HASH
--- @return Hash
function HudWeaponWheelGetSelectedHash() end

--- Calling this each frame, stops the player from receiving a weapon via the weapon wheel.
--- @name _HUD_WEAPON_WHEEL_IGNORE_SELECTION
--- @return void (Type not found)
function HudWeaponWheelIgnoreSelection() end

--- @name IS_BLIP_SHORT_RANGE
--- @param blip Blip 
--- @return boolean
function IsBlipShortRange(blip) end

--- @name IS_BLIP_FLASHING
--- @param blip Blip 
--- @return boolean
function IsBlipFlashing(blip) end

--- @name IS_BLIP_ON_MINIMAP
--- @param blip Blip 
--- @return boolean
function IsBlipOnMinimap(blip) end

--- @name IS_FLOATING_HELP_TEXT_ON_SCREEN
--- @param hudIndex number 
--- @return boolean
function IsFloatingHelpTextOnScreen(hudIndex) end

--- @name IS_HELP_MESSAGE_FADING_OUT
--- @return boolean
function IsHelpMessageFadingOut() end

--- @name IS_FRONTEND_READY_FOR_CONTROL
--- @return boolean
function IsFrontendReadyForControl() end

--- Full list of components below  
--- HUD = 0;  
--- HUD_WANTED_STARS = 1;  
--- HUD_WEAPON_ICON = 2;  
--- HUD_CASH = 3;  
--- HUD_MP_CASH = 4;  
--- HUD_MP_MESSAGE = 5;  
--- HUD_VEHICLE_NAME = 6;  
--- HUD_AREA_NAME = 7;  
--- HUD_VEHICLE_CLASS = 8;  
--- HUD_STREET_NAME = 9;  
--- HUD_HELP_TEXT = 10;  
--- HUD_FLOATING_HELP_TEXT_1 = 11;  
--- HUD_FLOATING_HELP_TEXT_2 = 12;  
--- HUD_CASH_CHANGE = 13;  
--- HUD_RETICLE = 14;  
--- HUD_SUBTITLE_TEXT = 15;  
--- HUD_RADIO_STATIONS = 16;  
--- HUD_SAVING_GAME = 17;  
--- HUD_GAME_STREAM = 18;  
--- HUD_WEAPON_WHEEL = 19;  
--- HUD_WEAPON_WHEEL_STATS = 20;  
--- MAX_HUD_COMPONENTS = 21;  
--- MAX_HUD_WEAPONS = 22;  
--- MAX_SCRIPTED_HUD_COMPONENTS = 141;  
--- @name IS_HUD_COMPONENT_ACTIVE
--- @param id number 
--- @return boolean
function IsHudComponentActive(id) end

--- @name IS_HELP_MESSAGE_BEING_DISPLAYED
--- @return boolean
function IsHelpMessageBeingDisplayed() end

--- @name IS_HELP_MESSAGE_ON_SCREEN
--- @return boolean
function IsHelpMessageOnScreen() end

--- @name IS_HUD_PREFERENCE_SWITCHED_ON
--- @return boolean
function IsHudPreferenceSwitchedOn() end

--- @name IS_HOVERING_OVER_MISSION_CREATOR_BLIP
--- @return boolean
function IsHoveringOverMissionCreatorBlip() end

--- @name _IS_MINIMAP_IN_INTERIOR
--- @return boolean
function IsMinimapInInterior() end

--- @name IS_HUD_HIDDEN
--- @return boolean
function IsHudHidden() end

--- Returns true if the cursor is hovering above instructional buttons.
--- Note: The buttons need to support mouse (with the TOGGLE_MOUSE_SUPPORT scaleform movie method) for it to return true.
--- @name _IS_MOUSE_CURSOR_ABOVE_INSTRUCTIONAL_BUTTONS
--- @return boolean
function IsMouseCursorAboveInstructionalButtons() end

--- @name IS_MESSAGE_BEING_DISPLAYED
--- @return boolean
function IsMessageBeingDisplayed() end

--- @name IS_MINIMAP_RENDERING
--- @return boolean
function IsMinimapRendering() end

--- @name IS_MP_GAMER_TAG_ACTIVE
--- @param gamerTagId number 
--- @return boolean
function IsMpGamerTagActive(gamerTagId) end

--- @name IS_MP_GAMER_TAG_MOVIE_ACTIVE
--- @return boolean
function IsMpGamerTagMovieActive() end

--- @name IS_MISSION_CREATOR_BLIP
--- @param blip Blip 
--- @return boolean
function IsMissionCreatorBlip(blip) end

--- @name IS_MP_GAMER_TAG_FREE
--- @param gamerTagId number 
--- @return boolean
function IsMpGamerTagFree(gamerTagId) end

--- @name IS_NAMED_RENDERTARGET_LINKED
--- @param modelHash Hash 
--- @return boolean
function IsNamedRendertargetLinked(modelHash) end

--- Returns whether or not the text chat (MULTIPLAYER_CHAT Scaleform component) is active.  
--- @name _IS_MULTIPLAYER_CHAT_ACTIVE
--- @return boolean
function IsMultiplayerChatActive() end

--- @name IS_NAVIGATING_MENU_CONTENT
--- @return 
function IsNavigatingMenuContent() end

--- @name IS_NAMED_RENDERTARGET_REGISTERED
--- @param name string 
--- @return boolean
function IsNamedRendertargetRegistered(name) end

--- Returns the same as `IS_SOCIAL_CLUB_ACTIVE`.
--- @name IS_ONLINE_POLICIES_MENU_ACTIVE
--- @return boolean
function IsOnlinePoliciesMenuActive() end

--- @name IS_RADAR_PREFERENCE_SWITCHED_ON
--- @return boolean
function IsRadarPreferenceSwitchedOn() end

--- @name IS_PAUSE_MENU_ACTIVE
--- @return boolean
function IsPauseMenuActive() end

--- @name IS_RADAR_HIDDEN
--- @return boolean
function IsRadarHidden() end

--- @name IS_PAUSE_MENU_RESTARTING
--- @return boolean
function IsPauseMenuRestarting() end

--- @name IS_SOCIAL_CLUB_ACTIVE
--- @return boolean
function IsSocialClubActive() end

--- @name IS_SCRIPTED_HUD_COMPONENT_ACTIVE
--- @param id number 
--- @return boolean
function IsScriptedHudComponentActive(id) end

--- @name IS_SCRIPTED_HUD_COMPONENT_HIDDEN_THIS_FRAME
--- @param id number 
--- @return boolean
function IsScriptedHudComponentHiddenThisFrame(id) end

--- @name IS_STREAMING_ADDITIONAL_TEXT
--- @param p0 number 
--- @return boolean
function IsStreamingAdditionalText(p0) end

--- IS_*
--- @name _IS_VALID_MP_GAMER_TAG_MOVIE
--- @param gamerTagId number 
--- @return boolean
function IsValidMpGamerTagMovie(gamerTagId) end

--- Returns true if a Warning Message or ReportUGC menu is active.
--- @name IS_WARNING_MESSAGE_ACTIVE
--- @return boolean
function IsWarningMessageActive() end

--- IS_WARNING_MESSAGE_*
--- @name _IS_WARNING_MESSAGE_ACTIVE_2
--- @return boolean
function IsWarningMessageActive2() end

--- @name IS_REPORTUGC_MENU_OPEN
--- @return boolean
function IsReportugcMenuOpen() end

--- @name IS_SUBTITLE_PREFERENCE_SWITCHED_ON
--- @return boolean
function IsSubtitlePreferenceSwitchedOn() end

--- @name LINK_NAMED_RENDERTARGET
--- @param modelHash Hash 
--- @return void (Type not found)
function LinkNamedRendertarget(modelHash) end

--- @name IS_WAYPOINT_ACTIVE
--- @return boolean
function IsWaypointActive() end

--- Locks the minimap to the specified angle in integer degrees.  
--- angle: The angle in whole degrees. If less than 0 or greater than 360, unlocks the angle.  
--- @name LOCK_MINIMAP_ANGLE
--- @param angle number 
--- @return void (Type not found)
function LockMinimapAngle(angle) end

--- Locks the minimap to the specified world position.  
--- @name LOCK_MINIMAP_POSITION
--- @param x number 
--- @param y number 
--- @return void (Type not found)
function LockMinimapPosition(x, y) end

--- Enables loading screen tips to be be shown (`_0x15CFA549788D35EF` and `_0x488043841BBE156F`), blocks other kinds of notifications from being displayed (at least from current script). Call `0xADED7F5748ACAFE6` to display those again.
--- @name THEFEED_FORCE_RENDER_OFF
--- @return void (Type not found)
function ThefeedForceRenderOff() end

--- Displays "normal" notifications again after calling `_0x56C8B608CFD49854` (those that were drawn before calling this native too), though those will have a weird offset and stay on screen forever (tested with notifications created from same script).
--- @name THEFEED_COMMENT_TELEPORT_POOL_OFF
--- @return void (Type not found)
function ThefeedCommentTeleportPoolOff() end

--- Shows a menu for reporting UGC content.
--- @name OPEN_REPORTUGC_MENU
--- @return void (Type not found)
function OpenReportugcMenu() end

--- @name OPEN_ONLINE_POLICIES_MENU
--- @return void (Type not found)
function OpenOnlinePoliciesMenu() end

--- Not present in retail version of the game, actual definiton seems to be
--- _LOG_DEBUG_INFO(const char* category, const char* debugText);
--- @name _LOG_DEBUG_INFO
--- @param p0 string 
--- @return void (Type not found)
function LogDebugInfo(p0) end

--- @name _OVERRIDE_MULTIPLAYER_CHAT_COLOUR
--- @param p0 number 
--- @param hudColor number 
--- @return void (Type not found)
function OverrideMultiplayerChatColour(p0, hudColor) end

--- @name _OVERRIDE_MULTIPLAYER_CHAT_PREFIX
--- @param gxtEntryHash Hash 
--- @return void (Type not found)
function OverrideMultiplayerChatPrefix(gxtEntryHash) end

--- Uses the `SOCIAL_CLUB2` scaleform.
--- @name OPEN_SOCIAL_CLUB_MENU
--- @return void (Type not found)
function OpenSocialClubMenu() end

--- @name PAUSE_MENU_DEACTIVATE_CONTEXT
--- @param contextHash Hash 
--- @return void (Type not found)
function PauseMenuDeactivateContext(contextHash) end

--- If mouse is hovering on a slot, it returns uniqueid of that slot, else it returns -1.
--- @name _PAUSE_MENU_GET_UNIQUE_ID_OF_MOUSE_HOVERED_SLOT
--- @return number
function PauseMenuGetUniqueIdOfMouseHoveredSlot() end

--- Activates the specified frontend menu context.
--- pausemenu.xml defines some specific menu options using 'context'. Context is basically a 'condition'.
--- The `*ALL*` part of the context means that whatever is being defined, will be active when any or all of those conditions after `*ALL*` are met.
--- The `*NONE*` part of the context section means that whatever is being defined, will NOT be active if any or all of the conditions after `*NONE*` are met.
--- This basically allows you to hide certain menu sections, or things like instructional buttons.
--- See the old description below for more info.
--- ***
--- > Seems to add/set the current menu context (to show/hide buttons?)
--- > Pausemenu.xml:
--- > `<Contexts>*ALL*, DISPLAY_CORONA_BUTTONS, *NONE*, BET_LOCKED, BET_AVAILABLE, SCROLL_OPTION</Contexts>`
--- > Code:
--- >
--- > ```
--- > if (...) {
--- >     sub_bbd34(a_0, 0, "FM_BET_HELP");
--- >     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_available}); // This native
--- >     UI::OBJECT_DECAL_TOGGLE(${bet_locked});
--- > } else {
--- >     sub_bbd34(a_0, 0, "");
--- >     UI::OBJECT_DECAL_TOGGLE(${bet_available});
--- >     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_locked}); // This native
--- > }
--- > ```
--- >
--- > OBJECT_DECAL_TOGGLE seems to remove a context, It also has a hash collision
--- > // Old
--- > Scripts do not make this native's purpose clear. However, this native most likely has something to do with decals since in nearly every instance, "OBJECT_DECAL_TOGGLE" is called prior.
--- @name PAUSE_MENU_ACTIVATE_CONTEXT
--- @param hash Hash Context name hash.
--- @return void (Type not found)
function PauseMenuActivateContext(hash) end

--- Updates instructional buttons in Pause Menu after menu contexts have been toggled. p0 purpose is currently unknown, only 0 is used in scripts.
--- @name PAUSE_MENU_REDRAW_INSTRUCTIONAL_BUTTONS
--- @param p0 number 
--- @return void (Type not found)
function PauseMenuRedrawInstructionalButtons(p0) end

--- Disables the loading spinner in Pause Menu when switching from one header tab to another.
--- @name _PAUSE_MENU_DISABLE_BUSYSPINNER
--- @param toggle boolean true to disable and false to re-enable the loading icon.
--- @return void (Type not found)
function PauseMenuDisableBusyspinner(toggle) end

--- If mouse is hovering on a slot, it returns the slot's index, else it returns -1.
--- @name _PAUSE_MENU_GET_INDEX_OF_MOUSE_HOVERED_SLOT
--- @return number
function PauseMenuGetIndexOfMouseHoveredSlot() end

--- @name PAUSE_MENU_IS_CONTEXT_MENU_ACTIVE
--- @return 
function PauseMenuIsContextMenuActive() end

--- @name PAUSE_MENU_SET_BUSY_SPINNER
--- @param p0 boolean 
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function PauseMenuSetBusySpinner(p0, p1, p2) end

--- Sets current pause menu page/component to the specified value.
--- Available page IDs: https://pastebin.com/qxuhwjPT
--- @name PAUSE_MENUCEPTION_GO_DEEPER
--- @param pageId number 
--- @return void (Type not found)
function PauseMenuceptionGoDeeper(pageId) end

--- Shows this warning message when trying to switch pause menu header tabs: https://i.imgur.com/8qmfztu.png
--- @name PAUSE_MENU_SET_WARN_ON_TAB_CHANGE
--- @param setWarn boolean Wether to show the message or not.
--- @return void (Type not found)
function PauseMenuSetWarnOnTabChange(setWarn) end

--- Forces the Pause Menu to back out of unique pages such as Awards, Unlocks, Key Bindings etc
--- @name PAUSE_MENUCEPTION_THE_KICK
--- @return void (Type not found)
function PauseMenuceptionTheKick() end

--- @name PULSE_BLIP
--- @param blip Blip 
--- @return void (Type not found)
function PulseBlip(blip) end

--- @name PAUSE_MENU_IS_CONTEXT_ACTIVE
--- @param contextHash Hash 
--- @return boolean
function PauseMenuIsContextActive(contextHash) end

--- Sets the sprite of the next BLIP_GALLERY blip, values used in the native scripts: 143 (ObjectiveBlue), 144 (ObjectiveGreen), 145 (ObjectiveRed), 146 (ObjectiveYellow).
--- @name _RACE_GALLERY_NEXT_BLIP_SPRITE
--- @param spriteId number 
--- @return void (Type not found)
function RaceGalleryNextBlipSprite(spriteId) end

--- @name PRELOAD_BUSYSPINNER
--- @return void (Type not found)
function PreloadBusyspinner() end

--- Add a BLIP_GALLERY at the specific coordinate. Used in fm_maintain_transition_players to display race track points.
--- @name _RACE_GALLERY_ADD_BLIP
--- @param x number 
--- @param y number 
--- @param z number 
--- @return 
function RaceGalleryAddBlip(x, y, z) end

--- If toggle is true, the map is shown in full screen
--- If toggle is false, the map is shown in normal mode
--- @name _RACE_GALLERY_FULLSCREEN
--- @param toggle boolean 
--- @return void (Type not found)
function RaceGalleryFullscreen(toggle) end

--- Enables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard if they were disabled using the native below.
--- To disable the keys, use [`0xEC9264727EEC0F28`](#\_0xEC9264727EEC0F28).
--- @name RELEASE_CONTROL_OF_FRONTEND
--- @return void (Type not found)
function ReleaseControlOfFrontend() end

--- @name REFRESH_WAYPOINT
--- @return void (Type not found)
function RefreshWaypoint() end

--- @name RELEASE_NAMED_RENDERTARGET
--- @param name string 
--- @return boolean
function ReleaseNamedRendertarget(name) end

--- @name REGISTER_NAMED_RENDERTARGET
--- @param name string 
--- @param p1 boolean 
--- @return boolean
function RegisterNamedRendertarget(name, p1) end

--- Removes the gamer tag associated with the provided ID. This does not happen instantly. Use [IS_MP_GAMER_TAG_FREE](#\_0x595B5178E412E199) to determine when the ID is free for reuse.
--- @name REMOVE_MP_GAMER_TAG
--- @param gamerTagId number A player ID with a gamer tag or a fake gamer tag ID.
--- @return void (Type not found)
function RemoveMpGamerTag(gamerTagId) end

--- @name REMOVE_MULTIPLAYER_WALLET_CASH
--- @return void (Type not found)
function RemoveMultiplayerWalletCash() end

--- Removes the blip from your map.
--- @name REMOVE_BLIP
--- @param blip Blip Blip handle to remove.
--- @return void (Type not found)
function RemoveBlip(blip) end

--- Removes multiplayer cash hud each frame  
--- @name REMOVE_MULTIPLAYER_HUD_CASH
--- @return void (Type not found)
function RemoveMultiplayerHudCash() end

--- @name REMOVE_MULTIPLAYER_BANK_CASH
--- @return void (Type not found)
function RemoveMultiplayerBankCash() end

--- Hud colors can be found [here](https://docs.fivem.net/docs/game-references/hud-colors/)
--- @name REPLACE_HUD_COLOUR_WITH_RGBA
--- @param hudColorIndex number 
--- @param r number 
--- @param g number 
--- @param b number 
--- @param a number 
--- @return void (Type not found)
function ReplaceHudColourWithRgba(hudColorIndex, r, g, b, a) end

--- Changes the hud color at a given index (hudColorIndex) by another one (hudColorIndex2).
--- HUD colors can be found [here](https://docs.fivem.net/docs/game-references/hud-colors/)
--- @name REPLACE_HUD_COLOUR
--- @param hudColorIndex number 
--- @param hudColorIndex2 number 
--- @return void (Type not found)
function ReplaceHudColour(hudColorIndex, hudColorIndex2) end

--- @name _REMOVE_WARNING_MESSAGE_LIST_ITEMS
--- @return void (Type not found)
function RemoveWarningMessageListItems() end

--- Request a gxt into the passed slot.  
--- @name REQUEST_ADDITIONAL_TEXT
--- @param gxt string 
--- @param slot number 
--- @return void (Type not found)
function RequestAdditionalText(gxt, slot) end

--- @name REQUEST_ADDITIONAL_TEXT_FOR_DLC
--- @param gxt string 
--- @param slot number 
--- @return void (Type not found)
function RequestAdditionalTextForDlc(gxt, slot) end

--- @name RESET_GLOBAL_ACTIONSCRIPT_FLAG
--- @param flagIndex number 
--- @return void (Type not found)
function ResetGlobalActionscriptFlag(flagIndex) end

--- Before using this native click the native above and look at the decription.  
--- Example:  
--- int GetHash = Function.Call<int>(Hash.GET_HASH_KEY, "fe_menu_version_corona_lobby");  
--- Function.Call(Hash.ACTIVATE_FRONTEND_MENU, GetHash, 0, -1);  
--- Function.Call(Hash.RESTART_FRONTEND_MENU(GetHash, -1);  
--- This native refreshes the frontend menu.  
--- p1 = Hash of Menu  
--- p2 = Unknown but always works with -1.  
--- @name RESTART_FRONTEND_MENU
--- @param menuHash Hash 
--- @param p1 number 
--- @return void (Type not found)
function RestartFrontendMenu(menuHash, p1) end

--- @name RESET_HUD_COMPONENT_VALUES
--- @param id number 
--- @return void (Type not found)
function ResetHudComponentValues(id) end

--- @name RESET_RETICULE_VALUES
--- @return void (Type not found)
function ResetReticuleValues() end

--- @name SET_ABILITY_BAR_VALUE
--- @param value number 
--- @param maxValue number 
--- @return void (Type not found)
function SetAbilityBarValue(value, maxValue) end

--- NativeDB Introduced: v1493
--- @name _SET_ABILITY_BAR_VISIBILITY_IN_MULTIPLAYER
--- @param visible boolean 
--- @return void (Type not found)
function SetAbilityBarVisibilityInMultiplayer(visible) end

--- Toggles the big minimap state like in GTA:Online.
--- To get the current state of the minimap, use [`IS_BIGMAP_ACTIVE`](#\_0xFFF65C63).
--- @name SET_BIGMAP_ACTIVE
--- @param toggleBigMap boolean Enable or disable the expanded minimap.
--- @param showFullMap boolean Enable or disable the full map from being shown on the minimap, requires p0 to be true.
--- @return void (Type not found)
function SetBigmapActive(toggleBigMap, showFullMap) end

--- Allows the user to set a blip as friendly or enemy based on the toggle.
--- @name SET_BLIP_AS_FRIENDLY
--- @param blip Blip The blip handle
--- @param toggle boolean True for friendly, false for enemy
--- @return void (Type not found)
function SetBlipAsFriendly(blip, toggle) end

--- Sets alpha-channel for blip color.
--- Example:
--- Blip blip = HUD::ADD_BLIP_FOR_ENTITY(entity);
--- HUD::SET_BLIP_COLOUR(blip , 3);
--- HUD::SET_BLIP_ALPHA(blip , 64);
--- @name SET_BLIP_ALPHA
--- @param blip Blip 
--- @param alpha number 
--- @return void (Type not found)
function SetBlipAlpha(blip, alpha) end

--- @name SET_BLIP_AS_MISSION_CREATOR_BLIP
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBlipAsMissionCreatorBlip(blip, toggle) end

--- Sets whether or not the specified blip should only be displayed when nearby, or on the minimap.
--- @name SET_BLIP_AS_SHORT_RANGE
--- @param blip Blip The blip handle.
--- @param toggle boolean True to only display the blip as 'short range', false to display the blip from a longer distance.
--- @return void (Type not found)
function SetBlipAsShortRange(blip, toggle) end

--- @name SET_BLIP_BRIGHT
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBlipBright(blip, toggle) end

--- NativeDB Introduced: v1868
--- @name _SET_ALLOW_ABILITY_BAR_IN_MULTIPLAYER
--- @param toggle boolean 
--- @return void (Type not found)
function SetAllowAbilityBarInMultiplayer(toggle) end

--- @name SET_BLIP_COLOUR
--- @param blip Blip 
--- @param color number See [blip colors here](https://docs.fivem.net/docs/game-references/blips/#blip-colors)
--- @return void (Type not found)
function SetBlipColour(blip, color) end

--- Examples result:
--- ![](https://i.imgur.com/skY6vAJ.png)
--- **index:**
--- 1 = No distance shown in legend
--- 2 = Distance shown in legend
--- 7 = "Other Players" category, also shows distance in legend
--- 10 = "Property" category
--- 11 = "Owned Property" category
--- Any other value behaves like `index = 1`, `index` wraps around after 255
--- Blips with categories `7`, `10` or `11` will all show under the specific categories listing in the map legend, regardless of sprite or name.
--- **Legend entries**
--- | index | Legend entry | Label |
--- | --- | --- | --- |
--- | 7 | Other Players | `BLIP_OTHPLYR` |
--- | 10 | Property | `BLIP_PROPCAT` |
--- | 11 | Owned Property | `BLIP_APARTCAT` |
--- @name SET_BLIP_CATEGORY
--- @param blip Blip The blip to change the category index of
--- @param index number The category index to change to
--- @return void (Type not found)
function SetBlipCategory(blip, index) end

--- @name SET_BLIP_COORDS
--- @param blip Blip 
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @return void (Type not found)
function SetBlipCoords(blip, posX, posY, posZ) end

--- Must be toggled before being queued for animation
--- @name _SET_BLIP_DISPLAY_INDICATOR_ON_BLIP
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBlipDisplayIndicatorOnBlip(blip, toggle) end

--- @name SET_BLIP_FADE
--- @param blip Blip 
--- @param opacity number 
--- @param duration number 
--- @return void (Type not found)
function SetBlipFade(blip, opacity, duration) end

--- **displayId Behaviour**
--- | display ID 	| Behaviour                                                   	|
--- |------------	|-------------------------------------------------------------	|
--- | 0          	| Doesn't show up, ever, anywhere.                            	|
--- | 1          	| Doesn't show up, ever, anywhere.                            	|
--- | 2          	| Shows on both main map and minimap. (Selectable on map)     	|
--- | 3          	| Shows on main map only. (Selectable on map)                 	|
--- | 4          	| Shows on main map only. (Selectable on map)                 	|
--- | 5          	| Shows on minimap only.                                      	|
--- | 6          	| Shows on both main map and minimap. (Selectable on map)     	|
--- | 7          	| Doesn't show up, ever, anywhere.                            	|
--- | 8          	| Shows on both main map and minimap. (Not selectable on map) 	|
--- | 9          	| Shows on minimap only.                                      	|
--- | 10         	| Shows on both main map and minimap. (Not selectable on map) 	|
--- Anything higher than 10 seems to be exactly the same as 10.
--- Rockstar seem to only use 0, 2, 3, 4, 5 and 8 in the decompiled scripts.
--- @name SET_BLIP_DISPLAY
--- @param blip Blip 
--- @param displayId number 
--- @return void (Type not found)
function SetBlipDisplay(blip, displayId) end

--- Sets the interval in milliseconds before flashing the blip.
--- @name SET_BLIP_FLASH_INTERVAL
--- @param blip Blip The blip to change flashing interval
--- @param interval number Interval in milliseconds before flashing the blip
--- @return void (Type not found)
function SetBlipFlashInterval(blip, interval) end

--- @name SET_BLIP_HIDDEN_ON_LEGEND
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBlipHiddenOnLegend(blip, toggle) end

--- Flashes blip for time in milliseconds before stopping.
--- @name SET_BLIP_FLASH_TIMER
--- @param blip Blip The blip to start flashing
--- @param duration number Time in milliseconds to flash the blip before stopping
--- @return void (Type not found)
function SetBlipFlashTimer(blip, duration) end

--- Doesn't work if the label text of gxtEntry is >= 80.  
--- @name SET_BLIP_NAME_FROM_TEXT_FILE
--- @param blip Blip 
--- @param gxtEntry string 
--- @return void (Type not found)
function SetBlipNameFromTextFile(blip, gxtEntry) end

--- @name SET_BLIP_FLASHES
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBlipFlashes(blip, toggle) end

--- @name SET_BLIP_HIGH_DETAIL
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBlipHighDetail(blip, toggle) end

--- @name SET_BLIP_NAME_TO_PLAYER_NAME
--- @param blip Blip 
--- @param player Player 
--- @return void (Type not found)
function SetBlipNameToPlayerName(blip, player) end

--- @name SET_BLIP_FLASHES_ALTERNATE
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBlipFlashesAlternate(blip, toggle) end

--- See this topic for more details : gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-35?p=1069477935  
--- @name SET_BLIP_PRIORITY
--- @param blip Blip 
--- @param priority number 
--- @return void (Type not found)
function SetBlipPriority(blip, priority) end

--- @name SET_BLIP_ROUTE_COLOUR
--- @param blip Blip 
--- @param colour number 
--- @return void (Type not found)
function SetBlipRouteColour(blip, colour) end

--- Enable / disable showing route for the Blip-object.  
--- @name SET_BLIP_ROUTE
--- @param blip Blip 
--- @param enabled boolean 
--- @return void (Type not found)
function SetBlipRoute(blip, enabled) end

--- After some testing, looks like you need to use CEIL() on the rotation (vehicle/ped heading) before using it there.
--- @name SET_BLIP_ROTATION
--- @param blip Blip 
--- @param rotation number 
--- @return void (Type not found)
function SetBlipRotation(blip, rotation) end

--- NativeDB Added Parameter 3: Any p2
--- @name SET_BLIP_SHOW_CONE
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBlipShowCone(blip, toggle) end

--- See https://imgur.com/a/lLkEsMN
--- NativeDB Introduced: v1734
--- @name _SET_BLIP_SCALE_TRANSFORMATION
--- @param blip Blip 
--- @param xScale number 
--- @param yScale number 
--- @return void (Type not found)
function SetBlipScaleTransformation(blip, xScale, yScale) end

--- Sets the displayed sprite for a specific blip.
--- There's a [list of sprites](https://docs.fivem.net/game-references/blips/) on the FiveM documentation site.
--- @name SET_BLIP_SPRITE
--- @param blip Blip The blip to change.
--- @param spriteId number The sprite ID to set.
--- @return void (Type not found)
function SetBlipSprite(blip, spriteId) end

--- @name SET_COLOUR_OF_NEXT_TEXT_COMPONENT
--- @param hudColor number 
--- @return void (Type not found)
function SetColourOfNextTextComponent(hudColor) end

--- @name SET_BLIP_SECONDARY_COLOUR
--- @param blip Blip 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function SetBlipSecondaryColour(blip, r, g, b) end

--- Makes a blip go small when off the minimap.
--- SET_BLIP_AS_*
--- @name _SET_BLIP_SHRINK
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function SetBlipShrink(blip, toggle) end

--- Does not require whole number/integer rotations.
--- @name _SET_BLIP_SQUARED_ROTATION
--- @param blip Blip 
--- @param heading number 
--- @return void (Type not found)
function SetBlipSquaredRotation(blip, heading) end

--- SET_*
--- @name _SET_DIRECTOR_MODE_CLEAR_TRIGGERED_FLAG
--- @return void (Type not found)
function SetDirectorModeClearTriggeredFlag() end

--- @name SET_BLIP_SCALE
--- @param blip Blip 
--- @param scale number 
--- @return void (Type not found)
function SetBlipScale(blip, scale) end

--- @name SET_FLOATING_HELP_TEXT_SCREEN_POSITION
--- @param hudIndex number 
--- @param x number 
--- @param y number 
--- @return void (Type not found)
function SetFloatingHelpTextScreenPosition(hudIndex, x, y) end

--- ### Arrow Positions
--- *   0 = Off / No arrow
--- *   1 = Top
--- *   2 = Left
--- *   3 = Bottom
--- *   4 = Right
--- ### Note
--- Any numeric value greater than 4 will result in a right arrow (Index 4)
--- ### Important
--- Needs to be called every frame
--- ![Preview of the provided example code](https://forum.cfx.re/uploads/default/original/4X/7/f/3/7f319bc93c3a00b8829bd4ac8dddc235fbf3a9ef.png)
--- @name SET_FLOATING_HELP_TEXT_STYLE
--- @param hudIndex number The hud index for the floating help message
--- @param style number Value 0 won't show an arrow at all. Values 1, 2 and -2 will display an arrow.
--- @param hudColor number https://docs.fivem.net/docs/game-references/hud-colors/
--- @param alpha number Value for the help box opacity, from 0-255. Anything greater will simply ignore the alpha value. Always 191 in R\* scripts.
--- @param arrowPosition number Used to set the arrow positon. No value will hide the arrow
--- @param boxOffset number Offset for the floating help box. Note: Arrow stays fixed
--- @return void (Type not found)
function SetFloatingHelpTextStyle(hudIndex, style, hudColor, alpha, arrowPosition, boxOffset) end

--- @name SET_FLOATING_HELP_TEXT_WORLD_POSITION
--- @param hudIndex number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetFloatingHelpTextWorldPosition(hudIndex, x, y, z) end

--- @name SET_GPS_CUSTOM_ROUTE_RENDER
--- @param toggle boolean 
--- @param radarThickness number The width of the GPS route on the radar
--- @param mapThickness number The width of the GPS route on the map
--- @return void (Type not found)
function SetGpsCustomRouteRender(toggle, radarThickness, mapThickness) end

--- Only the script that originally called SET_GPS_FLAGS can set them again. Another script cannot set the flags, until the first script that called it has called CLEAR_GPS_FLAGS.
--- Doesn't seem like the flags are actually read by the game at all.
--- @name SET_GPS_FLAGS
--- @param p0 number 
--- @param p1 number 
--- @return void (Type not found)
function SetGpsFlags(p0, p1) end

--- @name SET_FLOATING_HELP_TEXT_TO_ENTITY
--- @param hudIndex number 
--- @param entity Entity 
--- @param offsetX number 
--- @param offsetY number 
--- @return void (Type not found)
function SetFloatingHelpTextToEntity(hudIndex, entity, offsetX, offsetY) end

--- @name SET_FRONTEND_ACTIVE
--- @param active boolean 
--- @return void (Type not found)
function SetFrontendActive(active) end

--- @name SET_GPS_FLASHES
--- @param toggle boolean 
--- @return void (Type not found)
function SetGpsFlashes(toggle) end

--- @name SET_HEALTH_HUD_DISPLAY_VALUES
--- @param health number 
--- @param capacity number 
--- @param wasAdded boolean 
--- @return void (Type not found)
function SetHealthHudDisplayValues(health, capacity, wasAdded) end

--- @name SET_GPS_MULTI_ROUTE_RENDER
--- @param toggle boolean 
--- @return void (Type not found)
function SetGpsMultiRouteRender(toggle) end

--- @name _SET_HELP_MESSAGE_TEXT_STYLE
--- @param style number 
--- @param hudColor number 
--- @param alpha number 
--- @param p3 number 
--- @param p4 number 
--- @return void (Type not found)
function SetHelpMessageTextStyle(style, hudColor, alpha, p3, p4) end

--- NativeDB Introduced: v1493
--- @name _SET_INTERIOR_ZOOM_LEVEL_INCREASED
--- @param toggle boolean 
--- @return void (Type not found)
function SetInteriorZoomLevelIncreased(toggle) end

--- @name SET_HUD_COMPONENT_POSITION
--- @param id number 
--- @param x number 
--- @param y number 
--- @return void (Type not found)
function SetHudComponentPosition(id, x, y) end

--- Argument must be 0.0f or above 38.0f, or it will be ignored.  
--- NativeDB Added Parameter 3: Any p2
--- @name _SET_MINIMAP_ALTITUDE_INDICATOR_LEVEL
--- @param altitude number 
--- @param p1 boolean 
--- @return void (Type not found)
function SetMinimapAltitudeIndicatorLevel(altitude, p1) end

--- NativeDB Introduced: v2372
--- @name _SET_INTERIOR_ZOOM_LEVEL_DECREASED
--- @param toggle boolean 
--- @return void (Type not found)
function SetInteriorZoomLevelDecreased(toggle) end

--- @name SET_MAX_HEALTH_HUD_DISPLAY
--- @param maximumValue number 
--- @return void (Type not found)
function SetMaxHealthHudDisplay(maximumValue) end

--- @name _SET_MAIN_PLAYER_BLIP_COLOUR
--- @param color number 
--- @return void (Type not found)
function SetMainPlayerBlipColour(color) end

--- @name SET_MAX_ARMOUR_HUD_DISPLAY
--- @param maximumValue number 
--- @return void (Type not found)
function SetMaxArmourHudDisplay(maximumValue) end

--- @name SET_MINIMAP_FOW_REVEAL_COORDINATE
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function SetMinimapFowRevealCoordinate(x, y, z) end

--- This native is used to colorize certain map components like the army base at the top of the map.
--- An incomplete list of components ID:
--- 0: Los Santos' air port yellow lift-off markers.
--- 1: Sandy Shore's air port yellow lift-off markers.
--- 2: Trevor's air port yellow lift-off markers.
--- 6: Vespucci Beach lifeguard building.
--- 15: Army base.
--- [List of hud colors](https://docs.fivem.net/docs/game-references/hud-colors/)
--- @name SET_MINIMAP_COMPONENT
--- @param componentID number The component ID to change.
--- @param toggle boolean True to enable the color, false to disable the effect.
--- @param hudColor number The hudcolor index.
--- @return 
function SetMinimapComponent(componentID, toggle, hudColor) end

--- Not much is known so far on what it does *exactly*.
--- All I know for sure is that it draws the specified hole ID on the pause menu map as well as on the mini-map/radar. This native also seems to change some other things related to the pause menu map's behaviour, for example: you can no longer set waypoints, the pause menu map starts up in a 'zoomed in' state. This native does not need to be executed every tick.
--- You need to center the minimap manually as well as change/lock it's zoom and angle in order for it to appear correctly on the minimap.
--- You'll also need to use the `GOLF` scaleform in order to get the correct minmap border to show up.
--- Use [`SET_MINIMAP_GOLF_COURSE_OFF()`](#\_0x35EDD5B2E3FF01C0) to reset the map when you no longer want to display any golf holes (you still need to unlock zoom, position and angle of the radar manually after calling this).
--- @name SET_MINIMAP_GOLF_COURSE
--- @param hole number The ID of the hole to draw on the map. ID starts with 1 for hole 1, 2 for hole 2, etc. 0 disables the golf map behaviour.
--- @return void (Type not found)
function SetMinimapGolfCourse(hole) end

--- Toggles the North Yankton map
--- @name SET_MINIMAP_IN_PROLOGUE
--- @param toggle boolean 
--- @return void (Type not found)
function SetMinimapInPrologue(toggle) end

--- NativeDB Introduced: v2189
--- @name _SET_MINIMAP_SONAR_ENABLED
--- @param toggle boolean 
--- @return void (Type not found)
function SetMinimapSonarEnabled(toggle) end

--- @name SET_MINIMAP_BLOCK_WAYPOINT
--- @param toggle boolean 
--- @return void (Type not found)
function SetMinimapBlockWaypoint(toggle) end

--- @name SET_MINIMAP_GOLF_COURSE_OFF
--- @return void (Type not found)
function SetMinimapGolfCourseOff() end

--- @name _SET_MISSION_NAME_2
--- @param p0 boolean 
--- @param name string 
--- @return void (Type not found)
function SetMissionName2(p0, name) end

--- @name SET_MINIMAP_IN_SPECTATOR_MODE
--- @param toggle boolean 
--- @param ped Ped 
--- @return void (Type not found)
function SetMinimapInSpectatorMode(toggle, ped) end

--- If true, the entire map will be revealed.
--- @name SET_MINIMAP_HIDE_FOW
--- @param toggle boolean 
--- @return void (Type not found)
function SetMinimapHideFow(toggle) end

--- Shows the cursor on screen for one frame.
--- @name _SET_MOUSE_CURSOR_ACTIVE_THIS_FRAME
--- @return void (Type not found)
function SetMouseCursorActiveThisFrame() end

--- Changes the mouse cursor's sprite.   
--- public enum CursorType  
--- {  
---     None = 0,  
---     Normal = 1,  
---     TransparentNormal = 2,  
---     PreGrab = 3,  
---     Grab = 4,  
---     MiddleFinger = 5,  
---     LeftArrow = 6,  
---     RightArrow = 7,  
---     UpArrow = 8,  
---     DownArrow = 9,  
---     HorizontalExpand = 10,  
---     Add = 11,  
---     Remove = 12,  
--- }  
--- @name _SET_MOUSE_CURSOR_SPRITE
--- @param spriteId number 
--- @return void (Type not found)
function SetMouseCursorSprite(spriteId) end

--- Shows/hides the frontend cursor on the pause menu or similar menus.
--- Clicking off and then on the game window will show it again.
--- @name _SET_MOUSE_CURSOR_VISIBLE_IN_MENUS
--- @param enable boolean Set to false to disable the cursor, true to enable it.
--- @return void (Type not found)
function SetMouseCursorVisibleInMenus(enable) end

--- Sets flag's sprite transparency. 0-255.  
--- @name SET_MP_GAMER_TAG_ALPHA
--- @param gamerTagId number 
--- @param component number 
--- @param alpha number 
--- @return void (Type not found)
function SetMpGamerTagAlpha(gamerTagId, component, alpha) end

--- @name SET_MISSION_NAME
--- @param p0 boolean 
--- @param name string 
--- @return void (Type not found)
function SetMissionName(p0, name) end

--- By default, the player health value shown by a gamer tag's health bar is synchronised with the health of the ped it is attached to.
--- This native disables that behaviour, allowing [`_SET_MP_GAMER_TAG_OVERRIDE_PLAYER_HEALTH`](#\_0x1563FE35E9928E67) to have an effect.
--- @name _SET_MP_GAMER_TAG_DISABLE_PLAYER_HEALTH_SYNC
--- @param gamerTagId number 
--- @param toggle boolean If player health synchronisation should be disabled.
--- @return void (Type not found)
function SetMpGamerTagDisablePlayerHealthSync(gamerTagId, toggle) end

--- Sets a gamer tag's component colour
--- @name SET_MP_GAMER_TAG_COLOUR
--- @param gamerTagId number a gamerTagId obtained using  for example: [`CREATE_FAKE_MP_GAMER_TAG`](#\_0xBFEFE3321A3F5015).
--- @param component number a component id, see the full list here: [link](https://docs.fivem.net/docs/game-references/gamer-tags/#components-list)
--- @param hudColorIndex number a hud color index, see the full list here: [link](https://docs.fivem.net/docs/game-references/hud-colors/)
--- @return void (Type not found)
function SetMpGamerTagColour(gamerTagId, component, hudColorIndex) end

--- displays wanted star above head  
--- @name _SET_MP_GAMER_TAG_MP_BAG_LARGE_COUNT
--- @param gamerTagId number 
--- @param count number 
--- @return void (Type not found)
function SetMpGamerTagMpBagLargeCount(gamerTagId, count) end

--- Should be enabled as component (2). Has 0 alpha by default.
--- @name SET_MP_GAMER_TAG_HEALTH_BAR_COLOUR
--- @param gamerTagId number a gamerTagId obtained using  for example: [CREATE_FAKE_MP_GAMER_TAG](https://runtime.fivem.net/doc/natives/?\_0xBFEFE3321A3F5015)
--- @param hudColorIndex number a hud color index, see the full list here: [link](https://docs.fivem.net/docs/game-references/hud-colors/)
--- @return void (Type not found)
function SetMpGamerTagHealthBarColour(gamerTagId, hudColorIndex) end

--- @name SET_MP_GAMER_TAG_NAME
--- @param gamerTagId number 
--- @param string string 
--- @return void (Type not found)
function SetMpGamerTagName(gamerTagId, string) end

--- Sets the health bar of a gamer tag to show the health of the last (or current) vehicle of the ped the gamer tag is attached to.
--- The vehicle health value is stored separate from the player health and using it won't clear any player health overrides.
--- @name _SET_MP_GAMER_TAG_USE_VEHICLE_HEALTH
--- @param gamerTagId number 
--- @param toggle boolean If vehicle health should be displayed instead of player health.
--- @return void (Type not found)
function SetMpGamerTagUseVehicleHealth(gamerTagId, toggle) end

--- Manually sets the player health value for a gamer tag, using the maximum health to calculate what percentage of the bar should be filled.
--- Has no effect unless [\_SET_MP_GAMER_TAG_DISABLE_PLAYER_HEALTH_SYNC](#\_0xD29EC58C2F6B5014) has been called prior to disable synchronisation with the attached ped.
--- @name _SET_MP_GAMER_TAG_OVERRIDE_PLAYER_HEALTH
--- @param gamerTagId number 
--- @param health number The amount the health the player has.
--- @param maximumHealth number The maximum amount of health the player could have.
--- @return void (Type not found)
function SetMpGamerTagOverridePlayerHealth(gamerTagId, health, maximumHealth) end

--- ```cpp
--- enum eMpGamerTagComponent
--- {
--- 	MP_TAG_GAMER_NAME,
--- 	MP_TAG_CREW_TAG,
--- 	MP_TAG_HEALTH_ARMOUR,
--- 	MP_TAG_BIG_TEXT,
--- 	MP_TAG_AUDIO_ICON,
--- 	MP_TAG_USING_MENU,
--- 	MP_TAG_PASSIVE_MODE,
--- 	MP_TAG_WANTED_STARS,
--- 	MP_TAG_DRIVER,
--- 	MP_TAG_CO_DRIVER,
--- 	MP_TAG_TAGGED,
--- 	MP_TAG_GAMER_NAME_NEARBY,
--- 	MP_TAG_ARROW,
--- 	MP_TAG_PACKAGES,
--- 	MP_TAG_INV_IF_PED_FOLLOWING,
--- 	MP_TAG_RANK_TEXT,
--- 	MP_TAG_TYPING,
--- 	MP_TAG_BAG_LARGE,
--- 	MP_TAG_ARROW,
--- 	MP_TAG_GANG_CEO,
--- 	MP_TAG_GANG_BIKER,
--- 	MP_TAG_BIKER_ARROW,
--- 	MP_TAG_MC_ROLE_PRESIDENT,
--- 	MP_TAG_MC_ROLE_VICE_PRESIDENT,
--- 	MP_TAG_MC_ROLE_ROAD_CAPTAIN,
--- 	MP_TAG_MC_ROLE_SARGEANT,
--- 	MP_TAG_MC_ROLE_ENFORCER,
--- 	MP_TAG_MC_ROLE_PROSPECT,
--- 	MP_TAG_TRANSMITTER,
--- 	MP_TAG_BOMB
--- };
--- NativeDB Added Parameter 4: Any p3
--- @name SET_MP_GAMER_TAG_VISIBILITY
--- @param gamerTagId number 
--- @param component number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetMpGamerTagVisibility(gamerTagId, component, toggle) end

--- displays wanted star above head  
--- @name SET_MP_GAMER_TAG_WANTED_LEVEL
--- @param gamerTagId number 
--- @param wantedlvl number 
--- @return void (Type not found)
function SetMpGamerTagWantedLevel(gamerTagId, wantedlvl) end

--- @name SET_MP_GAMER_TAG_BIG_TEXT
--- @param gamerTagId number 
--- @param string string 
--- @return void (Type not found)
function SetMpGamerTagBigText(gamerTagId, string) end

--- Sets the visibility of all components of the gamer tag to the specified value.
--- @name _SET_MP_GAMER_TAG_VISIBILITY_ALL
--- @param gamerTagId number 
--- @param toggle boolean The new visibility state of all gamer tag components.
--- @return void (Type not found)
function SetMpGamerTagVisibilityAll(gamerTagId, toggle) end

--- **This native does absolutely nothing, just a nullsub**
--- @name SET_MULTIPLAYER_HUD_CASH
--- @param p0 number 
--- @param p1 number 
--- @return void (Type not found)
function SetMultiplayerHudCash(p0, p1) end

--- Preview image:
--- ![](https://i.imgur.com/1BTmdyv.png)
--- To change the bank balance use [`STAT_SET_INT`](#\_0xB3271D7AB655B441) with "BANK_BALANCE" to whatever value you need to.
--- @name SET_MULTIPLAYER_BANK_CASH
--- @return void (Type not found)
function SetMultiplayerBankCash() end

--- Preview image:
--- ![](https://i.imgur.com/1BTmdyv.png)
--- To change money value use [`STAT_SET_INT`](#\_0xB3271D7AB655B441) with "MP0\_WALLET_BALANCE" to whatever value you need to.
--- @name SET_MULTIPLAYER_WALLET_CASH
--- @return void (Type not found)
function SetMultiplayerWalletCash() end

--- @name SET_NEW_WAYPOINT
--- @param x number 
--- @param y number 
--- @return void (Type not found)
function SetNewWaypoint(x, y) end

--- Toggles the pause menu ped sleep state for frontend menus.
--- [Example GIF](https://vespura.com/hi/i/2019-04-01\_15-51\_8ed38\_1014.gif)
--- @name SET_PAUSE_MENU_PED_SLEEP_STATE
--- @param state boolean 0 will make the ped slowly fall asleep, 1 will slowly wake the ped up.
--- @return void (Type not found)
function SetPauseMenuPedSleepState(state) end

--- Toggles the light state for the pause menu ped in frontend menus.
--- This is used by R\* in combination with [`SET_PAUSE_MENU_PED_SLEEP_STATE`](#\_0xECF128344E9FF9F1) to toggle the "offline" or "online" state in the "friends" tab of the pause menu in GTA Online.
--- Example:
--- On: ![lights on](https://vespura.com/hi/i/2019-04-01\_16-09\_540ee\_1015.png)
--- Off: ![lights off](https://vespura.com/hi/i/2019-04-01\_16-10\_8b5e7\_1016.png)
--- @name SET_PAUSE_MENU_PED_LIGHTING
--- @param state boolean True enables the light, false disables the light.
--- @return void (Type not found)
function SetPauseMenuPedLighting(state) end

--- @name SET_PED_AI_BLIP_HAS_CONE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedAiBlipHasCone(ped, toggle) end

--- if "flag" is true, the AI blip will always be displayed for the specified ped, if it has an AI blip  
--- If "flag" is false, the AI blip will only be displayed when the player is in combat with the specified ped, if it has an AI blip  
--- @name SET_PED_AI_BLIP_FORCED_ON
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedAiBlipForcedOn(ped, toggle) end

--- This native turns on the AI blip on the specified ped. It also disappears automatically when the ped is too far or if the ped is dead. You don't need to control it with other natives.
--- See gtaforums.com/topic/884370-native-research-ai-blips for further information.
--- @name SET_PED_HAS_AI_BLIP
--- @param ped Ped 
--- @param hasCone boolean 
--- @return void (Type not found)
function SetPedHasAiBlip(ped, hasCone) end

--- @name SET_PED_AI_BLIP_NOTICE_RANGE
--- @param ped Ped 
--- @param range number 
--- @return void (Type not found)
function SetPedAiBlipNoticeRange(ped, range) end

--- @name _SET_PED_AI_BLIP_SPRITE
--- @param ped Ped 
--- @param spriteId number 
--- @return void (Type not found)
function SetPedAiBlipSprite(ped, spriteId) end

--- Sets the position of the arrow icon representing the player on both the minimap and world map.  
--- Too bad this wouldn't work over the network (obviously not). Could spoof where we would be.  
--- @name _SET_PLAYER_BLIP_POSITION_THIS_FRAME
--- @param x number 
--- @param y number 
--- @return void (Type not found)
function SetPlayerBlipPositionThisFrame(x, y) end

--- @name SET_PAUSE_MENU_ACTIVE
--- @param toggle boolean 
--- @return void (Type not found)
function SetPauseMenuActive(toggle) end

--- @name SET_PED_AI_BLIP_GANG_ID
--- @param ped Ped 
--- @param gangId number 
--- @return void (Type not found)
function SetPedAiBlipGangId(ped, gangId) end

--- @name _SET_PED_HAS_AI_BLIP_WITH_COLOR
--- @param ped Ped 
--- @param hasCone boolean 
--- @param color number See [`SET_BLIP_COLOUR`](#\_0x03D7FB09E75D6B7E).
--- @return void (Type not found)
function SetPedHasAiBlipWithColor(ped, hasCone, color) end

--- If toggle is true, hides special ability bar / character name in the pause menu
--- If toggle is false, shows special ability bar / character name in the pause menu
--- SET_PLAYER_*
--- @name _SET_PLAYER_IS_IN_DIRECTOR_MODE
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerIsInDirectorMode(toggle) end

--- List of interior hashes: pastebin.com/1FUyXNqY  
--- Not for every interior zoom > 0 available.  
--- @name SET_RADAR_AS_INTERIOR_THIS_FRAME
--- @param interior Hash 
--- @param x number 
--- @param y number 
--- @param heading number 
--- @param zoom number 
--- @return void (Type not found)
function SetRadarAsInteriorThisFrame(interior, x, y, heading, zoom) end

--- @name SET_RACE_TRACK_RENDER
--- @param toggle boolean 
--- @return void (Type not found)
function SetRaceTrackRender(toggle) end

--- @name SET_RADAR_AS_EXTERIOR_THIS_FRAME
--- @return void (Type not found)
function SetRadarAsExteriorThisFrame() end

--- @name SET_RADAR_ZOOM_TO_BLIP
--- @param blip Blip 
--- @param zoom number 
--- @return void (Type not found)
function SetRadarZoomToBlip(blip, zoom) end

--- zoomLevel ranges from 0 to 200  
--- @name SET_RADAR_ZOOM
--- @param zoomLevel number 
--- @return void (Type not found)
function SetRadarZoom(zoomLevel) end

--- Enabling this on a radius blip will make it outline only. See https://cdn.discordapp.com/attachments/553235301632573459/575132227935928330/unknown.png
--- @name SET_RADIUS_BLIP_EDGE
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function SetRadiusBlipEdge(blip, toggle) end

--- @name SET_RADAR_ZOOM_PRECISE
--- @param zoom number 
--- @return void (Type not found)
function SetRadarZoomPrecise(zoom) end

--- Sets the color of HUD_COLOUR_SCRIPT_VARIABLE
--- @name SET_SCRIPT_VARIABLE_HUD_COLOUR
--- @param r number 
--- @param g number 
--- @param b number 
--- @param a number 
--- @return void (Type not found)
function SetScriptVariableHudColour(r, g, b, a) end

--- HUD::SET_SOCIAL_CLUB_TOUR("Gallery");
--- HUD::SET_SOCIAL_CLUB_TOUR("Missions");
--- HUD::SET_SOCIAL_CLUB_TOUR("General");
--- HUD::SET_SOCIAL_CLUB_TOUR("Playlists");
--- @name SET_SOCIAL_CLUB_TOUR
--- @param name string 
--- @return void (Type not found)
function SetSocialClubTour(name) end

--- Sets the color of HUD_COLOUR_SCRIPT_VARIABLE_2
--- @name _SET_SCRIPT_VARIABLE_2_HUD_COLOUR
--- @param r number 
--- @param g number 
--- @param b number 
--- @param a number 
--- @return void (Type not found)
function SetScriptVariable2HudColour(r, g, b, a) end

--- @name SET_TEXT_CENTRE
--- @param align boolean 
--- @return void (Type not found)
function SetTextCentre(align) end

--- @name SET_RADAR_ZOOM_TO_DISTANCE
--- @param zoom number 
--- @return void (Type not found)
function SetRadarZoomToDistance(zoom) end

--- colors you input not same as you think?
--- A: for some reason its R B G A
--- @name SET_TEXT_COLOUR
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function SetTextColour(red, green, blue, alpha) end

--- @name SET_TEXT_DROP_SHADOW
--- @return void (Type not found)
function SetTextDropShadow() end

--- **This native does absolutely nothing, just a nullsub**
--- @name SET_TEXT_EDGE
--- @param p0 number 
--- @param r number 
--- @param g number 
--- @param b number 
--- @param a number 
--- @return void (Type not found)
function SetTextEdge(p0, r, g, b, a) end

--- distance - shadow distance in pixels, both horizontal and vertical
--- r, g, b, a - color
--- @name SET_TEXT_DROPSHADOW
--- @param distance number Shadow distance in pixels, both horizontal and vertical.
--- @param r number Red color.
--- @param g number Green color.
--- @param b number Blue color.
--- @param a number Alpha.
--- @return void (Type not found)
function SetTextDropshadow(distance, r, g, b, a) end

--- fonts that mess up your text where made for number values/misc stuff  
--- @name SET_TEXT_FONT
--- @param fontType number 
--- @return void (Type not found)
function SetTextFont(fontType) end

--- Types -  
--- 0: Center-Justify  
--- 1: Left-Justify  
--- 2: Right-Justify  
--- Right-Justify requires SET_TEXT_WRAP, otherwise it will draw to the far right of the screen  
--- @name SET_TEXT_JUSTIFICATION
--- @param justifyType number 
--- @return void (Type not found)
function SetTextJustification(justifyType) end

--- @name SET_TEXT_OUTLINE
--- @return void (Type not found)
function SetTextOutline() end

--- @name SET_TEXT_LEADING
--- @param p0 number 
--- @return void (Type not found)
function SetTextLeading(p0) end

--- @name SET_TEXT_RENDER_ID
--- @param renderId number 
--- @return void (Type not found)
function SetTextRenderId(renderId) end

--- @name SET_TEXT_RIGHT_JUSTIFY
--- @param toggle boolean 
--- @return void (Type not found)
function SetTextRightJustify(toggle) end

--- Size range : 0F to 1.0F
--- p0 is unknown and doesn't seem to have an effect, yet in the game scripts it changes to 1.0F sometimes.
--- @name SET_TEXT_SCALE
--- @param scale number 
--- @param size number 
--- @return void (Type not found)
function SetTextScale(scale, size) end

--- **This native does absolutely nothing, just a nullsub**
--- @name SET_TEXT_PROPORTIONAL
--- @param p0 boolean 
--- @return void (Type not found)
function SetTextProportional(p0) end

--- It sets the text in a specified box and wraps the text if it exceeds the boundries. Both values are for X axis. Useful when positioning text set to center or aligned to the right.  
--- start - left boundry on screen position (0.0 - 1.0)  
--- end - right boundry on screen position (0.0 - 1.0)  
--- @name SET_TEXT_WRAP
--- @param start number 
--- @param _end number 
--- @return void (Type not found)
function SetTextWrap(start, _end) end

--- Sets a global mode which makes the pause menu map show 'Destination' instead of 'Waypoint' in the key legend on the
--- bottom of the screen.
--- <!--
--- Name guess:
---   - alphabetical function order, below [SET_USER_RADIO_CONTROL_ENABLED, SET_USE_HI_DOF], above SET_VARIABLE_ON_SOUND.
--- -->
--- @name _SET_USE_WAYPOINT_AS_DESTINATION
--- @param toggle boolean `true` to show 'Destination', `false` to show 'Waypoint' (the default)
--- @return void (Type not found)
function SetUseWaypointAsDestination(toggle) end

--- **instructionalKey enum list**:
--- enum INSTRUCTIONAL_BUTTON_TYPES
--- {
---     NONE = 0,
---     SELECT = 1,
---     OK = 2,
---     YES = 4,
---     BACK = 8,
---     BACK_SELECT = 9,
---     BACK_OK = 10,
---     BACK_YES = 12,
---     CANCEL = 16,
---     CANCEL_SELECT = 17,
---     CANCEL_OK = 18,
---     CANCEL_YES = 20,
---     NO = 32,
---     NO_SELECT = 33,
---     NO_OK = 34,
---     YES_NO = 36,
---     RETRY = 64,
---     RETRY_SELECT = 65,
---     RETRY_OK = 66,
---     RETRY_YES = 68,
---     RETRY_BACK = 72,
---     RETRY_BACK_SELECT = 73,
---     RETRY_BACK_OK = 74,
---     RETRY_BACK_YES = 76,
---     RETRY_CANCEL = 80,
---     RETRY_CANCEL_SELECT = 81,
---     RETRY_CANCEL_OK = 82,
---     RETRY_CANCEL_YES = 84,
---     SKIP = 256,
---     SKIP_SELECT = 257,
---     SKIP_OK = 258,
---     SKIP_YES = 260,
---     SKIP_BACK = 264,
---     SKIP_BACK_SELECT = 265,
---     SKIP_BACK_OK = 266,
---     SKIP_BACK_YES = 268,
---     SKIP_CANCEL = 272,
---     SKIP_CANCEL_SELECT = 273,
---     SKIP_CANCEL_OK = 274,
---     SKIP_CANCEL_YES = 276,
---     CONTINUE = 16384,
---     BACK_CONTINUE = 16392,
---     CANCEL_CONTINUE = 16400,
---     LOADING_SPINNER = 134217728,
---     SELECT_LOADING_SPINNER = 134217729,
---     OK_LOADING_SPINNER = 134217730,
---     YES_LOADING_SPINNER = 134217732,
---     BACK_LOADING_SPINNER = 134217736,
---     BACK_SELECT_LOADING_SPINNER = 134217737,
---     BACK_OK_LOADING_SPINNER = 134217738,
---     BACK_YES_LOADING_SPINNER = 134217740,
---     CANCEL_LOADING_SPINNER = 134217744,
---     CANCEL_SELECT_LOADING_SPINNER = 134217745,
---     CANCEL_OK_LOADING_SPINNER = 134217746,
---     CANCEL_YES_LOADING_SPINNER = 134217748
--- }
--- Note: this list is definitely NOT complete, but these are the ones I've been able to find before giving up because it's such a boring thing to look for 'good' combinations.
--- **Result of the example code:**
--- <https://i.imgur.com/imwoimm.png>
--- @name SET_WARNING_MESSAGE
--- @param entryLine1 string The text label to display as the first line of the warning message.
--- @param instructionalKey number This is an enum, check the description for a list.
--- @param entryLine2 string The text label to display as the second line of the warning message.
--- @param p3 boolean Purpose unknown.
--- @param p4 number Purpose unknown.
--- @param background string Set to anything other than 0 or false (even any string) and it will draw a background. Setting it to 0 or false will draw no background.
--- @param p6 string Purpose unknown.
--- @param showBg boolean Purpose unknown.
--- @param errorCode number When not 0, adds a field displaying the value as 'error code' to the warning message.
--- @return void (Type not found)
function SetWarningMessage(entryLine1, instructionalKey, entryLine2, p3, p4, background, p6, showBg, errorCode) end

--- Toggles the Cayo Perico map.
--- NativeDB Introduced: v2189
--- @name _SET_TOGGLE_MINIMAP_HEIST_ISLAND
--- @param toggle boolean 
--- @return void (Type not found)
function SetToggleMinimapHeistIsland(toggle) end

--- You can only use text entries. No custom text.  
--- C# Example :  
--- Function.Call(Hash._SET_WARNING_MESSAGE_2, "HUD_QUIT", "HUD_CGIGNORE", 2, "HUD_CGINVITE", 0, -1, 0, 0, 1);  
--- you can recreate this easily with scaleforms  
--- ---------------  
--- Fixed native name, from before nativedb restoration.  
--- NativeDB Added Parameter 10: Any p9
--- @name SET_WARNING_MESSAGE_WITH_HEADER
--- @param titleMsg string 
--- @param entryLine1 string 
--- @param flags number 
--- @param promptMsg string 
--- @param p4 boolean 
--- @param p5  
--- @param background boolean 
--- @param p7  
--- @param showBg boolean 
--- @return void (Type not found)
function SetWarningMessageWithHeader(titleMsg, entryLine1, flags, promptMsg, p4, p5, background, p7, showBg) end

--- You can only use text entries. No custom text.  
--- NativeDB Added Parameter 11: Any p10
--- @name SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS
--- @param entryHeader string 
--- @param entryLine1 string 
--- @param instructionalKey  
--- @param entryLine2 string 
--- @param p4 boolean 
--- @param p5  
--- @param p6  
--- @param p7  
--- @param p8  
--- @param p9 boolean 
--- @return void (Type not found)
function SetWarningMessageWithHeaderAndSubstringFlags(entryHeader, entryLine1, instructionalKey, entryLine2, p4, p5, p6, p7, p8, p9) end

--- instructionalKey enum list:
--- Buttons = {
---       Empty = 0,
---       Select = 1, -- (RETURN)
---       Ok = 2, -- (RETURN)
---       Yes = 4, -- (RETURN)
---       Back = 8, -- (ESC)
---       Cancel = 16, -- (ESC)
---       No = 32, -- (ESC)
---       RetrySpace = 64, -- (SPACE)
---       Restart = 128, -- (SPACE)
---       Skip = 256, -- (SPACE)
---       Quit = 512, -- (ESC)
---       Adjust = 1024, -- (ARROWS)
---       SpaceKey = 2048, -- (SPACE)
---       Share = 4096, -- (SPACE)
---       SignIn = 8192, -- (SPACE)
---       Continue = 16384, -- (RETURN)
---       AdjustLeftRight = 32768, -- (SCROLL L/R)
---       AdjustUpDown = 65536, -- (SCROLL U/D)
---       Overwrite = 131072, -- (SPACE)
---       SocialClubSignup = 262144, -- (RETURN)
---       Confirm = 524288, -- (RETURN)
---       Queue = 1048576, -- (RETURN)
---       RetryReturn = 2097152, -- (RETURN)
---       BackEsc = 4194304, -- (ESC)
---       SocialClub = 8388608, -- (RETURN)
---       Spectate = 16777216, -- (SPACE)
---       OkEsc = 33554432, -- (ESC)
---       CancelTransfer = 67108864, -- (ESC)
---       LoadingSpinner = 134217728,
---       NoReturnToGTA = 268435456, -- (ESC)
---       CancelEsc = 536870912, -- (ESC)
--- }
--- Alt = {
---       Empty = 0,
---       No = 1, -- (SPACE)
---       Host = 2, -- (ESC)
---       SearchForJob = 4, -- (RETURN)
---       ReturnKey = 8, -- (TURN)
---       Freemode = 16, -- (ESC)
--- }
--- **Result of the example code:** <https://i.imgur.com/TvmNF4k.png>
--- @name _SET_WARNING_MESSAGE_WITH_ALERT
--- @param labelTitle string Label of the alert's title.
--- @param labelMsg string Label of the alert's message.
--- @param p2 number This is an enum, check the description for a list.
--- @param p3 number This is an enum, check the description for a list.
--- @param labelMsg2 string Label of another message line
--- @param p5 boolean usually 0
--- @param p6 number usually -1
--- @param p7 number usually 0
--- @param p8 string unknown label
--- @param p9 string unknown label
--- @param background boolean Set to anything other than 0 or false (even any string) and it will draw a background. Setting it to 0 or false will draw no background.
--- @param errorCode number Error code, shown at the bottom left if set to value other than 0.
--- @return void (Type not found)
function SetWarningMessageWithAlert(labelTitle, labelMsg, p2, p3, labelMsg2, p5, p6, p7, p8, p9, background, errorCode) end

--- Param names copied from the corresponding scaleform function "SET_LIST_ROW"
--- @name _SET_WARNING_MESSAGE_LIST_ROW
--- @param index number 
--- @param name string 
--- @param cash number 
--- @param rp number 
--- @param lvl number 
--- @param colour number 
--- @return boolean
function SetWarningMessageListRow(index, name, cash, rp, lvl, colour) end

--- NativeDB Introduced: v1493
--- @name _SET_WARNING_MESSAGE_WITH_HEADER_UNK
--- @param entryHeader string 
--- @param entryLine1 string 
--- @param flags number 
--- @param entryLine2 string 
--- @param p4 boolean 
--- @param p5  
--- @param p6  
--- @param p7  
--- @param showBg boolean 
--- @param p9  
--- @param p10  
--- @return void (Type not found)
function SetWarningMessageWithHeaderUnk(entryHeader, entryLine1, flags, entryLine2, p4, p5, p6, p7, showBg, p9, p10) end

--- This native removes the current waypoint from the map.
--- Example:
--- C#:
--- Function.Call(Hash.SET_WAYPOINT_OFF);
--- C++:
--- HUD::SET_WAYPOINT_OFF();
--- @name SET_WAYPOINT_OFF
--- @return void (Type not found)
function SetWaypointOff() end

--- Adds a orange checkmark on top of a given blip handle: https://imgur.com/a/aw5OTMF
--- _SHOW_FRIEND_INDICATOR_ON_BLIP* - _SHOW_HEADING_INDICATOR_ON_BLIP*
--- NativeDB Introduced: v2699
--- @name _SHOW_HAS_COMPLETED_INDICATOR_ON_BLIP
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function ShowHasCompletedIndicatorOnBlip(blip, toggle) end

--- Enables or disables the blue half circle ![](https://i.imgur.com/iZes9Ec.png) around the specified blip on the left side of the blip. This is used to indicate that the player is in your crew in GTA:O. Color is changeable by using [`SET_BLIP_SECONDARY_COLOUR`](#\_0x14892474891E09EB).
--- To toggle the right side of the circle use: [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#\_0x23C3EB807312F01A).
--- Example code result:
--- ![](https://i.imgur.com/iZ9tNWl.png)
--- @name SHOW_CREW_INDICATOR_ON_BLIP
--- @param blip Blip The blip to toggle the half blue circle around the blip on.
--- @param toggle boolean Enables or disables the half blue circle around the blip (on the left side).
--- @return void (Type not found)
function ShowCrewIndicatorOnBlip(blip, toggle) end

--- @name SET_WIDESCREEN_FORMAT
--- @param p0  
--- @return void (Type not found)
function SetWidescreenFormat(p0) end

--- @name SHOW_HEIGHT_ON_BLIP
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function ShowHeightOnBlip(blip, toggle) end

--- Adds the GTA: Online player heading indicator to a blip.  
--- @name SHOW_HEADING_INDICATOR_ON_BLIP
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function ShowHeadingIndicatorOnBlip(blip, toggle) end

--- Highlights a blip by a half cyan circle on the right side of the blip. ![](https://i.imgur.com/FrV9M4e.png) Indicating that that player is a friend (in GTA:O). This color can not be changed.
--- To toggle the left side (crew member indicator) of the half circle around the blip, use: [`SHOW_CREW_INDICATOR_ON_BLIP`](#\_0xDCFB5D4DB8BF367E).
--- @name SHOW_FRIEND_INDICATOR_ON_BLIP
--- @param blip Blip The blip to toggle the half circle on.
--- @param toggle boolean Enables or disables the half circle around the blip (on the right side of the blip).
--- @return void (Type not found)
function ShowFriendIndicatorOnBlip(blip, toggle) end

--- This function shows various HUD (Heads-up Display) components.
--- Listed below are the integers and the corresponding HUD component.
--- *   1 : WANTED_STARS
--- *   2 : WEAPON_ICON
--- *   3 : CASH
--- *   4 : MP_CASH
--- *   5 : MP_MESSAGE
--- *   6 : VEHICLE_NAME
--- *   7 : AREA_NAME
--- *   8 : VEHICLE_CLASS
--- *   9 : STREET_NAME
--- *   10 : HELP_TEXT
--- *   11 : FLOATING_HELP_TEXT\_1
--- *   12 : FLOATING_HELP_TEXT\_2
--- *   13 : CASH_CHANGE
--- *   14 : RETICLE
--- *   15 : SUBTITLE_TEXT
--- *   16 : RADIO_STATIONS
--- *   17 : SAVING_GAME
--- *   18 : GAME_STREAM
--- *   19 : WEAPON_WHEEL
--- *   20 : WEAPON_WHEEL_STATS
--- *   21 : HUD_COMPONENTS
--- *   22 : HUD_WEAPONS
--- These integers also work for the [`HIDE_HUD_COMPONENT_THIS_FRAME`](#\_0x6806C51AD12B83B8) native, but instead hides the HUD component.
--- @name SHOW_HUD_COMPONENT_THIS_FRAME
--- @param id number 
--- @return void (Type not found)
function ShowHudComponentThisFrame(id) end

--- Toggles a cyan outline around the blip.
--- Color can be changed with [`SET_BLIP_SECONDARY_COLOUR`](#\_0x14892474891E09EB). Enabling this circle will override the "crew" and "friend" half-circles (see [`SHOW_CREW_INDICATOR_ON_BLIP`](#\_0xDCFB5D4DB8BF367E) and [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#\_0x23C3EB807312F01A)).
--- @name SHOW_OUTLINE_INDICATOR_ON_BLIP
--- @param blip Blip The blip to toggle the outline on.
--- @param toggle boolean Enables or disables the outline.
--- @return void (Type not found)
function ShowOutlineIndicatorOnBlip(blip, toggle) end

--- SHOW_\*
--- NativeDB Introduced: v1734
--- @name _SHOW_SCRIPTED_HUD_COMPONENT_THIS_FRAME
--- @param id number 
--- @return void (Type not found)
function ShowScriptedHudComponentThisFrame(id) end

--- @name SHOW_NUMBER_ON_BLIP
--- @param blip Blip 
--- @param number number 
--- @return void (Type not found)
function ShowNumberOnBlip(blip, number) end

--- @name SHOW_START_MISSION_INSTRUCTIONAL_BUTTON
--- @param p0 boolean 
--- @return void (Type not found)
function ShowStartMissionInstructionalButton(p0) end

--- Adds a green checkmark on top of a blip.  
--- @name SHOW_TICK_ON_BLIP
--- @param blip Blip 
--- @param toggle boolean 
--- @return void (Type not found)
function ShowTickOnBlip(blip, toggle) end

--- Starts a new GPS custom-route, allowing you to plot lines on the map.
--- Lines are drawn directly between points.
--- The GPS custom route works like the GPS multi route, except it does not follow roads.
--- **Example result:**
--- ![](https://i.imgur.com/BDm5pzt.png)
--- @name START_GPS_CUSTOM_ROUTE
--- @param hudColor number The HUD color of the GPS path.
--- @param displayOnFoot boolean Draws the path regardless if the player is in a vehicle or not.
--- @param followPlayer boolean Draw the path partially between the previous and next point based on the players position between them. When false, the GPS appears to not disappear after the last leg is completed.
--- @return void (Type not found)
function StartGpsCustomRoute(hudColor, displayOnFoot, followPlayer) end

--- @name SUPPRESS_FRONTEND_RENDERING_THIS_FRAME
--- @return void (Type not found)
function SuppressFrontendRenderingThisFrame() end

--- @name THEFEED_CLEAR_FROZEN_POST
--- @return void (Type not found)
function ThefeedClearFrozenPost() end

--- Starts a new GPS multi-route, allowing you to create custom GPS paths.
--- GPS functions like the waypoint, except it can contain multiple points it's forced to go through.
--- Once the player has passed a point, the GPS will no longer force its path through it.
--- Works independently from the player-placed waypoint and blip routes.
--- **Example result:**
--- ![](https://i.imgur.com/ZZHQatX.png)
--- @name START_GPS_MULTI_ROUTE
--- @param hudColor number The HUD color of the GPS path.
--- @param routeFromPlayer boolean Makes the GPS draw a path from the player to the next point, rather than the original path from the previous point.
--- @param displayOnFoot boolean Draws the GPS path regardless if the player is in a vehicle or not.
--- @return void (Type not found)
function StartGpsMultiRoute(hudColor, routeFromPlayer, displayOnFoot) end

--- Disables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard. Not sure about controller. Does not disable mouse controls. No need to call this every tick.
--- To enable the keys again, use [`0x14621BB1DF14E2B2`](#\_0x14621BB1DF14E2B2).
--- @name TAKE_CONTROL_OF_FRONTEND
--- @return void (Type not found)
function TakeControlOfFrontend() end

--- @name _SHOW_SIGNIN_UI
--- @return void (Type not found)
function ShowSigninUi() end

--- @name THEFEED_FLUSH_QUEUE
--- @return void (Type not found)
function ThefeedFlushQueue() end

--- Displays loading screen tips, requires `0x56C8B608CFD49854` to be called beforehand.
--- @name _THEFEED_DISPLAY_LOADING_SCREEN_TIPS
--- @return void (Type not found)
function ThefeedDisplayLoadingScreenTips() end

--- Enables loading screen tips to be be shown (`_0x15CFA549788D35EF` and `_0x488043841BBE156F`), blocks other kinds of notifications from being displayed (at least from current script). Call `0xADED7F5748ACAFE6` to display those again.
--- @name THEFEED_COMMENT_TELEPORT_POOL_ON
--- @return void (Type not found)
function ThefeedCommentTeleportPoolOn() end

--- Requires manual management of game stream handles (i.e., 0xBE4390CB40B3E627).
--- @name THEFEED_FREEZE_NEXT_POST
--- @return void (Type not found)
function ThefeedFreezeNextPost() end

--- Stops loading screen tips shown by invoking either `0x488043841BBE156F` or `0x15CFA549788D35EF`
--- @name _THEFEED_DISABLE_LOADING_SCREEN_TIPS
--- @return void (Type not found)
function ThefeedDisableLoadingScreenTips() end

--- Once called each frame hides all above radar notifications.
--- @name THEFEED_HIDE_THIS_FRAME
--- @return void (Type not found)
function ThefeedHideThisFrame() end

--- @name THEFEED_FORCE_RENDER_ON
--- @return void (Type not found)
function ThefeedForceRenderOn() end

--- @name THEFEED_ONLY_SHOW_TOOLTIPS
--- @param toggle boolean 
--- @return void (Type not found)
function ThefeedOnlyShowTooltips(toggle) end

--- Removes a notification instantly instead of waiting for it to disappear  
--- @name THEFEED_REMOVE_ITEM
--- @param notificationId number 
--- @return void (Type not found)
function ThefeedRemoveItem(notificationId) end

--- @name THEFEED_RESUME
--- @return void (Type not found)
function ThefeedResume() end

--- Returns the handle for the notification currently displayed on the screen. Name may be a hash collision, but describes the function accurately.
--- @name THEFEED_GET_FIRST_VISIBLE_DELETE_REMAINING
--- @return number
function ThefeedGetFirstVisibleDeleteRemaining() end

--- @name THEFEED_PAUSE
--- @return void (Type not found)
function ThefeedPause() end

--- @name _THEFEED_SET_ANIMPOSTFX_COLOR
--- @param red number 
--- @param green number 
--- @param blue number 
--- @param alpha number 
--- @return void (Type not found)
function ThefeedSetAnimpostfxColor(red, green, blue, alpha) end

--- Related to notification color flashing, setting p0 to 0 invalidates a `_SET_NOTIFICATION_FLASH_COLOR` call for the target notification.
--- @name _THEFEED_SET_ANIMPOSTFX_COUNT
--- @param count number 
--- @return void (Type not found)
function ThefeedSetAnimpostfxCount(count) end

--- @name THEFEED_IS_PAUSED
--- @return boolean
function ThefeedIsPaused() end

--- @name THEFEED_RESET_ALL_PARAMETERS
--- @return void (Type not found)
function ThefeedResetAllParameters() end

--- Requires GAME_STREAM_ENUMS.MSGTEXT. Default sounds: "DPAD_WEAPON_SCROLL" and "HUD_FRONTEND_DEFAULT_SOUNDSET"
--- @name _THEFEED_SET_ANIMPOSTFX_SOUND
--- @param toggle boolean 
--- @return void (Type not found)
function ThefeedSetAnimpostfxSound(toggle) end

--- @name THEFEED_SPS_EXTEND_WIDESCREEN_ON
--- @return void (Type not found)
function ThefeedSpsExtendWidescreenOn() end

--- If true, remove all feed components instantly. Otherwise tween/animate close each component
--- @name _THEFEED_SET_FLUSH_ANIMPOSTFX
--- @param toggle boolean 
--- @return void (Type not found)
function ThefeedSetFlushAnimpostfx(toggle) end

--- From the decompiled scripts:
--- HUD::_92F0DA1E27DB96DC(6);
--- HUD::_92F0DA1E27DB96DC(184);
--- HUD::_92F0DA1E27DB96DC(190);
--- sets background color for the next notification
--- 6 = red
--- 184 = green
--- 190 = yellow
--- Here is a list of some colors that can be used: gyazo.com/68bd384455fceb0a85a8729e48216e15
--- @name _THEFEED_SET_NEXT_POST_BACKGROUND_COLOR
--- @param hudColorIndex number 
--- @return void (Type not found)
function ThefeedSetNextPostBackgroundColor(hudColorIndex) end

--- @name THEFEED_SPS_EXTEND_WIDESCREEN_OFF
--- @return void (Type not found)
function ThefeedSpsExtendWidescreenOff() end

--- @name THEFEED_SET_SCRIPTED_MENU_HEIGHT
--- @param pos number 
--- @return void (Type not found)
function ThefeedSetScriptedMenuHeight(pos) end

--- Used in the native scripts to reference "GET_PEDHEADSHOT_TXD_STRING" and "CHAR_DEFAULT".
--- NativeDB Introduced: v323
--- @name THEFEED_UPDATE_ITEM_TEXTURE
--- @param txdString1 string 
--- @param txnString1 string 
--- @param txdString2 string 
--- @param txnString2 string 
--- @return void (Type not found)
function ThefeedUpdateItemTexture(txdString1, txnString1, txdString2, txnString2) end

--- @name UNLOCK_MINIMAP_ANGLE
--- @return void (Type not found)
function UnlockMinimapAngle() end

--- @name UNLOCK_MINIMAP_POSITION
--- @return void (Type not found)
function UnlockMinimapPosition() end

--- @name TRIGGER_SONAR_BLIP
--- @param posX number 
--- @param posY number 
--- @param posZ number 
--- @param radius number 
--- @param p4 number 
--- @return void (Type not found)
function TriggerSonarBlip(posX, posY, posZ, radius, p4) end

--- @name TOGGLE_STEALTH_RADAR
--- @param toggle boolean 
--- @return void (Type not found)
function ToggleStealthRadar(toggle) end

--- Related to displaying cash on the HUD
--- Always called before HUD::CHANGE_FAKE_MP_CASH in decompiled scripts
--- @name USE_FAKE_MP_CASH
--- @param p0 boolean 
--- @return void (Type not found)
function UseFakeMpCash(p0) end
