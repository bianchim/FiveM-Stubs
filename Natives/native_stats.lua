
--- @name GET_PACKED_BOOL_STAT_KEY
--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @return Hash
function GetPackedBoolStatKey(index, spStat, charStat, character) end

--- @name GET_PACKED_INT_STAT_KEY
--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @return Hash
function GetPackedIntStatKey(index, spStat, charStat, character) end

--- @name GET_PACKED_TU_BOOL_STAT_KEY
--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @return Hash
function GetPackedTuBoolStatKey(index, spStat, charStat, character) end

--- Needs more research. Gets the stat name of a masked bool?
--- section - values used in the decompiled scripts:
--- "_NGPSTAT_BOOL"
--- "_NGTATPSTAT_BOOL"
--- "_NGDLCPSTAT_BOOL"
--- "_DLCBIKEPSTAT_BOOL"
--- "_DLCGUNPSTAT_BOOL"
--- "_GUNTATPSTAT_BOOL"
--- "_DLCSMUGCHARPSTAT_BOOL"
--- "_GANGOPSPSTAT_BOOL"
--- "_BUSINESSBATPSTAT_BOOL"
--- "_ARENAWARSPSTAT_BOOL"
--- "_CASINOPSTAT_BOOL"
--- "_CASINOHSTPSTAT_BOOL"
--- "_HEIST3TATTOOSTAT_BOOL"
--- @name _GET_NGSTAT_BOOL_HASH
--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @param section string 
--- @return Hash
function GetNgstatBoolHash(index, spStat, charStat, character, section) end

--- @name _HIRED_LIMO
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function HiredLimo(p0, p1) end

--- @name LEADERBOARDS2_READ_BY_HANDLE
--- @param p0  
--- @param p1  
--- @return boolean
function Leaderboards2ReadByHandle(p0, p1) end

--- Needs more research. Gets the stat name of a masked int?
--- section - values used in the decompiled scripts:
--- "_NGPSTAT_INT"
--- "_MP_NGPSTAT_INT"
--- "_MP_LRPSTAT_INT"
--- "_MP_APAPSTAT_INT"
--- "_MP_LR2PSTAT_INT"
--- "_MP_BIKEPSTAT_INT"
--- "_MP_IMPEXPPSTAT_INT"
--- "_MP_GUNRPSTAT_INT"
--- "_NGDLCPSTAT_INT"
--- "_MP_NGDLCPSTAT_INT"
--- "_DLCSMUGCHARPSTAT_INT"
--- "_GANGOPSPSTAT_INT"
--- "_BUSINESSBATPSTAT_INT"
--- "_ARENAWARSPSTAT_INT"
--- "_CASINOPSTAT_INT"
--- "_CASINOHSTPSTAT_INT"
--- @name _GET_NGSTAT_INT_HASH
--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @param section string 
--- @return Hash
function GetNgstatIntHash(index, spStat, charStat, character, section) end

--- @name LEADERBOARDS2_READ_BY_RADIUS
--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function Leaderboards2ReadByRadius(p0, p1, p2) end

--- @name _LEADERBOARDS2_READ_BY_PLATFORM
--- @param p0  
--- @param gamerHandleCsv string 
--- @param platformName string 
--- @return boolean
function Leaderboards2ReadByPlatform(p0, gamerHandleCsv, platformName) end

--- @name GET_PACKED_TU_INT_STAT_KEY
--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @return Hash
function GetPackedTuIntStatKey(index, spStat, charStat, character) end

--- @name LEADERBOARDS2_READ_BY_SCORE_FLOAT
--- @param p0  
--- @param p1 number 
--- @param p2  
--- @return boolean
function Leaderboards2ReadByScoreFloat(p0, p1, p2) end

--- @name LEADERBOARDS2_READ_BY_ROW
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @return boolean
function Leaderboards2ReadByRow(p0, p1, p2, p3, p4, p5, p6) end

--- @name LEADERBOARDS2_READ_BY_SCORE_INT
--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function Leaderboards2ReadByScoreInt(p0, p1, p2) end

--- @name LEADERBOARDS2_READ_BY_RANK
--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function Leaderboards2ReadByRank(p0, p1, p2) end

--- @name LEADERBOARDS2_READ_RANK_PREDICTION
--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function Leaderboards2ReadRankPrediction(p0, p1, p2) end

