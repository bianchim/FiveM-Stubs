
--- @name ACTIVATE_DAMAGE_TRACKER_ON_NETWORK_ID
--- @param netID number 
--- @param toggle boolean 
--- @return void (Type not found)
function ActivateDamageTrackerOnNetworkId(netID, toggle) end

--- @name BAD_SPORT_PLAYER_LEFT_DETECTED
--- @param networkHandle number 
--- @param event number 
--- @param amountReceived number 
--- @return boolean
function BadSportPlayerLeftDetected(networkHandle, event, amountReceived) end

--- @name CAN_REGISTER_MISSION_ENTITIES
--- @param ped_amt number 
--- @param vehicle_amt number 
--- @param object_amt number 
--- @param pickup_amt number 
--- @return boolean
function CanRegisterMissionEntities(ped_amt, vehicle_amt, object_amt, pickup_amt) end

--- @name CAN_REGISTER_MISSION_PEDS
--- @param amount number 
--- @return boolean
function CanRegisterMissionPeds(amount) end

--- **This native does absolutely nothing, just a nullsub**
--- @name _CLEAR_LAUNCH_PARAMS
--- @return void (Type not found)
function ClearLaunchParams() end

--- @name _ACTIVATE_DAMAGE_TRACKER_ON_PLAYER
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function ActivateDamageTrackerOnPlayer(player, toggle) end

--- @name _CAN_REGISTER_MISSION_PICKUPS
--- @param amount number 
--- @return boolean
function CanRegisterMissionPickups(amount) end

--- @name CAN_REGISTER_MISSION_OBJECTS
--- @param amount number 
--- @return boolean
function CanRegisterMissionObjects(amount) end

--- @name CAN_REGISTER_MISSION_VEHICLES
--- @param amount number 
--- @return boolean
function CanRegisterMissionVehicles(amount) end

--- @name CLOUD_DID_REQUEST_SUCCEED
--- @param handle number 
--- @return boolean
function CloudDidRequestSucceed(handle) end

--- Downloads prod.cloud.rockstargames.com/titles/gta5/[platform]/check.json
--- @name CLOUD_CHECK_AVAILABILITY
--- @return void (Type not found)
function CloudCheckAvailability() end

--- @name CLOUD_GET_AVAILABILITY_CHECK_RESULT
--- @return boolean
function CloudGetAvailabilityCheckResult() end

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
--- @name CONVERT_POSIX_TIME
--- @param posixTime number 
--- @param timeStructure  
--- @return void (Type not found)
function ConvertPosixTime(posixTime, timeStructure) end

--- @name _FACEBOOK_IS_SENDING_DATA
--- @return boolean
function FacebookIsSendingData() end

--- @name CLOUD_IS_CHECKING_AVAILABILITY
--- @return boolean
function CloudIsCheckingAvailability() end

--- @name CLOUD_DELETE_MEMBER_FILE
--- @param p0 string 
--- @return number
function CloudDeleteMemberFile(p0) end

--- @name _FACEBOOK_SET_HEIST_COMPLETE
--- @param heistName string 
--- @param cashEarned number 
--- @param xpEarned number 
--- @return boolean
function FacebookSetHeistComplete(heistName, cashEarned, xpEarned) end

--- @name CLOUD_HAS_REQUEST_COMPLETED
--- @param handle number 
--- @return boolean
function CloudHasRequestCompleted(handle) end

--- Hardcoded to not work in SP.  
--- @name FADE_OUT_LOCAL_PLAYER
--- @param p0 boolean 
--- @return void (Type not found)
function FadeOutLocalPlayer(p0) end

--- @name _FACEBOOK_IS_AVAILABLE
--- @return boolean
function FacebookIsAvailable() end

--- @name _FACEBOOK_SET_CREATE_CHARACTER_COMPLETE
--- @return boolean
function FacebookSetCreateCharacterComplete() end

--- @name FILLOUT_PM_PLAYER_LIST_WITH_NAMES
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function FilloutPmPlayerListWithNames(p0, p1, p2, p3) end

--- milestoneId:  
--- 0 = "percentcomplete"  
--- 1 = "storycomplete"  
--- 2 = "vehicles"  
--- 3 = "properties"  
--- 4 = "psych"  
--- 5 = "mapreveal"  
--- 6 = "prologue"  
--- @name _FACEBOOK_SET_MILESTONE_COMPLETE
--- @param milestoneId number 
--- @return boolean
function FacebookSetMilestoneComplete(milestoneId) end

--- Same as GET_CLOUD_TIME_AS_INT but returns the value as a hex string (%I64X).
--- @name _GET_CLOUD_TIME_AS_STRING
--- @return string
function GetCloudTimeAsString() end

--- @name FILLOUT_PM_PLAYER_LIST
--- @param networkHandle number 
--- @param p1  
--- @param p2  
--- @return boolean
function FilloutPmPlayerList(networkHandle, p1, p2) end

