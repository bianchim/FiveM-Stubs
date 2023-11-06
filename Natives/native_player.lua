
--- @param player Player 
--- @return boolean
function ArePlayerFlashingStarsAboutToDrop(player) end

--- @param player Player 
--- @param ped Ped 
--- @return boolean
function CanPedHearPlayer(player, ped) end

--- @param player Player 
--- @param ped Ped 
--- @param b2 boolean 
--- @param resetDamage boolean 
--- @return void (Type not found)
function ChangePlayerPed(player, ped, b2, resetDamage) end

--- @param player Player 
--- @return void (Type not found)
function ClearPlayerHasDamagedAtLeastOneNonAnimalPed(player) end

--- @return void (Type not found)
function AssistedMovementCloseRoute() end

--- @param player Player 
--- @return boolean
function ArePlayerStarsGreyedOut(player) end

--- @param player Player 
--- @return void (Type not found)
function ClearPlayerHasDamagedAtLeastOnePed(player) end

--- @param player Player 
--- @return void (Type not found)
function ClearPlayerParachuteModelOverride(player) end

--- @param player Player 
--- @return boolean
function CanPlayerStartMission(player) end

--- @param player Player 
--- @return void (Type not found)
function ClearPlayerParachuteVariationOverride(player) end

--- @param player Player 
--- @return void (Type not found)
function ClearPlayerParachutePackModelOverride(player) end

--- @return void (Type not found)
function AssistedMovementFlushRoute() end

--- Disables vehicle rewards for the current frame.
--- @param player Player The player to disable rewards
--- @return void (Type not found)
function DisablePlayerVehicleRewards(player) end

--- NativeDB Introduced: v2372
--- @param player Player 
--- @return void (Type not found)
function ClearPlayerReserveParachuteModelOverride(player) end

--- This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);  
--- PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.  
--- @param player Player 
--- @return void (Type not found)
function ClearPlayerWantedLevel(player) end

--- Purpose of the BOOL currently unknown.  
--- Both, true and false, work  
--- @param unk boolean 
--- @return void (Type not found)
function DisplaySystemSigninUi(unk) end

--- NativeDB Added Parameter 3: Any p2
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function EnableSpecialAbility(player, toggle) end

--- used with 1,2,8,64,128 in the scripts  
--- @param cleanupFlags number 
--- @return void (Type not found)
function ForceCleanup(cleanupFlags) end

--- Inhibits the player from using any method of combat including melee and firearms.\
--- NOTE: Only disables the firing for one frame
--- @param player Player The player for which to disable combat methods.
--- @param toggle boolean Unused, as this native will disable combat regardless of the value of this parameter.
--- @return void (Type not found)
function DisablePlayerFiring(player, toggle) end

--- @param id number 
--- @param cleanupFlags number 
--- @return void (Type not found)
function ForceCleanupForThreadWithThisId(id, cleanupFlags) end

--- Appears only 3 times in the scripts, more specifically in michael1.ysc
--- -
--- This can be used to prevent dying if you are "out of the world"
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function ExtendWorldBoundaryForPlayer(x, y, z) end

--- PLAYER::FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME("pb_prostitute", 1); // Found in decompilation  
--- @param name string 
--- @param cleanupFlags number 
--- @return void (Type not found)
function ForceCleanupForAllThreadsWithThisName(name, cleanupFlags) end

--- NativeDB Introduced: v1180
--- @param team number 
--- @return number
function GetNumberOfPlayersInTeam(team) end

--- For Steam.
--- Always returns 0 in retail version of the game.
--- @param achievement number 
--- @return number
function GetAchievementProgress(achievement) end

--- Returns TRUE if it found an entity in your crosshair within range of your weapon. Assigns the handle of the target to the *entity that you pass it.  
--- Returns false if no entity found.  
--- @param player Player 
--- @param entity Entity 
--- @return boolean
function GetEntityPlayerIsFreeAimingAt(player, entity) end

--- Gets the number of players in the current session.
--- If not multiplayer, always returns 1.
--- @return number
function GetNumberOfPlayers() end

--- Gets the maximum wanted level the player can get.  
--- Ranges from 0 to 5.  
--- @return number
function GetMaxWantedLevel() end

--- @return number
function GetCauseOfMostRecentForceCleanup() end

--- @param player Player 
--- @return number
function GetPlayerCurrentStealthNoise(player) end

--- @param player Player 
--- @return number
function GetPlayerHealthRechargeLimit(player) end

--- Returns the group ID the player is member of.  
--- @param player Player 
--- @return number
function GetPlayerGroup(player) end

--- Returns the same as PLAYER_ID and NETWORK_PLAYER_ID_TO_INT  
--- @return Player
function GetPlayerIndex() end

--- @param player Player 
--- @return boolean
function GetPlayerHasReserveParachute(player) end

--- Returns the Player's Invincible status.  
--- This function will always return false if 0x733A643B5B0C53C1 is used to set the invincibility status. To always get the correct result, use this:  
--- 	bool IsPlayerInvincible(Player player)  
--- 	{  
--- auto addr = getScriptHandleBaseAddress(GET_PLAYER_PED(player));	  
--- if (addr)  
--- {  
--- 	DWORD flag = *(DWORD *)(addr + 0x188);  
--- 	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
--- }  
--- return false;  
--- 	}  
--- ============================================================  
--- This has bothered me for too long, whoever may come across this, where did anyone ever come up with this made up hash? 0x733A643B5B0C53C1 I've looked all over old hash list, and this nativedb I can not find that PC hash anywhere. What native name is it now or was it?  
--- @param player Player 
--- @return boolean
function GetPlayerInvincible(player) end