--- @name LEADERBOARDS2_READ_FRIENDS_BY_ROW
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3 boolean 
--- @param p4  
--- @param p5  
--- @return boolean
function Leaderboards2ReadFriendsByRow(p0, p1, p2, p3, p4, p5) end

--- @name LEADERBOARDS2_WRITE_DATA_FOR_EVENT_TYPE
--- @param p0  
--- @param p1  
--- @return boolean
function Leaderboards2WriteDataForEventType(p0, p1) end

--- @name LEADERBOARDS2_WRITE_DATA
--- @param p0  
--- @return boolean
function Leaderboards2WriteData(p0) end

--- @name LEADERBOARDS_CLEAR_CACHE_DATA
--- @return void (Type not found)
function LeaderboardsClearCacheData() end

--- @name _LEADERBOARDS_DEATHS
--- @param statName Hash 
--- @param value number 
--- @return void (Type not found)
function LeaderboardsDeaths(statName, value) end

--- @name LEADERBOARDS_GET_CACHE_DATA_ROW
--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function LeaderboardsGetCacheDataRow(p0, p1, p2) end

--- @name LEADERBOARDS_GET_CACHE_TIME
--- @param p0  
--- @return 
function LeaderboardsGetCacheTime(p0) end

--- @name LEADERBOARDS_GET_CACHE_NUMBER_OF_ROWS
--- @param p0  
--- @return number
function LeaderboardsGetCacheNumberOfRows(p0) end

--- @name LEADERBOARDS_GET_COLUMN_ID
--- @param p0  
--- @param p1  
--- @param p2  
--- @return 
function LeaderboardsGetColumnId(p0, p1, p2) end

--- @name LEADERBOARDS_CACHE_DATA_ROW
--- @param p0  
--- @return boolean
function LeaderboardsCacheDataRow(p0) end

--- @name LEADERBOARDS_GET_CACHE_EXISTS
--- @param p0  
--- @return boolean
function LeaderboardsGetCacheExists(p0) end

--- @name LEADERBOARDS_GET_COLUMN_TYPE
--- @param p0  
--- @param p1  
--- @param p2  
--- @return 
function LeaderboardsGetColumnType(p0, p1, p2) end

--- @name LEADERBOARDS_READ_CLEAR
--- @param p0  
--- @param p1  
--- @param p2  
--- @return 
function LeaderboardsReadClear(p0, p1, p2) end

--- @name LEADERBOARDS_READ_ANY_PENDING
--- @return boolean
function LeaderboardsReadAnyPending() end

--- @name LEADERBOARDS_GET_NUMBER_OF_COLUMNS
--- @param p0  
--- @param p1  
--- @return 
function LeaderboardsGetNumberOfColumns(p0, p1) end

--- @name LEADERBOARDS_READ_SUCCESSFUL
--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function LeaderboardsReadSuccessful(p0, p1, p2) end

--- @name LEADERBOARDS_WRITE_ADD_COLUMN
--- @param p0  
--- @param p1  
--- @param p2 number 
--- @return void (Type not found)
function LeaderboardsWriteAddColumn(p0, p1, p2) end

--- @name LEADERBOARDS_READ_PENDING
--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function LeaderboardsReadPending(p0, p1, p2) end

--- @name LEADERBOARDS_READ_CLEAR_ALL
--- @return 
function LeaderboardsReadClearAll() end

--- @name LEADERBOARDS_WRITE_ADD_COLUMN_LONG
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function LeaderboardsWriteAddColumnLong(p0, p1, p2) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_ARCADEGAME
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return void (Type not found)
function PlaystatsArcadegame(p0, p1, p2, p3, p4, p5) end

--- @name PLAYSTATS_ACQUIRED_HIDDEN_PACKAGE
--- @param p0  
--- @return void (Type not found)
function PlaystatsAcquiredHiddenPackage(p0) end

--- @name _ORDERED_BOSS_VEHICLE
--- @param p0  
--- @param p1  
--- @param vehicleHash Hash 
--- @return void (Type not found)
function OrderedBossVehicle(p0, p1, vehicleHash) end

--- NativeDB Introduced: v1604
--- @name _PLAYSTATS_ARENA_WAR_SPECTATOR
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @return void (Type not found)
function PlaystatsArenaWarSpectator(p0, p1, p2, p3, p4) end

--- @name PLAYSTATS_AWARD_XP
--- @param amount number 
--- @param type Hash 
--- @param category Hash 
--- @return void (Type not found)
function PlaystatsAwardXp(amount, type, category) end

