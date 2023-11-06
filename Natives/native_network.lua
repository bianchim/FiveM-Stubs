
--- @param netID number 
--- @param toggle boolean 
--- @return void (Type not found)
function ActivateDamageTrackerOnNetworkId(netID, toggle) end

--- @param networkHandle number 
--- @param event number 
--- @param amountReceived number 
--- @return boolean
function BadSportPlayerLeftDetected(networkHandle, event, amountReceived) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function ActivateDamageTrackerOnPlayer(player, toggle) end

--- @param ped_amt number 
--- @param vehicle_amt number 
--- @param object_amt number 
--- @param pickup_amt number 
--- @return boolean
function CanRegisterMissionEntities(ped_amt, vehicle_amt, object_amt, pickup_amt) end

--- **This native does absolutely nothing, just a nullsub**
--- @return void (Type not found)
function ClearLaunchParams() end

--- @param amount number 
--- @return boolean
function CanRegisterMissionObjects(amount) end

--- @param amount number 
--- @return boolean
function CanRegisterMissionPeds(amount) end

--- @param p0 string 
--- @return number
function CloudDeleteMemberFile(p0) end

--- @param amount number 
--- @return boolean
function CanRegisterMissionVehicles(amount) end

--- Downloads prod.cloud.rockstargames.com/titles/gta5/[platform]/check.json
--- @return void (Type not found)
function CloudCheckAvailability() end

--- @param handle number 
--- @return boolean
function CloudHasRequestCompleted(handle) end

--- @param handle number 
--- @return boolean
function CloudDidRequestSucceed(handle) end

--- @param amount number 
--- @return boolean
function CanRegisterMissionPickups(amount) end

--- Takes the specified time and writes it to the structure specified in the second argument.  
--- struct date_time  
--- { 
---     alignas(8) int year;  
---     alignas(8) int month;  
---     alignas(8) int day;  
---     alignas(8) int hour;  
---     alignas(8) int minute;  
---     alignas(8) int second;  
--- };
--- @param posixTime number 
--- @param timeStructure  
--- @return void (Type not found)
function ConvertPosixTime(posixTime, timeStructure) end

--- @return boolean
function CloudIsCheckingAvailability() end

--- @return boolean
function CloudGetAvailabilityCheckResult() end

--- @return boolean
function FacebookIsSendingData() end

--- @return boolean
function FacebookSetCreateCharacterComplete() end

--- @param heistName string 
--- @param cashEarned number 
--- @param xpEarned number 
--- @return boolean
function FacebookSetHeistComplete(heistName, cashEarned, xpEarned) end

--- @return boolean
function FacebookDoUnkCheck() end

--- @return boolean
function FacebookIsAvailable() end

--- @param networkHandle number 
--- @param p1  
--- @param p2  
--- @return boolean
function FilloutPmPlayerList(networkHandle, p1, p2) end

--- milestoneId:  
--- 0 = "percentcomplete"  
--- 1 = "storycomplete"  
--- 2 = "vehicles"  
--- 3 = "properties"  
--- 4 = "psych"  
--- 5 = "mapreveal"  
--- 6 = "prologue"  
--- @param milestoneId number 
--- @return boolean
function FacebookSetMilestoneComplete(milestoneId) end

--- Hardcoded to not work in SP.  
--- @param p0 boolean 
--- @return void (Type not found)
function FadeOutLocalPlayer(p0) end

--- index2 is unused
--- @param index number 
--- @param index2 number 
--- @return string
function GetCommerceItemCat(index, index2) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function FilloutPmPlayerListWithNames(p0, p1, p2, p3) end