--- @param player Player 
--- @return number
function GetPlayerMaxArmour(player) end

--- Returns the players name from a specified player index
--- @param player Player The player index, or -1 to get the local player ped.
--- @return string
function GetPlayerName(player) end

--- @param player Player 
--- @return number
function GetPlayerFakeWantedLevel(player) end

--- @param player Player 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function GetPlayerParachuteSmokeTrailColor(player, r, g, b) end

--- NativeDB Introduced: v2372
--- @param player Player 
--- @return Hash
function GetPlayerParachuteModelOverride(player) end

--- Gets the ped for a specified player index.
--- @param playerId Player The player index, or -1 to get the local player ped.
--- @return Ped
function GetPlayerPed(playerId) end

--- Tints:  
--- None = -1,  
--- Rainbow = 0,  
--- Red = 1,  
--- SeasideStripes = 2,  
--- WidowMaker = 3,  
--- Patriot = 4,  
--- Blue = 5,  
--- Black = 6,  
--- Hornet = 7,  
--- AirFocce = 8,  
--- Desert = 9,  
--- Shadow = 10,  
--- HighAltitude = 11,  
--- Airbone = 12,  
--- Sunrise = 13,  
--- @param player Player 
--- @param tintIndex number 
--- @return void (Type not found)
function GetPlayerParachuteTintIndex(player, tintIndex) end

--- NativeDB Introduced: v2372
--- @param player Player 
--- @return Hash
function GetPlayerReserveParachuteModelOverride(player) end

--- Does the same like PLAYER::GET_PLAYER_PED
--- @param player Player 
--- @return Ped
function GetPlayerPedScriptIndex(player) end

--- @param player Player 
--- @param tintIndex number 
--- @return void (Type not found)
function GetPlayerParachutePackTintIndex(player, tintIndex) end

--- Tints:  
--- None = -1,  
--- Rainbow = 0,  
--- Red = 1,  
--- SeasideStripes = 2,  
--- WidowMaker = 3,  
--- Patriot = 4,  
--- Blue = 5,  
--- Black = 6,  
--- Hornet = 7,  
--- AirFocce = 8,  
--- Desert = 9,  
--- Shadow = 10,  
--- HighAltitude = 11,  
--- Airbone = 12,  
--- Sunrise = 13,  
--- @param player Player 
--- @param index number 
--- @return void (Type not found)
function GetPlayerReserveParachuteTintIndex(player, index) end

--- @param player Player 
--- @return number
function GetPlayerSprintStaminaRemaining(player) end

--- @param player Player 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function GetPlayerRgbColour(player, r, g, b) end

--- Assigns the handle of locked-on melee target to *entity that you pass it.  
--- Returns false if no entity found.  
--- @param player Player 
--- @param entity Entity 
--- @return boolean
function GetPlayerTargetEntity(player, entity) end

--- @param player Player 
--- @return number
function GetPlayerSprintTimeRemaining(player) end

--- Gets the player's team.  
--- Does nothing in singleplayer.  
--- @param player Player 
--- @return number
function GetPlayerTeam(player) end

--- @param player Player 
--- @return number
function GetPlayerWantedLevel(player) end

--- @param player Player 
--- @return number
function GetPlayerUnderwaterTimeRemaining(player) end

--- Returns the time since the character was arrested in (ms) milliseconds.  
--- example  
--- var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_ARREST();  
--- UI.DrawSubtitle(time.ToString());  
--- if player has not been arrested, the int returned will be -1.  
--- @return number
function GetTimeSinceLastArrest() end

--- ### Warning
--- This native will return `0` if the last vehicle the player was in was destroyed.
--- ### Alternative
--- You can use [GET_VEHICLE_PED_IS_IN](#\_0x9A9112A0FE9A4713), which will actually get the last vehicle, even if it was destroyed.
--- @return Vehicle
function GetPlayersLastVehicle() end

--- @param player Player 
--- @return number
function GetTimeSincePlayerHitPed(player) end

--- @param player Player 
--- @return Vector3
function GetPlayerWantedCentrePosition(player) end

--- @param player Player 
--- @return number
function GetTimeSincePlayerDroveAgainstTraffic(player) end

--- Returns the time since the character died in (ms) milliseconds.  
--- example  
--- var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_DEATH();  
--- UI.DrawSubtitle(time.ToString());  
--- if player has not died, the int returned will be -1.  
--- @return number
function GetTimeSinceLastDeath() end

--- @param player Player 
--- @return number
function GetTimeSincePlayerDroveOnPavement(player) end

--- NativeDB Introduced: v2372
--- @return number
function GetWantedLevelParoleDuration() end

--- Drft  
--- @param wantedLevel number 
--- @return number
function GetWantedLevelThreshold(wantedLevel) end

--- Remnant from GTA IV. Does nothing in GTA V.
--- @param player Player 
--- @return number
function GetWantedLevelRadius(player) end

--- Achievements from 0-57
--- more achievements came with update 1.29 (freemode events update), I'd say that they now go to 60, but I'll need to check.
--- @param achievement number 
--- @return boolean
function GiveAchievementToPlayer(achievement) end

--- @param cleanupFlags number 
--- @return boolean
function HasForceCleanupOccurred(cleanupFlags) end

--- @param player Player 
--- @return number
function GetTimeSincePlayerHitVehicle(player) end

--- @param achievement number 
--- @return boolean
function HasAchievementBeenPassed(achievement) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function GivePlayerRagdollControl(player, toggle) end

--- @param player Player 
--- @param ms number Time since last bullet fired
--- @param p2 boolean Always false
--- @return boolean
function HasPlayerBeenShotByCop(player, ms, p2) end

--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- @param value number 
--- @return Player
function IntToPlayerindex(value) end

--- @param player Player 
--- @return boolean
function HasPlayerBeenSpottedInStolenVehicle(player) end

--- @param player Player 
--- @return boolean
function HasPlayerDamagedAtLeastOneNonAnimalPed(player) end

--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- --------------------------------------------------------  
--- if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::INT_TO_PARTICIPANTINDEX(i)))  
--- @param value number 
--- @return number
function IntToParticipantindex(value) end