--- @name _PLAYSTATS_AWARD_BADSPORT
--- @param id number 
--- @return void (Type not found)
function PlaystatsAwardBadsport(id) end

--- @name PLAYSTATS_ACTIVITY_DONE
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function PlaystatsActivityDone(p0, p1) end

--- NativeDB Introduced: v1604
--- @name _PLAYSTATS_ARENA_WARS_ENDED
--- @param data  
--- @return void (Type not found)
function PlaystatsArenaWarsEnded(data) end

--- @name PLAYSTATS_BACKGROUND_SCRIPT_ACTION
--- @param action string 
--- @param value number 
--- @return void (Type not found)
function PlaystatsBackgroundScriptAction(action, value) end

--- @name _PLAYSTATS_BAN_ALERT
--- @param p0 number 
--- @return void (Type not found)
function PlaystatsBanAlert(p0) end

--- NativeDB Introduced: v2372
--- @name _PLAYSTATS_CARCLUB_CHALLENGE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsCarclubChallenge(p0, p1, p2, p3) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_BLACKJACK
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoBlackjack(p0) end

--- NativeDB Introduced: v2372
--- @name _PLAYSTATS_CARCLUB_POINTS
--- @param p0  
--- @return void (Type not found)
function PlaystatsCarclubPoints(p0) end

--- NativeDB Introduced: v2372
--- @name _PLAYSTATS_CARCLUB_PRIZE
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function PlaystatsCarclubPrize(p0, p1) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_BLACKJACK_LIGHT
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoBlackjackLight(p0) end

--- @name _PLAYSTATS_BUY_CONTRABAND
--- @param data  
--- @return void (Type not found)
function PlaystatsBuyContraband(data) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_CHIP
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoChip(p0) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_ROULETTE
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoRoulette(p0) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_LUCKYSEVEN
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoLuckyseven(p0) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_INSIDETRACK_LIGHT
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoInsidetrackLight(p0) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_INSIDETRACK
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoInsidetrack(p0) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_SLOTMACHINE_LIGHT
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoSlotmachineLight(p0) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_STORY_MISSION_ENDED
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function PlaystatsCasinoStoryMissionEnded(p0, p1) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_ROULETTE_LIGHT
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoRouletteLight(p0) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_MISSION_ENDED
--- @param data  
--- @return void (Type not found)
function PlaystatsCasinoMissionEnded(data) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_THREECARDPOKER_LIGHT
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoThreecardpokerLight(p0) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_THREECARDPOKER
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoThreecardpoker(p0) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_CASINO_SLOTMACHINE
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoSlotmachine(p0) end

--- @name PLAYSTATS_CHEAT_APPLIED
--- @param cheat string 
--- @return void (Type not found)
function PlaystatsCheatApplied(cheat) end

--- @name _PLAYSTATS_CHANGE_MC_EMBLEM
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function PlaystatsChangeMcEmblem(p0, p1, p2, p3, p4) end