--- Returns POSIX timestamp.
--- Renamed from `_GET_POSIX_TIME` to `GET_CLOUD_TIME_AS_INT` because of conflicting native names ([`0xDA488F299A5B164E`](#\_0xDA488F299A5B164E))
--- @name GET_CLOUD_TIME_AS_INT
--- @return number
function GetCloudTimeAsInt() end

--- @name GET_COMMERCE_ITEM_ID
--- @param index number 
--- @return string
function GetCommerceItemId(index) end

--- index2 is unused
--- @name GET_COMMERCE_ITEM_CAT
--- @param index number 
--- @param index2 number 
--- @return string
function GetCommerceItemCat(index, index2) end

--- @name GET_COMMERCE_ITEM_NUM_CATS
--- @param index number 
--- @return number
function GetCommerceItemNumCats(index) end

--- @name _FACEBOOK_DO_UNK_CHECK
--- @return boolean
function FacebookDoUnkCheck() end

--- @name GET_COMMERCE_ITEM_NAME
--- @param index number 
--- @return string
function GetCommerceItemName(index) end

--- @name GET_COMMERCE_PRODUCT_PRICE
--- @param index number 
--- @return string
function GetCommerceProductPrice(index) end

--- NativeDB Added Parameter 3: int p2
--- @name GET_COMMERCE_ITEM_TEXTURENAME
--- @param index number 
--- @return string
function GetCommerceItemTexturename(index) end

--- @name GET_MAX_NUM_NETWORK_PEDS
--- @return number
function GetMaxNumNetworkPeds() end

--- @name GET_MAX_NUM_NETWORK_OBJECTS
--- @return number
function GetMaxNumNetworkObjects() end

--- @name GET_MAX_NUM_NETWORK_PICKUPS
--- @return number
function GetMaxNumNetworkPickups() end

--- @name GET_NUM_COMMERCE_ITEMS
--- @return number
function GetNumCommerceItems() end

--- @name GET_MAX_NUM_NETWORK_VEHICLES
--- @return number
function GetMaxNumNetworkVehicles() end

--- @name GET_NETWORK_TIME
--- @return number
function GetNetworkTime() end

--- @name GET_NUM_CREATED_MISSION_PEDS
--- @param p0 boolean 
--- @return number
function GetNumCreatedMissionPeds(p0) end

--- @name GET_NUM_CREATED_MISSION_OBJECTS
--- @param p0 boolean 
--- @return number
function GetNumCreatedMissionObjects(p0) end

--- Returns the same value as [`GetNetworkTime`](#\_0x7A5487FE9FAA6B48) in freemode, but as opposed to `GetNetworkTime` it always gets the most recent time, instead of once per tick.
--- Could be used for benchmarking since it can return times in ticks.
--- @name GET_NETWORK_TIME_ACCURATE
--- @return number
function GetNetworkTimeAccurate() end

--- Online version is defined here: update\update.rpf\common\data\version.txt
--- Example:
--- [ONLINE_VERSION_NUMBER]
--- 1.33
--- _GET_ONLINE_VERSION() will return "1.33"
--- @name _GET_ONLINE_VERSION
--- @return string
function GetOnlineVersion() end

--- @name GET_NUM_CREATED_MISSION_VEHICLES
--- @param p0 boolean 
--- @return number
function GetNumCreatedMissionVehicles(p0) end

--- p0 appears to be for MP  
--- NativeDB Added Parameter 2: Any p1
--- @name GET_NUM_RESERVED_MISSION_OBJECTS
--- @param p0 boolean 
--- @return number
function GetNumReservedMissionObjects(p0) end

--- 0 = succeeded
--- 1 = pending
--- 2 = failed
--- @name GET_STATUS_OF_TEXTURE_DOWNLOAD
--- @param p0 number 
--- @return number
function GetStatusOfTextureDownload(p0) end

--- Subtracts the second argument from the first.  
--- @name GET_TIME_DIFFERENCE
--- @param timeA number 
--- @param timeB number 
--- @return number
function GetTimeDifference(timeA, timeB) end

--- @name HAS_NETWORK_TIME_STARTED
--- @return boolean
function HasNetworkTimeStarted() end

--- p0 appears to be for MP  
--- NativeDB Added Parameter 2: Any p1
--- @name GET_NUM_RESERVED_MISSION_PEDS
--- @param p0 boolean 
--- @return number
function GetNumReservedMissionPeds(p0) end

--- @name IS_COMMERCE_DATA_VALID
--- @return boolean
function IsCommerceDataValid() end

--- p0 appears to be for MP  
--- NativeDB Added Parameter 2: Any p1
--- @name GET_NUM_RESERVED_MISSION_VEHICLES
--- @param p0 boolean 
--- @return number
function GetNumReservedMissionVehicles(p0) end

--- @name GET_TIME_AS_STRING
--- @param time number 
--- @return string
function GetTimeAsString(time) end

--- @name IS_DAMAGE_TRACKER_ACTIVE_ON_NETWORK_ID
--- @param netID number 
--- @return boolean
function IsDamageTrackerActiveOnNetworkId(netID) end

--- @name IS_COMMERCE_STORE_OPEN
--- @return boolean
function IsCommerceStoreOpen() end

--- @name IS_NETWORK_ID_OWNED_BY_PARTICIPANT
--- @param netId number 
--- @return boolean
function IsNetworkIdOwnedByParticipant(netId) end

--- @name _IS_DAMAGE_TRACKER_ACTIVE_ON_PLAYER
--- @param player Player 
--- @return boolean
function IsDamageTrackerActiveOnPlayer(player) end

--- Adds the first argument to the second.  
--- @name GET_TIME_OFFSET
--- @param timeA number 
--- @param timeB number 
--- @return number
function GetTimeOffset(timeA, timeB) end

--- @name IS_SPHERE_VISIBLE_TO_PLAYER
--- @param p0  
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @return boolean
function IsSphereVisibleToPlayer(p0, p1, p2, p3, p4) end

--- @name IS_STORE_AVAILABLE_TO_USER
--- @return boolean
function IsStoreAvailableToUser() end

--- @name _IS_ENTITY_GHOSTED_TO_LOCAL_PLAYER
--- @param entity Entity 
--- @return boolean
function IsEntityGhostedToLocalPlayer(entity) end

--- Returns true if the two times are equal; otherwise returns false.  
--- @name IS_TIME_EQUAL_TO
--- @param timeA number 
--- @param timeB number 
--- @return boolean
function IsTimeEqualTo(timeA, timeB) end

--- Subtracts the first argument from the second, then returns whether the result is negative.  
--- @name IS_TIME_MORE_THAN
--- @param timeA number 
--- @param timeB number 
--- @return boolean
function IsTimeMoreThan(timeA, timeB) end

--- @name IS_SPHERE_VISIBLE_TO_ANOTHER_MACHINE
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return boolean
function IsSphereVisibleToAnotherMachine(p0, p1, p2, p3) end

--- Subtracts the second argument from the first, then returns whether the result is negative.  
--- @name IS_TIME_LESS_THAN
--- @param timeA number 
--- @param timeB number 
--- @return boolean
function IsTimeLessThan(timeA, timeB) end

--- @name IS_PLAYER_IN_CUTSCENE
--- @param player Player 
--- @return boolean
function IsPlayerInCutscene(player) end

--- gets the entity id of a network id  
--- @name NET_TO_ENT
--- @param netHandle number 
--- @return Entity
function NetToEnt(netHandle) end

--- @name NETWORK_BLOCK_JOIN_QUEUE_INVITES
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkBlockJoinQueueInvites(toggle) end

--- @name NET_TO_VEH
--- @param netHandle number 
--- @return Vehicle
function NetToVeh(netHandle) end

--- gets the ped id of a network id  
--- @name NET_TO_PED
--- @param netHandle number 
--- @return Ped
function NetToPed(netHandle) end

--- gets the object id of a network id  
--- @name NET_TO_OBJ
--- @param netHandle number 
--- @return Object
function NetToObj(netHandle) end

--- NETWORK_RE*
--- Triggers a CEventNetworkInviteConfirmed event
--- @name _NETWORK_ACCEPT_INVITE
--- @return boolean
function NetworkAcceptInvite() end

--- @name NETWORK_ACCESS_TUNABLE_BOOL_HASH
--- @param tunableContext Hash 
--- @param tunableName Hash 
--- @return boolean
function NetworkAccessTunableBoolHash(tunableContext, tunableName) end

--- @name NETWORK_ACCESS_TUNABLE_BOOL
--- @param tunableContext string 
--- @param tunableName string 
--- @return boolean
function NetworkAccessTunableBool(tunableContext, tunableName) end

--- @name NETWORK_ACCESS_TUNABLE_FLOAT
--- @param tunableContext string 
--- @param tunableName string 
--- @param value number 
--- @return boolean
function NetworkAccessTunableFloat(tunableContext, tunableName, value) end

--- @name NETWORK_ACCESS_TUNABLE_FLOAT_HASH
--- @param tunableContext Hash 
--- @param tunableName Hash 
--- @param value number 
--- @return boolean
function NetworkAccessTunableFloatHash(tunableContext, tunableName, value) end

--- @name NETWORK_ACCESS_TUNABLE_INT_HASH
--- @param tunableContext Hash 
--- @param tunableName Hash 
--- @param value number 
--- @return boolean
function NetworkAccessTunableIntHash(tunableContext, tunableName, value) end

--- @name NETWORK_ACCEPT_PRESENCE_INVITE
--- @param p0  
--- @return boolean
function NetworkAcceptPresenceInvite(p0) end

--- @name NETWORK_ACCESS_TUNABLE_INT
--- @param tunableContext string 
--- @param tunableName string 
--- @param value number 
--- @return boolean
function NetworkAccessTunableInt(tunableContext, tunableName, value) end

--- @name NETWORK_ADD_ENTITY_AREA
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @return 
function NetworkAddEntityArea(p0, p1, p2, p3, p4, p5) end

--- To remove, see: [`NETWORK_REMOVE_ENTITY_AREA`](#\_0x93CF869BAA0C4874).
--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- @name NETWORK_ADD_ENTITY_ANGLED_AREA
--- @param x1 number X dimension of the angled area 'origin'
--- @param y1 number Y dimension of the angled area 'origin'
--- @param z1 number Z dimension of the angled area 'origin'
--- @param x2 number X dimension of the angled area 'extent'
--- @param y2 number Y dimension of the angled area 'extent'
--- @param z2 number Z dimension of the angled area 'extent'
--- @param width number Width of the angled area
--- @return 
function NetworkAddEntityAngledArea(x1, y1, z1, x2, y2, z2, width) end

--- ..  
--- @name NETWORK_ADD_FOLLOWERS
--- @param p0 number 
--- @param p1 number 
--- @return void (Type not found)
function NetworkAddFollowers(p0, p1) end

--- @name NETWORK_ACTION_FOLLOW_INVITE
--- @return 
function NetworkActionFollowInvite() end

--- @name NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE
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

--- @name NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE
--- @param entity Entity 
--- @param netScene number 
--- @param animDict string 
--- @param animName string 
--- @param speed number 
--- @param speedMulitiplier number 
--- @param flag number 
--- @return void (Type not found)
function NetworkAddEntityToSynchronisedScene(entity, netScene, animDict, animName, speed, speedMulitiplier, flag) end

--- @name NETWORK_ADD_SYNCHRONISED_SCENE_CAMERA
--- @param netScene number 
--- @param animDict string 
--- @param animName string 
--- @return void (Type not found)
function NetworkAddSynchronisedSceneCamera(netScene, animDict, animName) end

--- @name NETWORK_ADD_ENTITY_DISPLAYED_BOUNDARIES
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @return 
function NetworkAddEntityDisplayedBoundaries(p0, p1, p2, p3, p4, p5) end

--- @name _NETWORK_ALLOCATE_TUNABLES_REGISTRATION_DATA_MAP
--- @return boolean
function NetworkAllocateTunablesRegistrationDataMap() end

--- @name NETWORK_ADD_FRIEND
--- @param networkHandle number 
--- @param message string 
--- @return boolean
function NetworkAddFriend(networkHandle, message) end

--- @name _NETWORK_ALLOW_LOCAL_ENTITY_ATTACHMENT
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkAllowLocalEntityAttachment(entity, toggle) end

--- @name NETWORK_AM_I_MUTED_BY_GAMER
--- @param networkHandle  
--- @return boolean
function NetworkAmIMutedByGamer(networkHandle) end

--- @name NETWORK_AM_I_BLOCKED_BY_GAMER
--- @param networkHandle  
--- @return boolean
function NetworkAmIBlockedByGamer(networkHandle) end

--- @name NETWORK_AM_I_BLOCKED_BY_PLAYER
--- @param player Player 
--- @return boolean
function NetworkAmIBlockedByPlayer(player) end

--- @name NETWORK_APPLY_CACHED_PLAYER_HEAD_BLEND_DATA
--- @param ped Ped 
--- @param player Player 
--- @return boolean
function NetworkApplyCachedPlayerHeadBlendData(ped, player) end

--- @name NETWORK_APPLY_TRANSITION_PARAMETER_STRING
--- @param p0 number 
--- @param string string 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkApplyTransitionParameterString(p0, string, p2) end

--- @name NETWORK_APPLY_VOICE_PROXIMITY_OVERRIDE
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function NetworkApplyVoiceProximityOverride(x, y, z) end

--- @name NETWORK_APPLY_PED_SCAR_DATA
--- @param ped Ped 
--- @param p1 number 
--- @return void (Type not found)
function NetworkApplyPedScarData(ped, p1) end

--- @name NETWORK_APPLY_TRANSITION_PARAMETER
--- @param p0 number 
--- @param p1 number 
--- @return void (Type not found)
function NetworkApplyTransitionParameter(p0, p1) end

--- @name NETWORK_ARE_SOCIAL_CLUB_POLICIES_CURRENT
--- @return boolean
function NetworkAreSocialClubPoliciesCurrent() end

--- Getter for SET_NETWORK_CUTSCENE_ENTITIES.
--- NativeDB Introduced: v2699
--- @name _NETWORK_ARE_CUTSCENE_ENTITIES
--- @return boolean
function NetworkAreCutsceneEntities() end

--- NativeDB Added Parameter 1: int p0
--- NativeDB Added Parameter 2: int p1
--- NativeDB Added Parameter 3: int p2
--- @name NETWORK_BAIL_TRANSITION
--- @return void (Type not found)
function NetworkBailTransition() end

--- @name NETWORK_AM_I_MUTED_BY_PLAYER
--- @param player Player 
--- @return boolean
function NetworkAmIMutedByPlayer(player) end

--- NativeDB Added Parameter 1: int p0
--- NativeDB Added Parameter 2: int p1
--- NativeDB Added Parameter 3: int p2
--- @name NETWORK_BAIL
--- @return void (Type not found)
function NetworkBail() end

--- @name NETWORK_ARE_HANDLES_THE_SAME
--- @param netHandle1 number 
--- @param netHandle2 number 
--- @return boolean
function NetworkAreHandlesTheSame(netHandle1, netHandle2) end

--- @name NETWORK_ARE_TRANSITION_DETAILS_VALID
--- @param p0  
--- @return boolean
function NetworkAreTransitionDetailsValid(p0) end

--- @name NETWORK_BLOCK_INVITES
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkBlockInvites(toggle) end

--- @name NETWORK_ATTACH_SYNCHRONISED_SCENE_TO_ENTITY
--- @param netScene number 
--- @param entity Entity 
--- @param bone number 
--- @return void (Type not found)
function NetworkAttachSynchronisedSceneToEntity(netScene, entity, bone) end

--- @name NETWORK_CACHE_LOCAL_PLAYER_HEAD_BLEND_DATA
--- @return void (Type not found)
function NetworkCacheLocalPlayerHeadBlendData() end

--- @name _NETWORK_BLOCK_KICKED_PLAYERS
--- @param p0 boolean 
--- @return void (Type not found)
function NetworkBlockKickedPlayers(p0) end

--- NativeDB Introduced: v2699
--- @name _NETWORK_BAIL_TRANSITION_QUICKMATCH
--- @return void (Type not found)
function NetworkBailTransitionQuickmatch() end

--- 11 - Need to download tunables.  
--- 12 - Need to download background script.  
--- Returns 1 if the multiplayer is loaded, otherwhise 0.  
--- @name NETWORK_CAN_ACCESS_MULTIPLAYER
--- @param loadingState number 
--- @return boolean
function NetworkCanAccessMultiplayer(loadingState) end

--- @name NETWORK_CAN_ENTER_MULTIPLAYER
--- @return boolean
function NetworkCanEnterMultiplayer() end

--- @name NETWORK_CAN_COMMUNICATE_WITH_GAMER
--- @param networkHandle number 
--- @return boolean
function NetworkCanCommunicateWithGamer(networkHandle) end

--- @name NETWORK_CAN_BAIL
--- @return boolean
function NetworkCanBail() end

--- @name _NETWORK_CAN_PLAY_MULTIPLAYER_WITH_GAMER
--- @param networkHandle  
--- @return boolean
function NetworkCanPlayMultiplayerWithGamer(networkHandle) end

--- Same as NETWORK_CAN_COMMUNICATE_WITH_GAMER
--- NETWORK_CAN_*
--- @name _NETWORK_CAN_COMMUNICATE_WITH_GAMER_2
--- @param networkHandle  
--- @return boolean
function NetworkCanCommunicateWithGamer2(networkHandle) end

--- @name _NETWORK_CAN_GAMER_PLAY_MULTIPLAYER_WITH_ME
--- @param networkHandle  
--- @return boolean
function NetworkCanGamerPlayMultiplayerWithMe(networkHandle) end

--- @name _NETWORK_CAN_VIEW_GAMER_USER_CONTENT
--- @param networkHandle  
--- @return boolean
function NetworkCanViewGamerUserContent(networkHandle) end

--- @name NETWORK_CAN_SET_WAYPOINT
--- @return boolean
function NetworkCanSetWaypoint() end

--- @name NETWORK_CANCEL_RESPAWN_SEARCH
--- @return void (Type not found)
function NetworkCancelRespawnSearch() end

--- @name NETWORK_CHECK_COMMUNICATION_PRIVILEGES
--- @param p0 number 
--- @param p1 number 
--- @param p2 boolean 
--- @return boolean
function NetworkCheckCommunicationPrivileges(p0, p1, p2) end

--- @name NETWORK_CHANGE_TRANSITION_SLOTS
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function NetworkChangeTransitionSlots(p0, p1) end

--- @name NETWORK_CHECK_USER_CONTENT_PRIVILEGES
--- @param p0 number 
--- @param p1 number 
--- @param p2 boolean 
--- @return boolean
function NetworkCheckUserContentPrivileges(p0, p1, p2) end

--- Checks if the friendDataIndex in the friend data manager contains the data for the specified networkHandle
--- @name NETWORK_CHECK_DATA_MANAGER_SUCCEEDED_FOR_HANDLE
--- @param friendDataIndex number 
--- @param networkHandle number 
--- @return boolean
function NetworkCheckDataManagerSucceededForHandle(friendDataIndex, networkHandle) end

--- @name NETWORK_CAN_SESSION_END
--- @return boolean
function NetworkCanSessionEnd() end

--- Only documented...  
--- @name _NETWORK_CLAN_ANIMATION
--- @param animDict string 
--- @param animName string 
--- @return boolean
function NetworkClanAnimation(animDict, animName) end

--- @name NETWORK_CLAN_ANY_DOWNLOAD_MEMBERSHIP_PENDING
--- @return boolean
function NetworkClanAnyDownloadMembershipPending() end

--- @name NETWORK_CLAN_DOWNLOAD_MEMBERSHIP
--- @param networkHandle number 
--- @return boolean
function NetworkClanDownloadMembership(networkHandle) end

--- @name NETWORK_CLAN_GET_LOCAL_MEMBERSHIPS_COUNT
--- @return number
function NetworkClanGetLocalMembershipsCount() end

--- @name NETWORK_CLAN_GET_EMBLEM_TXD_NAME
--- @param netHandle  
--- @param txdName string 
--- @return boolean
function NetworkClanGetEmblemTxdName(netHandle, txdName) end

--- @name NETWORK_CLAN_DOWNLOAD_MEMBERSHIP_PENDING
--- @param p0  
--- @return boolean
function NetworkClanDownloadMembershipPending(p0) end

--- bufferSize is 35 in the scripts.
--- @name NETWORK_CLAN_GET_UI_FORMATTED_TAG
--- @param clanDesc number 
--- @param bufferSize number 
--- @param formattedTag string 
--- @return void (Type not found)
function NetworkClanGetUiFormattedTag(clanDesc, bufferSize, formattedTag) end

--- Retrieves a membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP).
--- Test C++ code:
--- https://pastebin.com/CD8wni4C
--- @name NETWORK_CLAN_GET_MEMBERSHIP
--- @param networkHandle number A player network handle.
--- @param clanMembership number Output buffer for the membership data. Also known as "desc".
--- @param membershipIndex number If the player has multiple crews/memberships, use \[0-9], or -1 to get the active crew/membership.
--- @return boolean
function NetworkClanGetMembership(networkHandle, clanMembership, membershipIndex) end

--- Checks if a crew/membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP) is valid.
--- @name NETWORK_CLAN_GET_MEMBERSHIP_VALID
--- @param networkHandle number A player network handle.
--- @param membershipIndex number If the player has multiple crews/memberships, use \[0-9], or -1 to get the active crew/membership.
--- @return boolean
function NetworkClanGetMembershipValid(networkHandle, membershipIndex) end

--- @name NETWORK_CLAN_GET_MEMBERSHIP_DESC
--- @param memberDesc number 
--- @param p1 number 
--- @return boolean
function NetworkClanGetMembershipDesc(memberDesc, p1) end

--- @name NETWORK_CLAN_GET_MEMBERSHIP_COUNT
--- @param p0 number 
--- @return number
function NetworkClanGetMembershipCount(p0) end

--- bufferSize is 35 in the scripts.  
--- @name NETWORK_CLAN_IS_ROCKSTAR_CLAN
--- @param clanDesc number 
--- @param bufferSize number 
--- @return boolean
function NetworkClanIsRockstarClan(clanDesc, bufferSize) end

--- bufferSize is 35 in the scripts.  
--- bufferSize is the elementCount of p0(desc), sizeof(p0) == 280 == p1*8 == 35 * 8, p2(netHandle) is obtained from NETWORK::NETWORK_HANDLE_FROM_PLAYER.  And no, I can't explain why 35 * sizeof(int) == 280 and not 140, but I'll get back to you on that.  
--- the answer is: because p0 an int64_t* / int64_t[35].  and FYI p2 is an int64_t[13]  
--- pastebin.com/cSZniHak  
--- @name NETWORK_CLAN_PLAYER_GET_DESC
--- @param clanDesc number 
--- @param bufferSize number 
--- @param networkHandle number 
--- @return boolean
function NetworkClanPlayerGetDesc(clanDesc, bufferSize, networkHandle) end

--- @name NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE
--- @param p0 number 
--- @return boolean
function NetworkClanRemoteMembershipsAreInCache(p0) end

--- @name NETWORK_CLAN_IS_EMBLEM_READY
--- @param p0  
--- @param p1  
--- @return boolean
function NetworkClanIsEmblemReady(p0, p1) end

--- @name NETWORK_CLAN_PLAYER_IS_ACTIVE
--- @param networkHandle number 
--- @return boolean
function NetworkClanPlayerIsActive(networkHandle) end

--- @name NETWORK_CLAN_JOIN
--- @param clanDesc number 
--- @return boolean
function NetworkClanJoin(clanDesc) end

--- @name NETWORK_CLAN_RELEASE_EMBLEM
--- @param p0  
--- @return void (Type not found)
function NetworkClanReleaseEmblem(p0) end

--- @name NETWORK_CLEAR_FOLLOW_INVITE
--- @return 
function NetworkClearFollowInvite() end

--- @name NETWORK_CLAN_SERVICE_IS_VALID
--- @return boolean
function NetworkClanServiceIsValid() end

--- @name NETWORK_CLAN_REQUEST_EMBLEM
--- @param p0  
--- @return boolean
function NetworkClanRequestEmblem(p0) end

--- @name NETWORK_CLEAR_CLOCK_TIME_OVERRIDE
--- @return void (Type not found)
function NetworkClearClockTimeOverride() end

--- @name NETWORK_CLEAR_FOUND_GAMERS
--- @return void (Type not found)
function NetworkClearFoundGamers() end

--- @name NETWORK_CLEAR_GET_GAMER_STATUS
--- @return void (Type not found)
function NetworkClearGetGamerStatus() end

--- @name NETWORK_CLEAR_GROUP_ACTIVITY
--- @return void (Type not found)
function NetworkClearGroupActivity() end

--- @name NETWORK_CLEAR_FOLLOWERS
--- @return void (Type not found)
function NetworkClearFollowers() end

--- @name NETWORK_CLEAR_VOICE_CHANNEL
--- @return void (Type not found)
function NetworkClearVoiceChannel() end

--- @name NETWORK_CLEAR_TRANSITION_CREATOR_HANDLE
--- @return void (Type not found)
function NetworkClearTransitionCreatorHandle() end

--- @name NETWORK_CLOSE_TRANSITION_MATCHMAKING
--- @return void (Type not found)
function NetworkCloseTransitionMatchmaking() end

--- @name NETWORK_CLEAR_PROPERTY_ID
--- @return void (Type not found)
function NetworkClearPropertyId() end

--- @name NETWORK_CLEAR_VOICE_PROXIMITY_OVERRIDE
--- @return void (Type not found)
function NetworkClearVoiceProximityOverride() end

--- This is what R\* uses to hide players in MP interiors.
--- @name NETWORK_CONCEAL_PLAYER
--- @param player Player 
--- @param toggle boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkConcealPlayer(player, toggle, p2) end

--- @name NETWORK_CREATE_SYNCHRONISED_SCENE
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

--- @name _NETWORK_CONCEAL_ENTITY
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkConcealEntity(entity, toggle) end

--- @name NETWORK_DID_GET_GAMER_STATUS_SUCCEED
--- @return boolean
function NetworkDidGetGamerStatusSucceed() end

--- @name NETWORK_DID_FIND_GAMERS_SUCCEED
--- @return boolean
function NetworkDidFindGamersSucceed() end

--- @name NETWORK_DISABLE_INVINCIBLE_FLASHING
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkDisableInvincibleFlashing(player, toggle) end

--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- @name NETWORK_DO_TRANSITION_QUICKMATCH
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkDoTransitionQuickmatch(p0, p1, p2, p3) end

--- @name NETWORK_DISABLE_LEAVE_REMOTE_PED_BEHIND
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkDisableLeaveRemotePedBehind(toggle) end

--- @name NETWORK_DISABLE_PROXIMITY_MIGRATION
--- @param netID number 
--- @return void (Type not found)
function NetworkDisableProximityMigration(netID) end

--- Hardcoded to return -1.
--- @name _NETWORK_DISPLAYNAMES_FROM_HANDLES_START
--- @param p0  
--- @param p1  
--- @return number
function NetworkDisplaynamesFromHandlesStart(p0, p1) end

--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- @name NETWORK_DO_TRANSITION_QUICKMATCH_ASYNC
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkDoTransitionQuickmatchAsync(p0, p1, p2, p3) end

--- @name NETWORK_DO_TRANSITION_TO_NEW_FREEMODE
--- @param p0  
--- @param p1  
--- @param players number 
--- @param p3 boolean 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return boolean
function NetworkDoTransitionToNewFreemode(p0, p1, players, p3, p4, p5) end

--- NativeDB Added Parameter 7: Any p6
--- NativeDB Added Parameter 8: Any p7
--- @name NETWORK_DO_TRANSITION_QUICKMATCH_WITH_GROUP
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return boolean
function NetworkDoTransitionQuickmatchWithGroup(p0, p1, p2, p3, p4, p5) end

--- @name NETWORK_DOES_ENTITY_EXIST_WITH_NETWORK_ID
--- @param netId number 
--- @return boolean
function NetworkDoesEntityExistWithNetworkId(netId) end

--- @name NETWORK_DO_TRANSITION_TO_GAME
--- @param p0 boolean 
--- @param maxPlayers number 
--- @return boolean
function NetworkDoTransitionToGame(p0, maxPlayers) end

--- p2 is true 3/4 of the occurrences I found.  
--- 'players' is the number of players for a session. On PS3/360 it's always 18. On PC it's 32.  
--- @name NETWORK_DO_TRANSITION_TO_FREEMODE
--- @param p0  
--- @param p1  
--- @param p2 boolean 
--- @param players number 
--- @param p4 boolean 
--- @return boolean
function NetworkDoTransitionToFreemode(p0, p1, p2, players, p4) end

--- @name NETWORK_DOES_TUNABLE_EXIST
--- @param tunableContext string 
--- @param tunableName string 
--- @return boolean
function NetworkDoesTunableExist(tunableContext, tunableName) end

--- @name NETWORK_DO_TRANSITION_TO_NEW_GAME
--- @param p0 boolean 
--- @param maxPlayers number 
--- @param p2 boolean 
--- @return boolean
function NetworkDoTransitionToNewGame(p0, maxPlayers, p2) end

--- @name NETWORK_END_TUTORIAL_SESSION
--- @return void (Type not found)
function NetworkEndTutorialSession() end

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
--- @name NETWORK_EXPLODE_VEHICLE
--- @param vehicle Vehicle 
--- @param isAudible boolean 
--- @param isInvisible boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkExplodeVehicle(vehicle, isAudible, isInvisible, p3) end

--- state - 0 does 5 fades  
--- state - 1 does 6 fades  
--- native is missing third argument, also boolean, setting to 1 made vehicle fade in slower, probably "slow" as per NETWORK_FADE_OUT_ENTITY  
--- NativeDB Added Parameter 3: BOOL slow
--- @name NETWORK_FADE_IN_ENTITY
--- @param entity Entity 
--- @param state boolean 
--- @return void (Type not found)
function NetworkFadeInEntity(entity, state) end

--- @name NETWORK_DOES_NETWORK_ID_EXIST
--- @param netId number 
--- @return boolean
function NetworkDoesNetworkIdExist(netId) end

--- @name NETWORK_ENTITY_AREA_IS_OCCUPIED
--- @param areaHandle number 
--- @return boolean
function NetworkEntityAreaIsOccupied(areaHandle) end

--- normal - transition like when your coming out of LSC  
--- slow - transition like when you walk into a mission  
--- @name NETWORK_FADE_OUT_ENTITY
--- @param entity Entity 
--- @param normal boolean 
--- @param slow boolean 
--- @return void (Type not found)
function NetworkFadeOutEntity(entity, normal, slow) end

--- @name NETWORK_ENTITY_AREA_DOES_EXIST
--- @param areaHandle number 
--- @return boolean
function NetworkEntityAreaDoesExist(areaHandle) end

--- @name NETWORK_DOES_TUNABLE_EXIST_HASH
--- @param tunableContext Hash 
--- @param tunableName Hash 
--- @return boolean
function NetworkDoesTunableExistHash(tunableContext, tunableName) end

--- @name NETWORK_FIND_MATCHED_GAMERS
--- @param p0  
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return boolean
function NetworkFindMatchedGamers(p0, p1, p2, p3) end

--- @name NETWORK_EXPLODE_HELI
--- @param heli Vehicle Heli to explode
--- @param isAudible boolean 
--- @param isInvisible boolean 
--- @param netScriptEntityId number 
--- @return void (Type not found)
function NetworkExplodeHeli(heli, isAudible, isInvisible, netScriptEntityId) end

--- @name NETWORK_FORCE_LOCAL_USE_OF_SYNCED_SCENE_CAMERA
--- @param sceneId number 
--- @return void (Type not found)
function NetworkForceLocalUseOfSyncedSceneCamera(sceneId) end

--- @name NETWORK_FIND_GAMERS_IN_CREW
--- @param p0  
--- @return boolean
function NetworkFindGamersInCrew(p0) end

--- @name NETWORK_GAMERTAG_FROM_HANDLE_PENDING
--- @return boolean
function NetworkGamertagFromHandlePending() end

--- @name NETWORK_GAMERTAG_FROM_HANDLE_SUCCEEDED
--- @return boolean
function NetworkGamertagFromHandleSucceeded() end

--- @name NETWORK_GET_AGE_GROUP
--- @return number
function NetworkGetAgeGroup() end

--- @name NETWORK_GAMERTAG_FROM_HANDLE_START
--- @param networkHandle number 
--- @return boolean
function NetworkGamertagFromHandleStart(networkHandle) end

--- @name NETWORK_GAMER_HAS_HEADSET
--- @param networkHandle  
--- @return boolean
function NetworkGamerHasHeadset(networkHandle) end

--- @name NETWORK_FINISH_BROADCASTING_DATA
--- @return void (Type not found)
function NetworkFinishBroadcastingData() end

--- @name NETWORK_GET_ACTIVITY_PLAYER_NUM
--- @param p0 boolean 
--- @return number
function NetworkGetActivityPlayerNum(p0) end

--- NativeDB Introduced: v323
--- @name _NETWORK_GET_AVERAGE_LATENCY_FOR_PLAYER
--- @param player Player 
--- @return number
function NetworkGetAverageLatencyForPlayer(player) end

--- NETWORK_GET_*
--- NativeDB Introduced: v323
--- @name _NETWORK_GET_AVERAGE_PACKET_LOSS_FOR_PLAYER
--- @param player Player 
--- @return number
function NetworkGetAveragePacketLossForPlayer(player) end

--- Return the content modifier id (the tunables context if you want) of a specific content.  
--- It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.  
--- The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'  
--- 'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.  
--- @name NETWORK_GET_CONTENT_MODIFIER_LIST_ID
--- @param contentHash Hash 
--- @return number
function NetworkGetContentModifierListId(contentHash) end

--- @name _NETWORK_GET_DESTROYER_OF_ENTITY
--- @param p0  
--- @param p1  
--- @param weaponHash Hash 
--- @return boolean
function NetworkGetDestroyerOfEntity(p0, p1, weaponHash) end

--- Same as _NETWORK_GET_AVERAGE_LATENCY_FOR_PLAYER (0xD414BE129BB81B32)
--- NativeDB Introduced: v323
--- @name _NETWORK_GET_AVERAGE_LATENCY_FOR_PLAYER_2
--- @param player Player 
--- @return number
function NetworkGetAverageLatencyForPlayer2(player) end

--- @name NETWORK_GET_DESTROYER_OF_NETWORK_ID
--- @param netId number 
--- @param weaponHash Hash 
--- @return number
function NetworkGetDestroyerOfNetworkId(netId, weaponHash) end

--- @name NETWORK_GET_BACKGROUND_LOADING_RECIPIENTS
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkGetBackgroundLoadingRecipients(p0, p1, p2, p3) end

--- @name NETWORK_GET_ENTITY_IS_LOCAL
--- @param entity Entity 
--- @return boolean
function NetworkGetEntityIsLocal(entity) end

--- Get the local entity handle of the given network id
--- Through this native you can get back the entity that you previously converted to netid with [NetworkGetNetworkIdFromEntity](#\_0x9E35DAB6) or with the `ToNet` natives
--- @name NETWORK_GET_ENTITY_FROM_NETWORK_ID
--- @param netId number the network id of the entity
--- @return Entity
function NetworkGetEntityFromNetworkId(netId) end

--- @name NETWORK_GET_ENTITY_IS_NETWORKED
--- @param entity Entity 
--- @return boolean
function NetworkGetEntityIsNetworked(entity) end

--- @name NETWORK_GET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU
--- @param p0  
--- @return boolean
function NetworkGetCurrentlySelectedGamerHandleFromInviteMenu(p0) end

--- @name NETWORK_GET_ENTITY_KILLER_OF_PLAYER
--- @param player Player 
--- @param weaponHash Hash 
--- @return Entity
function NetworkGetEntityKillerOfPlayer(player, weaponHash) end

--- @name NETWORK_GET_FRIEND_COUNT
--- @return number
function NetworkGetFriendCount() end

--- @name _NETWORK_GET_ENTITY_NET_SCRIPT_ID
--- @param entity Entity 
--- @return number
function NetworkGetEntityNetScriptId(entity) end

--- @name _NETWORK_GET_FRIEND_NAME_FROM_INDEX
--- @param friendIndex number 
--- @return string
function NetworkGetFriendNameFromIndex(friendIndex) end

--- @name _NETWORK_GET_DISPLAYNAMES_FROM_HANDLES
--- @param p0  
--- @param p1  
--- @param p2  
--- @return number
function NetworkGetDisplaynamesFromHandles(p0, p1, p2) end

--- @name NETWORK_GET_FOUND_GAMER
--- @param p0  
--- @param p1  
--- @return boolean
function NetworkGetFoundGamer(p0, p1) end

--- @name NETWORK_GET_FRIEND_NAME
--- @param friendIndex number 
--- @return string
function NetworkGetFriendName(friendIndex) end

--- @name NETWORK_GET_GAMERTAG_FROM_HANDLE
--- @param networkHandle number 
--- @return string
function NetworkGetGamertagFromHandle(networkHandle) end

--- scriptName examples:  
--- "freemode", "AM_CR_SecurityVan", ...  
--- Most of the time, these values are used:  
--- p1 = -1  
--- p2 = 0  
--- @name NETWORK_GET_HOST_OF_SCRIPT
--- @param scriptName string 
--- @param p1 number 
--- @param p2 number 
--- @return Player
function NetworkGetHostOfScript(scriptName, p1, p2) end

--- @name NETWORK_GET_GLOBAL_MULTIPLAYER_CLOCK
--- @param hours number 
--- @param minutes number 
--- @param seconds number 
--- @return void (Type not found)
function NetworkGetGlobalMultiplayerClock(hours, minutes, seconds) end

--- @name NETWORK_GET_GAMER_STATUS_FROM_QUEUE
--- @return boolean
function NetworkGetGamerStatusFromQueue() end

--- @name NETWORK_GET_GAMER_STATUS_RESULT
--- @param p0  
--- @param p1  
--- @return boolean
function NetworkGetGamerStatusResult(p0, p1) end

--- @name NETWORK_GET_INSTANCE_ID_OF_THIS_SCRIPT
--- @return number
function NetworkGetInstanceIdOfThisScript() end

--- @name NETWORK_GET_LOCAL_SCENE_FROM_NETWORK_ID
--- @param netId number 
--- @return number
function NetworkGetLocalSceneFromNetworkId(netId) end

--- Used by NetBlender
--- @name _NETWORK_GET_LAST_VELOCITY_RECEIVED
--- @param entity Entity 
--- @return Vector3
function NetworkGetLastVelocityReceived(entity) end

--- @name NETWORK_GET_HOST_OF_THIS_SCRIPT
--- @return Player
function NetworkGetHostOfThisScript() end

--- Retrieves the local player's NetworkHandle* and stores it in the given buffer.  
--- * Currently unknown struct  
--- @name NETWORK_GET_LOCAL_HANDLE
--- @param networkHandle number 
--- @param bufferSize number 
--- @return void (Type not found)
function NetworkGetLocalHandle(networkHandle, bufferSize) end

--- Get the network id of the given entity
--- An entity network id represents a given entity for other clients, it's a handle shared between clients, can be reconverted to a client entity handle.\
--- These (entity network IDs) can and will be reused, the network id will not change.
--- If you need to refer to an entity across machines (clients, or the server), you should use its network id.
--- Read more at [Network and local IDs](https://docs.fivem.net/docs/scripting-manual/networking/ids/)
--- @name NETWORK_GET_NETWORK_ID_FROM_ENTITY
--- @param entity Entity the handle of the entity from which the network id should be taken
--- @return number
function NetworkGetNetworkIdFromEntity(entity) end

--- Seems to always return 0, but it's used in quite a few loops.
--- for (num3 = 0; num3 < NETWORK::0xCCD8C02D(); num3++)
---     {
---         if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::0x98F3B274(num3)) != 0)
---         {
---             var num5 = NETWORK::NETWORK_GET_PLAYER_INDEX(PLAYER::0x98F3B274(num3));
--- @name NETWORK_GET_MAX_NUM_PARTICIPANTS
--- @return number
function NetworkGetMaxNumParticipants() end

--- @name _NETWORK_GET_NUM_BODY_TRACKERS
--- @return number
function NetworkGetNumBodyTrackers() end

--- Returns the amount of players connected in the current session. Only works when connected to a session/server.  
--- @name NETWORK_GET_NUM_CONNECTED_PLAYERS
--- @return number
function NetworkGetNumConnectedPlayers() end

--- @name NETWORK_GET_NUM_PARTICIPANTS
--- @return number
function NetworkGetNumParticipants() end

--- @name NETWORK_GET_NUM_PRESENCE_INVITES
--- @return number
function NetworkGetNumPresenceInvites() end

--- NativeDB Introduced: v323
--- @name _NETWORK_GET_NUM_UNACKED_FOR_PLAYER
--- @param player Player 
--- @return number
function NetworkGetNumUnackedForPlayer(player) end

--- @name NETWORK_GET_MAX_FRIENDS
--- @return number
function NetworkGetMaxFriends() end

--- @name NETWORK_GET_NUM_FOUND_GAMERS
--- @return number
function NetworkGetNumFoundGamers() end

--- NETWORK_GET_*
--- NativeDB Introduced: v323
--- @name _NETWORK_GET_OLDEST_RESEND_COUNT_FOR_PLAYER
--- @param player Player 
--- @return number
function NetworkGetOldestResendCountForPlayer(player) end

--- @name NETWORK_GET_PARTICIPANT_INDEX
--- @param index number 
--- @return number
function NetworkGetParticipantIndex(index) end

--- @name NETWORK_GET_NUM_SCRIPT_PARTICIPANTS
--- @param p0  
--- @param p1  
--- @param p2  
--- @return number
function NetworkGetNumScriptParticipants(p0, p1, p2) end

--- @name NETWORK_GET_PLAYER_INDEX
--- @param player Player 
--- @return number
function NetworkGetPlayerIndex(player) end

--- @name NETWORK_GET_PLATFORM_PARTY_MEMBERS
--- @param data  
--- @param dataSize number 
--- @return number
function NetworkGetPlatformPartyMembers(data, dataSize) end

--- Returns the coordinates of another player.
--- Does not work if you enter your own player id as p0 (will return `(0.0, 0.0, 0.0)` in that case).
--- @name _NETWORK_GET_PLAYER_COORDS
--- @param player Player The player id, MUST be another player.
--- @return Vector3
function NetworkGetPlayerCoords(player) end

--- @name _NETWORK_GET_PLATFORM_PARTY_UNK
--- @return number
function NetworkGetPlatformPartyUnk() end

--- @name NETWORK_GET_PLAYER_LOUDNESS
--- @param player Player 
--- @return number
function NetworkGetPlayerLoudness(player) end

--- @name NETWORK_GET_PLAYER_FROM_GAMER_HANDLE
--- @param networkHandle number 
--- @return Player
function NetworkGetPlayerFromGamerHandle(networkHandle) end

--- @name NETWORK_GET_PLAYER_TUTORIAL_SESSION_INSTANCE
--- @param player Player 
--- @return number
function NetworkGetPlayerTutorialSessionInstance(player) end

--- @name NETWORK_GET_PLAYER_OWNS_WAYPOINT
--- @param player Player 
--- @return boolean
function NetworkGetPlayerOwnsWaypoint(player) end

--- Returns the Player associated to a given Ped when in an online session.  
--- @name NETWORK_GET_PLAYER_INDEX_FROM_PED
--- @param ped Ped 
--- @return Player
function NetworkGetPlayerIndexFromPed(ped) end

--- @name NETWORK_GET_PRESENCE_INVITE_HANDLE
--- @param p0  
--- @param p1  
--- @return boolean
function NetworkGetPresenceInviteHandle(p0, p1) end

--- Returns the Name of the inviter of the specific selected Invite.
--- @name NETWORK_GET_PRESENCE_INVITE_INVITER
--- @param inviteIndex number 
--- @return string
function NetworkGetPresenceInviteInviter(inviteIndex) end

--- @name NETWORK_GET_PRESENCE_INVITE_FROM_ADMIN
--- @param p0  
--- @return boolean
function NetworkGetPresenceInviteFromAdmin(p0) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_GET_POSITION_HASH_OF_THIS_SCRIPT
--- @return 
function NetworkGetPositionHashOfThisScript() end

--- @name NETWORK_GET_PRESENCE_INVITE_CONTENT_ID
--- @param p0  
--- @return string
function NetworkGetPresenceInviteContentId(p0) end

--- @name NETWORK_GET_PRESENCE_INVITE_IS_TOURNAMENT
--- @param p0  
--- @return boolean
function NetworkGetPresenceInviteIsTournament(p0) end

--- @name NETWORK_GET_PRESENCE_INVITE_PLAYLIST_LENGTH
--- @param p0  
--- @return 
function NetworkGetPresenceInvitePlaylistLength(p0) end

--- @name NETWORK_GET_PRESENCE_INVITE_PLAYLIST_CURRENT
--- @param p0  
--- @return 
function NetworkGetPresenceInvitePlaylistCurrent(p0) end

--- @name NETWORK_GET_PRESENCE_INVITE_ID
--- @param p0  
--- @return 
function NetworkGetPresenceInviteId(p0) end

--- @name NETWORK_GET_PRIMARY_CLAN_DATA_NEW
--- @param p0  
--- @param p1  
--- @return boolean
function NetworkGetPrimaryClanDataNew(p0, p1) end

--- @name NETWORK_GET_PRIMARY_CLAN_DATA_CANCEL
--- @return void (Type not found)
function NetworkGetPrimaryClanDataCancel() end

--- The Native returns a hash of the session id as string from the specific invite index!
--- @name NETWORK_GET_PRESENCE_INVITE_SESSION_ID
--- @param inviteIndex number 
--- @return Hash
function NetworkGetPresenceInviteSessionId(inviteIndex) end

--- @name NETWORK_GET_PRIMARY_CLAN_DATA_PENDING
--- @return 
function NetworkGetPrimaryClanDataPending() end

--- @name NETWORK_GET_PRIMARY_CLAN_DATA_SUCCESS
--- @return 
function NetworkGetPrimaryClanDataSuccess() end

--- @name NETWORK_GET_PRIMARY_CLAN_DATA_CLEAR
--- @return 
function NetworkGetPrimaryClanDataClear() end

--- Same as GET_RANDOM_INT_IN_RANGE
--- @name NETWORK_GET_RANDOM_INT_RANGED
--- @param rangeStart number 
--- @param rangeEnd number 
--- @return number
function NetworkGetRandomIntRanged(rangeStart, rangeEnd) end

--- Based on scripts such as in freemode.c how they call their vars vVar and fVar the 2nd and 3rd param it a Vector3 and Float, but the first is based on get_random_int_in_range..  
--- @name NETWORK_GET_RESPAWN_RESULT
--- @param randomInt number 
--- @param coordinates Vector3 
--- @param heading number 
--- @return void (Type not found)
function NetworkGetRespawnResult(randomInt, coordinates, heading) end

--- @name NETWORK_GET_RANDOM_INT
--- @return number
function NetworkGetRandomInt() end

--- @name NETWORK_GET_PRIMARY_CLAN_DATA_START
--- @param p0  
--- @param p1  
--- @return boolean
function NetworkGetPrimaryClanDataStart(p0, p1) end

--- @name _NETWORK_GET_ROS_PRIVILEGE_24
--- @return boolean
function NetworkGetRosPrivilege24() end

--- @name _NETWORK_GET_ROS_PRIVILEGE_25
--- @return boolean
function NetworkGetRosPrivilege25() end

--- @name NETWORK_GET_RESPAWN_RESULT_FLAGS
--- @param p0  
--- @return 
function NetworkGetRespawnResultFlags(p0) end

--- @name NETWORK_GET_TALKER_PROXIMITY
--- @return number
function NetworkGetTalkerProximity() end

--- @name _NETWORK_GET_ROS_PRIVILEGE_9
--- @return boolean
function NetworkGetRosPrivilege9() end

--- @name NETWORK_GET_SCRIPT_STATUS
--- @return number
function NetworkGetScriptStatus() end

--- @name _NETWORK_GET_TARGETING_MODE
--- @return number
function NetworkGetTargetingMode() end

--- @name NETWORK_GET_THIS_SCRIPT_IS_NETWORK_SCRIPT
--- @return boolean
function NetworkGetThisScriptIsNetworkScript() end

--- Returns count.
--- @name NETWORK_GET_TRANSITION_MEMBERS
--- @param data  
--- @param dataCount number 
--- @return number
function NetworkGetTransitionMembers(data, dataCount) end

--- @name NETWORK_GET_TIMEOUT_TIME
--- @return number
function NetworkGetTimeoutTime() end

--- @name NETWORK_GET_TOTAL_NUM_PLAYERS
--- @return number
function NetworkGetTotalNumPlayers() end

--- @name NETWORK_GET_TRANSITION_HOST
--- @param networkHandle number 
--- @return boolean
function NetworkGetTransitionHost(networkHandle) end

--- Actually returns the version (TUNABLE_VERSION)
--- @name NETWORK_GET_TUNABLE_CLOUD_CRC
--- @return number
function NetworkGetTunableCloudCrc() end

--- Returns a NetworkHandle* from the specified member ID and stores it in a given buffer.  
--- * Currently unknown struct  
--- @name NETWORK_HANDLE_FROM_MEMBER_ID
--- @param memberId string 
--- @param networkHandle number 
--- @param bufferSize number 
--- @return void (Type not found)
function NetworkHandleFromMemberId(memberId, networkHandle, bufferSize) end

--- @name NETWORK_HANDLE_FROM_FRIEND
--- @param friendIndex number 
--- @param networkHandle number 
--- @param bufferSize number 
--- @return void (Type not found)
function NetworkHandleFromFriend(friendIndex, networkHandle, bufferSize) end

--- NETWORK_*
--- NativeDB Introduced: v323
--- @name _NETWORK_GET_UNRELIABLE_RESEND_COUNT_FOR_PLAYER
--- @param player Player 
--- @return number
function NetworkGetUnreliableResendCountForPlayer(player) end

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
--- @name NETWORK_HANDLE_FROM_PLAYER
--- @param player Player 
--- @param networkHandle number 
--- @param bufferSize number 
--- @return void (Type not found)
function NetworkHandleFromPlayer(player, networkHandle, bufferSize) end

--- @name _NETWORK_HAS_AGE_RESTRICTED_PROFILE
--- @return boolean
function NetworkHasAgeRestrictedProfile() end

--- Returns a NetworkHandle* from the specified user ID and stores it in a given buffer.  
--- * Currently unknown struct  
--- @name NETWORK_HANDLE_FROM_USER_ID
--- @param userId string 
--- @param networkHandle number 
--- @param bufferSize number 
--- @return void (Type not found)
function NetworkHandleFromUserId(userId, networkHandle, bufferSize) end

--- @name NETWORK_HAS_CONTROL_OF_DOOR
--- @param doorHash Hash 
--- @return boolean
function NetworkHasControlOfDoor(doorHash) end

--- @name NETWORK_HAS_CONTROL_OF_ENTITY
--- @param entity Entity 
--- @return boolean
function NetworkHasControlOfEntity(entity) end

--- @name NETWORK_HAS_ENTITY_BEEN_REGISTERED_WITH_THIS_THREAD
--- @param entity Entity 
--- @return boolean
function NetworkHasEntityBeenRegisteredWithThisThread(entity) end

--- @name NETWORK_HAS_CONTROL_OF_NETWORK_ID
--- @param netId number 
--- @return boolean
function NetworkHasControlOfNetworkId(netId) end

--- @name NETWORK_HAS_CACHED_PLAYER_HEAD_BLEND_DATA
--- @param player Player 
--- @return boolean
function NetworkHasCachedPlayerHeadBlendData(player) end

--- @name NETWORK_HAS_FOLLOW_INVITE
--- @return boolean
function NetworkHasFollowInvite() end

--- @name NETWORK_HAS_CONTROL_OF_PICKUP
--- @param pickup Pickup 
--- @return boolean
function NetworkHasControlOfPickup(pickup) end

--- Returns true if dinput8.dll is present in the game directory.
--- You will get following error message if that is true: "You are attempting to access GTA Online servers with an altered version of the game."
--- @name _NETWORK_HAS_GAME_BEEN_ALTERED
--- @return boolean
function NetworkHasGameBeenAltered() end

--- @name NETWORK_HAS_HEADSET
--- @return boolean
function NetworkHasHeadset() end

--- @name NETWORK_HAS_INVITE_BEEN_ACKED
--- @param networkHandle number 
--- @return boolean
function NetworkHasInviteBeenAcked(networkHandle) end

--- @name NETWORK_HAS_INVITED_GAMER
--- @param p0  
--- @return boolean
function NetworkHasInvitedGamer(p0) end

--- @name NETWORK_HAS_INVITED_GAMER_TO_TRANSITION
--- @param p0  
--- @return boolean
function NetworkHasInvitedGamerToTransition(p0) end

--- @name NETWORK_HAS_PLAYER_STARTED_TRANSITION
--- @param player Player 
--- @return boolean
function NetworkHasPlayerStartedTransition(player) end

--- @name NETWORK_HAS_PENDING_INVITE
--- @return boolean
function NetworkHasPendingInvite() end

--- index is always 18 in scripts
--- @name NETWORK_HAS_ROS_PRIVILEGE
--- @param index number 
--- @return boolean
function NetworkHasRosPrivilege(index) end

--- @name NETWORK_HAS_ROS_PRIVILEGE_END_DATE
--- @param privilege number 
--- @param banType number 
--- @param timeData Vector3 
--- @return boolean
function NetworkHasRosPrivilegeEndDate(privilege, banType, timeData) end

--- @name NETWORK_HAS_SOCIAL_CLUB_ACCOUNT
--- @return boolean
function NetworkHasSocialClubAccount() end

--- @name NETWORK_HAS_RECEIVED_HOST_BROADCAST_DATA
--- @return boolean
function NetworkHasReceivedHostBroadcastData() end

--- @name NETWORK_HAS_SOCIAL_NETWORKING_SHARING_PRIV
--- @return boolean
function NetworkHasSocialNetworkingSharingPriv() end

--- Returns whether the signed-in user has valid Rockstar Online Services (ROS) credentials.
--- @name NETWORK_HAS_VALID_ROS_CREDENTIALS
--- @return boolean
function NetworkHasValidRosCredentials() end

--- @name _NETWORK_HAS_VIEW_GAMER_USER_CONTENT_RESULT
--- @param networkHandle  
--- @return boolean
function NetworkHasViewGamerUserContentResult(networkHandle) end

--- @name NETWORK_HAS_TRANSITION_INVITE_BEEN_ACKED
--- @param networkHandle number 
--- @return boolean
function NetworkHasTransitionInviteBeenAcked(networkHandle) end

--- @name NETWORK_HASH_FROM_GAMER_HANDLE
--- @param networkHandle number 
--- @return Hash
function NetworkHashFromGamerHandle(networkHandle) end

--- @name NETWORK_HAVE_COMMUNICATION_PRIVILEGES
--- @param p0 number 
--- @param player Player 
--- @return boolean
function NetworkHaveCommunicationPrivileges(p0, player) end

--- @name NETWORK_HASH_FROM_PLAYER_HANDLE
--- @param player Player 
--- @return Hash
function NetworkHashFromPlayerHandle(player) end

--- @name _NETWORK_HAVE_ONLINE_PRIVILEGE_2
--- @return boolean
function NetworkHaveOnlinePrivilege2() end

--- @name NETWORK_HAVE_ROS_BANNED_PRIV
--- @return boolean
function NetworkHaveRosBannedPriv() end

--- @name NETWORK_HAVE_ONLINE_PRIVILEGES
--- @return boolean
function NetworkHaveOnlinePrivileges() end

--- @name NETWORK_HAVE_ROS_LEADERBOARD_WRITE_PRIV
--- @return boolean
function NetworkHaveRosLeaderboardWritePriv() end

--- @name NETWORK_HAVE_USER_CONTENT_PRIVILEGES
--- @param p0 number 
--- @return boolean
function NetworkHaveUserContentPrivileges(p0) end

--- @name NETWORK_HAVE_ROS_MULTIPLAYER_PRIV
--- @return boolean
function NetworkHaveRosMultiplayerPriv() end

--- @name NETWORK_HAVE_ROS_SOCIAL_CLUB_PRIV
--- @return boolean
function NetworkHaveRosSocialClubPriv() end

--- @name NETWORK_HAVE_ROS_CREATE_TICKET_PRIV
--- @return boolean
function NetworkHaveRosCreateTicketPriv() end

--- @name NETWORK_INVITE_GAMERS_TO_TRANSITION
--- @param p0  
--- @param p1  
--- @return boolean
function NetworkInviteGamersToTransition(p0, p1) end

--- From what I can tell it looks like it does the following:
--- Creates/hosts a new transition to another online session, using this in FiveM will result in other players being disconencted from the server/preventing them from joining. This is most likely because I entered the wrong session parameters since they're pretty much all unknown right now.
--- You also need to use `NetworkJoinTransition(Player player)` and `NetworkLaunchTransition()`.
--- @name NETWORK_HOST_TRANSITION
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

--- @name NETWORK_IS_ACTIVITY_SPECTATOR
--- @return boolean
function NetworkIsActivitySpectator() end

--- @name NETWORK_INVITE_GAMERS
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkInviteGamers(p0, p1, p2, p3) end

--- @name NETWORK_IS_CABLE_CONNECTED
--- @return boolean
function NetworkIsCableConnected() end

--- @name NETWORK_IS_ACTIVITY_SESSION
--- @return boolean
function NetworkIsActivitySession() end

--- @name NETWORK_IS_ACTIVITY_SPECTATOR_FROM_HANDLE
--- @param networkHandle number 
--- @return boolean
function NetworkIsActivitySpectatorFromHandle(networkHandle) end

--- This would be nice to see if someone is in party chat, but 2 sad notes.  
--- 1) It only becomes true if said person is speaking in that party at the time.  
--- 2) It will never, become true unless you are in that party with said person.  
--- @name NETWORK_IS_CHATTING_IN_PLATFORM_PARTY
--- @param networkHandle number 
--- @return boolean
function NetworkIsChattingInPlatformParty(networkHandle) end

--- @name NETWORK_IS_CLOUD_AVAILABLE
--- @return boolean
function NetworkIsCloudAvailable() end

--- @name NETWORK_IS_ADDING_FRIEND
--- @return 
function NetworkIsAddingFriend() end

--- @name NETWORK_IS_CLOCK_TIME_OVERRIDDEN
--- @return boolean
function NetworkIsClockTimeOverridden() end

--- NETWORK_IS_*
--- NativeDB Introduced: v323
--- @name _NETWORK_IS_CONNECTION_ENDPOINT_RELAY_SERVER
--- @param player Player 
--- @return boolean
function NetworkIsConnectionEndpointRelayServer(player) end

--- Note: This only works for vehicles, which appears to be a bug (since the setter *does* work for every entity type and the name is 99% correct).
--- @name _NETWORK_IS_ENTITY_CONCEALED
--- @param entity Entity 
--- @return boolean
function NetworkIsEntityConcealed(entity) end

--- @name NETWORK_IS_CLOUD_BACKGROUND_SCRIPT_REQUEST_PENDING
--- @return boolean
function NetworkIsCloudBackgroundScriptRequestPending() end

--- @name NETWORK_IS_DOOR_NETWORKED
--- @param doorHash Hash 
--- @return boolean
function NetworkIsDoorNetworked(doorHash) end

--- @name NETWORK_IS_ENTITY_FADING
--- @param entity Entity 
--- @return boolean
function NetworkIsEntityFading(entity) end

--- @name NETWORK_IS_FRIEND
--- @param networkHandle number 
--- @return boolean
function NetworkIsFriend(networkHandle) end

--- @name _NETWORK_IS_FRIEND_HANDLE_ONLINE
--- @param networkHandle number 
--- @return boolean
function NetworkIsFriendHandleOnline(networkHandle) end

--- @name NETWORK_IS_FINDING_GAMERS
--- @return boolean
function NetworkIsFindingGamers() end

--- @name NETWORK_IS_FRIEND_IN_MULTIPLAYER
--- @param friendName string 
--- @return boolean
function NetworkIsFriendInMultiplayer(friendName) end

--- In scripts R* calls 'NETWORK_GET_FRIEND_NAME' in this param.  
--- @name NETWORK_IS_FRIEND_IN_SAME_TITLE
--- @param friendName string 
--- @return boolean
function NetworkIsFriendInSameTitle(friendName) end

--- @name NETWORK_IS_GAME_IN_PROGRESS
--- @return boolean
function NetworkIsGameInProgress() end

--- @name NETWORK_IS_FRIEND_INDEX_ONLINE
--- @param friendIndex number 
--- @return boolean
function NetworkIsFriendIndexOnline(friendIndex) end

--- @name NETWORK_IS_FRIEND_ONLINE
--- @param name string 
--- @return boolean
function NetworkIsFriendOnline(name) end

--- @name NETWORK_IS_GAMER_TALKING
--- @param networkHandle number 
--- @return boolean
function NetworkIsGamerTalking(networkHandle) end

--- @name NETWORK_IS_HANDLE_VALID
--- @param networkHandle number 
--- @param bufferSize number 
--- @return boolean
function NetworkIsHandleValid(networkHandle, bufferSize) end

--- @name NETWORK_IS_GAMER_BLOCKED_BY_ME
--- @param networkHandle  
--- @return boolean
function NetworkIsGamerBlockedByMe(networkHandle) end

--- @name NETWORK_IS_GAMER_MUTED_BY_ME
--- @param networkHandle number 
--- @return boolean
function NetworkIsGamerMutedByMe(networkHandle) end

--- @name NETWORK_IS_GAMER_IN_MY_SESSION
--- @param networkHandle number 
--- @return boolean
function NetworkIsGamerInMySession(networkHandle) end

--- @name NETWORK_IS_IN_MP_CUTSCENE
--- @return boolean
function NetworkIsInMpCutscene() end

--- If you are host, returns true else returns false.
--- @name NETWORK_IS_HOST
--- @return boolean
function NetworkIsHost() end

--- Hardcoded to return false.
--- @name NETWORK_IS_IN_PLATFORM_PARTY
--- @return boolean
function NetworkIsInPlatformParty() end

--- Note according to IDA TU27 X360(Console),  
--- This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
--- Side note: This location just stops where it's at once jumped to.  
--- Screenshot for side note,   
--- h t t p ://i.imgur.com/m2ci1mF.png  
--- h t t p://i.imgur.com/Z0Wx2B6.png  
--- @name NETWORK_IS_IN_PARTY
--- @return boolean
function NetworkIsInParty() end

--- @name NETWORK_IS_HOST_OF_THIS_SCRIPT
--- @return boolean
function NetworkIsHostOfThisScript() end

--- @name NETWORK_IS_GETTING_GAMER_STATUS
--- @return boolean
function NetworkIsGettingGamerStatus() end

--- Hardcoded to return false.
--- @name NETWORK_IS_IN_PLATFORM_PARTY_CHAT
--- @return boolean
function NetworkIsInPlatformPartyChat() end

--- @name NETWORK_IS_IN_TUTORIAL_SESSION
--- @return boolean
function NetworkIsInTutorialSession() end

--- @name NETWORK_IS_LOCAL_TALKING
--- @return boolean
function NetworkIsLocalTalking() end

--- @name NETWORK_IS_IN_SPECTATOR_MODE
--- @return boolean
function NetworkIsInSpectatorMode() end

--- Checks if the networkHandle is the same as any other user that is signed in on the local machine.
--- For example, if your console has two or more users signed in (on different controllers), the profile that is not controlling the game would be "inactive".
--- @name NETWORK_IS_INACTIVE_PROFILE
--- @param networkHandle number 
--- @return boolean
function NetworkIsInactiveProfile(networkHandle) end

--- @name NETWORK_IS_IN_SESSION
--- @return boolean
function NetworkIsInSession() end

--- @name NETWORK_IS_IN_TRANSITION
--- @return boolean
function NetworkIsInTransition() end

--- @name NETWORK_IS_MULTIPLAYER_DISABLED
--- @return boolean
function NetworkIsMultiplayerDisabled() end

--- Returns true if the specified network id is controlled by someone else.
--- @name _NETWORK_IS_NETWORK_ID_A_CLONE
--- @param netId number The network id for an object or entity.
--- @return boolean
function NetworkIsNetworkIdAClone(netId) end

--- @name NETWORK_IS_LOCAL_PLAYER_INVINCIBLE
--- @return boolean
function NetworkIsLocalPlayerInvincible() end

--- @name NETWORK_IS_PARTICIPANT_ACTIVE
--- @param p0 number 
--- @return boolean
function NetworkIsParticipantActive(p0) end

--- This function is hard-coded to always return 0.
--- @name NETWORK_IS_PENDING_FRIEND
--- @param p0  
--- @return 
function NetworkIsPendingFriend(p0) end

--- Note according to IDA TU27 X360(Console),  
--- This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
--- Side note: This location just stops where it's at once jumped to.  
--- Screenshot for side note,   
--- h t t p ://i.imgur.com/m2ci1mF.png  
--- h t t p://i.imgur.com/Z0Wx2B6.png  
--- @name NETWORK_IS_PARTY_MEMBER
--- @param networkHandle number 
--- @return boolean
function NetworkIsPartyMember(networkHandle) end

--- @name NETWORK_IS_OFFLINE_INVITE_PENDING
--- @return boolean
function NetworkIsOfflineInvitePending() end

--- @name NETWORK_IS_PLAYER_A_PARTICIPANT_ON_SCRIPT
--- @param player1 Player 
--- @param script string 
--- @param player2 Player 
--- @return boolean
function NetworkIsPlayerAParticipantOnScript(player1, script, player2) end

--- @name NETWORK_IS_PLAYER_A_PARTICIPANT
--- @param player Player 
--- @return boolean
function NetworkIsPlayerAParticipant(player) end

--- @name NETWORK_IS_PLAYER_BLOCKED_BY_ME
--- @param player Player 
--- @return boolean
function NetworkIsPlayerBlockedByMe(player) end

--- @name NETWORK_IS_PLAYER_CONCEALED
--- @param player Player 
--- @return boolean
function NetworkIsPlayerConcealed(player) end

--- @name NETWORK_IS_PLAYER_ACTIVE
--- @param player Player 
--- @return boolean
function NetworkIsPlayerActive(player) end

--- @name NETWORK_IS_PLAYER_CONNECTED
--- @param player Player 
--- @return boolean
function NetworkIsPlayerConnected(player) end

--- NETWORK_ARE_*  
--- @name _NETWORK_IS_PLAYER_EQUAL_TO_INDEX
--- @param player Player 
--- @param index number 
--- @return boolean
function NetworkIsPlayerEqualToIndex(player, index) end

--- returns true if someone is screaming or talking in a microphone  
--- @name NETWORK_IS_PLAYER_TALKING
--- @param player Player 
--- @return boolean
function NetworkIsPlayerTalking(player) end

--- @name NETWORK_IS_PLAYER_IN_MP_CUTSCENE
--- @param player Player 
--- @return boolean
function NetworkIsPlayerInMpCutscene(player) end

--- @name NETWORK_IS_PLAYER_FADING
--- @param player Player 
--- @return boolean
function NetworkIsPlayerFading(player) end

--- @name _NETWORK_IS_PSN_AVAILABLE
--- @return boolean
function NetworkIsPsnAvailable() end

--- @name NETWORK_IS_PLAYER_MUTED_BY_ME
--- @param player Player 
--- @return boolean
function NetworkIsPlayerMutedByMe(player) end

--- @name NETWORK_IS_SCRIPT_ACTIVE
--- @param scriptName string 
--- @param player Player 
--- @param p2 boolean 
--- @param p3  
--- @return boolean
function NetworkIsScriptActive(scriptName, player, p2, p3) end

--- NativeDB Introduced: v2245
--- @name _NETWORK_IS_SCRIPT_ACTIVE_BY_HASH
--- @param scriptHash Hash 
--- @param p1 number 
--- @param p2 boolean 
--- @param p3 number 
--- @return boolean
function NetworkIsScriptActiveByHash(scriptHash, p1, p2, p3) end

--- Same as _IS_TEXT_CHAT_ACTIVE, except it does not check if the text chat HUD component is initialized, and therefore may crash.  
--- @name _NETWORK_IS_TEXT_CHAT_ACTIVE
--- @return boolean
function NetworkIsTextChatActive() end

--- @name NETWORK_IS_SESSION_BUSY
--- @return boolean
function NetworkIsSessionBusy() end

--- Returns whether the player is signed into Social Club.  
--- @name NETWORK_IS_SIGNED_IN
--- @return boolean
function NetworkIsSignedIn() end

--- @name NETWORK_IS_SESSION_ACTIVE
--- @return boolean
function NetworkIsSessionActive() end

--- This checks if player is playing on gta online or not.  
--- Please add an if and block your mod if this is "true".  
--- @name NETWORK_IS_SESSION_STARTED
--- @return boolean
function NetworkIsSessionStarted() end

--- @name _NETWORK_IS_THIS_SCRIPT_MARKED
--- @param p0  
--- @param p1 boolean 
--- @param p2  
--- @return boolean
function NetworkIsThisScriptMarked(p0, p1, p2) end

--- @name NETWORK_IS_TRANSITION_BUSY
--- @return boolean
function NetworkIsTransitionBusy() end

--- @name NETWORK_IS_TRANSITION_CLOSED_CREW
--- @return boolean
function NetworkIsTransitionClosedCrew() end

--- Returns whether the game is not in offline mode.  
--- seemed not to work for some ppl  
--- @name NETWORK_IS_SIGNED_ONLINE
--- @return boolean
function NetworkIsSignedOnline() end

--- @name NETWORK_IS_TRANSITION_CLOSED_FRIENDS
--- @return boolean
function NetworkIsTransitionClosedFriends() end

--- @name NETWORK_IS_TRANSITION_HOST
--- @return boolean
function NetworkIsTransitionHost() end

--- @name NETWORK_IS_TRANSITION_MATCHMAKING
--- @return boolean
function NetworkIsTransitionMatchmaking() end

--- @name NETWORK_IS_TRANSITION_SOLO
--- @return boolean
function NetworkIsTransitionSolo() end

--- @name NETWORK_IS_TRANSITION_OPEN_TO_MATCHMAKING
--- @return boolean
function NetworkIsTransitionOpenToMatchmaking() end

--- @name NETWORK_IS_TRANSITION_HOST_FROM_HANDLE
--- @param networkHandle number 
--- @return boolean
function NetworkIsTransitionHostFromHandle(networkHandle) end

--- @name NETWORK_IS_TRANSITION_PRIVATE
--- @return boolean
function NetworkIsTransitionPrivate() end

--- @name NETWORK_IS_TRANSITION_TO_GAME
--- @return boolean
function NetworkIsTransitionToGame() end

--- @name NETWORK_IS_TRANSITION_VISIBILITY_LOCKED
--- @return boolean
function NetworkIsTransitionVisibilityLocked() end

--- @name NETWORK_IS_TUTORIAL_SESSION_CHANGE_PENDING
--- @return boolean
function NetworkIsTutorialSessionChangePending() end

--- @name NETWORK_IS_TRANSITION_STARTED
--- @return boolean
function NetworkIsTransitionStarted() end

--- @name NETWORK_IS_TUNABLE_CLOUD_REQUEST_PENDING
--- @return boolean
function NetworkIsTunableCloudRequestPending() end

--- @name NETWORK_JOIN_GROUP_ACTIVITY
--- @return 
function NetworkJoinGroupActivity() end

--- @name NETWORK_JOIN_PREVIOUSLY_FAILED_SESSION
--- @return boolean
function NetworkJoinPreviouslyFailedSession() end

--- @name NETWORK_JOIN_PREVIOUSLY_FAILED_TRANSITION
--- @return boolean
function NetworkJoinPreviouslyFailedTransition() end

--- @name NETWORK_LEAVE_TRANSITION
--- @return boolean
function NetworkLeaveTransition() end

--- @name NETWORK_LAUNCH_TRANSITION
--- @return boolean
function NetworkLaunchTransition() end

--- int handle[76];  
--- NETWORK_HANDLE_FROM_FRIEND(iSelectedPlayer, &handle[0], 13);  
--- Player uVar2 = NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(&handle[0]);  
--- NETWORK_JOIN_TRANSITION(uVar2);  
--- 		nothing doin.  
--- @name NETWORK_JOIN_TRANSITION
--- @param player Player 
--- @return boolean
function NetworkJoinTransition(player) end

--- @name NETWORK_OPEN_TRANSITION_MATCHMAKING
--- @return void (Type not found)
function NetworkOpenTransitionMatchmaking() end

--- @name NETWORK_MARK_TRANSITION_GAMER_AS_FULLY_JOINED
--- @param p0  
--- @return boolean
function NetworkMarkTransitionGamerAsFullyJoined(p0) end

--- @name NETWORK_MEMBER_ID_FROM_GAMER_HANDLE
--- @param networkHandle number 
--- @return string
function NetworkMemberIdFromGamerHandle(networkHandle) end

--- @name NETWORK_OVERRIDE_COORDS_AND_HEADING
--- @param entity Entity 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param heading number 
--- @return void (Type not found)
function NetworkOverrideCoordsAndHeading(entity, x, y, z, heading) end

--- Could possibly bypass being muted or automatically muted  
--- @name NETWORK_OVERRIDE_CHAT_RESTRICTIONS
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideChatRestrictions(player, toggle) end

--- Works in Singleplayer too.
--- Passing wrong data (e.g. hours above 23) will cause the game to crash.
--- @name NETWORK_OVERRIDE_CLOCK_TIME
--- @param hours number 
--- @param minutes number 
--- @param seconds number 
--- @return void (Type not found)
function NetworkOverrideClockTime(hours, minutes, seconds) end

--- p0 is always false in scripts.
--- @name NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS_ALL
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideReceiveRestrictionsAll(toggle) end

--- NativeDB Introduced: v2189
--- @name _NETWORK_OVERRIDE_CLOCK_MILLISECONDS_PER_GAME_MINUTE
--- @param ms number 
--- @return void (Type not found)
function NetworkOverrideClockMillisecondsPerGameMinute(ms) end

--- This is used alongside the native,
--- 'NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS'. Read its description for more info.
--- @name NETWORK_OVERRIDE_SEND_RESTRICTIONS
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideSendRestrictions(player, toggle) end

--- R* uses this to hear all player when spectating.   
--- It allows you to hear other online players when their chat is on none, crew and or friends  
--- @name NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideReceiveRestrictions(player, toggle) end

--- @name NETWORK_OVERRIDE_TEAM_RESTRICTIONS
--- @param team number 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideTeamRestrictions(team, toggle) end

--- @name NETWORK_OVERRIDE_SEND_RESTRICTIONS_ALL
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkOverrideSendRestrictionsAll(toggle) end

--- @name NETWORK_PLAYER_GET_CHEATER_REASON
--- @return number
function NetworkPlayerGetCheaterReason() end

--- @name NETWORK_OVERRIDE_TRANSITION_CHAT
--- @param p0 boolean 
--- @return void (Type not found)
function NetworkOverrideTransitionChat(p0) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_PED_FORCE_GAME_STATE_UPDATE
--- @param ped Ped 
--- @return void (Type not found)
function NetworkPedForceGameStateUpdate(ped) end

--- Takes a 24 char buffer. Returns the buffer or "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
--- @name NETWORK_PLAYER_GET_USERID
--- @param player Player 
--- @param userID number 
--- @return string
function NetworkPlayerGetUserid(player, userID) end

--- @name NETWORK_PLAYER_HAS_HEADSET
--- @param player Player 
--- @return boolean
function NetworkPlayerHasHeadset(player) end

--- Returns the name of a given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
--- @name NETWORK_PLAYER_GET_NAME
--- @param player Player 
--- @return string
function NetworkPlayerGetName(player) end

--- @name NETWORK_PLAYER_IS_CHEATER
--- @return boolean
function NetworkPlayerIsCheater() end

--- @name NETWORK_PLAYER_IS_BADSPORT
--- @return boolean
function NetworkPlayerIsBadsport() end

--- @name NETWORK_PLAYER_INDEX_IS_CHEATER
--- @param player Player 
--- @return boolean
function NetworkPlayerIndexIsCheater(player) end

--- Checks if a specific value (BYTE) in CPlayerInfo is nonzero.  
--- Returns always false in Singleplayer.  
--- No longer used for dev checks since first mods were released on PS3 & 360.  
--- R* now checks with the is_dlc_present native for the dlc hash 2532323046,  
--- if that is present it will unlock dev stuff.  
--- @name NETWORK_PLAYER_IS_ROCKSTAR_DEV
--- @param player Player 
--- @return boolean
function NetworkPlayerIsRockstarDev(player) end

--- @name NETWORK_REGISTER_HOST_BROADCAST_VARIABLES
--- @param vars number 
--- @param numVars number 
--- @return void (Type not found)
function NetworkRegisterHostBroadcastVariables(vars, numVars) end

--- @name NETWORK_QUEUE_GAMER_FOR_STATUS
--- @param p0  
--- @return boolean
function NetworkQueueGamerForStatus(p0) end

--- @name _NETWORK_REGISTER_TUNABLE_BOOL_HASH
--- @param contextHash Hash 
--- @param nameHash Hash 
--- @param value boolean 
--- @return boolean
function NetworkRegisterTunableBoolHash(contextHash, nameHash, value) end

--- @name NETWORK_REGISTER_ENTITY_AS_NETWORKED
--- @param entity Entity 
--- @return void (Type not found)
function NetworkRegisterEntityAsNetworked(entity) end

--- @name _NETWORK_REGISTER_TUNABLE_FLOAT_HASH
--- @param contextHash Hash 
--- @param nameHash Hash 
--- @param value number 
--- @return boolean
function NetworkRegisterTunableFloatHash(contextHash, nameHash, value) end

--- @name NETWORK_REMOVE_ALL_TRANSITION_INVITE
--- @return void (Type not found)
function NetworkRemoveAllTransitionInvite() end

--- @name NETWORK_REGISTER_PLAYER_BROADCAST_VARIABLES
--- @param vars number 
--- @param numVars number 
--- @return void (Type not found)
function NetworkRegisterPlayerBroadcastVariables(vars, numVars) end

--- @name _NETWORK_REGISTER_TUNABLE_INT_HASH
--- @param contextHash Hash 
--- @param nameHash Hash 
--- @param value number 
--- @return boolean
function NetworkRegisterTunableIntHash(contextHash, nameHash, value) end

--- @name NETWORK_REMOVE_ENTITY_AREA
--- @param p0  
--- @return boolean
function NetworkRemoveEntityArea(p0) end

--- @name NETWORK_QUERY_RESPAWN_RESULTS
--- @param p0  
--- @return 
function NetworkQueryRespawnResults(p0) end

--- @name _NETWORK_REPORT_MYSELF
--- @return void (Type not found)
function NetworkReportMyself() end

--- @name NETWORK_REQUEST_CLOUD_TUNABLES
--- @return void (Type not found)
function NetworkRequestCloudTunables() end

--- @name NETWORK_REQUEST_CLOUD_BACKGROUND_SCRIPTS
--- @return boolean
function NetworkRequestCloudBackgroundScripts() end

--- @name NETWORK_REMOVE_PRESENCE_INVITE
--- @param p0  
--- @return boolean
function NetworkRemovePresenceInvite(p0) end

--- @name NETWORK_REMOVE_TRANSITION_INVITE
--- @param p0  
--- @return void (Type not found)
function NetworkRemoveTransitionInvite(p0) end

--- @name NETWORK_REQUEST_CONTROL_OF_ENTITY
--- @param entity Entity 
--- @return boolean
function NetworkRequestControlOfEntity(entity) end

--- @name NETWORK_REQUEST_CONTROL_OF_NETWORK_ID
--- @param netId number 
--- @return boolean
function NetworkRequestControlOfNetworkId(netId) end

--- @name NETWORK_RESET_BODY_TRACKER
--- @return void (Type not found)
function NetworkResetBodyTracker() end

--- @name NETWORK_REQUEST_CONTROL_OF_DOOR
--- @param doorID number 
--- @return boolean
function NetworkRequestControlOfDoor(doorID) end

--- NativeDB Added Parameter 7: Any p6
--- @name NETWORK_RESURRECT_LOCAL_PLAYER
--- @param x number 
--- @param y number 
--- @param z number 
--- @param heading number 
--- @param unk boolean 
--- @param changetime boolean 
--- @return void (Type not found)
function NetworkResurrectLocalPlayer(x, y, z, heading, unk, changetime) end

--- @name NETWORK_SEED_RANDOM_NUMBER_GENERATOR
--- @param seed number 
--- @return void (Type not found)
function NetworkSeedRandomNumberGenerator(seed) end

--- p4 and p5 are always 0 in scripts  
--- @name _NETWORK_RESPAWN_COORDS
--- @param player Player 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return void (Type not found)
function NetworkRespawnCoords(player, x, y, z, p4, p5) end

--- String "NETWORK_SEND_PRESENCE_TRANSITION_INVITE" is contained in the function in ida so this one is correct.  
--- @name _NETWORK_SEND_PRESENCE_TRANSITION_INVITE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkSendPresenceTransitionInvite(p0, p1, p2, p3) end

--- @name NETWORK_SEND_INVITE_VIA_PRESENCE
--- @param networkHandle number 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkSendInviteViaPresence(networkHandle, p1, p2, p3) end

--- Message is limited to 64 characters.
--- @name NETWORK_SEND_TEXT_MESSAGE
--- @param message string 
--- @param networkHandle number 
--- @return boolean
function NetworkSendTextMessage(message, networkHandle) end

--- @name NETWORK_SESSION_ADD_ACTIVE_MATCHMAKING_GROUP
--- @param groupId number An identifier value between zero and four
--- @return void (Type not found)
function NetworkSessionAddActiveMatchmakingGroup(groupId) end

--- @name NETWORK_SESSION_ACTIVITY_QUICKMATCH
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkSessionActivityQuickmatch(p0, p1, p2, p3) end

--- the first arg seems to be the network player handle (&handle) and the second var is pretty much always "" and the third seems to be a number between 0 and ~10 and the 4th is is something like 0 to 5 and I guess the 5th is a bool cuz it is always 0 or 1  
--- does this send an invite to a player?  
--- @name NETWORK_SEND_TRANSITION_GAMER_INSTRUCTION
--- @param networkHandle number 
--- @param p1 string 
--- @param p2 number 
--- @param p3 number 
--- @param p4 boolean 
--- @return boolean
function NetworkSendTransitionGamerInstruction(networkHandle, p1, p2, p3, p4) end

--- @name NETWORK_SESSION_CHANGE_SLOTS
--- @param p0 number 
--- @param p1 boolean 
--- @return void (Type not found)
function NetworkSessionChangeSlots(p0, p1) end

--- @name NETWORK_SESSION_BLOCK_JOIN_REQUESTS
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSessionBlockJoinRequests(toggle) end

--- @name NETWORK_SESSION_CREW_MATCHMAKING
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
--- @name NETWORK_SESSION_END
--- @param p0 boolean 
--- @param p1 boolean 
--- @return boolean
function NetworkSessionEnd(p0, p1) end

--- @name NETWORK_SESSION_FORCE_CANCEL_INVITE
--- @return void (Type not found)
function NetworkSessionForceCancelInvite() end

--- @name NETWORK_SESSION_FRIEND_MATCHMAKING
--- @param p0 number 
--- @param p1 number 
--- @param maxPlayers number 
--- @param p3 boolean 
--- @return boolean
function NetworkSessionFriendMatchmaking(p0, p1, maxPlayers, p3) end

--- unknown params  
--- p0 = 0, 2, or 999 (The global is 999 by default.)  
--- p1 = 0 (Always in every script it's found in atleast.)  
--- p2 = 0, 3, or 4 (Based on a var that is determined by a function.)  
--- p3 = maxPlayers (It's obvious in x360 scripts it's always 18)  
--- p4 = 0 (Always in every script it's found in atleast.)  
--- p5 = 0 or 1. (1 if network_can_enter_multiplayer, but set to 0 if other checks after that are passed.)  
--- p5 is reset to 0 if,  
--- Global_1315318 = 0 or Global_1315323 = 9 or 12 or (Global_1312629 = 0 && Global_1312631 = true/1) those are passed.  
--- @name NETWORK_SESSION_ENTER
--- @param p0  
--- @param p1  
--- @param p2  
--- @param maxPlayers number 
--- @param p4  
--- @param p5  
--- @return 
function NetworkSessionEnter(p0, p1, p2, maxPlayers, p4, p5) end

--- @name NETWORK_SESSION_GET_KICK_VOTE
--- @param player Player 
--- @return boolean
function NetworkSessionGetKickVote(player) end

--- @name NETWORK_SESSION_GET_INVITER
--- @param networkHandle number 
--- @return void (Type not found)
function NetworkSessionGetInviter(networkHandle) end

--- @name NETWORK_SESSION_HOST_CLOSED
--- @param p0 number 
--- @param maxPlayers number 
--- @return boolean
function NetworkSessionHostClosed(p0, maxPlayers) end

--- @name NETWORK_SESSION_GET_MATCHMAKING_GROUP_FREE
--- @param p0 number 
--- @return number
function NetworkSessionGetMatchmakingGroupFree(p0) end

--- @name NETWORK_SESSION_GET_PRIVATE_SLOTS
--- @return number
function NetworkSessionGetPrivateSlots() end

--- Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
--- @name NETWORK_SESSION_HOST_FRIENDS_ONLY
--- @param p0 number 
--- @param maxPlayers number 
--- @return boolean
function NetworkSessionHostFriendsOnly(p0, maxPlayers) end

--- @name NETWORK_SESSION_CANCEL_INVITE
--- @return void (Type not found)
function NetworkSessionCancelInvite() end

--- Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
--- @name NETWORK_SESSION_HOST
--- @param p0 number 
--- @param maxPlayers number 
--- @param p2 boolean 
--- @return boolean
function NetworkSessionHost(p0, maxPlayers, p2) end

--- @name NETWORK_SESSION_IS_CLOSED_FRIENDS
--- @return boolean
function NetworkSessionIsClosedFriends() end

--- Loads up the map that is loaded when beeing in mission creator  
--- Player gets placed in a mix between online/offline mode  
--- p0 is always 2 in R* scripts.  
--- Appears to be patched in gtav b757 (game gets terminated) alonside with most other network natives to prevent online modding ~ghost30812  
--- @name NETWORK_SESSION_HOST_SINGLE_PLAYER
--- @param p0 number 
--- @return void (Type not found)
function NetworkSessionHostSinglePlayer(p0) end

--- @name NETWORK_SESSION_IS_VISIBLE
--- @return boolean
function NetworkSessionIsVisible() end

--- @name NETWORK_SESSION_IS_IN_VOICE_SESSION
--- @return boolean
function NetworkSessionIsInVoiceSession() end

--- @name NETWORK_SESSION_IS_PRIVATE
--- @return boolean
function NetworkSessionIsPrivate() end

--- @name NETWORK_SESSION_IS_CLOSED_CREW
--- @return boolean
function NetworkSessionIsClosedCrew() end

--- @name NETWORK_SESSION_IS_VOICE_SESSION_BUSY
--- @return boolean
function NetworkSessionIsVoiceSessionBusy() end

--- @name NETWORK_SESSION_LEAVE_SINGLE_PLAYER
--- @return void (Type not found)
function NetworkSessionLeaveSinglePlayer() end

--- @name NETWORK_SESSION_IS_SOLO
--- @return boolean
function NetworkSessionIsSolo() end

--- @name NETWORK_SESSION_JOIN_INVITE
--- @return void (Type not found)
function NetworkSessionJoinInvite() end

--- playerTypes:
--- 0 = regular joiner
--- 4 = spectator
--- 8 = unknown
--- @name NETWORK_SESSION_SET_MATCHMAKING_GROUP_MAX
--- @param playerType number 
--- @param playerCount number 
--- @return void (Type not found)
function NetworkSessionSetMatchmakingGroupMax(playerType, playerCount) end

--- Only works as host.
--- @name NETWORK_SESSION_KICK_PLAYER
--- @param player Player 
--- @return void (Type not found)
function NetworkSessionKickPlayer(player) end

--- @name NETWORK_SESSION_SET_MATCHMAKING_GROUP
--- @param matchmakingGroup number 
--- @return void (Type not found)
function NetworkSessionSetMatchmakingGroup(matchmakingGroup) end

--- @name NETWORK_SESSION_SET_MATCHMAKING_MENTAL_STATE
--- @param p0  
--- @return void (Type not found)
function NetworkSessionSetMatchmakingMentalState(p0) end

--- @name NETWORK_SESSION_MARK_VISIBLE
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSessionMarkVisible(toggle) end

--- @name NETWORK_SESSION_SET_MATCHMAKING_PROPERTY_ID
--- @param p0 boolean 
--- @return void (Type not found)
function NetworkSessionSetMatchmakingPropertyId(p0) end

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
--- @name NETWORK_SESSION_VOICE_CONNECT_TO_PLAYER
--- @param globalPtr  
--- @return void (Type not found)
function NetworkSessionVoiceConnectToPlayer(globalPtr) end

--- @name NETWORK_SESSION_VOICE_HOST
--- @return void (Type not found)
function NetworkSessionVoiceHost() end

--- @name NETWORK_SESSION_VOICE_SET_TIMEOUT
--- @param timeout number 
--- @return void (Type not found)
function NetworkSessionVoiceSetTimeout(timeout) end

--- @name NETWORK_SESSION_VOICE_RESPOND_TO_REQUEST
--- @param p0 boolean 
--- @param p1 number 
--- @return void (Type not found)
function NetworkSessionVoiceRespondToRequest(p0, p1) end

--- @name NETWORK_SESSION_VALIDATE_JOIN
--- @param p0 boolean 
--- @return void (Type not found)
function NetworkSessionValidateJoin(p0) end

--- @name NETWORK_SESSION_WAS_INVITED
--- @return boolean
function NetworkSessionWasInvited() end

--- @name NETWORK_SET_ACTIVITY_PLAYER_MAX
--- @param playerCount number 
--- @return void (Type not found)
function NetworkSetActivityPlayerMax(playerCount) end

--- @name NETWORK_SESSION_VOICE_LEAVE
--- @return void (Type not found)
function NetworkSessionVoiceLeave() end

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
--- @name _NETWORK_SET_CURRENT_SPAWN_SETTING
--- @param mpSettingSpawn Hash 
--- @return void (Type not found)
function NetworkSetCurrentSpawnSetting(mpSettingSpawn) end

--- @name NETWORK_SET_ACTIVITY_SPECTATOR
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetActivitySpectator(toggle) end

--- @name NETWORK_SET_ACTIVITY_SPECTATOR_MAX
--- @param maxSpectators number 
--- @return void (Type not found)
function NetworkSetActivitySpectatorMax(maxSpectators) end

--- @name NETWORK_SET_ENTITY_CAN_BLEND
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetEntityCanBlend(entity, toggle) end

--- @name NETWORK_SET_CHOICE_MIGRATE_OPTIONS
--- @param toggle boolean 
--- @param player Player 
--- @return void (Type not found)
function NetworkSetChoiceMigrateOptions(toggle, player) end

--- if set to true other network players can't see it  
--- if set to false other network player can see it  
--- =========================================  
--- ^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.  
--- pc or last gen?  
--- ^^ last-gen  
--- @name _NETWORK_SET_ENTITY_INVISIBLE_TO_NETWORK
--- @param entity Entity 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetEntityInvisibleToNetwork(entity, toggle) end

--- @name _NETWORK_SET_CURRENT_DATA_MANAGER_HANDLE
--- @param p0  
--- @return boolean
function NetworkSetCurrentDataManagerHandle(p0) end

--- @name NETWORK_SET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU
--- @param p0  
--- @return boolean
function NetworkSetCurrentlySelectedGamerHandleFromInviteMenu(p0) end

--- NativeDB Introduced: v2699
--- @name _NETWORK_SET_CURRENT_MISSION_ID
--- @param missionId string 
--- @return void (Type not found)
function NetworkSetCurrentMissionId(missionId) end

--- @name _NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER
--- @param entity Entity 
--- @param p1 boolean 
--- @return void (Type not found)
function NetworkSetEntityGhostedWithOwner(entity, p1) end

--- @name NETWORK_SET_GAMER_INVITED_TO_TRANSITION
--- @param networkHandle number 
--- @return void (Type not found)
function NetworkSetGamerInvitedToTransition(networkHandle) end

--- @name NETWORK_SET_IN_FREE_CAM_MODE
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetInFreeCamMode(toggle) end

--- @name NETWORK_SET_IN_MP_CUTSCENE
--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function NetworkSetInMpCutscene(p0, p1) end

--- @name NETWORK_SET_IN_SPECTATOR_MODE
--- @param toggle boolean 
--- @param playerPed Ped 
--- @return void (Type not found)
function NetworkSetInSpectatorMode(toggle, playerPed) end

--- @name NETWORK_SET_FRIENDLY_FIRE_OPTION
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetFriendlyFireOption(toggle) end

--- @name NETWORK_SET_LOCAL_PLAYER_SYNC_LOOK_AT
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetLocalPlayerSyncLookAt(toggle) end

--- @name NETWORK_SET_LOCAL_PLAYER_INVINCIBLE_TIME
--- @param time number 
--- @return void (Type not found)
function NetworkSetLocalPlayerInvincibleTime(time) end

--- @name NETWORK_SET_IN_SPECTATOR_MODE_EXTENDED
--- @param toggle boolean 
--- @param playerPed Ped 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSetInSpectatorModeExtended(toggle, playerPed, p2) end

--- Sets whether or not an object (created using `CREATE_OBJECT`, or similar) should have its position/rotation synchronized,
--- even if it is a 'static' object (for example, having flag 32 - Static - set in its archetype definition).
--- This has to be called during the same frame the object is created/registered for network, as otherwise it may already
--- have a remote clone created.
--- Once a remote clone is created, changing this value will not have any effect on said clone.
--- @name _NETWORK_SET_OBJECT_FORCE_STATIC_BLEND
--- @param object Object The object to set forced blending state for.
--- @param enabled boolean `true` to enable forced blending.
--- @return void (Type not found)
function NetworkSetObjectForceStaticBlend(object, enabled) end

--- @name NETWORK_SET_NO_SPECTATOR_CHAT
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetNoSpectatorChat(toggle) end

--- @name NETWORK_SET_INVITE_ON_CALL_FOR_INVITE_MENU
--- @param networkHandle number 
--- @return void (Type not found)
function NetworkSetInviteOnCallForInviteMenu(networkHandle) end

--- @name NETWORK_SET_MISSION_FINISHED
--- @return void (Type not found)
function NetworkSetMissionFinished() end

--- @name NETWORK_SET_PLAYER_IS_PASSIVE
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetPlayerIsPassive(toggle) end

--- On PC it's a nullsub which means it does absolutely nothing.  
--- Now that Discord supports Rich Presence, R* might finally implement this for PC. Or maybe in future games like RDR2, GTA VI...  
--- @name NETWORK_SET_RICH_PRESENCE
--- @param p0 number 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSetRichPresence(p0, p1, p2, p3) end

--- @name NETWORK_SET_OVERRIDE_SPECTATOR_MODE
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetOverrideSpectatorMode(toggle) end

--- @name NETWORK_SET_SCRIPT_READY_FOR_EVENTS
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetScriptReadyForEvents(toggle) end

--- @name NETWORK_SET_THIS_SCRIPT_IS_NETWORK_SCRIPT
--- @param maxNumMissionParticipants number 
--- @param p1 boolean 
--- @param instanceId number 
--- @return void (Type not found)
function NetworkSetThisScriptIsNetworkScript(maxNumMissionParticipants, p1, instanceId) end

--- @name NETWORK_SET_TALKER_PROXIMITY
--- @param value number 
--- @return void (Type not found)
function NetworkSetTalkerProximity(value) end

--- value must be < 255
--- @name NETWORK_SET_PROPERTY_ID
--- @param id number 
--- @return void (Type not found)
function NetworkSetPropertyId(id) end

--- @name NETWORK_SET_TEAM_ONLY_CHAT
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetTeamOnlyChat(toggle) end

--- @name NETWORK_SET_TRANSITION_ACTIVITY_ID
--- @param p0  
--- @return void (Type not found)
function NetworkSetTransitionActivityId(p0) end

--- Used by Metric VEHICLE_DIST_DRIVEN
--- NativeDB Introduced: v2699
--- @name _NETWORK_SET_VEHICLE_TEST_DRIVE
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetVehicleTestDrive(toggle) end

--- This native does absolutely nothing, just a nullsub
--- @name NETWORK_SET_RICH_PRESENCE_STRING
--- @param p0 number 
--- @param textLabel string 
--- @return void (Type not found)
function NetworkSetRichPresenceString(p0, textLabel) end

--- @name NETWORK_SET_VOICE_ACTIVE
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetVoiceActive(toggle) end

--- Returns true if the NAT type is Strict (3) and a certain number of connections have failed.
--- @name _NETWORK_SHOULD_SHOW_CONNECTIVITY_TROUBLESHOOTING
--- @return boolean
function NetworkShouldShowConnectivityTroubleshooting() end

--- @name NETWORK_SET_TRANSITION_VISIBILITY_LOCK
--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function NetworkSetTransitionVisibilityLock(p0, p1) end

--- One of the first things it does is get the players ped.  
--- Then it calls a function that is used in some tasks and ped based functions.  
--- p5, p6, p7 is another coordinate (or zero), often related to `GET_BLIP_COORDS`, in the decompiled scripts.
--- @name NETWORK_START_RESPAWN_SEARCH_FOR_PLAYER
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

--- @name NETWORK_SET_TRANSITION_CREATOR_HANDLE
--- @param p0  
--- @return void (Type not found)
function NetworkSetTransitionCreatorHandle(p0) end

--- p8, p9, p10 is another coordinate, or zero, often related to `GET_BLIP_COORDS` in the decompiled scripts.
--- @name NETWORK_START_RESPAWN_SEARCH_IN_ANGLED_AREA_FOR_PLAYER
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

--- Allow vehicle wheels to be destructible even when the Vehicle entity is invincible.
--- NativeDB Introduced: v1365
--- @name _NETWORK_SET_VEHICLE_WHEELS_DESTRUCTIBLE
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSetVehicleWheelsDestructible(vehicle, toggle) end

--- @name NETWORK_SET_VOICE_CHANNEL
--- @param channel number 
--- @return void (Type not found)
function NetworkSetVoiceChannel(channel) end

--- Example:  
--- int playerHandle;	  
--- NETWORK_HANDLE_FROM_PLAYER(selectedPlayer, &playerHandle, 13);  
--- NETWORK_SHOW_PROFILE_UI(&playerHandle);  
--- @name NETWORK_SHOW_PROFILE_UI
--- @param networkHandle number 
--- @return void (Type not found)
function NetworkShowProfileUi(networkHandle) end

--- @name NETWORK_START_SYNCHRONISED_SCENE
--- @param netScene number 
--- @return void (Type not found)
function NetworkStartSynchronisedScene(netScene) end

--- @name NETWORK_START_SOLO_TUTORIAL_SESSION
--- @return void (Type not found)
function NetworkStartSoloTutorialSession() end

--- @name NETWORK_STOP_SYNCHRONISED_SCENE
--- @param netScene number 
--- @return void (Type not found)
function NetworkStopSynchronisedScene(netScene) end

--- Always returns -1. Seems to be XB1 specific.
--- @name _NETWORK_START_USER_CONTENT_PERMISSIONS_CHECK
--- @param netHandle  
--- @return number
function NetworkStartUserContentPermissionsCheck(netHandle) end

--- Returns defaultValue if the tunable doesn't exist.
--- @name NETWORK_TRY_ACCESS_TUNABLE_BOOL_HASH
--- @param tunableContext Hash 
--- @param tunableName Hash 
--- @param defaultValue boolean 
--- @return boolean
function NetworkTryAccessTunableBoolHash(tunableContext, tunableName, defaultValue) end

--- @name _NETWORK_TRANSITION_TRACK
--- @param hash Hash 
--- @param p1 number 
--- @param p2 number 
--- @param state number 
--- @param p4 number 
--- @return void (Type not found)
function NetworkTransitionTrack(hash, p1, p2, state, p4) end

--- @name NETWORK_SUPPRESS_INVITE
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkSuppressInvite(toggle) end

--- @name NETWORK_UNREGISTER_NETWORKED_ENTITY
--- @param entity Entity 
--- @return void (Type not found)
function NetworkUnregisterNetworkedEntity(entity) end

--- Old name: _NETWORK_SET_NETWORK_ID_DYNAMIC
--- @name NETWORK_USE_HIGH_PRECISION_BLENDING
--- @param netID number 
--- @param toggle boolean 
--- @return void (Type not found)
function NetworkUseHighPrecisionBlending(netID, toggle) end

--- @name _NETWORK_UPDATE_PLAYER_SCARS
--- @return void (Type not found)
function NetworkUpdatePlayerScars() end

--- Lets objects spawn online simply do it like this:  
--- int createdObject = OBJ_TO_NET(CREATE_OBJECT_NO_OFFSET(oball, pCoords.x, pCoords.y, pCoords.z, 1, 0, 0));  
--- @name OBJ_TO_NET
--- @param object Object 
--- @return number
function ObjToNet(object) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_UGC_NAV
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function NetworkUgcNav(p0, p1) end

--- Has a 3rd param (int) since patch [???].  
--- NativeDB Added Parameter 3: int p2
--- @name OPEN_COMMERCE_STORE
--- @param p0 string 
--- @param p1 string 
--- @return void (Type not found)
function OpenCommerceStore(p0, p1) end

--- Return the local Participant ID.  
--- This native is exactly the same as 'PARTICIPANT_ID' native.  
--- @name PARTICIPANT_ID_TO_INT
--- @return number
function ParticipantIdToInt() end

--- @name REFRESH_PLAYER_LIST_STATS
--- @param p0 number 
--- @return boolean
function RefreshPlayerListStats(p0) end

--- @name NETWORK_USE_LOGARITHMIC_BLENDING_THIS_FRAME
--- @param entity Entity 
--- @return void (Type not found)
function NetworkUseLogarithmicBlendingThisFrame(entity) end

--- Return the local Participant ID  
--- @name PARTICIPANT_ID
--- @return Player
function ParticipantId() end

--- NativeDB Added Parameter 1: Player player
--- NativeDB Added Parameter 2: int a
--- NativeDB Added Parameter 3: int b
--- @name _REMOTE_CHEAT_DETECTED
--- @return boolean
function RemoteCheatDetected() end

--- Internal logging string: SCRIPT_RESERVING_LOCAL_OBJECTS
--- NativeDB Introduced: v1290
--- @name _RESERVE_NETWORK_LOCAL_OBJECTS
--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkLocalObjects(amount) end

--- gets the network id of a ped  
--- @name PED_TO_NET
--- @param ped Ped 
--- @return number
function PedToNet(ped) end

--- @name REQUEST_COMMERCE_ITEM_IMAGE
--- @param index number 
--- @return boolean
function RequestCommerceItemImage(index) end

--- @name RELEASE_ALL_COMMERCE_ITEM_IMAGES
--- @return void (Type not found)
function ReleaseAllCommerceItemImages() end

--- Internal logging string: SCRIPT_RESERVING_LOCAL_PEDS
--- NativeDB Introduced: v1493
--- @name _RESERVE_NETWORK_LOCAL_PEDS
--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkLocalPeds(amount) end

--- Used in am_mp_property_ext and am_mp_property_int  
--- NativeDB Added Parameter 2: Ped ped
--- @name REMOVE_ALL_STICKY_BOMBS_FROM_ENTITY
--- @param entity Entity 
--- @return void (Type not found)
function RemoveAllStickyBombsFromEntity(entity) end

--- @name RESERVE_NETWORK_MISSION_OBJECTS
--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkMissionObjects(amount) end

--- @name _RESERVE_NETWORK_LOCAL_VEHICLES
--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkLocalVehicles(amount) end

--- @name SET_BALANCE_ADD_MACHINE
--- @param contentId string 
--- @param contentTypeName string 
--- @return boolean
function SetBalanceAddMachine(contentId, contentTypeName) end

--- @name RESERVE_NETWORK_MISSION_VEHICLES
--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkMissionVehicles(amount) end

--- Sets the provided entity not visible for yourself for the current frame.
--- @name SET_ENTITY_LOCALLY_INVISIBLE
--- @param entity Entity 
--- @return void (Type not found)
function SetEntityLocallyInvisible(entity) end

--- @name RESERVE_NETWORK_MISSION_PEDS
--- @param amount number 
--- @return void (Type not found)
function ReserveNetworkMissionPeds(amount) end

--- Sets the provided entity visible for yourself for the current frame.
--- @name SET_ENTITY_LOCALLY_VISIBLE
--- @param entity Entity The entity to set locally visible.
--- @return void (Type not found)
function SetEntityLocallyVisible(entity) end

--- Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
--- @name _RESET_GHOSTED_ENTITY_ALPHA
--- @return void (Type not found)
function ResetGhostedEntityAlpha() end

--- Formerly incorrectly named `USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR` due to incorrect treatment of console vs. PC native registration.
--- Native name guessed through ordering.
--- NativeDB Added Parameter 2: BOOL p1
--- @name _SET_LOCAL_PLAYER_AS_GHOST
--- @param toggle boolean 
--- @return void (Type not found)
function SetLocalPlayerAsGhost(toggle) end

--- @name SET_ENTITY_VISIBLE_IN_CUTSCENE
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetEntityVisibleInCutscene(p0, p1, p2) end

--- Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
--- 'Solidness' cannot be achieved using 255 - this will have the opposite effect of it defaulting to 128 it seems (or just having no effect at all).
--- @name _SET_GHOSTED_ENTITY_ALPHA
--- @param alpha number A value between 1 and 254. Default: 128
--- @return void (Type not found)
function SetGhostedEntityAlpha(alpha) end

--- @name SET_LOCAL_PLAYER_INVISIBLE_LOCALLY
--- @param p0 boolean 
--- @return void (Type not found)
function SetLocalPlayerInvisibleLocally(p0) end

--- @name SET_BALANCE_ADD_MACHINES
--- @param data  
--- @param dataCount number 
--- @param contentTypeName string 
--- @return boolean
function SetBalanceAddMachines(data, dataCount, contentTypeName) end

--- @name SET_LOCAL_PLAYER_VISIBLE_LOCALLY
--- @param p0 boolean 
--- @return void (Type not found)
function SetLocalPlayerVisibleLocally(p0) end

--- @name SET_NETWORK_CUTSCENE_ENTITIES
--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkCutsceneEntities(toggle) end

--- @name SET_LOCAL_PLAYER_VISIBLE_IN_CUTSCENE
--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function SetLocalPlayerVisibleInCutscene(p0, p1) end

--- Enables a periodic ShapeTest within the NetBlender and invokes rage::netBlenderLinInterp::GoStraightToTarget (or some functional wrapper).
--- @name _SET_NETWORK_ENABLE_VEHICLE_POSITION_CORRECTION
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkEnableVehiclePositionCorrection(vehicle, toggle) end

--- @name SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES
--- @param netId number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkIdExistsOnAllMachines(netId, toggle) end

--- Whether or not another player is allowed to take control of the entity  
--- @name SET_NETWORK_ID_CAN_MIGRATE
--- @param netId number 
--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkIdCanMigrate(netId, toggle) end

--- @name SET_NETWORK_ID_ALWAYS_EXISTS_FOR_PLAYER
--- @param netId number 
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkIdAlwaysExistsForPlayer(netId, player, toggle) end

--- rage::netBlenderLinInterp::GetPositionMaxForUpdateLevel
--- @name _SET_NETWORK_VEHICLE_POSITION_UPDATE_MULTIPLIER
--- @param vehicle Vehicle 
--- @param multiplier number 
--- @return void (Type not found)
function SetNetworkVehiclePositionUpdateMultiplier(vehicle, multiplier) end

--- @name SET_NETWORK_ID_VISIBLE_IN_CUTSCENE
--- @param netId number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetNetworkIdVisibleInCutscene(netId, p1, p2) end

--- NativeDB Added Parameter 3: Any p2
--- NativeDB Added Parameter 4: Any p3
--- @name SET_NETWORK_VEHICLE_RESPOT_TIMER
--- @param netId number 
--- @param time number 
--- @return void (Type not found)
function SetNetworkVehicleRespotTimer(netId, time) end

--- @name SET_PLAYER_VISIBLE_LOCALLY
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerVisibleLocally(player, toggle) end

--- @name SET_NETWORK_VEHICLE_AS_GHOST
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetNetworkVehicleAsGhost(vehicle, toggle) end

--- Access to the store for shark cards etc...  
--- @name SET_STORE_ENABLED
--- @param toggle boolean 
--- @return void (Type not found)
function SetStoreEnabled(toggle) end

--- Starts a new singleplayer game (at the prologue).  
--- @name SHUTDOWN_AND_LAUNCH_SINGLE_PLAYER_GAME
--- @return void (Type not found)
function ShutdownAndLaunchSinglePlayerGame() end

--- Disconnects you from the session, and starts loading single player, however you still remain connected to the server (only if you're the host, if you're not then you also (most likely) get disconnected from the server) and other players will not be able to join until you exit the game.
--- If you're already in SP then it'll re-load singleplayer.
--- You might need to DoScreenFadeIn and ShutdownLoadingScreen otherwise you probably won't end up loading into SP at all.
--- Somewhat related note: opening the pause menu after loading into this 'singleplayer' mode crashes the game.
--- @name _SHUTDOWN_AND_LOAD_MOST_RECENT_SAVE
--- @return boolean
function ShutdownAndLoadMostRecentSave() end

--- Enables ghosting between specific players. Name is between `_SET_RELATIONSHIP_GROUP_DONT_AFFECT_WANTED_LEVEL` and `SET_ROADS_BACK_TO_ORIGINAL`.
--- @name _SET_RELATIONSHIP_TO_PLAYER
--- @param player Player 
--- @param p1 boolean 
--- @return void (Type not found)
function SetRelationshipToPlayer(player, p1) end

--- @name TEXTURE_DOWNLOAD_GET_NAME
--- @param p0 number 
--- @return string
function TextureDownloadGetName(p0) end

--- @name SET_PLAYER_INVISIBLE_LOCALLY
--- @param player Player 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerInvisibleLocally(player, toggle) end

--- @name TEXTURE_DOWNLOAD_RELEASE
--- @param p0 number 
--- @return void (Type not found)
function TextureDownloadRelease(p0) end

--- @name TEXTURE_DOWNLOAD_REQUEST
--- @param PlayerHandle number 
--- @param FilePath string 
--- @param Name string 
--- @param p3 boolean 
--- @return number
function TextureDownloadRequest(PlayerHandle, FilePath, Name, p3) end

--- @name TITLE_TEXTURE_DOWNLOAD_REQUEST
--- @param FilePath string 
--- @param Name string 
--- @param p2 boolean 
--- @return number
function TitleTextureDownloadRequest(FilePath, Name, p2) end

--- @name TEXTURE_DOWNLOAD_HAS_FAILED
--- @param p0 number 
--- @return boolean
function TextureDownloadHasFailed(p0) end

--- p1 = 6
--- @name _TRIGGER_SCRIPT_CRC_CHECK_ON_PLAYER
--- @param player Player 
--- @param p1 number 
--- @param scriptHash Hash 
--- @return boolean
function TriggerScriptCrcCheckOnPlayer(player, p1, scriptHash) end

--- @name UGC_CANCEL_QUERY
--- @return void (Type not found)
function UgcCancelQuery() end

--- @name UGC_CLEAR_CREATE_RESULT
--- @return void (Type not found)
function UgcClearCreateResult() end

--- @name UGC_DID_GET_SUCCEED
--- @return 
function UgcDidGetSucceed() end

--- @name UGC_CLEAR_MODIFY_RESULT
--- @return void (Type not found)
function UgcClearModifyResult() end

--- @name UGC_COPY_CONTENT
--- @param p0  
--- @param p1  
--- @return boolean
function UgcCopyContent(p0, p1) end

--- @name UGC_CLEAR_QUERY_RESULTS
--- @return void (Type not found)
function UgcClearQueryResults() end

--- @name UGC_GET_CACHED_DESCRIPTION
--- @param p0  
--- @param p1  
--- @return string
function UgcGetCachedDescription(p0, p1) end

--- @name UGC_GET_CONTENT_DESCRIPTION_HASH
--- @param p0  
--- @return number
function UgcGetContentDescriptionHash(p0) end

--- @name UGC_GET_BOOKMARKED_CONTENT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function UgcGetBookmarkedContent(p0, p1, p2, p3) end

--- @name UGC_GET_CONTENT_HAS_PLAYER_RECORD
--- @param p0  
--- @return boolean
function UgcGetContentHasPlayerRecord(p0) end

--- @name UGC_GET_CONTENT_HAS_PLAYER_BOOKMARKED
--- @param p0  
--- @return boolean
function UgcGetContentHasPlayerBookmarked(p0) end

--- @name UGC_CLEAR_OFFLINE_QUERY
--- @return void (Type not found)
function UgcClearOfflineQuery() end

--- @name UGC_GET_CONTENT_FILE_VERSION
--- @param p0  
--- @param p1  
--- @return 
function UgcGetContentFileVersion(p0, p1) end

--- @name UGC_GET_CONTENT_HASH
--- @return Hash
function UgcGetContentHash() end

--- Return the mission id of a job.
--- @name UGC_GET_CONTENT_ID
--- @param p0 number 
--- @return string
function UgcGetContentId(p0) end

--- @name UGC_GET_CONTENT_LANGUAGE
--- @param p0  
--- @return 
function UgcGetContentLanguage(p0) end

--- @name UGC_GET_CONTENT_CATEGORY
--- @param p0 number 
--- @return number
function UgcGetContentCategory(p0) end

--- @name UGC_GET_CONTENT_IS_PUBLISHED
--- @param p0  
--- @return boolean
function UgcGetContentIsPublished(p0) end

--- @name UGC_GET_CONTENT_IS_VERIFIED
--- @param p0  
--- @return boolean
function UgcGetContentIsVerified(p0) end

--- @name UGC_GET_CONTENT_NUM
--- @return 
function UgcGetContentNum() end

--- @name UGC_GET_CONTENT_NAME
--- @param p0  
--- @return string
function UgcGetContentName(p0) end

--- @name UGC_GET_CONTENT_RATING_NEGATIVE_COUNT
--- @param p0  
--- @param p1  
--- @return 
function UgcGetContentRatingNegativeCount(p0, p1) end

--- @name UGC_GET_CONTENT_RATING
--- @param p0  
--- @param p1  
--- @return 
function UgcGetContentRating(p0, p1) end

--- @name UGC_GET_CONTENT_PATH
--- @param p0 number 
--- @param p1 number 
--- @return string
function UgcGetContentPath(p0, p1) end

--- @name UGC_GET_CONTENT_RATING_POSITIVE_COUNT
--- @param p0  
--- @param p1  
--- @return 
function UgcGetContentRatingPositiveCount(p0, p1) end

--- @name UGC_GET_CONTENT_UPDATED_DATE
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function UgcGetContentUpdatedDate(p0, p1) end

--- @name UGC_GET_CONTENT_TOTAL
--- @return 
function UgcGetContentTotal() end

--- @name UGC_GET_CONTENT_USER_ID
--- @param p0 number 
--- @return string
function UgcGetContentUserId(p0) end

--- @name UGC_GET_CREATE_CONTENT_ID
--- @return string
function UgcGetCreateContentId() end

--- @name UGC_GET_CONTENT_USER_NAME
--- @param p0  
--- @return string
function UgcGetContentUserName(p0) end

--- @name UGC_GET_CONTENT_RATING_COUNT
--- @param p0  
--- @param p1  
--- @return 
function UgcGetContentRatingCount(p0, p1) end

--- @name UGC_GET_GET_BY_CATEGORY
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return boolean
function UgcGetGetByCategory(p0, p1, p2, p3, p4) end

--- @name UGC_GET_CREATOR_NUM
--- @return 
function UgcGetCreatorNum() end

--- @name UGC_GET_CREATE_RESULT
--- @return 
function UgcGetCreateResult() end

--- @name UGC_GET_CREW_CONTENT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return boolean
function UgcGetCrewContent(p0, p1, p2, p3, p4) end

--- @name UGC_GET_MY_CONTENT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function UgcGetMyContent(p0, p1, p2, p3) end

--- @name UGC_GET_FRIEND_CONTENT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function UgcGetFriendContent(p0, p1, p2, p3) end

--- Return the root content id of a job.
--- @name UGC_GET_ROOT_CONTENT_ID
--- @param p0 number 
--- @return string
function UgcGetRootContentId(p0) end

--- @name UGC_GET_QUERY_RESULT
--- @return 
function UgcGetQueryResult() end

--- @name UGC_GET_MODIFY_RESULT
--- @return 
function UgcGetModifyResult() end

--- @name UGC_HAS_GET_FINISHED
--- @return boolean
function UgcHasGetFinished() end

--- @name UGC_HAS_CREATE_FINISHED
--- @return boolean
function UgcHasCreateFinished() end

--- @name UGC_HAS_MODIFY_FINISHED
--- @return boolean
function UgcHasModifyFinished() end

--- @name UGC_IS_GETTING
--- @return boolean
function UgcIsGetting() end

--- @name UGC_IS_LANGUAGE_SUPPORTED
--- @param p0  
--- @return boolean
function UgcIsLanguageSupported(p0) end

--- @name UGC_PUBLISH
--- @param contentId string 
--- @param baseContentId string 
--- @param contentTypeName string 
--- @return boolean
function UgcPublish(contentId, baseContentId, contentTypeName) end

--- @name UGC_QUERY_BY_CONTENT_ID
--- @param contentId string 
--- @param latestVersion boolean 
--- @param contentTypeName string 
--- @return boolean
function UgcQueryByContentId(contentId, latestVersion, contentTypeName) end

--- @name UGC_QUERY_BY_CONTENT_IDS
--- @param data  
--- @param count number 
--- @param latestVersion boolean 
--- @param contentTypeName string 
--- @return boolean
function UgcQueryByContentIds(data, count, latestVersion, contentTypeName) end

--- @name UGC_POLICIES_MAKE_PRIVATE
--- @param p0  
--- @return boolean
function UgcPoliciesMakePrivate(p0) end

--- @name _UGC_QUERY_RECENTLY_CREATED_CONTENT
--- @param offset number 
--- @param count number 
--- @param contentTypeName string 
--- @param p3 number 
--- @return boolean
function UgcQueryRecentlyCreatedContent(offset, count, contentTypeName, p3) end

--- @name UGC_SET_BOOKMARKED
--- @param contentId string 
--- @param bookmarked boolean 
--- @param contentTypeName string 
--- @return boolean
function UgcSetBookmarked(contentId, bookmarked, contentTypeName) end

--- @name UGC_QUERY_MY_CONTENT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return boolean
function UgcQueryMyContent(p0, p1, p2, p3, p4, p5) end

--- @name UGC_REQUEST_CACHED_DESCRIPTION
--- @param p0 number 
--- @return number
function UgcRequestCachedDescription(p0) end

--- @name UGC_REQUEST_CONTENT_DATA_FROM_PARAMS
--- @param contentTypeName string 
--- @param contentId string 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @return number
function UgcRequestContentDataFromParams(contentTypeName, contentId, p2, p3, p4) end

--- @name UGC_SET_DELETED
--- @param p0  
--- @param p1 boolean 
--- @param p2  
--- @return boolean
function UgcSetDeleted(p0, p1, p2) end

--- @name UGC_REQUEST_CONTENT_DATA_FROM_INDEX
--- @param p0 number 
--- @param p1 number 
--- @return number
function UgcRequestContentDataFromIndex(p0, p1) end

--- @name USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR
--- @param toggle boolean 
--- @return void (Type not found)
function UsePlayerColourInsteadOfTeamColour(toggle) end

--- @name UGC_TEXTURE_DOWNLOAD_REQUEST
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5 boolean 
--- @return 
function UgcTextureDownloadRequest(p0, p1, p2, p3, p4, p5) end

--- calls from vehicle to net.  
--- @name VEH_TO_NET
--- @param vehicle Vehicle 
--- @return number
function VehToNet(vehicle) end

--- @name UGC_SET_QUERY_DATA_FROM_OFFLINE
--- @param p0 boolean 
--- @return void (Type not found)
function UgcSetQueryDataFromOffline(p0) end