--- Return true while player is being arrested / busted.  
--- If atArresting is set to 1, this function will return 1 when player is being arrested (while player is putting his hand up, but still have control)  
--- If atArresting is set to 0, this function will return 1 only when the busted screen is shown.  
--- @param player Player 
--- @param atArresting boolean 
--- @return boolean
function IsPlayerBeingArrested(player, atArresting) end

--- @param player Player 
--- @return boolean
function HasPlayerLeftTheWorld(player) end

--- @param player Player 
--- @return boolean
function HasPlayerDamagedAtLeastOnePed(player) end

--- Returns true when the player is not able to control the cam i.e. when running a benchmark test, switching the player or viewing a cutscene.  
--- Note: I am not 100% sure if the native actually checks if the cam control is disabled but it seems promising.  
--- @return boolean
function IsPlayerCamControlDisabled() end

--- Returns true if an unk value is greater than 0.0f  
--- @param player Player 
--- @return boolean
function IsPlayerBattleAware(player) end

--- Gets a value indicating whether the specified player is currently aiming freely.  
--- @param player Player 
--- @return boolean
function IsPlayerFreeAiming(player) end

--- Can the player control himself, used to disable controls for player for things like a cutscene.  
--- ---  
--- You can't disable controls with this, use SET_PLAYER_CONTROL(...) for this.  
--- @param player Player 
--- @return boolean
function IsPlayerControlOn(player) end

--- @param player Player 
--- @return boolean
function IsPlayerBluetoothEnable(player) end