--- @name _PLAYSTATS_COPY_RANK_INTO_NEW_SLOT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @return void (Type not found)
function PlaystatsCopyRankIntoNewSlot(p0, p1, p2, p3, p4, p5, p6) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_COLLECTIBLE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @param p7  
--- @param p8  
--- @param p9  
--- @return void (Type not found)
function PlaystatsCollectible(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- @name PLAYSTATS_CRATE_CREATED
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @return void (Type not found)
function PlaystatsCrateCreated(p0, p1, p2) end

--- NativeDB Added Parameter 7: Any p6
--- NativeDB Added Parameter 8: Any p7
--- @name PLAYSTATS_CRATE_DROP_MISSION_DONE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return void (Type not found)
function PlaystatsCrateDropMissionDone(p0, p1, p2, p3, p4, p5) end

--- @name _PLAYSTATS_DEFEND_CONTRABAND
--- @param data  
--- @return void (Type not found)
function PlaystatsDefendContraband(data) end

--- NativeDB Introduced: v1290
--- @name _PLAYSTATS_DAR_MISSION_END
--- @param data  
--- @return void (Type not found)
function PlaystatsDarMissionEnd(data) end

--- @name PLAYSTATS_CLOTH_CHANGE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function PlaystatsClothChange(p0, p1, p2, p3, p4) end

--- NativeDB Introduced: v1493
--- @name _PLAYSTATS_DRONE_USAGE
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @return void (Type not found)
function PlaystatsDroneUsage(p0, p1, p2) end

--- @name _PLAYSTATS_DIRECTOR_MODE
--- @param p0  
--- @return void (Type not found)
function PlaystatsDirectorMode(p0) end

--- @name _PLAYSTATS_EARNED_MC_POINTS
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return void (Type not found)
function PlaystatsEarnedMcPoints(p0, p1, p2, p3, p4, p5) end

--- NativeDB Introduced: v2372
--- @name _PLAYSTATS_EXTRA_EVENT
--- @param p0  
--- @return void (Type not found)
function PlaystatsExtraEvent(p0) end

--- NativeDB Introduced: v1290
--- @name _PLAYSTATS_ENTER_SESSION_PACK
--- @param data  
--- @return void (Type not found)
function PlaystatsEnterSessionPack(data) end

--- @name _PLAYSTATS_DUPE_DETECTION
--- @param data  
--- @return void (Type not found)
function PlaystatsDupeDetection(data) end

--- @name PLAYSTATS_FRIEND_ACTIVITY
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function PlaystatsFriendActivity(p0, p1) end

--- @name PLAYSTATS_HEIST_SAVE_CHEAT
--- @param hash Hash 
--- @param p1 number 
--- @return void (Type not found)
function PlaystatsHeistSaveCheat(hash, p1) end

--- NativeDB Introduced: v1290
--- @name _PLAYSTATS_H2_INSTANCE_END
--- @param data  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsH2InstanceEnd(data, p1, p2, p3) end

--- NativeDB Introduced: v1290
--- @name _PLAYSTATS_H2_FMPREP_END
--- @param data  
--- @return void (Type not found)
function PlaystatsH2FmprepEnd(data) end

--- longest time being ilde?  
--- @name PLAYSTATS_IDLE_KICK
--- @param time number 
--- @return void (Type not found)
function PlaystatsIdleKick(time) end

--- @name _PLAYSTATS_GUNRUN_MISSION_ENDED
--- @param data  
--- @return void (Type not found)
function PlaystatsGunrunMissionEnded(data) end

--- @name PLAYSTATS_IMPORT_EXPORT_MISSION_DONE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsImportExportMissionDone(p0, p1, p2, p3) end

--- @name PLAYSTATS_JOB_BEND
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsJobBend(p0, p1, p2, p3) end

--- @name PLAYSTATS_HOLD_UP_MISSION_DONE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsHoldUpMissionDone(p0, p1, p2, p3) end

--- NativeDB Introduced: v2699
--- @name _PLAYSTATS_INVENTORY
--- @param p0  
--- @return void (Type not found)
function PlaystatsInventory(p0) end

--- NativeDB Removed Parameter 4: Any p3
--- NativeDB Removed Parameter 5: Any p4
--- NativeDB Removed Parameter 6: Any p5
--- NativeDB Removed Parameter 7: Any p6
--- @name PLAYSTATS_MATCH_STARTED
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @return void (Type not found)
function PlaystatsMatchStarted(p0, p1, p2, p3, p4, p5, p6) end

--- @name PLAYSTATS_MISSION_STARTED
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3 boolean 
--- @return void (Type not found)
function PlaystatsMissionStarted(p0, p1, p2, p3) end

--- @name PLAYSTATS_LEAVE_JOB_CHAIN
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function PlaystatsLeaveJobChain(p0, p1, p2, p3, p4) end

--- @name PLAYSTATS_NPC_INVITE
--- @param p0  
--- @return void (Type not found)
function PlaystatsNpcInvite(p0) end

--- @name PLAYSTATS_MISSION_OVER
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3 boolean 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return void (Type not found)
function PlaystatsMissionOver(p0, p1, p2, p3, p4, p5) end

--- @name PLAYSTATS_MISSION_CHECKPOINT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsMissionCheckpoint(p0, p1, p2, p3) end

--- NativeDB Introduced: v1734
--- @name _PLAYSTATS_PASSIVE_MODE
--- @param p0 boolean 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function PlaystatsPassiveMode(p0, p1, p2, p3) end

--- **This native does absolutely nothing, just a nullsub**
--- @name PLAYSTATS_ODDJOB_DONE
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function PlaystatsOddjobDone(p0, p1, p2) end

--- @name _PLAYSTATS_PI_MENU_HIDE_SETTINGS
--- @param data  
--- @return void (Type not found)
function PlaystatsPiMenuHideSettings(data) end

--- @name PLAYSTATS_QUICKFIX_TOOL
--- @param element number 
--- @param item string 
--- @return void (Type not found)
function PlaystatsQuickfixTool(element, item) end

--- @name PLAYSTATS_PROP_CHANGE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsPropChange(p0, p1, p2, p3) end

--- @name PLAYSTATS_RACE_CHECKPOINT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function PlaystatsRaceCheckpoint(p0, p1, p2, p3, p4) end

--- NativeDB Removed Parameter 5: Any p4
--- NativeDB Removed Parameter 6: Any p5
--- NativeDB Removed Parameter 7: Any p6
--- NativeDB Removed Parameter 8: Any p7
--- NativeDB Removed Parameter 9: Any p8
--- NativeDB Removed Parameter 10: Any p9
--- @name PLAYSTATS_RACE_TO_POINT_MISSION_DONE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @param p7  
--- @param p8  
--- @param p9  
--- @return void (Type not found)
function PlaystatsRaceToPointMissionDone(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- @name PLAYSTATS_RANK_UP
--- @param rank number 
--- @return void (Type not found)
function PlaystatsRankUp(rank) end

--- @name PLAYSTATS_RANDOM_MISSION_DONE
--- @param name string 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsRandomMissionDone(name, p1, p2, p3) end

--- NativeDB Introduced: v1180
--- @name _PLAYSTATS_PEGASAIRCRAFT
--- @param modelHash Hash 
--- @return void (Type not found)
function PlaystatsPegasaircraft(modelHash) end

--- @name _PLAYSTATS_SELL_CONTRABAND
--- @param data  
--- @return void (Type not found)
function PlaystatsSellContraband(data) end

--- @name _PLAYSTATS_RECOVER_CONTRABAND
--- @param data  
--- @return void (Type not found)
function PlaystatsRecoverContraband(data) end

--- NativeDB Introduced: v2372
--- @name _PLAYSTATS_ROBBERY_FINALE
--- @param p0  
--- @return void (Type not found)
function PlaystatsRobberyFinale(p0) end

--- Sets a byte that is then used in session_host and session_join metrics when hosting or joining a session
--- @name PLAYSTATS_SET_JOIN_TYPE
--- @param joinType number 
--- @return void (Type not found)
function PlaystatsSetJoinType(joinType) end

--- @name PLAYSTATS_ROS_BET
--- @param amount number 
--- @param act number 
--- @param player Player 
--- @param cm number 
--- @return void (Type not found)
function PlaystatsRosBet(amount, act, player, cm) end

--- NativeDB Introduced: v2372
--- @name _PLAYSTATS_ROBBERY_PREP
--- @param p0  
--- @return void (Type not found)
function PlaystatsRobberyPrep(p0) end

--- @name PLAYSTATS_SHOP_ITEM
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function PlaystatsShopItem(p0, p1, p2, p3, p4) end

--- @name _PLAYSTATS_SPENT_PI_CUSTOM_LOADOUT
--- @param amount number 
--- @return void (Type not found)
function PlaystatsSpentPiCustomLoadout(amount) end

--- NativeDB Introduced: v1180
--- @name _PLAYSTATS_SMUG_MISSION_ENDED
--- @param data  
--- @return void (Type not found)
function PlaystatsSmugMissionEnded(data) end

--- Allows CEventNetworkStuntPerformed to be triggered.
--- @name _PLAYSTATS_STUNT_PERFORMED_EVENT_ALLOW_TRIGGER
--- @return void (Type not found)
function PlaystatsStuntPerformedEventAllowTrigger() end

--- Disallows CEventNetworkStuntPerformed to be triggered.
--- @name _PLAYSTATS_STUNT_PERFORMED_EVENT_DISALLOW_TRIGGER
--- @return void (Type not found)
function PlaystatsStuntPerformedEventDisallowTrigger() end

--- NativeDB Introduced: v1604
--- @name _PLAYSTATS_SPECTATOR_WHEEL_SPIN
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function PlaystatsSpectatorWheelSpin(p0, p1, p2, p3) end

--- @name PLAYSTATS_WEAPON_MODE_CHANGE
--- @param weaponHash Hash 
--- @param componentHashTo Hash 
--- @param componentHashFrom Hash 
--- @return void (Type not found)
function PlaystatsWeaponModeChange(weaponHash, componentHashTo, componentHashFrom) end

--- @name PRESENCE_EVENT_UPDATESTAT_INT
--- @param statHash Hash 
--- @param value number 
--- @param p2 number 
--- @return void (Type not found)
function PresenceEventUpdatestatInt(statHash, value, p2) end

--- NativeDB Introduced: v1493
--- @name _PLAYSTATS_STONE_HATCHET_END
--- @param data  
--- @return void (Type not found)
function PlaystatsStoneHatchetEnd(data) end

--- @name PLAYSTATS_WEBSITE_VISITED
--- @param scaleformHash Hash 
--- @param p1 number 
--- @return void (Type not found)
function PlaystatsWebsiteVisited(scaleformHash, p1) end

--- @name PRESENCE_EVENT_UPDATESTAT_FLOAT
--- @param statHash Hash 
--- @param value number 
--- @param p2 number 
--- @return void (Type not found)
function PresenceEventUpdatestatFloat(statHash, value, p2) end

--- Sets profile setting 501
--- @name _SET_SAVE_MIGRATION_TRANSACTION_ID
--- @param transactionId number 
--- @return void (Type not found)
function SetSaveMigrationTransactionId(transactionId) end

--- @name SET_PROFILE_SETTING_PROLOGUE_COMPLETE
--- @return void (Type not found)
function SetProfileSettingPrologueComplete() end

--- PLAYSTATS_START_INVITE_DESPAWNING?
--- @name _PLAYSTATS_START_OFFLINE_MODE
--- @return void (Type not found)
function PlaystatsStartOfflineMode() end

--- Example:
--- for (v_2 = 0; v_2 <= 4; v_2 += 1) {
---     STATS::STAT_CLEAR_SLOT_FOR_RELOAD(v_2);
--- }
--- @name STAT_CLEAR_SLOT_FOR_RELOAD
--- @param statSlot number 
--- @return 
function StatClearSlotForReload(statSlot) end

--- @name STAT_DELETE_SLOT
--- @param p0  
--- @return 
function StatDeleteSlot(p0) end

--- Sets profile setting 866
--- SET_*
--- @name _SET_HAS_CONTENT_UNLOCKS_FLAGS
--- @param value number 
--- @return void (Type not found)
function SetHasContentUnlocksFlags(value) end

--- p2 - Default value? Seems to be -1 most of the time.  
--- @name STAT_GET_BOOL_MASKED
--- @param statName Hash 
--- @param mask number 
--- @param p2 number 
--- @return boolean
function StatGetBoolMasked(statName, mask, p2) end

--- @name STAT_GET_FLOAT
--- @param statHash Hash 
--- @param outValue number 
--- @param p2  
--- @return boolean
function StatGetFloat(statHash, outValue, p2) end

--- p2 appears to always be -1  
--- @name STAT_GET_INT
--- @param statHash Hash 
--- @param outValue number 
--- @param p2 number 
--- @return boolean
function StatGetInt(statHash, outValue, p2) end

--- @name STAT_GET_MASKED_INT
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return boolean
function StatGetMaskedInt(p0, p1, p2, p3, p4) end

--- @name STAT_GET_BOOL
--- @param statHash Hash 
--- @param outValue boolean 
--- @param p2  
--- @return boolean
function StatGetBool(statHash, outValue, p2) end

--- @name STAT_GET_NUMBER_OF_HOURS
--- @param statName Hash 
--- @return number
function StatGetNumberOfHours(statName) end

--- @name STAT_GET_DATE
--- @param statHash Hash 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function StatGetDate(statHash, p1, p2, p3) end

--- @name STAT_GET_LICENSE_PLATE
--- @param statName Hash 
--- @return string
function StatGetLicensePlate(statName) end

--- @name STAT_GET_NUMBER_OF_DAYS
--- @param statName Hash 
--- @return number
function StatGetNumberOfDays(statName) end

--- @name STAT_GET_NUMBER_OF_MINUTES
--- @param statName Hash 
--- @return number
function StatGetNumberOfMinutes(statName) end

--- Needs more research. Possibly used to calculate the "mask" when calling "STAT_SET_MASKED_INT"?  
--- @name _STAT_GET_PACKED_INT_MASK
--- @param p0 number 
--- @return number
function StatGetPackedIntMask(p0) end

--- @name STAT_GET_POS
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return boolean
function StatGetPos(p0, p1, p2, p3, p4) end

--- @name _STAT_GET_CANCEL_SAVE_MIGRATION_STATUS
--- @return number
function StatGetCancelSaveMigrationStatus() end

--- @name STAT_GET_NUMBER_OF_SECONDS
--- @param statName Hash 
--- @return number
function StatGetNumberOfSeconds(statName) end

--- @name _STAT_GET_SAVE_MIGRATION_CONSUME_CONTENT_UNLOCK_STATUS
--- @param p0 number 
--- @return number
function StatGetSaveMigrationConsumeContentUnlockStatus(p0) end

--- Needs more research. Possibly used to calculate the "mask" when calling "STAT_SET_BOOL_MASKED"?  
--- @name _STAT_GET_PACKED_BOOL_MASK
--- @param p0 number 
--- @return number
function StatGetPackedBoolMask(p0) end

--- @name STAT_INCREMENT
--- @param statName Hash 
--- @param value number 
--- @return void (Type not found)
function StatIncrement(statName, value) end

--- @name STAT_GET_SAVE_MIGRATION_STATUS
--- @param data  
--- @return number
function StatGetSaveMigrationStatus(data) end

--- p1 is always -1 in the script files  
--- @name STAT_GET_STRING
--- @param statHash Hash 
--- @param p1 number 
--- @return string
function StatGetString(statHash, p1) end

--- Needs more research. Seems to return "STAT_UNKNOWN" if no such user id exists.  
--- @name STAT_GET_USER_ID
--- @param p0  
--- @return string
function StatGetUserId(p0) end

--- @name STAT_LOAD_PENDING
--- @param p0  
--- @return boolean
function StatLoadPending(p0) end

--- @name _STAT_SAVE_MIGRATION_CONSUME_CONTENT_UNLOCK
--- @param contentId Hash 
--- @param srcPlatform string 
--- @param srcGamerHandle string 
--- @return boolean
function StatSaveMigrationConsumeContentUnlock(contentId, srcPlatform, srcGamerHandle) end

--- @name _STAT_SAVE_MIGRATION_CANCEL
--- @return boolean
function StatSaveMigrationCancel() end

--- NativeDB Added Parameter 4: Any p3
--- @name STAT_SAVE
--- @param p0 number 
--- @param p1 boolean 
--- @param p2 number 
--- @return boolean
function StatSave(p0, p1, p2) end

--- platformName must be one of the following: ps3, xbox360, ps4, xboxone
--- @name _STAT_MIGRATE_SAVE
--- @param platformName string 
--- @return boolean
function StatMigrateSave(platformName) end

--- @name STAT_SAVE_MIGRATION_STATUS_START
--- @return boolean
function StatSaveMigrationStatusStart() end

--- @name STAT_SAVE_PENDING_OR_REQUESTED
--- @return boolean
function StatSavePendingOrRequested() end

--- @name STAT_SET_BLOCK_SAVES
--- @param toggle boolean 
--- @return void (Type not found)
function StatSetBlockSaves(toggle) end

--- Example:
---  STATS::STAT_SET_BOOL(MISC::GET_HASH_KEY("MPPLY_MELEECHLENGECOMPLETED"), trur, true);
--- @name STAT_SET_BOOL
--- @param statName Hash 
--- @param value boolean 
--- @param save boolean 
--- @return boolean
function StatSetBool(statName, value, save) end

--- @name STAT_SAVE_PENDING
--- @return boolean
function StatSavePending() end

--- @name STAT_SET_BOOL_MASKED
--- @param statName Hash 
--- @param value boolean 
--- @param mask number 
--- @param save boolean 
--- @return boolean
function StatSetBoolMasked(statName, value, mask, save) end

--- p1 always true.  
--- @name STAT_SET_CURRENT_POSIX_TIME
--- @param statName Hash 
--- @param p1 boolean 
--- @return boolean
function StatSetCurrentPosixTime(statName, p1) end

--- @name STAT_LOAD
--- @param p0 number 
--- @return boolean
function StatLoad(p0) end

--- 'value' is a structure to a structure, 'numFields' is how many fields there are in said structure (usually 7).  
--- The structure looks like this:  
--- int year  
--- int month  
--- int day  
--- int hour  
--- int minute  
--- int second  
--- int millisecond  
--- The decompiled scripts use TIME::GET_POSIX_TIME to fill this structure.  
--- @name STAT_SET_DATE
--- @param statName Hash 
--- @param value  
--- @param numFields number 
--- @param save boolean 
--- @return boolean
function StatSetDate(statName, value, numFields, save) end

--- The following values have been found in the decompiled scripts:  
--- "RC_ABI1"  
--- "RC_ABI2"  
--- "RC_BA1"  
--- "RC_BA2"  
--- "RC_BA3"  
--- "RC_BA3A"  
--- "RC_BA3C"  
--- "RC_BA4"  
--- "RC_DRE1"  
--- "RC_EPS1"  
--- "RC_EPS2"  
--- "RC_EPS3"  
--- "RC_EPS4"  
--- "RC_EPS5"  
--- "RC_EPS6"  
--- "RC_EPS7"  
--- "RC_EPS8"  
--- "RC_EXT1"  
--- "RC_EXT2"  
--- "RC_EXT3"  
--- "RC_EXT4"  
--- "RC_FAN1"  
--- "RC_FAN2"  
--- "RC_FAN3"  
--- "RC_HAO1"  
--- "RC_HUN1"  
--- "RC_HUN2"  
--- "RC_JOS1"  
--- "RC_JOS2"  
--- "RC_JOS3"  
--- "RC_JOS4"  
--- "RC_MAU1"  
--- "RC_MIN1"  
--- "RC_MIN2"  
--- "RC_MIN3"  
--- "RC_MRS1"  
--- "RC_MRS2"  
--- "RC_NI1"  
--- "RC_NI1A"  
--- "RC_NI1B"  
--- "RC_NI1C"  
--- "RC_NI1D"  
--- "RC_NI2"  
--- "RC_NI3"  
--- "RC_OME1"  
--- "RC_OME2"  
--- "RC_PA1"  
--- "RC_PA2"  
--- "RC_PA3"  
--- "RC_PA3A"  
--- "RC_PA3B"  
--- "RC_PA4"  
--- "RC_RAM1"  
--- "RC_RAM2"  
--- "RC_RAM3"  
--- "RC_RAM4"  
--- "RC_RAM5"  
--- "RC_SAS1"  
--- "RC_TON1"  
--- "RC_TON2"  
--- "RC_TON3"  
--- "RC_TON4"  
--- "RC_TON5"  
--- @name STAT_SET_GXT_LABEL
--- @param statName Hash 
--- @param value string 
--- @param save boolean 
--- @return boolean
function StatSetGxtLabel(statName, value, save) end

--- Example:
---  STATS::STAT_SET_FLOAT(MISC::GET_HASH_KEY("MP0_WEAPON_ACCURACY"), 66.6f, true);
--- @name STAT_SET_FLOAT
--- @param statName Hash 
--- @param value number 
--- @param save boolean 
--- @return boolean
function StatSetFloat(statName, value, save) end

--- @name STAT_SET_CHEAT_IS_ACTIVE
--- @return void (Type not found)
function StatSetCheatIsActive() end

--- @name STAT_SET_INT
--- @param statName Hash 
--- @param value number 
--- @param save boolean 
--- @return boolean
function StatSetInt(statName, value, save) end

--- @name STAT_SET_MASKED_INT
--- @param statName Hash 
--- @param p1  
--- @param p2  
--- @param p3 number 
--- @param save boolean 
--- @return boolean
function StatSetMaskedInt(statName, p1, p2, p3, save) end

--- Does not take effect immediately, unfortunately.
--- profileSetting seems to only be 936, 937 and 938 in scripts
--- @name STAT_SET_PROFILE_SETTING_VALUE
--- @param profileSetting number 
--- @param value number 
--- @return void (Type not found)
function StatSetProfileSettingValue(profileSetting, value) end

--- @name STAT_SET_STRING
--- @param statName Hash 
--- @param value string 
--- @param save boolean 
--- @return boolean
function StatSetString(statName, value, save) end

--- @name STAT_SET_LICENSE_PLATE
--- @param statName Hash 
--- @param str string 
--- @return boolean
function StatSetLicensePlate(statName, str) end

--- @name STAT_SET_USER_ID
--- @param statName Hash 
--- @param value string 
--- @param save boolean 
--- @return boolean
function StatSetUserId(statName, value, save) end

--- @name STAT_SET_POS
--- @param statName Hash 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param save boolean 
--- @return boolean
function StatSetPos(statName, x, y, z, save) end

--- @name STAT_SLOT_IS_LOADED
--- @param p0  
--- @return boolean
function StatSlotIsLoaded(p0) end