--- Returns POSIX timestamp.
--- Renamed from `_GET_POSIX_TIME` to `GET_CLOUD_TIME_AS_INT` because of conflicting native names ([`0xDA488F299A5B164E`](#\_0xDA488F299A5B164E))
--- @return number
function GetCloudTimeAsInt() end

--- @param index number 
--- @return string
function GetCommerceItemName(index) end

--- Same as GET_CLOUD_TIME_AS_INT but returns the value as a hex string (%I64X).
--- @return string
function GetCloudTimeAsString() end

--- @param index number 
--- @return number
function GetCommerceItemNumCats(index) end

--- NativeDB Added Parameter 3: int p2
--- @param index number 
--- @return string
function GetCommerceItemTexturename(index) end

--- @param index number 
--- @return string
function GetCommerceItemId(index) end

--- @param index number 
--- @return string
function GetCommerceProductPrice(index) end

--- @return number
function GetMaxNumNetworkObjects() end

--- @return number
function GetNetworkTime() end

--- @return number
function GetMaxNumNetworkVehicles() end

--- @return number
function GetMaxNumNetworkPickups() end

--- @return number
function GetNumCommerceItems() end

--- @return number
function GetMaxNumNetworkPeds() end

--- Returns the same value as [`GetNetworkTime`](#\_0x7A5487FE9FAA6B48) in freemode, but as opposed to `GetNetworkTime` it always gets the most recent time, instead of once per tick.
--- Could be used for benchmarking since it can return times in ticks.
--- @return number
function GetNetworkTimeAccurate() end

--- @param p0 boolean 
--- @return number
function GetNumCreatedMissionObjects(p0) end

--- @param p0 boolean 
--- @return number
function GetNumCreatedMissionVehicles(p0) end

--- @param p0 boolean 
--- @return number
function GetNumCreatedMissionPeds(p0) end

--- p0 appears to be for MP  
--- NativeDB Added Parameter 2: Any p1
--- @param p0 boolean 
--- @return number
function GetNumReservedMissionObjects(p0) end

--- p0 appears to be for MP  
--- NativeDB Added Parameter 2: Any p1
--- @param p0 boolean 
--- @return number
function GetNumReservedMissionVehicles(p0) end

--- Online version is defined here: update\update.rpf\common\data\version.txt
--- Example:
--- [ONLINE_VERSION_NUMBER]
--- 1.33
--- _GET_ONLINE_VERSION() will return "1.33"
--- @return string
function GetOnlineVersion() end

--- 0 = succeeded
--- 1 = pending
--- 2 = failed
--- @param p0 number 
--- @return number
function GetStatusOfTextureDownload(p0) end

--- p0 appears to be for MP  
--- NativeDB Added Parameter 2: Any p1
--- @param p0 boolean 
--- @return number
function GetNumReservedMissionPeds(p0) end

--- Subtracts the second argument from the first.  
--- @param timeA number 
--- @param timeB number 
--- @return number
function GetTimeDifference(timeA, timeB) end

--- @param time number 
--- @return string
function GetTimeAsString(time) end

--- Adds the first argument to the second.  
--- @param timeA number 
--- @param timeB number 
--- @return number
function GetTimeOffset(timeA, timeB) end

--- @return boolean
function HasNetworkTimeStarted() end

--- @param player Player 
--- @return boolean
function IsDamageTrackerActiveOnPlayer(player) end

--- @return boolean
function IsCommerceDataValid() end

--- @return boolean
function IsCommerceStoreOpen() end

--- @param entity Entity 
--- @return boolean
function IsEntityGhostedToLocalPlayer(entity) end

--- @param netID number 
--- @return boolean
function IsDamageTrackerActiveOnNetworkId(netID) end

--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return boolean
function IsSphereVisibleToAnotherMachine(p0, p1, p2, p3) end

--- @param player Player 
--- @return boolean
function IsPlayerInCutscene(player) end

--- @param netId number 
--- @return boolean
function IsNetworkIdOwnedByParticipant(netId) end

--- @param p0  
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @return boolean
function IsSphereVisibleToPlayer(p0, p1, p2, p3, p4) end

--- Returns true if the two times are equal; otherwise returns false.  
--- @param timeA number 
--- @param timeB number 
--- @return boolean
function IsTimeEqualTo(timeA, timeB) end

--- @return boolean
function IsStoreAvailableToUser() end

--- Subtracts the first argument from the second, then returns whether the result is negative.  
--- @param timeA number 
--- @param timeB number 
--- @return boolean
function IsTimeMoreThan(timeA, timeB) end

--- gets the entity id of a network id  
--- @param netHandle number 
--- @return Entity
function NetToEnt(netHandle) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkBlockJoinQueueInvites(toggle) end

--- Subtracts the second argument from the first, then returns whether the result is negative.  
--- @param timeA number 
--- @param timeB number 
--- @return boolean
function IsTimeLessThan(timeA, timeB) end

--- NETWORK_RE*
--- Triggers a CEventNetworkInviteConfirmed event
--- @return boolean
function NetworkAcceptInvite() end

--- @param netHandle number 
--- @return Vehicle
function NetToVeh(netHandle) end

--- gets the object id of a network id  
--- @param netHandle number 
--- @return Object
function NetToObj(netHandle) end

--- gets the ped id of a network id  
--- @param netHandle number 
--- @return Ped
function NetToPed(netHandle) end

--- @param tunableContext string 
--- @param tunableName string 
--- @return boolean
function NetworkAccessTunableBool(tunableContext, tunableName) end

--- @param tunableContext Hash 
--- @param tunableName Hash 
--- @param value number 
--- @return boolean
function NetworkAccessTunableFloatHash(tunableContext, tunableName, value) end

--- @param tunableContext Hash 
--- @param tunableName Hash 
--- @return boolean
function NetworkAccessTunableBoolHash(tunableContext, tunableName) end

--- @param tunableContext string 
--- @param tunableName string 
--- @param value number 
--- @return boolean
function NetworkAccessTunableFloat(tunableContext, tunableName, value) end

--- @param p0  
--- @return boolean
function NetworkAcceptPresenceInvite(p0) end

--- @param tunableContext string 
--- @param tunableName string 
--- @param value number 
--- @return boolean
function NetworkAccessTunableInt(tunableContext, tunableName, value) end

--- @param tunableContext Hash 
--- @param tunableName Hash 
--- @param value number 
--- @return boolean
function NetworkAccessTunableIntHash(tunableContext, tunableName, value) end

--- To remove, see: [`NETWORK_REMOVE_ENTITY_AREA`](#\_0x93CF869BAA0C4874).
--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- @param x1 number X dimension of the angled area 'origin'
--- @param y1 number Y dimension of the angled area 'origin'
--- @param z1 number Z dimension of the angled area 'origin'
--- @param x2 number X dimension of the angled area 'extent'
--- @param y2 number Y dimension of the angled area 'extent'
--- @param z2 number Z dimension of the angled area 'extent'
--- @param width number Width of the angled area
--- @return 
function NetworkAddEntityAngledArea(x1, y1, z1, x2, y2, z2, width) end

--- @return 
function NetworkActionFollowInvite() end

--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @return 
function NetworkAddEntityArea(p0, p1, p2, p3, p4, p5) end

--- @param entity Entity 
--- @param netScene number 
--- @param animDict string 
--- @param animName string 
--- @param speed number 
--- @param speedMulitiplier number 
--- @param flag number 
--- @return void (Type not found)
function NetworkAddEntityToSynchronisedScene(entity, netScene, animDict, animName, speed, speedMulitiplier, flag) end

--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @return 
function NetworkAddEntityDisplayedBoundaries(p0, p1, p2, p3, p4, p5) end

--- @param ped Ped 
--- @param netScene number 
--- @param animDict string 
--- @param animnName string 
--- @param blendInSpeed number 
--- @param blendOutSpeed number 
--- @param duration number 
--- @param flag number 
--- @param playbackRate number 
--- @param p9  
--- @return void (Type not found)
function NetworkAddPedToSynchronisedScene(ped, netScene, animDict, animnName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, p9) end

--- ..  
--- @param p0 number 
--- @param p1 number 
--- @return void (Type not found)
function NetworkAddFollowers(p0, p1) end

--- @param netScene number 
--- @param animDict string 
--- @param animName string 
--- @return void (Type not found)
function NetworkAddSynchronisedSceneCamera(netScene, animDict, animName) end

--- @param networkHandle  
--- @return boolean
function NetworkAmIBlockedByGamer(networkHandle) end

--- @param networkHandle number 
--- @param message string 
--- @return boolean
function NetworkAddFriend(networkHandle, message) end

--- @param networkHandle  
--- @return boolean
function NetworkAmIMutedByGamer(networkHandle) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkAllowLocalEntityAttachment(entity, toggle) end

--- @param player Player 
--- @return boolean
function NetworkAmIBlockedByPlayer(player) end

--- @param ped Ped 
--- @param player Player 
--- @return boolean
function NetworkApplyCachedPlayerHeadBlendData(ped, player) end

--- @param ped Ped 
--- @param p1 number 
--- @return void (Type not found)
function NetworkApplyPedScarData(ped, p1) end

--- @param player Player 
--- @return boolean
function NetworkAmIMutedByPlayer(player) end

--- @return boolean
function NetworkAllocateTunablesRegistrationDataMap() end

--- @param p0 number 
--- @param p1 number 
--- @return void (Type not found)
function NetworkApplyTransitionParameter(p0, p1) end

--- Getter for SET_NETWORK_CUTSCENE_ENTITIES.
--- NativeDB Introduced: v2699
--- @return boolean
function NetworkAreCutsceneEntities() end

--- NativeDB Added Parameter 1: int p0
--- NativeDB Added Parameter 2: int p1
--- NativeDB Added Parameter 3: int p2
--- @return void (Type not found)
function NetworkBail() end

--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function NetworkApplyVoiceProximityOverride(x, y, z) end

--- @param p0 number 
--- @param string string 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkApplyTransitionParameterString(p0, string, p2) end

--- @param p0  
--- @return boolean
function NetworkAreTransitionDetailsValid(p0) end

--- @param netHandle1 number 
--- @param netHandle2 number 
--- @return boolean
function NetworkAreHandlesTheSame(netHandle1, netHandle2) end

--- @param netScene number 
--- @param entity Entity 
--- @param bone number 
--- @return void (Type not found)
function NetworkAttachSynchronisedSceneToEntity(netScene, entity, bone) end

--- @return boolean
function NetworkAreSocialClubPoliciesCurrent() end

--- NativeDB Introduced: v2699
--- @return void (Type not found)
function NetworkBailTransitionQuickmatch() end

--- 11 - Need to download tunables.  
--- 12 - Need to download background script.  
--- Returns 1 if the multiplayer is loaded, otherwhise 0.  
--- @param loadingState number 
--- @return boolean
function NetworkCanAccessMultiplayer(loadingState) end

--- @param p0 boolean 
--- @return void (Type not found)
function NetworkBlockKickedPlayers(p0) end

--- NativeDB Added Parameter 1: int p0
--- NativeDB Added Parameter 2: int p1
--- NativeDB Added Parameter 3: int p2
--- @return void (Type not found)
function NetworkBailTransition() end

--- @param networkHandle number 
--- @return boolean
function NetworkCanCommunicateWithGamer(networkHandle) end

--- Same as NETWORK_CAN_COMMUNICATE_WITH_GAMER
--- NETWORK_CAN_*
--- @param networkHandle  
--- @return boolean
function NetworkCanCommunicateWithGamer2(networkHandle) end

--- @return boolean
function NetworkCanBail() end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkBlockInvites(toggle) end

--- @return boolean
function NetworkCanEnterMultiplayer() end

--- @return void (Type not found)
function NetworkCacheLocalPlayerHeadBlendData() end

--- @param networkHandle  
--- @return boolean
function NetworkCanGamerPlayMultiplayerWithMe(networkHandle) end

--- @return boolean
function NetworkCanSessionEnd() end

--- @param networkHandle  
--- @return boolean
function NetworkCanViewGamerUserContent(networkHandle) end

--- @param networkHandle  
--- @return boolean
function NetworkCanPlayMultiplayerWithGamer(networkHandle) end

--- @return void (Type not found)
function NetworkCancelRespawnSearch() end

--- @param p0  
--- @param p1  
--- @return void (Type not found)
function NetworkChangeTransitionSlots(p0, p1) end

--- @param p0 number 
--- @param p1 number 
--- @param p2 boolean 
--- @return boolean
function NetworkCheckCommunicationPrivileges(p0, p1, p2) end

--- @return boolean
function NetworkCanSetWaypoint() end

--- @param p0 number 
--- @param p1 number 
--- @param p2 boolean 
--- @return boolean
function NetworkCheckUserContentPrivileges(p0, p1, p2) end

--- Checks if the friendDataIndex in the friend data manager contains the data for the specified networkHandle
--- @param friendDataIndex number 
--- @param networkHandle number 
--- @return boolean
function NetworkCheckDataManagerSucceededForHandle(friendDataIndex, networkHandle) end

--- @param p0  
--- @return boolean
function NetworkClanDownloadMembershipPending(p0) end

--- Only documented...  
--- @param animDict string 
--- @param animName string 
--- @return boolean
function NetworkClanAnimation(animDict, animName) end

--- @return boolean
function NetworkClanAnyDownloadMembershipPending() end

--- @param netHandle  
--- @param txdName string 
--- @return boolean
function NetworkClanGetEmblemTxdName(netHandle, txdName) end

--- @param networkHandle number 
--- @return boolean
function NetworkClanDownloadMembership(networkHandle) end

--- Retrieves a membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP).
--- Test C++ code:
--- https://pastebin.com/CD8wni4C
--- @param networkHandle number A player network handle.
--- @param clanMembership number Output buffer for the membership data. Also known as "desc".
--- @param membershipIndex number If the player has multiple crews/memberships, use \[0-9], or -1 to get the active crew/membership.
--- @return boolean
function NetworkClanGetMembership(networkHandle, clanMembership, membershipIndex) end

--- @return number
function NetworkClanGetLocalMembershipsCount() end

--- @param p0 number 
--- @return number
function NetworkClanGetMembershipCount(p0) end

--- @param memberDesc number 
--- @param p1 number 
--- @return boolean
function NetworkClanGetMembershipDesc(memberDesc, p1) end

--- Checks if a crew/membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP) is valid.
--- @param networkHandle number A player network handle.
--- @param membershipIndex number If the player has multiple crews/memberships, use \[0-9], or -1 to get the active crew/membership.
--- @return boolean
function NetworkClanGetMembershipValid(networkHandle, membershipIndex) end

--- bufferSize is 35 in the scripts.
--- @param clanDesc number 
--- @param bufferSize number 
--- @param formattedTag string 
--- @return void (Type not found)
function NetworkClanGetUiFormattedTag(clanDesc, bufferSize, formattedTag) end

--- @param clanDesc number 
--- @return boolean
function NetworkClanJoin(clanDesc) end

--- bufferSize is 35 in the scripts.  
--- bufferSize is the elementCount of p0(desc), sizeof(p0) == 280 == p1*8 == 35 * 8, p2(netHandle) is obtained from NETWORK::NETWORK_HANDLE_FROM_PLAYER.  And no, I can't explain why 35 * sizeof(int) == 280 and not 140, but I'll get back to you on that.  
--- the answer is: because p0 an int64_t* / int64_t[35].  and FYI p2 is an int64_t[13]  
--- pastebin.com/cSZniHak  
--- @param clanDesc number 
--- @param bufferSize number 
--- @param networkHandle number 
--- @return boolean
function NetworkClanPlayerGetDesc(clanDesc, bufferSize, networkHandle) end

--- @param p0  
--- @param p1  
--- @return boolean
function NetworkClanIsEmblemReady(p0, p1) end

--- bufferSize is 35 in the scripts.  
--- @param clanDesc number 
--- @param bufferSize number 
--- @return boolean
function NetworkClanIsRockstarClan(clanDesc, bufferSize) end

--- @param networkHandle number 
--- @return boolean
function NetworkClanPlayerIsActive(networkHandle) end

--- @param p0  
--- @return void (Type not found)
function NetworkClanReleaseEmblem(p0) end

--- @param p0  
--- @return boolean
function NetworkClanRequestEmblem(p0) end

--- @return 
function NetworkClearFollowInvite() end

--- @return boolean
function NetworkClanServiceIsValid() end

--- @param p0 number 
--- @return boolean
function NetworkClanRemoteMembershipsAreInCache(p0) end

--- @return void (Type not found)
function NetworkClearClockTimeOverride() end

--- @return void (Type not found)
function NetworkClearGroupActivity() end

--- @return void (Type not found)
function NetworkClearFollowers() end

--- @return void (Type not found)
function NetworkClearFoundGamers() end

--- @return void (Type not found)
function NetworkClearGetGamerStatus() end

--- @return void (Type not found)
function NetworkClearTransitionCreatorHandle() end

--- @return void (Type not found)
function NetworkClearPropertyId() end

--- @return void (Type not found)
function NetworkClearVoiceChannel() end

--- @return void (Type not found)
function NetworkCloseTransitionMatchmaking() end

--- @return void (Type not found)
function NetworkClearVoiceProximityOverride() end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param xRot number 
--- @param yRot number 
--- @param zRot number 
--- @param rotationOrder number 
--- @param holdLastFrame boolean 
--- @param looped boolean 
--- @param p9 number 
--- @param animTime number 
--- @param animSpeed number 
--- @return number
function NetworkCreateSynchronisedScene(x, y, z, xRot, yRot, zRot, rotationOrder, holdLastFrame, looped, p9, animTime, animSpeed) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkConcealEntity(entity, toggle) end

--- This is what R\* uses to hide players in MP interiors.
--- @param player Player 
--- @param toggle boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkConcealPlayer(player, toggle, p2) end

--- @return boolean
function NetworkDidFindGamersSucceed() end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkDisableInvincibleFlashing(player, toggle) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkDisableLeaveRemotePedBehind(toggle) end

--- @param netID number 
--- @return void (Type not found)
function NetworkDisableProximityMigration(netID) end

--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkDoTransitionQuickmatchAsync(p0, p1, p2, p3) end

--- @return boolean
function NetworkDidGetGamerStatusSucceed() end

--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkDoTransitionQuickmatch(p0, p1, p2, p3) end

--- NativeDB Added Parameter 7: Any p6
--- NativeDB Added Parameter 8: Any p7
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return boolean
function NetworkDoTransitionQuickmatchWithGroup(p0, p1, p2, p3, p4, p5) end

--- @param p0 boolean 
--- @param maxPlayers number 
--- @return boolean
function NetworkDoTransitionToGame(p0, maxPlayers) end

--- Hardcoded to return -1.
--- @param p0  
--- @param p1  
--- @return number
function NetworkDisplaynamesFromHandlesStart(p0, p1) end

--- @param p0  
--- @param p1  
--- @param players number 
--- @param p3 boolean 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return boolean
function NetworkDoTransitionToNewFreemode(p0, p1, players, p3, p4, p5) end

--- @param netId number 
--- @return boolean
function NetworkDoesNetworkIdExist(netId) end

--- @param netId number 
--- @return boolean
function NetworkDoesEntityExistWithNetworkId(netId) end

--- p2 is true 3/4 of the occurrences I found.  
--- 'players' is the number of players for a session. On PS3/360 it's always 18. On PC it's 32.  
--- @param p0  
--- @param p1  
--- @param p2 boolean 
--- @param players number 
--- @param p4 boolean 
--- @return boolean
function NetworkDoTransitionToFreemode(p0, p1, p2, players, p4) end

--- @param tunableContext Hash 
--- @param tunableName Hash 
--- @return boolean
function NetworkDoesTunableExistHash(tunableContext, tunableName) end

--- @param tunableContext string 
--- @param tunableName string 
--- @return boolean
function NetworkDoesTunableExist(tunableContext, tunableName) end

--- @param p0 boolean 
--- @param maxPlayers number 
--- @param p2 boolean 
--- @return boolean
function NetworkDoTransitionToNewGame(p0, maxPlayers, p2) end

--- @param areaHandle number 
--- @return boolean
function NetworkEntityAreaIsOccupied(areaHandle) end

--- @return void (Type not found)
function NetworkEndTutorialSession() end

--- @param areaHandle number 
--- @return boolean
function NetworkEntityAreaDoesExist(areaHandle) end

--- In the console script dumps, this is only referenced once.   
--- NETWORK::NETWORK_EXPLODE_VEHICLE(vehicle, 1, 0, 0);  
--- ^^^^^ That must be PC script dumps? In X360 Script Dumps it is reference a few times with 2 differences in the parameters.  
--- Which as you see below is 1, 0, 0 + 1, 1, 0 + 1, 0, and a *param?  
--- am_plane_takedown.c   
--- network_explode_vehicle(net_to_veh(Local_40.imm_2), 1, 1, 0);  
--- armenian2.c   
--- network_explode_vehicle(Local_80[6 <2>], 1, 0, 0);  
--- fm_horde_controler.c  
--- network_explode_vehicle(net_to_veh(*uParam0), 1, 0, *uParam0);  
--- fm_mission_controller.c, has 6 hits so not going to list them.  
--- Side note, setting the first parameter to 0 seems to mute sound or so?  
--- Seems it's like ADD_EXPLOSION, etc. the first 2 params. The 3rd atm no need to worry since it always seems to be 0.  
--- @param vehicle Vehicle 
--- @param isAudible boolean 
--- @param isInvisible boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkExplodeVehicle(vehicle, isAudible, isInvisible, p3) end

--- @param heli Vehicle Heli to explode
--- @param isAudible boolean 
--- @param isInvisible boolean 
--- @param netScriptEntityId number 
--- @return void (Type not found)
function NetworkExplodeHeli(heli, isAudible, isInvisible, netScriptEntityId) end

--- normal - transition like when your coming out of LSC  
--- slow - transition like when you walk into a mission  
--- @param entity Entity 
--- @param normal boolean 
--- @param slow boolean 
--- @return void (Type not found)
function NetworkFadeOutEntity(entity, normal, slow) end

--- state - 0 does 5 fades  
--- state - 1 does 6 fades  
--- native is missing third argument, also boolean, setting to 1 made vehicle fade in slower, probably "slow" as per NETWORK_FADE_OUT_ENTITY  
--- NativeDB Added Parameter 3: BOOL slow
--- @param entity Entity 
--- @param state boolean 
--- @return void (Type not found)
function NetworkFadeInEntity(entity, state) end

--- @param p0  
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return boolean
function NetworkFindMatchedGamers(p0, p1, p2, p3) end

--- @param p0  
--- @return boolean
function NetworkFindGamersInCrew(p0) end

--- @param sceneId number 
--- @return void (Type not found)
function NetworkForceLocalUseOfSyncedSceneCamera(sceneId) end

--- @param networkHandle  
--- @return boolean
function NetworkGamerHasHeadset(networkHandle) end

--- @return void (Type not found)
function NetworkFinishBroadcastingData() end

--- @return boolean
function NetworkGamertagFromHandleSucceeded() end

--- @return number
function NetworkGetAgeGroup() end

--- @param p0 boolean 
--- @return number
function NetworkGetActivityPlayerNum(p0) end

--- @return boolean
function NetworkGamertagFromHandlePending() end

--- @param networkHandle number 
--- @return boolean
function NetworkGamertagFromHandleStart(networkHandle) end

--- NativeDB Introduced: v323
--- @param player Player 
--- @return number
function NetworkGetAverageLatencyForPlayer(player) end

--- Same as _NETWORK_GET_AVERAGE_LATENCY_FOR_PLAYER (0xD414BE129BB81B32)
--- NativeDB Introduced: v323
--- @param player Player 
--- @return number
function NetworkGetAverageLatencyForPlayer2(player) end

--- Return the content modifier id (the tunables context if you want) of a specific content.  
--- It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.  
--- The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'  
--- 'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.  
--- @param contentHash Hash 
--- @return number
function NetworkGetContentModifierListId(contentHash) end

--- NETWORK_GET_*
--- NativeDB Introduced: v323
--- @param player Player 
--- @return number
function NetworkGetAveragePacketLossForPlayer(player) end

--- @param p0  
--- @return boolean
function NetworkGetCurrentlySelectedGamerHandleFromInviteMenu(p0) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkGetBackgroundLoadingRecipients(p0, p1, p2, p3) end

--- Get the local entity handle of the given network id
--- Through this native you can get back the entity that you previously converted to netid with [NetworkGetNetworkIdFromEntity](#\_0x9E35DAB6) or with the `ToNet` natives
--- @param netId number the network id of the entity
--- @return Entity
function NetworkGetEntityFromNetworkId(netId) end

--- @param p0  
--- @param p1  
--- @param weaponHash Hash 
--- @return boolean
function NetworkGetDestroyerOfEntity(p0, p1, weaponHash) end

--- @param netId number 
--- @param weaponHash Hash 
--- @return number
function NetworkGetDestroyerOfNetworkId(netId, weaponHash) end

--- @param player Player 
--- @param weaponHash Hash 
--- @return Entity
function NetworkGetEntityKillerOfPlayer(player, weaponHash) end

--- @param entity Entity 
--- @return boolean
function NetworkGetEntityIsLocal(entity) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return number
function NetworkGetDisplaynamesFromHandles(p0, p1, p2) end

--- @param entity Entity 
--- @return number
function NetworkGetEntityNetScriptId(entity) end

--- @param entity Entity 
--- @return boolean
function NetworkGetEntityIsNetworked(entity) end

--- @return number
function NetworkGetFriendCount() end

--- @param p0  
--- @param p1  
--- @return boolean
function NetworkGetFoundGamer(p0, p1) end

--- @param friendIndex number 
--- @return string
function NetworkGetFriendName(friendIndex) end

--- @param friendIndex number 
--- @return string
function NetworkGetFriendNameFromIndex(friendIndex) end

--- @param p0  
--- @param p1  
--- @return boolean
function NetworkGetGamerStatusResult(p0, p1) end

--- @param networkHandle number 
--- @return string
function NetworkGetGamertagFromHandle(networkHandle) end

--- @param hours number 
--- @param minutes number 
--- @param seconds number 
--- @return void (Type not found)
function NetworkGetGlobalMultiplayerClock(hours, minutes, seconds) end

--- scriptName examples:  
--- "freemode", "AM_CR_SecurityVan", ...  
--- Most of the time, these values are used:  
--- p1 = -1  
--- p2 = 0  
--- @param scriptName string 
--- @param p1 number 
--- @param p2 number 
--- @return Player
function NetworkGetHostOfScript(scriptName, p1, p2) end

--- @return boolean
function NetworkGetGamerStatusFromQueue() end

--- @return number
function NetworkGetInstanceIdOfThisScript() end

--- Used by NetBlender
--- @param entity Entity 
--- @return Vector3
function NetworkGetLastVelocityReceived(entity) end

--- @return Player
function NetworkGetHostOfThisScript() end

--- Get the network id of the given entity
--- An entity network id represents a given entity for other clients, it's a handle shared between clients, can be reconverted to a client entity handle.\
--- These (entity network IDs) can and will be reused, the network id will not change.
--- If you need to refer to an entity across machines (clients, or the server), you should use its network id.
--- Read more at [Network and local IDs](https://docs.fivem.net/docs/scripting-manual/networking/ids/)
--- @param entity Entity the handle of the entity from which the network id should be taken
--- @return number
function NetworkGetNetworkIdFromEntity(entity) end

--- Retrieves the local player's NetworkHandle* and stores it in the given buffer.  
--- * Currently unknown struct  
--- @param networkHandle number 
--- @param bufferSize number 
--- @return void (Type not found)
function NetworkGetLocalHandle(networkHandle, bufferSize) end

--- @return number
function NetworkGetNumBodyTrackers() end

--- @param netId number 
--- @return number
function NetworkGetLocalSceneFromNetworkId(netId) end

--- Seems to always return 0, but it's used in quite a few loops.
--- for (num3 = 0; num3 < NETWORK::0xCCD8C02D(); num3++)
---     {
---         if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::0x98F3B274(num3)) != 0)
---         {
---             var num5 = NETWORK::NETWORK_GET_PLAYER_INDEX(PLAYER::0x98F3B274(num3));
--- @return number
function NetworkGetMaxNumParticipants() end

--- Returns the amount of players connected in the current session. Only works when connected to a session/server.  
--- @return number
function NetworkGetNumConnectedPlayers() end

--- @return number
function NetworkGetMaxFriends() end

--- @return number
function NetworkGetNumPresenceInvites() end

--- NativeDB Introduced: v323
--- @param player Player 
--- @return number
function NetworkGetNumUnackedForPlayer(player) end

--- @return number
function NetworkGetNumFoundGamers() end

--- @return number
function NetworkGetNumParticipants() end

--- NETWORK_GET_*
--- NativeDB Introduced: v323
--- @param player Player 
--- @return number
function NetworkGetOldestResendCountForPlayer(player) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return number
function NetworkGetNumScriptParticipants(p0, p1, p2) end

--- @param data  
--- @param dataSize number 
--- @return number
function NetworkGetPlatformPartyMembers(data, dataSize) end

--- Returns the coordinates of another player.
--- Does not work if you enter your own player id as p0 (will return `(0.0, 0.0, 0.0)` in that case).
--- @param player Player The player id, MUST be another player.
--- @return Vector3
function NetworkGetPlayerCoords(player) end

--- @param index number 
--- @return number
function NetworkGetParticipantIndex(index) end

--- @return number
function NetworkGetPlatformPartyUnk() end

--- @param networkHandle number 
--- @return Player
function NetworkGetPlayerFromGamerHandle(networkHandle) end

--- @param player Player 
--- @return number
function NetworkGetPlayerLoudness(player) end

--- @param player Player 
--- @return boolean
function NetworkGetPlayerOwnsWaypoint(player) end

--- @param p0  
--- @return string
function NetworkGetPresenceInviteContentId(p0) end

--- Returns the Player associated to a given Ped when in an online session.  
--- @param ped Ped 
--- @return Player
function NetworkGetPlayerIndexFromPed(ped) end

--- @param player Player 
--- @return number
function NetworkGetPlayerTutorialSessionInstance(player) end

--- NativeDB Introduced: v2372
--- @return 
function NetworkGetPositionHashOfThisScript() end

--- @param player Player 
--- @return number
function NetworkGetPlayerIndex(player) end

--- @param p0  
--- @param p1  
--- @return boolean
function NetworkGetPresenceInviteHandle(p0, p1) end

--- Returns the Name of the inviter of the specific selected Invite.
--- @param inviteIndex number 
--- @return string
function NetworkGetPresenceInviteInviter(inviteIndex) end

--- @param p0  
--- @return boolean
function NetworkGetPresenceInviteFromAdmin(p0) end

--- The Native returns a hash of the session id as string from the specific invite index!
--- @param inviteIndex number 
--- @return Hash
function NetworkGetPresenceInviteSessionId(inviteIndex) end

--- @param p0  
--- @return boolean
function NetworkGetPresenceInviteIsTournament(p0) end

--- @param p0  
--- @return 
function NetworkGetPresenceInviteId(p0) end

--- @param p0  
--- @return 
function NetworkGetPresenceInvitePlaylistCurrent(p0) end

--- @param p0  
--- @return 
function NetworkGetPresenceInvitePlaylistLength(p0) end

--- @return 
function NetworkGetPrimaryClanDataClear() end

--- @return void (Type not found)
function NetworkGetPrimaryClanDataCancel() end

--- @param p0  
--- @param p1  
--- @return boolean
function NetworkGetPrimaryClanDataNew(p0, p1) end

--- @return 
function NetworkGetPrimaryClanDataPending() end

--- Same as GET_RANDOM_INT_IN_RANGE
--- @param rangeStart number 
--- @param rangeEnd number 
--- @return number
function NetworkGetRandomIntRanged(rangeStart, rangeEnd) end

--- Based on scripts such as in freemode.c how they call their vars vVar and fVar the 2nd and 3rd param it a Vector3 and Float, but the first is based on get_random_int_in_range..  
--- @param randomInt number 
--- @param coordinates Vector3 
--- @param heading number 
--- @return void (Type not found)
function NetworkGetRespawnResult(randomInt, coordinates, heading) end

--- @return number
function NetworkGetRandomInt() end

--- @param p0  
--- @param p1  
--- @return boolean
function NetworkGetPrimaryClanDataStart(p0, p1) end

--- @return 
function NetworkGetPrimaryClanDataSuccess() end

--- @return boolean
function NetworkGetRosPrivilege25() end

--- @return boolean
function NetworkGetRosPrivilege9() end

--- @return boolean
function NetworkGetRosPrivilege24() end

--- @param p0  
--- @return 
function NetworkGetRespawnResultFlags(p0) end

--- @return number
function NetworkGetTargetingMode() end

--- @return number
function NetworkGetScriptStatus() end

--- @return number
function NetworkGetTimeoutTime() end

--- @return number
function NetworkGetTalkerProximity() end

--- @return boolean
function NetworkGetThisScriptIsNetworkScript() end

--- @param networkHandle number 
--- @return boolean
function NetworkGetTransitionHost(networkHandle) end

--- Returns count.
--- @param data  
--- @param dataCount number 
--- @return number
function NetworkGetTransitionMembers(data, dataCount) end

--- Actually returns the version (TUNABLE_VERSION)
--- @return number
function NetworkGetTunableCloudCrc() end

--- @return number
function NetworkGetTotalNumPlayers() end

--- Returns a handle to networkHandle* from the specified player handle and stores it in a given buffer.  
--- * Currently unknown struct  
--- Example:  
--- std::vector<UINT64> GetPlayerNetworkHandle(Player player) {  
---     const int size = 13;  
---     uint64_t *buffer = std::make_unique<uint64_t[]>(size).get();  
---     NETWORK::NETWORK_HANDLE_FROM_PLAYER(player, reinterpret_cast<int *>(buffer), 13);  
---     for (int i = 0; i < size; i++) {  
---         Log::Msg("networkhandle[%i]: %llx", i, buffer[i]);  
---     }  
---     std::vector<UINT64> result(buffer, buffer + sizeof(buffer));  
---     return result;  
--- }  
--- @param player Player 
--- @param networkHandle number 
--- @param bufferSize number 
--- @return void (Type not found)
function NetworkHandleFromPlayer(player, networkHandle, bufferSize) end

--- Returns a NetworkHandle* from the specified member ID and stores it in a given buffer.  
--- * Currently unknown struct  
--- @param memberId string 
--- @param networkHandle number 
--- @param bufferSize number 
--- @return void (Type not found)
function NetworkHandleFromMemberId(memberId, networkHandle, bufferSize) end

--- @param friendIndex number 
--- @param networkHandle number 
--- @param bufferSize number 
--- @return void (Type not found)
function NetworkHandleFromFriend(friendIndex, networkHandle, bufferSize) end

--- NETWORK_*
--- NativeDB Introduced: v323
--- @param player Player 
--- @return number
function NetworkGetUnreliableResendCountForPlayer(player) end

--- @return boolean
function NetworkHasAgeRestrictedProfile() end

--- @param netId number 
--- @return boolean
function NetworkHasControlOfNetworkId(netId) end

--- @param player Player 
--- @return boolean
function NetworkHasCachedPlayerHeadBlendData(player) end

--- @param entity Entity 
--- @return boolean
function NetworkHasEntityBeenRegisteredWithThisThread(entity) end

--- Returns a NetworkHandle* from the specified user ID and stores it in a given buffer.  
--- * Currently unknown struct  
--- @param userId string 
--- @param networkHandle number 
--- @param bufferSize number 
--- @return void (Type not found)
function NetworkHandleFromUserId(userId, networkHandle, bufferSize) end

--- @return boolean
function NetworkHasHeadset() end

--- @param doorHash Hash 
--- @return boolean
function NetworkHasControlOfDoor(doorHash) end

--- Returns true if dinput8.dll is present in the game directory.
--- You will get following error message if that is true: "You are attempting to access GTA Online servers with an altered version of the game."
--- @return boolean
function NetworkHasGameBeenAltered() end

--- @param entity Entity 
--- @return boolean
function NetworkHasControlOfEntity(entity) end

--- @param pickup Pickup 
--- @return boolean
function NetworkHasControlOfPickup(pickup) end

--- @return boolean
function NetworkHasFollowInvite() end

--- @param p0  
--- @return boolean
function NetworkHasInvitedGamer(p0) end

--- @param networkHandle number 
--- @return boolean
function NetworkHasInviteBeenAcked(networkHandle) end

--- @return boolean
function NetworkHasPendingInvite() end

--- index is always 18 in scripts
--- @param index number 
--- @return boolean
function NetworkHasRosPrivilege(index) end

--- @param player Player 
--- @return boolean
function NetworkHasPlayerStartedTransition(player) end

--- @param p0  
--- @return boolean
function NetworkHasInvitedGamerToTransition(p0) end

--- @return boolean
function NetworkHasSocialClubAccount() end

--- @return boolean
function NetworkHasReceivedHostBroadcastData() end

--- @param privilege number 
--- @param banType number 
--- @param timeData Vector3 
--- @return boolean
function NetworkHasRosPrivilegeEndDate(privilege, banType, timeData) end

--- @param networkHandle number 
--- @return boolean
function NetworkHasTransitionInviteBeenAcked(networkHandle) end

--- Returns whether the signed-in user has valid Rockstar Online Services (ROS) credentials.
--- @return boolean
function NetworkHasValidRosCredentials() end

--- @param networkHandle number 
--- @return Hash
function NetworkHashFromGamerHandle(networkHandle) end

--- @param networkHandle  
--- @return boolean
function NetworkHasViewGamerUserContentResult(networkHandle) end

--- @return boolean
function NetworkHasSocialNetworkingSharingPriv() end

--- @param p0 number 
--- @param player Player 
--- @return boolean
function NetworkHaveCommunicationPrivileges(p0, player) end

--- @param player Player 
--- @return Hash
function NetworkHashFromPlayerHandle(player) end

--- @return boolean
function NetworkHaveOnlinePrivileges() end

--- @return boolean
function NetworkHaveRosMultiplayerPriv() end

--- @return boolean
function NetworkHaveOnlinePrivilege2() end

--- @return boolean
function NetworkHaveRosCreateTicketPriv() end

--- @return boolean
function NetworkHaveRosLeaderboardWritePriv() end

--- @return boolean
function NetworkHaveRosSocialClubPriv() end

--- @param p0 number 
--- @return boolean
function NetworkHaveUserContentPrivileges(p0) end

--- @return boolean
function NetworkHaveRosBannedPriv() end

--- From what I can tell it looks like it does the following:
--- Creates/hosts a new transition to another online session, using this in FiveM will result in other players being disconencted from the server/preventing them from joining. This is most likely because I entered the wrong session parameters since they're pretty much all unknown right now.
--- You also need to use `NetworkJoinTransition(Player player)` and `NetworkLaunchTransition()`.
--- @param p0 number Unknown int
--- @param p1 number Unknown int
--- @param p2 number Unknown int
--- @param p3 number Unknown int
--- @param p4  Unknown always 0 in decompiled scripts
--- @param p5 boolean BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.
--- @param p6 boolean BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.
--- @param p7 number Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.
--- @param p8  Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.
--- @param p9 number Unknown int, sometimes 0, but also 32768 or 16384 appear in decompiled scripst, maybe a flag of some sort?
--- @return boolean
function NetworkHostTransition(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- @return boolean
function NetworkIsActivitySpectator() end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkInviteGamers(p0, p1, p2, p3) end

--- @param networkHandle number 
--- @return boolean
function NetworkIsActivitySpectatorFromHandle(networkHandle) end

--- @return boolean
function NetworkIsActivitySession() end

--- @param p0  
--- @param p1  
--- @return boolean
function NetworkInviteGamersToTransition(p0, p1) end

--- @return 
function NetworkIsAddingFriend() end

--- @return boolean
function NetworkIsClockTimeOverridden() end

--- This would be nice to see if someone is in party chat, but 2 sad notes.  
--- 1) It only becomes true if said person is speaking in that party at the time.  
--- 2) It will never, become true unless you are in that party with said person.  
--- @param networkHandle number 
--- @return boolean
function NetworkIsChattingInPlatformParty(networkHandle) end

--- @return boolean
function NetworkIsCableConnected() end

--- NETWORK_IS_*
--- NativeDB Introduced: v323
--- @param player Player 
--- @return boolean
function NetworkIsConnectionEndpointRelayServer(player) end

--- Note: This only works for vehicles, which appears to be a bug (since the setter *does* work for every entity type and the name is 99% correct).
--- @param entity Entity 
--- @return boolean
function NetworkIsEntityConcealed(entity) end

--- @return boolean
function NetworkIsCloudBackgroundScriptRequestPending() end

--- @param doorHash Hash 
--- @return boolean
function NetworkIsDoorNetworked(doorHash) end

--- @return boolean
function NetworkIsFindingGamers() end

--- @return boolean
function NetworkIsCloudAvailable() end

--- @param networkHandle number 
--- @return boolean
function NetworkIsFriend(networkHandle) end

--- @param networkHandle number 
--- @return boolean
function NetworkIsFriendHandleOnline(networkHandle) end

--- @param entity Entity 
--- @return boolean
function NetworkIsEntityFading(entity) end

--- In scripts R* calls 'NETWORK_GET_FRIEND_NAME' in this param.  
--- @param friendName string 
--- @return boolean
function NetworkIsFriendInSameTitle(friendName) end

--- @param friendName string 
--- @return boolean
function NetworkIsFriendInMultiplayer(friendName) end

--- @param name string 
--- @return boolean
function NetworkIsFriendOnline(name) end

--- @param friendIndex number 
--- @return boolean
function NetworkIsFriendIndexOnline(friendIndex) end

--- @param networkHandle  
--- @return boolean
function NetworkIsGamerBlockedByMe(networkHandle) end

--- @param networkHandle number 
--- @return boolean
function NetworkIsGamerInMySession(networkHandle) end

--- @return boolean
function NetworkIsGameInProgress() end

--- @param networkHandle number 
--- @return boolean
function NetworkIsGamerMutedByMe(networkHandle) end

--- @param networkHandle number 
--- @return boolean
function NetworkIsGamerTalking(networkHandle) end

--- If you are host, returns true else returns false.
--- @return boolean
function NetworkIsHost() end

--- @param networkHandle number 
--- @param bufferSize number 
--- @return boolean
function NetworkIsHandleValid(networkHandle, bufferSize) end

--- Hardcoded to return false.
--- @return boolean
function NetworkIsInPlatformParty() end

--- @return boolean
function NetworkIsInMpCutscene() end

--- @return boolean
function NetworkIsGettingGamerStatus() end

--- @return boolean
function NetworkIsHostOfThisScript() end

--- Note according to IDA TU27 X360(Console),  
--- This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
--- Side note: This location just stops where it's at once jumped to.  
--- Screenshot for side note,   
--- h t t p ://i.imgur.com/m2ci1mF.png  
--- h t t p://i.imgur.com/Z0Wx2B6.png  
--- @return boolean
function NetworkIsInParty() end

--- @return boolean
function NetworkIsInSession() end

--- @return boolean
function NetworkIsInSpectatorMode() end

--- Hardcoded to return false.
--- @return boolean
function NetworkIsInPlatformPartyChat() end

--- @return boolean
function NetworkIsLocalPlayerInvincible() end

--- @return boolean
function NetworkIsInTutorialSession() end

--- @return boolean
function NetworkIsInTransition() end

--- @return boolean
function NetworkIsMultiplayerDisabled() end

--- Checks if the networkHandle is the same as any other user that is signed in on the local machine.
--- For example, if your console has two or more users signed in (on different controllers), the profile that is not controlling the game would be "inactive".
--- @param networkHandle number 
--- @return boolean
function NetworkIsInactiveProfile(networkHandle) end

--- @return boolean
function NetworkIsLocalTalking() end

--- Returns true if the specified network id is controlled by someone else.
--- @param netId number The network id for an object or entity.
--- @return boolean
function NetworkIsNetworkIdAClone(netId) end

--- Note according to IDA TU27 X360(Console),  
--- This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
--- Side note: This location just stops where it's at once jumped to.  
--- Screenshot for side note,   
--- h t t p ://i.imgur.com/m2ci1mF.png  
--- h t t p://i.imgur.com/Z0Wx2B6.png  
--- @param networkHandle number 
--- @return boolean
function NetworkIsPartyMember(networkHandle) end

--- @return boolean
function NetworkIsOfflineInvitePending() end

--- @param player Player 
--- @return boolean
function NetworkIsPlayerAParticipant(player) end

--- This function is hard-coded to always return 0.
--- @param p0  
--- @return 
function NetworkIsPendingFriend(p0) end

--- @param player Player 
--- @return boolean
function NetworkIsPlayerActive(player) end

--- @param player Player 
--- @return boolean
function NetworkIsPlayerConcealed(player) end

--- @param player Player 
--- @return boolean
function NetworkIsPlayerConnected(player) end

--- @param p0 number 
--- @return boolean
function NetworkIsParticipantActive(p0) end

--- @param player Player 
--- @return boolean
function NetworkIsPlayerFading(player) end

--- @param player1 Player 
--- @param script string 
--- @param player2 Player 
--- @return boolean
function NetworkIsPlayerAParticipantOnScript(player1, script, player2) end

--- NETWORK_ARE_*  
--- @param player Player 
--- @param index number 
--- @return boolean
function NetworkIsPlayerEqualToIndex(player, index) end

--- @param player Player 
--- @return boolean
function NetworkIsPlayerInMpCutscene(player) end

--- @param player Player 
--- @return boolean
function NetworkIsPlayerBlockedByMe(player) end

--- @param scriptName string 
--- @param player Player 
--- @param p2 boolean 
--- @param p3  
--- @return boolean
function NetworkIsScriptActive(scriptName, player, p2, p3) end

--- @return boolean
function NetworkIsPsnAvailable() end

--- returns true if someone is screaming or talking in a microphone  
--- @param player Player 
--- @return boolean
function NetworkIsPlayerTalking(player) end

--- @param player Player 
--- @return boolean
function NetworkIsPlayerMutedByMe(player) end

--- @return boolean
function NetworkIsSessionActive() end

--- NativeDB Introduced: v2245
--- @param scriptHash Hash 
--- @param p1 number 
--- @param p2 boolean 
--- @param p3 number 
--- @return boolean
function NetworkIsScriptActiveByHash(scriptHash, p1, p2, p3) end

--- This checks if player is playing on gta online or not.  
--- Please add an if and block your mod if this is "true".  
--- @return boolean
function NetworkIsSessionStarted() end

--- @param p0  
--- @param p1 boolean 
--- @param p2  
--- @return boolean
function NetworkIsThisScriptMarked(p0, p1, p2) end

--- @return boolean
function NetworkIsSessionBusy() end

--- @return boolean
function NetworkIsTransitionHost() end

--- Same as _IS_TEXT_CHAT_ACTIVE, except it does not check if the text chat HUD component is initialized, and therefore may crash.  
--- @return boolean
function NetworkIsTextChatActive() end

--- Returns whether the player is signed into Social Club.  
--- @return boolean
function NetworkIsSignedIn() end

--- @param networkHandle number 
--- @return boolean
function NetworkIsTransitionHostFromHandle(networkHandle) end

--- Returns whether the game is not in offline mode.  
--- seemed not to work for some ppl  
--- @return boolean
function NetworkIsSignedOnline() end

--- @return boolean
function NetworkIsTransitionBusy() end

--- @return boolean
function NetworkIsTransitionOpenToMatchmaking() end

--- @return boolean
function NetworkIsTransitionPrivate() end

--- @return boolean
function NetworkIsTransitionClosedFriends() end

--- @return boolean
function NetworkIsTransitionVisibilityLocked() end

--- @return boolean
function NetworkIsTransitionClosedCrew() end

--- @return boolean
function NetworkIsTransitionStarted() end

--- @return boolean
function NetworkIsTutorialSessionChangePending() end

--- int handle[76];  
--- NETWORK_HANDLE_FROM_FRIEND(iSelectedPlayer, &handle[0], 13);  
--- Player uVar2 = NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(&handle[0]);  
--- NETWORK_JOIN_TRANSITION(uVar2);  
--- 		nothing doin.  
--- @param player Player 
--- @return boolean
function NetworkJoinTransition(player) end

--- @return boolean
function NetworkIsTransitionSolo() end

--- @return boolean
function NetworkIsTransitionMatchmaking() end

--- @return 
function NetworkJoinGroupActivity() end

--- @return boolean
function NetworkIsTunableCloudRequestPending() end

--- @return boolean
function NetworkLaunchTransition() end

--- @return boolean
function NetworkIsTransitionToGame() end

--- @return boolean
function NetworkJoinPreviouslyFailedTransition() end

--- @return boolean
function NetworkJoinPreviouslyFailedSession() end

--- @param p0  
--- @return boolean
function NetworkMarkTransitionGamerAsFullyJoined(p0) end

--- @param networkHandle number 
--- @return string
function NetworkMemberIdFromGamerHandle(networkHandle) end

--- Could possibly bypass being muted or automatically muted  
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideChatRestrictions(player, toggle) end

--- @return void (Type not found)
function NetworkOpenTransitionMatchmaking() end

--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param heading number 
--- @return void (Type not found)
function NetworkOverrideCoordsAndHeading(entity, x, y, z, heading) end

--- NativeDB Introduced: v2189
--- @param ms number 
--- @return void (Type not found)
function NetworkOverrideClockMillisecondsPerGameMinute(ms) end

--- p0 is always false in scripts.
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideReceiveRestrictionsAll(toggle) end

--- Works in Singleplayer too.
--- Passing wrong data (e.g. hours above 23) will cause the game to crash.
--- @param hours number 
--- @param minutes number 
--- @param seconds number 
--- @return void (Type not found)
function NetworkOverrideClockTime(hours, minutes, seconds) end

--- R* uses this to hear all player when spectating.   
--- It allows you to hear other online players when their chat is on none, crew and or friends  
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideReceiveRestrictions(player, toggle) end

--- This is used alongside the native,
--- 'NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS'. Read its description for more info.
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideSendRestrictions(player, toggle) end

--- @return boolean
function NetworkLeaveTransition() end

--- @param team number 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideTeamRestrictions(team, toggle) end

--- NativeDB Introduced: v2372
--- @param ped Ped 
--- @return void (Type not found)
function NetworkPedForceGameStateUpdate(ped) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideSendRestrictionsAll(toggle) end

--- @return number
function NetworkPlayerGetCheaterReason() end

--- Takes a 24 char buffer. Returns the buffer or "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
--- @param player Player 
--- @param userID number 
--- @return string
function NetworkPlayerGetUserid(player, userID) end

--- @param p0 boolean 
--- @return void (Type not found)
function NetworkOverrideTransitionChat(p0) end

--- Returns the name of a given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
--- @param player Player 
--- @return string
function NetworkPlayerGetName(player) end

--- @param player Player 
--- @return boolean
function NetworkPlayerIndexIsCheater(player) end

--- @param player Player 
--- @return boolean
function NetworkPlayerHasHeadset(player) end

--- @return boolean
function NetworkPlayerIsBadsport() end

--- Checks if a specific value (BYTE) in CPlayerInfo is nonzero.  
--- Returns always false in Singleplayer.  
--- No longer used for dev checks since first mods were released on PS3 & 360.  
--- R* now checks with the is_dlc_present native for the dlc hash 2532323046,  
--- if that is present it will unlock dev stuff.  
--- @param player Player 
--- @return boolean
function NetworkPlayerIsRockstarDev(player) end

--- @param p0  
--- @return boolean
function NetworkQueueGamerForStatus(p0) end

--- @param entity Entity 
--- @return void (Type not found)
function NetworkRegisterEntityAsNetworked(entity) end

--- @return boolean
function NetworkPlayerIsCheater() end

--- @param p0  
--- @return 
function NetworkQueryRespawnResults(p0) end

--- @param vars number 
--- @param numVars number 
--- @return void (Type not found)
function NetworkRegisterPlayerBroadcastVariables(vars, numVars) end

--- @param contextHash Hash 
--- @param nameHash Hash 
--- @param value number 
--- @return boolean
function NetworkRegisterTunableFloatHash(contextHash, nameHash, value) end

--- @param contextHash Hash 
--- @param nameHash Hash 
--- @param value boolean 
--- @return boolean
function NetworkRegisterTunableBoolHash(contextHash, nameHash, value) end

--- @param vars number 
--- @param numVars number 
--- @return void (Type not found)
function NetworkRegisterHostBroadcastVariables(vars, numVars) end

--- @param contextHash Hash 
--- @param nameHash Hash 
--- @param value number 
--- @return boolean
function NetworkRegisterTunableIntHash(contextHash, nameHash, value) end

--- @param p0  
--- @return boolean
function NetworkRemovePresenceInvite(p0) end

--- @return void (Type not found)
function NetworkRemoveAllTransitionInvite() end

--- @return void (Type not found)
function NetworkReportMyself() end

--- @return void (Type not found)
function NetworkRequestCloudTunables() end

--- @param p0  
--- @return boolean
function NetworkRemoveEntityArea(p0) end

--- @param p0  
--- @return void (Type not found)
function NetworkRemoveTransitionInvite(p0) end

--- @param doorID number 
--- @return boolean
function NetworkRequestControlOfDoor(doorID) end

--- @param entity Entity 
--- @return boolean
function NetworkRequestControlOfEntity(entity) end

--- @param netId number 
--- @return boolean
function NetworkRequestControlOfNetworkId(netId) end

--- p4 and p5 are always 0 in scripts  
--- @param player Player 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return void (Type not found)
function NetworkRespawnCoords(player, x, y, z, p4, p5) end

--- @return boolean
function NetworkRequestCloudBackgroundScripts() end

--- @return void (Type not found)
function NetworkResetBodyTracker() end

--- NativeDB Added Parameter 7: Any p6
--- @param x number 
--- @param y number 
--- @param z number 
--- @param heading number 
--- @param unk boolean 
--- @param changetime boolean 
--- @return void (Type not found)
function NetworkResurrectLocalPlayer(x, y, z, heading, unk, changetime) end

--- @param seed number 
--- @return void (Type not found)
function NetworkSeedRandomNumberGenerator(seed) end

--- String "NETWORK_SEND_PRESENCE_TRANSITION_INVITE" is contained in the function in ida so this one is correct.  
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkSendPresenceTransitionInvite(p0, p1, p2, p3) end

--- @param networkHandle number 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkSendInviteViaPresence(networkHandle, p1, p2, p3) end

--- Message is limited to 64 characters.
--- @param message string 
--- @param networkHandle number 
--- @return boolean
function NetworkSendTextMessage(message, networkHandle) end

--- the first arg seems to be the network player handle (&handle) and the second var is pretty much always "" and the third seems to be a number between 0 and ~10 and the 4th is is something like 0 to 5 and I guess the 5th is a bool cuz it is always 0 or 1  
--- does this send an invite to a player?  
--- @param networkHandle number 
--- @param p1 string 
--- @param p2 number 
--- @param p3 number 
--- @param p4 boolean 
--- @return boolean
function NetworkSendTransitionGamerInstruction(networkHandle, p1, p2, p3, p4) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSessionBlockJoinRequests(toggle) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkSessionActivityQuickmatch(p0, p1, p2, p3) end

--- @param groupId number An identifier value between zero and four
--- @return void (Type not found)
function NetworkSessionAddActiveMatchmakingGroup(groupId) end

--- @param p0 number 
--- @param p1 boolean 
--- @return void (Type not found)
function NetworkSessionChangeSlots(p0, p1) end

--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param maxPlayers number 
--- @param p4 boolean 
--- @return boolean
function NetworkSessionCrewMatchmaking(p0, p1, p2, maxPlayers, p4) end

--- p0 is always false and p1 varies.  
--- NETWORK_SESSION_END(0, 1)  
--- NETWORK_SESSION_END(0, 0)  
--- Results in: "Connection to session lost due to an unknown network error. Please return to Grand Theft Auto V and try again later."  
--- @param p0 boolean 
--- @param p1 boolean 
--- @return boolean
function NetworkSessionEnd(p0, p1) end

--- unknown params  
--- p0 = 0, 2, or 999 (The global is 999 by default.)  
--- p1 = 0 (Always in every script it's found in atleast.)  
--- p2 = 0, 3, or 4 (Based on a var that is determined by a function.)  
--- p3 = maxPlayers (It's obvious in x360 scripts it's always 18)  
--- p4 = 0 (Always in every script it's found in atleast.)  
--- p5 = 0 or 1. (1 if network_can_enter_multiplayer, but set to 0 if other checks after that are passed.)  
--- p5 is reset to 0 if,  
--- Global_1315318 = 0 or Global_1315323 = 9 or 12 or (Global_1312629 = 0 && Global_1312631 = true/1) those are passed.  
--- @param p0  
--- @param p1  
--- @param p2  
--- @param maxPlayers number 
--- @param p4  
--- @param p5  
--- @return 
function NetworkSessionEnter(p0, p1, p2, maxPlayers, p4, p5) end

--- @return void (Type not found)
function NetworkSessionCancelInvite() end

--- @param p0 number 
--- @param p1 number 
--- @param maxPlayers number 
--- @param p3 boolean 
--- @return boolean
function NetworkSessionFriendMatchmaking(p0, p1, maxPlayers, p3) end

--- @return void (Type not found)
function NetworkSessionForceCancelInvite() end

--- @param player Player 
--- @return boolean
function NetworkSessionGetKickVote(player) end

--- @param networkHandle number 
--- @return void (Type not found)
function NetworkSessionGetInviter(networkHandle) end

--- @param p0 number 
--- @return number
function NetworkSessionGetMatchmakingGroupFree(p0) end

--- @param p0 number 
--- @param maxPlayers number 
--- @return boolean
function NetworkSessionHostClosed(p0, maxPlayers) end

--- Loads up the map that is loaded when beeing in mission creator  
--- Player gets placed in a mix between online/offline mode  
--- p0 is always 2 in R* scripts.  
--- Appears to be patched in gtav b757 (game gets terminated) alonside with most other network natives to prevent online modding ~ghost30812  
--- @param p0 number 
--- @return void (Type not found)
function NetworkSessionHostSinglePlayer(p0) end

--- @return number
function NetworkSessionGetPrivateSlots() end

--- Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
--- @param p0 number 
--- @param maxPlayers number 
--- @param p2 boolean 
--- @return boolean
function NetworkSessionHost(p0, maxPlayers, p2) end

--- Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
--- @param p0 number 
--- @param maxPlayers number 
--- @return boolean
function NetworkSessionHostFriendsOnly(p0, maxPlayers) end

--- @return boolean
function NetworkSessionIsInVoiceSession() end

--- @return boolean
function NetworkSessionIsPrivate() end

--- @return boolean
function NetworkSessionIsClosedCrew() end

--- @return boolean
function NetworkSessionIsClosedFriends() end

--- @return boolean
function NetworkSessionIsVoiceSessionBusy() end

--- @return boolean
function NetworkSessionIsSolo() end

--- @return boolean
function NetworkSessionIsVisible() end

--- @return void (Type not found)
function NetworkSessionJoinInvite() end

--- Only works as host.
--- @param player Player 
--- @return void (Type not found)
function NetworkSessionKickPlayer(player) end

--- playerTypes:
--- 0 = regular joiner
--- 4 = spectator
--- 8 = unknown
--- @param playerType number 
--- @param playerCount number 
--- @return void (Type not found)
function NetworkSessionSetMatchmakingGroupMax(playerType, playerCount) end

--- @return void (Type not found)
function NetworkSessionLeaveSinglePlayer() end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSessionMarkVisible(toggle) end

--- @param matchmakingGroup number 
--- @return void (Type not found)
function NetworkSessionSetMatchmakingGroup(matchmakingGroup) end

--- @param p0 boolean 
--- @return void (Type not found)
function NetworkSessionValidateJoin(p0) end

--- @param p0  
--- @return void (Type not found)
function NetworkSessionSetMatchmakingMentalState(p0) end

--- Only one occurence in the scripts:
--- auto sub_cb43(auto a_0, auto a_1) {
---     if (g_2594CB._f1) {
---         if (NETWORK::_855BC38818F6F684()) {
---             NETWORK::_ABD5E88B8A2D3DB2(&a_0._fB93);
---             g_2594CB._f14/*{13}*/ = a_0._fB93;
---             g_2594CB._f4/*"64"*/ = a_1;
---             return 1;
---         }
---     }
---     return 0;
--- }
--- other:
--- looks like it passes a player in the paramater
--- Contains string "NETWORK_VOICE_CONNECT_TO_PLAYER" in ida
--- @param globalPtr  
--- @return void (Type not found)
function NetworkSessionVoiceConnectToPlayer(globalPtr) end

--- @param p0 boolean 
--- @return void (Type not found)
function NetworkSessionSetMatchmakingPropertyId(p0) end

--- @return void (Type not found)
function NetworkSessionVoiceHost() end

--- @param timeout number 
--- @return void (Type not found)
function NetworkSessionVoiceSetTimeout(timeout) end

--- @return boolean
function NetworkSessionWasInvited() end

--- @param maxSpectators number 
--- @return void (Type not found)
function NetworkSetActivitySpectatorMax(maxSpectators) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetActivitySpectator(toggle) end

--- @param p0 boolean 
--- @param p1 number 
--- @return void (Type not found)
function NetworkSessionVoiceRespondToRequest(p0, p1) end

--- @param playerCount number 
--- @return void (Type not found)
function NetworkSetActivityPlayerMax(playerCount) end

--- @param toggle boolean 
--- @param player Player 
--- @return void (Type not found)
function NetworkSetChoiceMigrateOptions(toggle, player) end

--- @param p0  
--- @return boolean
function NetworkSetCurrentlySelectedGamerHandleFromInviteMenu(p0) end

--- @param p0  
--- @return boolean
function NetworkSetCurrentDataManagerHandle(p0) end

--- @return void (Type not found)
function NetworkSessionVoiceLeave() end

--- @param entity Entity 
--- @param p1 boolean 
--- @return void (Type not found)
function NetworkSetEntityGhostedWithOwner(entity, p1) end

--- NativeDB Introduced: v2699
--- @param missionId string 
--- @return void (Type not found)
function NetworkSetCurrentMissionId(missionId) end

--- mpSettingSpawn:
--- enum eMpSettingSpawn
--- {
--- 	MP_SETTING_SPAWN_NULL,
--- 	MP_SETTING_SPAWN_PROPERTY,
--- 	MP_SETTING_SPAWN_LAST_POSITION,
--- 	MP_SETTING_SPAWN_GARAGE,
--- 	MP_SETTING_SPAWN_RANDOM,
--- 	MP_SETTING_SPAWN_PRIVATE_YACHT,
--- 	MP_SETTING_SPAWN_OFFICE,
--- 	MP_SETTING_SPAWN_CLUBHOUSE,
--- 	MP_SETTING_SPAWN_IE_WAREHOUSE,
--- 	MP_SETTING_SPAWN_BUNKER,
--- 	MP_SETTING_SPAWN_HANGAR,
--- 	MP_SETTING_SPAWN_DEFUNCT_BASE,
--- 	MP_SETTING_SPAWN_NIGHTCLUB,
--- 	MP_SETTING_SPAWN_ARENA_GARAGE,
--- 	MP_SETTING_SPAWN_CASINO_APARTMENT,
--- 	MP_SETTING_SPAWN_ARCADE,
--- 	MP_SETTING_SPAWN_SUBMARINE,
--- 	MP_SETTING_SPAWN_CAR_MEET,
--- 	MP_SETTING_SPAWN_AUTO_SHOP,
--- 	MP_SETTING_SPAWN_FIXER_HQ,
--- 	MP_SETTING_SPAWN_MAX,
--- };
--- NativeDB Introduced: v2699
--- @param mpSettingSpawn Hash 
--- @return void (Type not found)
function NetworkSetCurrentSpawnSetting(mpSettingSpawn) end

--- @param networkHandle number 
--- @return void (Type not found)
function NetworkSetGamerInvitedToTransition(networkHandle) end

--- if set to true other network players can't see it  
--- if set to false other network player can see it  
--- =========================================  
--- ^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.  
--- pc or last gen?  
--- ^^ last-gen  
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetEntityInvisibleToNetwork(entity, toggle) end

--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetEntityCanBlend(entity, toggle) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetFriendlyFireOption(toggle) end

--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function NetworkSetInMpCutscene(p0, p1) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetInFreeCamMode(toggle) end

--- @param toggle boolean 
--- @param playerPed Ped 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSetInSpectatorModeExtended(toggle, playerPed, p2) end

--- @param time number 
--- @return void (Type not found)
function NetworkSetLocalPlayerInvincibleTime(time) end

--- @param networkHandle number 
--- @return void (Type not found)
function NetworkSetInviteOnCallForInviteMenu(networkHandle) end

--- @param toggle boolean 
--- @param playerPed Ped 
--- @return void (Type not found)
function NetworkSetInSpectatorMode(toggle, playerPed) end

--- Sets whether or not an object (created using `CREATE_OBJECT`, or similar) should have its position/rotation synchronized,
--- even if it is a 'static' object (for example, having flag 32 - Static - set in its archetype definition).
--- This has to be called during the same frame the object is created/registered for network, as otherwise it may already
--- have a remote clone created.
--- Once a remote clone is created, changing this value will not have any effect on said clone.
--- @param object Object The object to set forced blending state for.
--- @param enabled boolean `true` to enable forced blending.
--- @return void (Type not found)
function NetworkSetObjectForceStaticBlend(object, enabled) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetLocalPlayerSyncLookAt(toggle) end

--- @return void (Type not found)
function NetworkSetMissionFinished() end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetOverrideSpectatorMode(toggle) end

--- On PC it's a nullsub which means it does absolutely nothing.  
--- Now that Discord supports Rich Presence, R* might finally implement this for PC. Or maybe in future games like RDR2, GTA VI...  
--- @param p0 number 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSetRichPresence(p0, p1, p2, p3) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetPlayerIsPassive(toggle) end

--- value must be < 255
--- @param id number 
--- @return void (Type not found)
function NetworkSetPropertyId(id) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetNoSpectatorChat(toggle) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetScriptReadyForEvents(toggle) end

--- This native does absolutely nothing, just a nullsub
--- @param p0 number 
--- @param textLabel string 
--- @return void (Type not found)
function NetworkSetRichPresenceString(p0, textLabel) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetTeamOnlyChat(toggle) end

--- @param value number 
--- @return void (Type not found)
function NetworkSetTalkerProximity(value) end

--- @param maxNumMissionParticipants number 
--- @param p1 boolean 
--- @param instanceId number 
--- @return void (Type not found)
function NetworkSetThisScriptIsNetworkScript(maxNumMissionParticipants, p1, instanceId) end

--- @param p0  
--- @return void (Type not found)
function NetworkSetTransitionActivityId(p0) end

--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function NetworkSetTransitionVisibilityLock(p0, p1) end

--- Allow vehicle wheels to be destructible even when the Vehicle entity is invincible.
--- NativeDB Introduced: v1365
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetVehicleWheelsDestructible(vehicle, toggle) end

--- @param p0  
--- @return void (Type not found)
function NetworkSetTransitionCreatorHandle(p0) end

--- @param channel number 
--- @return void (Type not found)
function NetworkSetVoiceChannel(channel) end

--- Example:  
--- int playerHandle;	  
--- NETWORK_HANDLE_FROM_PLAYER(selectedPlayer, &playerHandle, 13);  
--- NETWORK_SHOW_PROFILE_UI(&playerHandle);  
--- @param networkHandle number 
--- @return void (Type not found)
function NetworkShowProfileUi(networkHandle) end

--- Returns true if the NAT type is Strict (3) and a certain number of connections have failed.
--- @return boolean
function NetworkShouldShowConnectivityTroubleshooting() end

--- Used by Metric VEHICLE_DIST_DRIVEN
--- NativeDB Introduced: v2699
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetVehicleTestDrive(toggle) end

--- p8, p9, p10 is another coordinate, or zero, often related to `GET_BLIP_COORDS` in the decompiled scripts.
--- @param player Player 
--- @param x1 number X dimension of the angled area 'origin'
--- @param y1 number Y dimension of the angled area 'origin'
--- @param z1 number Z dimension of the angled area 'origin'
--- @param x2 number X dimension of the angled area 'extent'
--- @param y2 number Y dimension of the angled area 'extent'
--- @param z2 number Z dimension of the angled area 'extent'
--- @param width number Width of the angled area
--- @param p8 number 
--- @param p9 number 
--- @param p10 number 
--- @param flags number 
--- @return boolean
function NetworkStartRespawnSearchInAngledAreaForPlayer(player, x1, y1, z1, x2, y2, z2, width, p8, p9, p10, flags) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetVoiceActive(toggle) end

--- One of the first things it does is get the players ped.  
--- Then it calls a function that is used in some tasks and ped based functions.  
--- p5, p6, p7 is another coordinate (or zero), often related to `GET_BLIP_COORDS`, in the decompiled scripts.
--- @param player Player 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param flags number 
--- @return boolean
function NetworkStartRespawnSearchForPlayer(player, x, y, z, radius, p5, p6, p7, flags) end

--- @return void (Type not found)
function NetworkStartSoloTutorialSession() end

--- @param netScene number 
--- @return void (Type not found)
function NetworkStartSynchronisedScene(netScene) end

--- Always returns -1. Seems to be XB1 specific.
--- @param netHandle  
--- @return number
function NetworkStartUserContentPermissionsCheck(netHandle) end

--- @param netScene number 
--- @return void (Type not found)
function NetworkStopSynchronisedScene(netScene) end

--- NativeDB Introduced: v2372
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function NetworkUgcNav(p0, p1) end

--- @param hash Hash 
--- @param p1 number 
--- @param p2 number 
--- @param state number 
--- @param p4 number 
--- @return void (Type not found)
function NetworkTransitionTrack(hash, p1, p2, state, p4) end

--- Returns defaultValue if the tunable doesn't exist.
--- @param tunableContext Hash 
--- @param tunableName Hash 
--- @param defaultValue boolean 
--- @return boolean
function NetworkTryAccessTunableBoolHash(tunableContext, tunableName, defaultValue) end

--- @return void (Type not found)
function NetworkUpdatePlayerScars() end

--- @param entity Entity 
--- @return void (Type not found)
function NetworkUnregisterNetworkedEntity(entity) end

--- @param entity Entity 
--- @return void (Type not found)
function NetworkUseLogarithmicBlendingThisFrame(entity) end

--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSuppressInvite(toggle) end

--- Old name: _NETWORK_SET_NETWORK_ID_DYNAMIC
--- @param netID number 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkUseHighPrecisionBlending(netID, toggle) end

--- Lets objects spawn online simply do it like this:  
--- int createdObject = OBJ_TO_NET(CREATE_OBJECT_NO_OFFSET(oball, pCoords.x, pCoords.y, pCoords.z, 1, 0, 0));  
--- @param object Object 
--- @return number
function ObjToNet(object) end

--- Return the local Participant ID  
--- @return Player
function ParticipantId() end

--- Has a 3rd param (int) since patch [???].  
--- NativeDB Added Parameter 3: int p2
--- @param p0 string 
--- @param p1 string 
--- @return void (Type not found)
function OpenCommerceStore(p0, p1) end

--- @return void (Type not found)
function ReleaseAllCommerceItemImages() end

--- Return the local Participant ID.  
--- This native is exactly the same as 'PARTICIPANT_ID' native.  
--- @return number
function ParticipantIdToInt() end

--- @param p0 number 
--- @return boolean
function RefreshPlayerListStats(p0) end

--- gets the network id of a ped  
--- @param ped Ped 
--- @return number
function PedToNet(ped) end

--- Used in am_mp_property_ext and am_mp_property_int  
--- NativeDB Added Parameter 2: Ped ped
--- @param entity Entity 
--- @return void (Type not found)
function RemoveAllStickyBombsFromEntity(entity) end

--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkLocalVehicles(amount) end

--- Internal logging string: SCRIPT_RESERVING_LOCAL_OBJECTS
--- NativeDB Introduced: v1290
--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkLocalObjects(amount) end

--- @param index number 
--- @return boolean
function RequestCommerceItemImage(index) end

--- NativeDB Added Parameter 1: Player player
--- NativeDB Added Parameter 2: int a
--- NativeDB Added Parameter 3: int b
--- @return boolean
function RemoteCheatDetected() end

--- Internal logging string: SCRIPT_RESERVING_LOCAL_PEDS
--- NativeDB Introduced: v1493
--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkLocalPeds(amount) end

--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkMissionPeds(amount) end

--- Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
--- @return void (Type not found)
function ResetGhostedEntityAlpha() end

--- @param data  
--- @param dataCount number 
--- @param contentTypeName string 
--- @return boolean
function SetBalanceAddMachines(data, dataCount, contentTypeName) end

--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkMissionObjects(amount) end

--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkMissionVehicles(amount) end

--- @param contentId string 
--- @param contentTypeName string 
--- @return boolean
function SetBalanceAddMachine(contentId, contentTypeName) end

--- Sets the provided entity visible for yourself for the current frame.
--- @param entity Entity The entity to set locally visible.
--- @return void (Type not found)
function SetEntityLocallyVisible(entity) end

--- Formerly incorrectly named `USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR` due to incorrect treatment of console vs. PC native registration.
--- Native name guessed through ordering.
--- NativeDB Added Parameter 2: BOOL p1
--- @param toggle boolean 
--- @return void (Type not found)
function SetLocalPlayerAsGhost(toggle) end

--- Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
--- 'Solidness' cannot be achieved using 255 - this will have the opposite effect of it defaulting to 128 it seems (or just having no effect at all).
--- @param alpha number A value between 1 and 254. Default: 128
--- @return void (Type not found)
function SetGhostedEntityAlpha(alpha) end

--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function SetLocalPlayerVisibleInCutscene(p0, p1) end

--- Sets the provided entity not visible for yourself for the current frame.
--- @param entity Entity 
--- @return void (Type not found)
function SetEntityLocallyInvisible(entity) end

--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetEntityVisibleInCutscene(p0, p1, p2) end

--- @param p0 boolean 
--- @return void (Type not found)
function SetLocalPlayerVisibleLocally(p0) end

--- @param p0 boolean 
--- @return void (Type not found)
function SetLocalPlayerInvisibleLocally(p0) end

--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkCutsceneEntities(toggle) end

--- @param netId number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkIdExistsOnAllMachines(netId, toggle) end

--- @param netId number 
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkIdAlwaysExistsForPlayer(netId, player, toggle) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkVehicleAsGhost(vehicle, toggle) end

--- Enables a periodic ShapeTest within the NetBlender and invokes rage::netBlenderLinInterp::GoStraightToTarget (or some functional wrapper).
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkEnableVehiclePositionCorrection(vehicle, toggle) end

--- NativeDB Added Parameter 3: Any p2
--- NativeDB Added Parameter 4: Any p3
--- @param netId number 
--- @param time number 
--- @return void (Type not found)
function SetNetworkVehicleRespotTimer(netId, time) end

--- rage::netBlenderLinInterp::GetPositionMaxForUpdateLevel
--- @param vehicle Vehicle 
--- @param multiplier number 
--- @return void (Type not found)
function SetNetworkVehiclePositionUpdateMultiplier(vehicle, multiplier) end

--- Whether or not another player is allowed to take control of the entity  
--- @param netId number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkIdCanMigrate(netId, toggle) end

--- @param netId number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetNetworkIdVisibleInCutscene(netId, p1, p2) end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerVisibleLocally(player, toggle) end

--- Disconnects you from the session, and starts loading single player, however you still remain connected to the server (only if you're the host, if you're not then you also (most likely) get disconnected from the server) and other players will not be able to join until you exit the game.
--- If you're already in SP then it'll re-load singleplayer.
--- You might need to DoScreenFadeIn and ShutdownLoadingScreen otherwise you probably won't end up loading into SP at all.
--- Somewhat related note: opening the pause menu after loading into this 'singleplayer' mode crashes the game.
--- @return boolean
function ShutdownAndLoadMostRecentSave() end

--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerInvisibleLocally(player, toggle) end

--- Access to the store for shark cards etc...  
--- @param toggle boolean 
--- @return void (Type not found)
function SetStoreEnabled(toggle) end

--- Starts a new singleplayer game (at the prologue).  
--- @return void (Type not found)
function ShutdownAndLaunchSinglePlayerGame() end

--- @param p0 number 
--- @return string
function TextureDownloadGetName(p0) end

--- Enables ghosting between specific players. Name is between `_SET_RELATIONSHIP_GROUP_DONT_AFFECT_WANTED_LEVEL` and `SET_ROADS_BACK_TO_ORIGINAL`.
--- @param player Player 
--- @param p1 boolean 
--- @return void (Type not found)
function SetRelationshipToPlayer(player, p1) end

--- @param p0 number 
--- @return void (Type not found)
function TextureDownloadRelease(p0) end

--- @param p0 number 
--- @return boolean
function TextureDownloadHasFailed(p0) end

--- @param FilePath string 
--- @param Name string 
--- @param p2 boolean 
--- @return number
function TitleTextureDownloadRequest(FilePath, Name, p2) end

--- @return void (Type not found)
function UgcClearCreateResult() end

--- p1 = 6
--- @param player Player 
--- @param p1 number 
--- @param scriptHash Hash 
--- @return boolean
function TriggerScriptCrcCheckOnPlayer(player, p1, scriptHash) end

--- @return void (Type not found)
function UgcClearModifyResult() end

--- @param PlayerHandle number 
--- @param FilePath string 
--- @param Name string 
--- @param p3 boolean 
--- @return number
function TextureDownloadRequest(PlayerHandle, FilePath, Name, p3) end

--- @return void (Type not found)
function UgcCancelQuery() end

--- @return void (Type not found)
function UgcClearOfflineQuery() end

--- @param p0  
--- @param p1  
--- @return string
function UgcGetCachedDescription(p0, p1) end

--- @return void (Type not found)
function UgcClearQueryResults() end

--- @param p0  
--- @param p1  
--- @return boolean
function UgcCopyContent(p0, p1) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function UgcGetBookmarkedContent(p0, p1, p2, p3) end

--- @param p0  
--- @return number
function UgcGetContentDescriptionHash(p0) end

--- @return 
function UgcDidGetSucceed() end

--- @param p0 number 
--- @return number
function UgcGetContentCategory(p0) end

--- @param p0  
--- @return boolean
function UgcGetContentHasPlayerBookmarked(p0) end

--- @param p0  
--- @param p1  
--- @return 
function UgcGetContentFileVersion(p0, p1) end

--- Return the mission id of a job.
--- @param p0 number 
--- @return string
function UgcGetContentId(p0) end

--- @return Hash
function UgcGetContentHash() end

--- @param p0  
--- @return boolean
function UgcGetContentIsPublished(p0) end

--- @param p0  
--- @return boolean
function UgcGetContentHasPlayerRecord(p0) end

--- @param p0  
--- @return 
function UgcGetContentLanguage(p0) end

--- @param p0  
--- @return boolean
function UgcGetContentIsVerified(p0) end

--- @param p0  
--- @param p1  
--- @return 
function UgcGetContentRatingCount(p0, p1) end

--- @param p0  
--- @return string
function UgcGetContentName(p0) end

--- @param p0 number 
--- @param p1 number 
--- @return string
function UgcGetContentPath(p0, p1) end

--- @return 
function UgcGetContentNum() end

--- @param p0  
--- @param p1  
--- @return 
function UgcGetContentRatingNegativeCount(p0, p1) end

--- @param p0  
--- @param p1  
--- @return 
function UgcGetContentRating(p0, p1) end

--- @param p0  
--- @param p1  
--- @return 
function UgcGetContentRatingPositiveCount(p0, p1) end

--- @param p0  
--- @param p1  
--- @return void (Type not found)
function UgcGetContentUpdatedDate(p0, p1) end

--- @return 
function UgcGetContentTotal() end

--- @param p0  
--- @return string
function UgcGetContentUserName(p0) end

--- @param p0 number 
--- @return string
function UgcGetContentUserId(p0) end

--- @return 
function UgcGetCreateResult() end

--- @return string
function UgcGetCreateContentId() end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return boolean
function UgcGetCrewContent(p0, p1, p2, p3, p4) end

--- @return 
function UgcGetCreatorNum() end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return boolean
function UgcGetGetByCategory(p0, p1, p2, p3, p4) end

--- @return 
function UgcGetQueryResult() end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function UgcGetFriendContent(p0, p1, p2, p3) end

--- Return the root content id of a job.
--- @param p0 number 
--- @return string
function UgcGetRootContentId(p0) end

--- @return 
function UgcGetModifyResult() end

--- @return boolean
function UgcHasCreateFinished() end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function UgcGetMyContent(p0, p1, p2, p3) end

--- @return boolean
function UgcHasGetFinished() end

--- @return boolean
function UgcIsGetting() end

--- @param p0  
--- @return boolean
function UgcIsLanguageSupported(p0) end

--- @return boolean
function UgcHasModifyFinished() end

--- @param p0  
--- @return boolean
function UgcPoliciesMakePrivate(p0) end

--- @param contentId string 
--- @param latestVersion boolean 
--- @param contentTypeName string 
--- @return boolean
function UgcQueryByContentId(contentId, latestVersion, contentTypeName) end

--- @param data  
--- @param count number 
--- @param latestVersion boolean 
--- @param contentTypeName string 
--- @return boolean
function UgcQueryByContentIds(data, count, latestVersion, contentTypeName) end

--- @param p0 number 
--- @param p1 number 
--- @return number
function UgcRequestContentDataFromIndex(p0, p1) end

--- @param contentId string 
--- @param baseContentId string 
--- @param contentTypeName string 
--- @return boolean
function UgcPublish(contentId, baseContentId, contentTypeName) end

--- @param offset number 
--- @param count number 
--- @param contentTypeName string 
--- @param p3 number 
--- @return boolean
function UgcQueryRecentlyCreatedContent(offset, count, contentTypeName, p3) end

--- @param contentId string 
--- @param bookmarked boolean 
--- @param contentTypeName string 
--- @return boolean
function UgcSetBookmarked(contentId, bookmarked, contentTypeName) end

--- @param contentTypeName string 
--- @param contentId string 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @return number
function UgcRequestContentDataFromParams(contentTypeName, contentId, p2, p3, p4) end

--- @param p0  
--- @param p1 boolean 
--- @param p2  
--- @return boolean
function UgcSetDeleted(p0, p1, p2) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return boolean
function UgcQueryMyContent(p0, p1, p2, p3, p4, p5) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5 boolean 
--- @return 
function UgcTextureDownloadRequest(p0, p1, p2, p3, p4, p5) end

--- @param p0 boolean 
--- @return void (Type not found)
function UgcSetQueryDataFromOffline(p0) end

--- @param p0 number 
--- @return number
function UgcRequestCachedDescription(p0) end

--- @param toggle boolean 
--- @return void (Type not found)
function UsePlayerColourInsteadOfTeamColour(toggle) end

--- calls from vehicle to net.  
--- @param vehicle Vehicle 
--- @return number
function VehToNet(vehicle) end