--- Returns TRUE if the player ('s ped) is climbing at the moment.  
--- @param player Player 
--- @return boolean
function IsPlayerClimbing(player) end

--- Gets a value indicating whether the specified player is currently aiming freely at the specified entity.  
--- @param player Player 
--- @param entity Entity 
--- @return boolean
function IsPlayerFreeAimingAtEntity(player, entity) end

--- Checks whether the specified player has a Ped, the Ped is not dead, is not injured and is not arrested.  
--- @param player Player 
--- @return boolean
function IsPlayerPlaying(player) end

--- @param player Player 
--- @return boolean
function IsPlayerFreeForAmbientTask(player) end

--- this function is hard-coded to always return 0.  
--- @return boolean
function IsPlayerLoggingInNp() end

--- @param player Player 
--- @return boolean
function IsPlayerPressingHorn(player) end

--- Returns TRUE if the game is in online mode and FALSE if in offline mode.  
--- This is an alias for NETWORK_IS_SIGNED_ONLINE.  
--- @return boolean
function IsPlayerOnline() end

--- @param player Player 
--- @return boolean
function IsPlayerDead(player) end

--- @param player Player 
--- @return boolean
function IsPlayerReadyForCutscene(player) end

--- Returns true if the player is riding a train.  
--- @param player Player 
--- @return boolean
function IsPlayerRidingTrain(player) end

--- @param player Player 
--- @return boolean
function IsPlayerScriptControlOn(player) end

--- @param player Player 
--- @param entity Entity 
--- @return boolean
function IsPlayerTargettingEntity(player, entity) end

--- NativeDB Added Parameter 2: Any p1
--- @param player Player 
--- @return boolean
function IsSpecialAbilityEnabled(player) end

--- @param player Player 
--- @param wantedLevel number 
--- @return boolean
function IsPlayerWantedLevelGreater(player, wantedLevel) end

--- @param player Player 
--- @return boolean
function IsPlayerTargettingAnything(player) end

--- NativeDB Added Parameter 2: Any p1
--- @param player Player 
--- @return boolean
function IsSpecialAbilityActive(player) end

--- NativeDB Added Parameter 2: Any p1
--- @param player Player 
--- @return boolean
function IsSpecialAbilityMeterFull(player) end

--- @return boolean
function IsPlayerTeleportActive() end

--- @return boolean
function IsSystemUiBeingDisplayed() end

--- @param playerModel Hash 
--- @return boolean
function IsSpecialAbilityUnlocked(playerModel) end

--- Only 1 match. ob_sofa_michael.  
--- PLAYER::PLAYER_ATTACH_VIRTUAL_BOUND(-804.5928f, 173.1801f, 71.68436f, 0f, 0f, 0.590625f, 1f, 0.7f);1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @return void (Type not found)
function PlayerAttachVirtualBound(p0, p1, p2, p3, p4, p5, p6, p7) end

--- Returns the player index for the local player.
--- @return Player
function PlayerId() end

--- Does exactly the same thing as PLAYER_ID()  
--- @return number
function NetworkPlayerIdToInt() end

--- 1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
--- @return void (Type not found)
function PlayerDetachVirtualBound() end

--- Returns the entity handle for the local player ped. Note that this entity handle will change after using commands such as SET_PLAYER_MODEL.
--- @return Ped
function PlayerPedId() end

--- PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(), 37, PLAYER::GET_WANTED_LEVEL_THRESHOLD(1));  
--- From am_armybase.ysc.c4:  
--- PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(4), 36, PLAYER::GET_WANTED_LEVEL_THRESHOLD(4));  
--- -----  
--- This was taken from the GTAV.exe v1.334. The function is called sub_140592CE8. For a full decompilation of the function, see here: pastebin.com/09qSMsN7   
--- -----  
--- crimeType:  
--- 1: Firearms possession  
--- 2: Person running a red light ("5-0-5")  
--- 3: Reckless driver  
--- 4: Speeding vehicle (a "5-10")  
--- 5: Traffic violation (a "5-0-5")  
--- 6: Motorcycle rider without a helmet  
--- 7: Vehicle theft (a "5-0-3")  
--- 8: Grand Theft Auto  
--- 9: ???  
--- 10: ???  
--- 11: Assault on a civilian (a "2-40")  
--- 12: Assault on an officer  
--- 13: Assault with a deadly weapon (a "2-45")  
--- 14: Officer shot (a "2-45")  
--- 15: Pedestrian struck by a vehicle  
--- 16: Officer struck by a vehicle  
--- 17: Helicopter down (an "AC"?)  
--- 18: Civilian on fire (a "2-40")  
--- 19: Officer set on fire (a "10-99")  
--- 20: Car on fire  
--- 21: Air unit down (an "AC"?)  
--- 22: An explosion (a "9-96")  
--- 23: A stabbing (a "2-45") (also something else I couldn't understand)  
--- 24: Officer stabbed (also something else I couldn't understand)  
--- 25: Attack on a vehicle ("MDV"?)  
--- 26: Damage to property  
--- 27: Suspect threatening officer with a firearm  
--- 28: Shots fired  
--- 29: ???  
--- 30: ???  
--- 31: ???  
--- 32: ???  
--- 33: ???  
--- 34: A "2-45"  
--- 35: ???  
--- 36: A "9-25"  
--- 37: ???  
--- 38: ???  
--- 39: ???  
--- 40: ???  
--- 41: ???  
--- 42: ???  
--- 43: Possible disturbance  
--- 44: Civilian in need of assistance  
--- 45: ???  
--- 46: ???  
--- @param player Player 
--- @param crimeType number 
--- @param wantedLvlThresh number 
--- @return void (Type not found)
function ReportCrime(player, crimeType, wantedLvlThresh) end

--- @param player Player 
--- @return void (Type not found)
function ReportPoliceSpottedPlayer(player) end

--- @param player Player 
--- @param p2 boolean 
--- @return void (Type not found)
function RemovePlayerHelmet(player, p2) end

--- @param player Player 
--- @return void (Type not found)
function ResetPlayerInputGait(player) end

--- @param player Player 
--- @return void (Type not found)
function ResetPlayerStamina(player) end

--- @param player Player 
--- @return void (Type not found)
function ResetWantedLevelDifficulty(player) end

--- Adds a percentage to a players stamina
--- @param player Player player to restore the stamina for
--- @param percentage number seems to be a percentage that ranges from 0.0 to 1.0 (1.0 being 100%)
--- @return void (Type not found)
function RestorePlayerStamina(player, percentage) end

--- This can be between 1.0f - 14.9f   
--- You can change the max in IDA from 15.0. I say 15.0 as the function blrs if what you input is greater than or equal to 15.0 hence why it's 14.9 max default.  
--- On PC the multiplier can be between 0.0f and 50.0f (inclusive).  
--- @param player Player 
--- @param multiplier number 
--- @return void (Type not found)
function SetAirDragMultiplierForPlayersVehicle(player, multiplier) end

--- Sets whether all random peds will run away from the player if they are agitated (threatened) (bool=true), or if they will stand their ground (bool=false).
--- @param player Player The Player ID for whom you want to set this behavior.
--- @param toggle boolean true/false.
--- @return void (Type not found)
function SetAllRandomPedsFlee(player, toggle) end

--- NativeDB Introduced: v323
--- @return void (Type not found)
function ResetWorldBoundaryForPlayer() end

--- For Steam.
--- Does nothing and always returns false in the retail version of the game.
--- @param achievement number 
--- @param progress number 
--- @return boolean
function SetAchievementProgress(achievement, progress) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetAutoGiveParachuteWhenEnterPlane(player, toggle) end

--- @param player Player 
--- @return void (Type not found)
function SetAllRandomPedsFleeThisFrame(player) end

--- @param player Player 
--- @return void (Type not found)
function ResetPlayerArrestState(player) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetDispatchCopsForPlayer(player, toggle) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetAutoGiveScubaGearWhenExitVehicle(player, toggle) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetEveryoneIgnorePlayer(player, toggle) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetDisableAmbientMeleeMove(player, toggle) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetIgnoreLowPriorityShockingEvents(player, toggle) end

--- @param maxWantedLevel number 
--- @return void (Type not found)
function SetMaxWantedLevel(maxWantedLevel) end

--- Sets whether this player can take cover.
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerCanUseCover(player, toggle) end

--- @param player Player 
--- @param state boolean 
--- @return void (Type not found)
function SetPlayerBluetoothState(player, state) end

--- Sets whether the player is able to do drive-bys in vehicle (shooting & aiming in vehicles), this also includes middle finger taunts.
--- This is a toggle, it does not have to be ran every frame.
--- Example:
--- ```lua
--- SetPlayerCanDoDriveBy(PlayerId(), false)
--- @param player Player The player to target.
--- @param toggle boolean If set to false, disables the players ability to do drive bys.
--- @return void (Type not found)
function SetPlayerCanDoDriveBy(player, toggle) end

--- 6 matches across 4 scripts. 5 occurrences were 240. The other was 255.  
--- @param value number 
--- @return void (Type not found)
function SetPlayerClothLockCounter(value) end

--- Sets whether this player can be hassled by gangs.  
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerCanBeHassledByGangs(player, toggle) end

--- Flags:
--- SPC_AMBIENT_SCRIPT = (1 << 1),
--- SPC_CLEAR_TASKS = (1 << 2),
--- SPC_REMOVE_FIRES = (1 << 3),
--- SPC_REMOVE_EXPLOSIONS = (1 << 4),
--- SPC_REMOVE_PROJECTILES = (1 << 5),
--- SPC_DEACTIVATE_GADGETS = (1 << 6),
--- SPC_REENABLE_CONTROL_ON_DEATH = (1 << 7),
--- SPC_LEAVE_CAMERA_CONTROL_ON = (1 << 8),
--- SPC_ALLOW_PLAYER_DAMAGE = (1 << 9),
--- SPC_DONT_STOP_OTHER_CARS_AROUND_PLAYER = (1 << 10),
--- SPC_PREVENT_EVERYBODY_BACKOFF = (1 << 11),
--- SPC_ALLOW_PAD_SHAKE = (1 << 12)
--- See: https://alloc8or.re/gta5/doc/enums/eSetPlayerControlFlag.txt
--- @param player Player 
--- @param bHasControl boolean 
--- @param flags number 
--- @return void (Type not found)
function SetPlayerControl(player, bHasControl, flags) end

--- @param player Player 
--- @param enabled boolean 
--- @return void (Type not found)
function SetPlayerCanLeaveParachuteSmokeTrail(player, enabled) end

--- Every occurrence was either 0 or 2.  
--- @param index number 
--- @return void (Type not found)
function SetPlayerClothPackageIndex(index) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerForceSkipAimIntro(player, toggle) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerForcedAim(player, toggle) end

--- @param player Player 
--- @param distance number 
--- @return void (Type not found)
function SetPlayerFallDistance(player, distance) end

--- @param player Player 
--- @param p1 number 
--- @return void (Type not found)
function SetPlayerClothPinFrames(player, p1) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerForcedZoom(player, toggle) end

--- @param player Player 
--- @return void (Type not found)
function SetPlayerHasReserveParachute(player) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerInvincibleKeepRagdollEnabled(player, toggle) end

--- @param player Player The local player ID.
--- @param limit number A value between 0.0 and 1.0, 0.5 is default.
--- @return void (Type not found)
function SetPlayerHealthRechargeLimit(player, limit) end

--- @param player Player The local player ID.
--- @param regenRate number The recharge multiplier, a value between 0.0 and 1.0.
--- @return void (Type not found)
function SetPlayerHealthRechargeMultiplier(player, regenRate) end

--- Simply sets you as invincible (Health will not deplete).  
--- Use 0x733A643B5B0C53C1 instead if you want Ragdoll enabled, which is equal to:  
--- *(DWORD *)(playerPedAddress + 0x188) |= (1 << 9);  
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerInvincible(player, toggle) end

--- Default is 100. Use player id and not ped id. For instance: PLAYER::SET_PLAYER_MAX_ARMOUR(PLAYER::PLAYER_ID(), 100); // main_persistent.ct4  
--- @param player Player 
--- @param value number 
--- @return void (Type not found)
function SetPlayerMaxArmour(player, value) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerLeavePedBehind(player, toggle) end

--- NativeDB Introduced: v1180
--- @param player Player 
--- @param p1 boolean 
--- @return void (Type not found)
function SetPlayerHomingRocketDisabled(player, p1) end

--- Used to toggle the square up aim.
--- @param player Player The player ID to toggle the lock on for.
--- @param toggle boolean Set to false to prevent lock on, set to true to allow for lock on.
--- @return void (Type not found)
function SetPlayerLockon(player, toggle) end

--- @param player Player 
--- @return void (Type not found)
function SetPlayerMayNotEnterAnyVehicle(player) end

--- Affects the range of auto aim target.  
--- @param player Player 
--- @param range number 
--- @return void (Type not found)
function SetPlayerLockonRangeOverride(player, range) end

--- NativeDB Added Parameter 3: BOOL p2
--- @param player Player 
--- @param modifier number 
--- @return void (Type not found)
function SetPlayerMeleeWeaponDamageModifier(player, modifier) end

--- modifier's min value is 0.1
--- @param player Player 
--- @param modifier number 
--- @return void (Type not found)
function SetPlayerMeleeWeaponDefenseModifier(player, modifier) end

--- @param player Player 
--- @param multiplier number 
--- @return void (Type not found)
function SetPlayerNoiseMultiplier(player, multiplier) end

--- @param player Player 
--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetPlayerMayOnlyEnterThisVehicle(player, vehicle) end

--- Set the model for a specific Player. Note that this will destroy the current Ped for the Player and create a new one, any reference to the old ped will be invalid after calling this.
--- As per usual, make sure to request the model first and wait until it has loaded.
--- @param player Player The player to set the model for
--- @param model Hash The model to use
--- @return void (Type not found)
function SetPlayerModel(player, model) end

--- p1 was always 5.  
--- p4 was always false.  
--- @param player Player 
--- @param p1 number 
--- @param p2  
--- @param p3  
--- @param p4 boolean 
--- @return void (Type not found)
function SetPlayerParachuteVariationOverride(player, p1, p2, p3, p4) end

--- example:  
--- PLAYER::SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(PLAYER::PLAYER_ID(), 0x73268708);  
--- @param player Player 
--- @param model Hash 
--- @return void (Type not found)
function SetPlayerParachuteModelOverride(player, model) end

--- tints 0- 13
--- 0 - unkown
--- 1 - unkown
--- 2 - unkown
--- 3 - unkown
--- 4 - unkown
--- @param player Player 
--- @param tintIndex number 
--- @return void (Type not found)
function SetPlayerParachutePackTintIndex(player, tintIndex) end

--- @param player Player 
--- @param r number 
--- @param g number 
--- @param b number 
--- @return void (Type not found)
function SetPlayerParachuteSmokeTrailColor(player, r, g, b) end

--- @param player Player 
--- @param model Hash 
--- @return void (Type not found)
function SetPlayerParachutePackModelOverride(player, model) end

--- Tints:  
--- None = -1,  
--- Rainbow = 0,  
--- Red = 1,  
--- SeasideStripes = 2,  
--- WidowMaker = 3,  
--- Patriot = 4,  
--- Blue = 5,  
--- Black = 6,  
--- Hornet = 7,  
--- AirFocce = 8,  
--- Desert = 9,  
--- Shadow = 10,  
--- HighAltitude = 11,  
--- Airbone = 12,  
--- Sunrise = 13,  
--- @param player Player 
--- @param tintIndex number 
--- @return void (Type not found)
function SetPlayerParachuteTintIndex(player, tintIndex) end

--- example:  
--- flags: 0-6  
--- PLAYER::SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS(PLAYER::PLAYER_ID(), 6);  
--- wouldnt the flag be the seatIndex?  
--- @param player Player 
--- @param flags number 
--- @return void (Type not found)
function SetPlayerResetFlagPreferRearSeats(player, flags) end

--- Tints:  
--- None = -1,  
--- Rainbow = 0,  
--- Red = 1,  
--- SeasideStripes = 2,  
--- WidowMaker = 3,  
--- Patriot = 4,  
--- Blue = 5,  
--- Black = 6,  
--- Hornet = 7,  
--- AirFocce = 8,  
--- Desert = 9,  
--- Shadow = 10,  
--- HighAltitude = 11,  
--- Airbone = 12,  
--- Sunrise = 13,  
--- @param player Player 
--- @param index number 
--- @return void (Type not found)
function SetPlayerReserveParachuteTintIndex(player, index) end

--- NativeDB Introduced: v2372
--- @param player Player 
--- @param model Hash 
--- @return void (Type not found)
function SetPlayerReserveParachuteModelOverride(player, model) end

--- Values around 1.0f to 2.0f used in game scripts.  
--- @param player Player 
--- @param multiplier number 
--- @return void (Type not found)
function SetPlayerSneakingNoiseMultiplier(player, multiplier) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerSprint(player, toggle) end

--- @param targetLevel number 
--- @return void (Type not found)
function SetPlayerTargetLevel(targetLevel) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerSimulateAiming(player, toggle) end

--- Set player team on deathmatch and last team standing..  
--- @param player Player 
--- @param team number 
--- @return void (Type not found)
function SetPlayerTeam(player, team) end

--- Seems to lock the underwater timer of the specified player. Set `percentage` to `50.0` will reduce the value of [GET_PLAYER_UNDERWATER_TIME_REMAINING](#\_0xA1FCF8E6AF40B731) to 5.0.
--- If you want to increase the underwater time for ped, use [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) instead.
--- Using this native after [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) **WILL NOT** get what you want. For example, if you set the max time underwater to `100.0` seconds using [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) and then call this native and set the `percentage` to 50.0, you will not get `50.0`, instead `2.0`.
--- @param player Player Player id.
--- @param percentage number Maximum is `100.0`. Any value above `100.0` and less than `0.0` will have no effect on [GET_PLAYER_UNDERWATER_TIME_REMAINING](#\_0xA1FCF8E6AF40B731).
--- @return 
function SetPlayerUnderwaterTimeRemaining(player, percentage) end

--- modifier's min value is 0.1
--- @param player Player 
--- @param modifier number 
--- @return void (Type not found)
function SetPlayerVehicleDamageModifier(player, modifier) end

--- Sets your targeting mode.
--- 0 = Assisted Aim - Full
--- 1 = Assisted Aim - Partial
--- 2 = Free Aim - Assisted
--- 3 = Free Aim
--- @param targetMode number 
--- @return void (Type not found)
function SetPlayerTargetingMode(targetMode) end

--- modifier's min value is 0.1
--- @param player Player 
--- @param modifier number 
--- @return void (Type not found)
function SetPlayerVehicleDefenseModifier(player, modifier) end

--- @param player Player the target player
--- @param wantedLevel number the wanted level 1-5
--- @param delayedResponse boolean false = 0-10sec police spawn response time, true = 10-20sec police spawn response time
--- @return void (Type not found)
function SetPlayerWantedLevelNoDrop(player, wantedLevel, delayedResponse) end

--- @param player Player 
--- @param value number 
--- @return void (Type not found)
function SetPlayerStealthPerceptionModifier(player, value) end

--- # Predominant call signatures  
--- PLAYER::SET_PLAYER_WANTED_CENTRE_POSITION(PLAYER::PLAYER_ID(), ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1));  
--- # Parameter value ranges  
--- P0: PLAYER::PLAYER_ID()  
--- P1: ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1)  
--- P2: Not set by any call  
--- @param player Player 
--- @param position Vector3 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function SetPlayerWantedCentrePosition(player, position, p2, p3) end

--- @param player Player 
--- @param modifier number 
--- @return void (Type not found)
function SetPlayerWeaponDefenseModifier(player, modifier) end

--- @param player Player the target player
--- @param wantedLevel number the wanted level 1-5
--- @param delayedResponse boolean false = 0-10sec police spawn response time, true = 10-20sec police spawn response time
--- @return void (Type not found)
function SetPlayerWantedLevel(player, wantedLevel, delayedResponse) end

--- The native ensures the 'modifier' parameter is 0.1 or greater.
--- @param player Player 
--- @param modifier number 
--- @return void (Type not found)
function SetPlayerWeaponDamageModifier(player, modifier) end

--- Forces any pending wanted level to be applied to the specified player immediately.  
--- Call SET_PLAYER_WANTED_LEVEL with the desired wanted level, followed by SET_PLAYER_WANTED_LEVEL_NOW.  
--- Second parameter is unknown (always false).  
--- @param player Player 
--- @param p1 boolean 
--- @return void (Type not found)
function SetPlayerWantedLevelNow(player, p1) end

--- Multiplier goes up to 1.49 any value above will be completely overruled by the game and the multiplier will not take effect, this can be edited in memory however.  
--- Just call it one time, it is not required to be called once every tick.  
--- Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and SWIM above. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.  
--- It is not possible to "decrease" speed. Anything below 1 will be ignored.  
--- @param player Player 
--- @param multiplier number 
--- @return void (Type not found)
function SetRunSprintMultiplierForPlayer(player, multiplier) end

--- @param player Player 
--- @param modifier number 
--- @return void (Type not found)
function SetPlayerWeaponDefenseModifier2(player, modifier) end

--- The player will be ignored by the police if toggle is set to true  
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPoliceIgnorePlayer(player, toggle) end

--- @param multiplier number 
--- @return void (Type not found)
function SetSpecialAbilityMultiplier(multiplier) end

--- If toggle is set to false:
---  The police won't be shown on the (mini)map
--- If toggle is set to true:
---  The police will be shown on the (mini)map
--- @param toggle boolean 
--- @return void (Type not found)
function SetPoliceRadarBlips(toggle) end

--- Swim speed multiplier.  
--- Multiplier goes up to 1.49  
--- Just call it one time, it is not required to be called once every tick. - Note copied from below native.  
--- Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and RUN_SPRINT below. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.  
--- @param player Player 
--- @param multiplier number 
--- @return void (Type not found)
function SetSwimMultiplierForPlayer(player, multiplier) end

--- @param multiplier number 
--- @return void (Type not found)
function SetWantedLevelMultiplier(multiplier) end

--- NativeDB Added Parameter 3: Any p2
--- @param player Player 
--- @param p1 number 
--- @return void (Type not found)
function SetSpecialAbility(player, p1) end

--- Max value is 1.0  
--- @param player Player 
--- @param difficulty number 
--- @return void (Type not found)
function SetWantedLevelDifficulty(player, difficulty) end

--- NativeDB Introduced: v2060
--- @param player Player 
--- @param wantedLevel number 
--- @param lossTime number 
--- @return void (Type not found)
function SetWantedLevelHiddenEvasionTime(player, wantedLevel, lossTime) end

--- This is to make the player walk without accepting input.
--- Call this native every frame so you can control the direction of your ped.
--- @param player Player The player to target (always your local player id).
--- @param amount number For game pads, using anything less than 1.0 will make it partially press analog controls (like sticks/triggers).
--- @param gaitType number Value in increments of 100's. 2000, 500, 300, 200, etc. Set to -1 if you want your ped to walk forever.
--- @param rotationSpeed number Determines the counterclockwise rotation angle when walking.
--- @param p4 boolean Always true
--- @param p5 boolean Always false
--- @return void (Type not found)
function SimulatePlayerInputGait(player, amount, gaitType, rotationSpeed, p4, p5) end

--- p1 appears to always be 1 (only comes up twice)
--- NativeDB Added Parameter 3: Any p2
--- @param player Player 
--- @param p2 Ped 
--- @return void (Type not found)
function SpecialAbilityChargeContinuous(player, p2) end

--- NativeDB Added Parameter 2: Any p1
--- @param player  
--- @return void (Type not found)
function SpecialAbilityActivate(player) end

--- Only 1 match. Both p1 & p2 were true.
--- NativeDB Added Parameter 4: Any p3
--- @param player Player 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SpecialAbilityChargeMedium(player, p1, p2) end

--- 2 matches. p1 was always true.
--- NativeDB Added Parameter 4: Any p3
--- @param player Player 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SpecialAbilityChargeLarge(player, p1, p2) end

--- p1 appears as 5, 10, 15, 25, or 30. p2 is always true.
--- NativeDB Added Parameter 4: Any p3
--- @param player Player 
--- @param p1 number 
--- @param p2 boolean 
--- @return void (Type not found)
function SpecialAbilityChargeAbsolute(player, p1, p2) end

--- normalizedValue is from 0.0 - 1.0
--- p2 is always 1
--- NativeDB Added Parameter 4: Any p3
--- @param player Player 
--- @param normalizedValue number 
--- @param p2 boolean 
--- @return void (Type not found)
function SpecialAbilityChargeNormalized(player, normalizedValue, p2) end

--- NativeDB Added Parameter 2: Any p1
--- @param player Player 
--- @return void (Type not found)
function SpecialAbilityDeactivate(player) end

--- NativeDB Added Parameter 2: Any p1
--- @param player Player 
--- @return void (Type not found)
function SpecialAbilityChargeOnMissionFailed(player) end

--- Also known as _RECHARGE_SPECIAL_ABILITY
--- NativeDB Added Parameter 3: Any p2
--- @param player Player 
--- @param p1 boolean 
--- @return void (Type not found)
function SpecialAbilityFillMeter(player, p1) end

--- Every occurrence of p1 & p2 were both true.
--- NativeDB Added Parameter 4: Any p3
--- @param player Player 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SpecialAbilityChargeSmall(player, p1, p2) end

--- NativeDB Added Parameter 2: Any p1
--- @param player Player 
--- @return void (Type not found)
function SpecialAbilityReset(player) end

--- NativeDB Added Parameter 2: Any p1
--- @param playerModel Hash 
--- @return void (Type not found)
function SpecialAbilityLock(playerModel) end

--- NativeDB Added Parameter 2: Any p1
--- @param player Player 
--- @return void (Type not found)
function SpecialAbilityDeactivateFast(player) end

--- Teleports the player to the given coordinates.
--- If findCollisionLand is true it will try to find the Z value for you, this however has a timeout of 100 frames.
--- When trying to find the Z value the native will take longer the higher the difference from the given Z to the ground, this combined with the timeout can cause the teleport to just teleport to the given Z value, so try to estimate the z value, so don't just pass in 1000.0.
--- Also if you're in a vehicle and teleportWithVehicle is true it will not find the Z value for you.
--- @param player Player 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param heading number 
--- @param teleportWithVehicle boolean Teleports the player along with the vehicle they are in.
--- @param findCollisionLand boolean Attempt to find a ground coordinate at the given XY location; overriding the Z value.
--- @param p7 boolean 
--- @return void (Type not found)
function StartPlayerTeleport(player, x, y, z, heading, teleportWithVehicle, findCollisionLand, p7) end

--- p1 was always true.
--- NativeDB Added Parameter 3: Any p2
--- @param player Player 
--- @param p1 boolean 
--- @return void (Type not found)
function SpecialAbilityDepleteMeter(player, p1) end

--- NativeDB Added Parameter 2: Any p1
--- @param p0  
--- @return void (Type not found)
function SpecialAbilityDeplete(p0) end

--- NativeDB Added Parameter 2: Any p1
--- @param playerModel Hash 
--- @return void (Type not found)
function SpecialAbilityUnlock(playerModel) end

--- This was previously named as "RESERVE_ENTITY_EXPLODES_ON_HIGH_EXPLOSION_COMBO"  
--- which is obviously incorrect.  
--- Seems to only appear in scripts used in Singleplayer. p1 ranges from 2 - 46.  
--- I assume this switches the crime type  
--- @param player Player 
--- @param p1 number 
--- @return void (Type not found)
function SwitchCrimeType(player, p1) end

--- @param duration number 
--- @return void (Type not found)
function StartFiringAmnesty(duration) end

--- Disables the player's teleportation  
--- @return void (Type not found)
function StopPlayerTeleport() end

--- @param player Player 
--- @return boolean
function UpdatePlayerTeleport(player) end
