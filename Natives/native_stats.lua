
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
--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @param section string 
--- @return Hash
function GetNgstatBoolHash(index, spStat, charStat, character, section) end

--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @return Hash
function GetPackedTuIntStatKey(index, spStat, charStat, character) end

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
--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @param section string 
--- @return Hash
function GetNgstatIntHash(index, spStat, charStat, character, section) end

--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @return Hash
function GetPackedBoolStatKey(index, spStat, charStat, character) end

--- @param p0  
--- @param p1  
--- @return void (Type not found)
function HiredLimo(p0, p1) end

--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @return Hash
function GetPackedIntStatKey(index, spStat, charStat, character) end

--- @param p0  
--- @param gamerHandleCsv string 
--- @param platformName string 
--- @return boolean
function Leaderboards2ReadByPlatform(p0, gamerHandleCsv, platformName) end

--- @param index number 
--- @param spStat boolean 
--- @param charStat boolean 
--- @param character number 
--- @return Hash
function GetPackedTuBoolStatKey(index, spStat, charStat, character) end

--- @param p0  
--- @param p1  
--- @return boolean
function Leaderboards2ReadByHandle(p0, p1) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function Leaderboards2ReadByRadius(p0, p1, p2) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @return boolean
function Leaderboards2ReadByRow(p0, p1, p2, p3, p4, p5, p6) end

--- @param p0  
--- @param p1 number 
--- @param p2  
--- @return boolean
function Leaderboards2ReadByScoreFloat(p0, p1, p2) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function Leaderboards2ReadRankPrediction(p0, p1, p2) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3 boolean 
--- @param p4  
--- @param p5  
--- @return boolean
function Leaderboards2ReadFriendsByRow(p0, p1, p2, p3, p4, p5) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function Leaderboards2ReadByScoreInt(p0, p1, p2) end

--- @param p0  
--- @return boolean
function Leaderboards2WriteData(p0) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function Leaderboards2ReadByRank(p0, p1, p2) end

--- @param statName Hash 
--- @param value number 
--- @return void (Type not found)
function LeaderboardsDeaths(statName, value) end

--- @param p0  
--- @param p1  
--- @return boolean
function Leaderboards2WriteDataForEventType(p0, p1) end

--- @return void (Type not found)
function LeaderboardsClearCacheData() end

--- @param p0  
--- @return boolean
function LeaderboardsGetCacheExists(p0) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function LeaderboardsGetCacheDataRow(p0, p1, p2) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return 
function LeaderboardsGetColumnType(p0, p1, p2) end

--- @param p0  
--- @return number
function LeaderboardsGetCacheNumberOfRows(p0) end

--- @param p0  
--- @return boolean
function LeaderboardsCacheDataRow(p0) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return 
function LeaderboardsGetColumnId(p0, p1, p2) end

--- @param p0  
--- @param p1  
--- @return 
function LeaderboardsGetNumberOfColumns(p0, p1) end

--- @param p0  
--- @return 
function LeaderboardsGetCacheTime(p0) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return 
function LeaderboardsReadClear(p0, p1, p2) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function LeaderboardsReadPending(p0, p1, p2) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return boolean
function LeaderboardsReadSuccessful(p0, p1, p2) end

--- @return boolean
function LeaderboardsReadAnyPending() end

--- @param p0  
--- @param p1  
--- @param p2 number 
--- @return void (Type not found)
function LeaderboardsWriteAddColumn(p0, p1, p2) end

--- @param p0  
--- @param p1  
--- @param vehicleHash Hash 
--- @return void (Type not found)
function OrderedBossVehicle(p0, p1, vehicleHash) end

--- @return 
function LeaderboardsReadClearAll() end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function LeaderboardsWriteAddColumnLong(p0, p1, p2) end

--- NativeDB Introduced: v1604
--- @param data  
--- @return void (Type not found)
function PlaystatsArenaWarsEnded(data) end

--- NativeDB Introduced: v1604
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @return void (Type not found)
function PlaystatsArenaWarSpectator(p0, p1, p2, p3, p4) end

--- @param p0  
--- @return void (Type not found)
function PlaystatsAcquiredHiddenPackage(p0) end

--- @param p0  
--- @param p1  
--- @return void (Type not found)
function PlaystatsActivityDone(p0, p1) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return void (Type not found)
function PlaystatsArcadegame(p0, p1, p2, p3, p4, p5) end

--- @param amount number 
--- @param type Hash 
--- @param category Hash 
--- @return void (Type not found)
function PlaystatsAwardXp(amount, type, category) end

--- NativeDB Introduced: v2372
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsCarclubChallenge(p0, p1, p2, p3) end

--- @param action string 
--- @param value number 
--- @return void (Type not found)
function PlaystatsBackgroundScriptAction(action, value) end

--- @param id number 
--- @return void (Type not found)
function PlaystatsAwardBadsport(id) end

--- @param data  
--- @return void (Type not found)
function PlaystatsBuyContraband(data) end

--- NativeDB Introduced: v2372
--- @param p0  
--- @return void (Type not found)
function PlaystatsCarclubPoints(p0) end

--- @param p0 number 
--- @return void (Type not found)
function PlaystatsBanAlert(p0) end

--- NativeDB Introduced: v2372
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function PlaystatsCarclubPrize(p0, p1) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoChip(p0) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoBlackjack(p0) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoBlackjackLight(p0) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoInsidetrackLight(p0) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoInsidetrack(p0) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoRouletteLight(p0) end

--- NativeDB Introduced: v1734
--- @param data  
--- @return void (Type not found)
function PlaystatsCasinoMissionEnded(data) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoSlotmachineLight(p0) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoRoulette(p0) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoLuckyseven(p0) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoThreecardpoker(p0) end

--- @param cheat string 
--- @return void (Type not found)
function PlaystatsCheatApplied(cheat) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function PlaystatsCasinoStoryMissionEnded(p0, p1) end

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
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoSlotmachine(p0) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function PlaystatsChangeMcEmblem(p0, p1, p2, p3, p4) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function PlaystatsClothChange(p0, p1, p2, p3, p4) end

--- NativeDB Introduced: v1734
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

--- NativeDB Added Parameter 7: Any p6
--- NativeDB Added Parameter 8: Any p7
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return void (Type not found)
function PlaystatsCrateDropMissionDone(p0, p1, p2, p3, p4, p5) end

--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @return void (Type not found)
function PlaystatsCrateCreated(p0, p1, p2) end

--- NativeDB Introduced: v1734
--- @param p0  
--- @return void (Type not found)
function PlaystatsCasinoThreecardpokerLight(p0) end

--- @param data  
--- @return void (Type not found)
function PlaystatsDefendContraband(data) end

--- @param p0  
--- @return void (Type not found)
function PlaystatsDirectorMode(p0) end

--- NativeDB Introduced: v1493
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @return void (Type not found)
function PlaystatsDroneUsage(p0, p1, p2) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return void (Type not found)
function PlaystatsEarnedMcPoints(p0, p1, p2, p3, p4, p5) end

--- @param data  
--- @return void (Type not found)
function PlaystatsDupeDetection(data) end

--- NativeDB Introduced: v1290
--- @param data  
--- @return void (Type not found)
function PlaystatsDarMissionEnd(data) end

--- NativeDB Introduced: v1290
--- @param data  
--- @return void (Type not found)
function PlaystatsEnterSessionPack(data) end

--- @param data  
--- @return void (Type not found)
function PlaystatsGunrunMissionEnded(data) end

--- @param p0  
--- @param p1  
--- @return void (Type not found)
function PlaystatsFriendActivity(p0, p1) end

--- NativeDB Introduced: v1290
--- @param data  
--- @return void (Type not found)
function PlaystatsH2FmprepEnd(data) end

--- NativeDB Introduced: v1290
--- @param data  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsH2InstanceEnd(data, p1, p2, p3) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsHoldUpMissionDone(p0, p1, p2, p3) end

--- @param hash Hash 
--- @param p1 number 
--- @return void (Type not found)
function PlaystatsHeistSaveCheat(hash, p1) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsImportExportMissionDone(p0, p1, p2, p3) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsJobBend(p0, p1, p2, p3) end

--- NativeDB Introduced: v2699
--- @param p0  
--- @return void (Type not found)
function PlaystatsInventory(p0) end

--- longest time being ilde?  
--- @param time number 
--- @return void (Type not found)
function PlaystatsIdleKick(time) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function PlaystatsLeaveJobChain(p0, p1, p2, p3, p4) end

--- NativeDB Introduced: v2372
--- @param p0  
--- @return void (Type not found)
function PlaystatsExtraEvent(p0) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsMissionCheckpoint(p0, p1, p2, p3) end

--- NativeDB Removed Parameter 4: Any p3
--- NativeDB Removed Parameter 5: Any p4
--- NativeDB Removed Parameter 6: Any p5
--- NativeDB Removed Parameter 7: Any p6
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @return void (Type not found)
function PlaystatsMatchStarted(p0, p1, p2, p3, p4, p5, p6) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3 boolean 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return void (Type not found)
function PlaystatsMissionOver(p0, p1, p2, p3, p4, p5) end

--- **This native does absolutely nothing, just a nullsub**
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function PlaystatsOddjobDone(p0, p1, p2) end

--- NativeDB Introduced: v1180
--- @param modelHash Hash 
--- @return void (Type not found)
function PlaystatsPegasaircraft(modelHash) end

--- @param data  
--- @return void (Type not found)
function PlaystatsPiMenuHideSettings(data) end

--- @param p0  
--- @return void (Type not found)
function PlaystatsNpcInvite(p0) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3 boolean 
--- @return void (Type not found)
function PlaystatsMissionStarted(p0, p1, p2, p3) end

--- NativeDB Introduced: v1734
--- @param p0 boolean 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function PlaystatsPassiveMode(p0, p1, p2, p3) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsPropChange(p0, p1, p2, p3) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function PlaystatsRaceCheckpoint(p0, p1, p2, p3, p4) end

--- @param rank number 
--- @return void (Type not found)
function PlaystatsRankUp(rank) end

--- NativeDB Removed Parameter 5: Any p4
--- NativeDB Removed Parameter 6: Any p5
--- NativeDB Removed Parameter 7: Any p6
--- NativeDB Removed Parameter 8: Any p7
--- NativeDB Removed Parameter 9: Any p8
--- NativeDB Removed Parameter 10: Any p9
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

--- NativeDB Introduced: v2372
--- @param p0  
--- @return void (Type not found)
function PlaystatsRobberyFinale(p0) end

--- @param name string 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function PlaystatsRandomMissionDone(name, p1, p2, p3) end

--- @param amount number 
--- @param act number 
--- @param player Player 
--- @param cm number 
--- @return void (Type not found)
function PlaystatsRosBet(amount, act, player, cm) end

--- @param element number 
--- @param item string 
--- @return void (Type not found)
function PlaystatsQuickfixTool(element, item) end

--- @param data  
--- @return void (Type not found)
function PlaystatsSellContraband(data) end

--- NativeDB Introduced: v2372
--- @param p0  
--- @return void (Type not found)
function PlaystatsRobberyPrep(p0) end

--- Sets a byte that is then used in session_host and session_join metrics when hosting or joining a session
--- @param joinType number 
--- @return void (Type not found)
function PlaystatsSetJoinType(joinType) end

--- NativeDB Introduced: v1180
--- @param data  
--- @return void (Type not found)
function PlaystatsSmugMissionEnded(data) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function PlaystatsShopItem(p0, p1, p2, p3, p4) end

--- NativeDB Introduced: v1604
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function PlaystatsSpectatorWheelSpin(p0, p1, p2, p3) end

--- PLAYSTATS_START_INVITE_DESPAWNING?
--- @return void (Type not found)
function PlaystatsStartOfflineMode() end

--- @param amount number 
--- @return void (Type not found)
function PlaystatsSpentPiCustomLoadout(amount) end

--- @param data  
--- @return void (Type not found)
function PlaystatsRecoverContraband(data) end

--- NativeDB Introduced: v1493
--- @param data  
--- @return void (Type not found)
function PlaystatsStoneHatchetEnd(data) end

--- @param weaponHash Hash 
--- @param componentHashTo Hash 
--- @param componentHashFrom Hash 
--- @return void (Type not found)
function PlaystatsWeaponModeChange(weaponHash, componentHashTo, componentHashFrom) end

--- Allows CEventNetworkStuntPerformed to be triggered.
--- @return void (Type not found)
function PlaystatsStuntPerformedEventAllowTrigger() end

--- @param statHash Hash 
--- @param value number 
--- @param p2 number 
--- @return void (Type not found)
function PresenceEventUpdatestatFloat(statHash, value, p2) end

--- @param scaleformHash Hash 
--- @param p1 number 
--- @return void (Type not found)
function PlaystatsWebsiteVisited(scaleformHash, p1) end

--- @param statHash Hash 
--- @param value number 
--- @param p2 number 
--- @return void (Type not found)
function PresenceEventUpdatestatInt(statHash, value, p2) end

--- Sets profile setting 866
--- SET_*
--- @param value number 
--- @return void (Type not found)
function SetHasContentUnlocksFlags(value) end

--- Disallows CEventNetworkStuntPerformed to be triggered.
--- @return void (Type not found)
function PlaystatsStuntPerformedEventDisallowTrigger() end

--- @param p0  
--- @return 
function StatDeleteSlot(p0) end

--- @return void (Type not found)
function SetProfileSettingPrologueComplete() end

--- Sets profile setting 501
--- @param transactionId number 
--- @return void (Type not found)
function SetSaveMigrationTransactionId(transactionId) end

--- Example:
--- for (v_2 = 0; v_2 <= 4; v_2 += 1) {
---     STATS::STAT_CLEAR_SLOT_FOR_RELOAD(v_2);
--- }
--- @param statSlot number 
--- @return 
function StatClearSlotForReload(statSlot) end

--- p2 - Default value? Seems to be -1 most of the time.  
--- @param statName Hash 
--- @param mask number 
--- @param p2 number 
--- @return boolean
function StatGetBoolMasked(statName, mask, p2) end

--- @return number
function StatGetCancelSaveMigrationStatus() end

--- @param statHash Hash 
--- @param outValue boolean 
--- @param p2  
--- @return boolean
function StatGetBool(statHash, outValue, p2) end

--- p2 appears to always be -1  
--- @param statHash Hash 
--- @param outValue number 
--- @param p2 number 
--- @return boolean
function StatGetInt(statHash, outValue, p2) end

--- @param statName Hash 
--- @return string
function StatGetLicensePlate(statName) end

--- @param statHash Hash 
--- @param outValue number 
--- @param p2  
--- @return boolean
function StatGetFloat(statHash, outValue, p2) end

--- @param statHash Hash 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function StatGetDate(statHash, p1, p2, p3) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return boolean
function StatGetMaskedInt(p0, p1, p2, p3, p4) end

--- @param statName Hash 
--- @return number
function StatGetNumberOfHours(statName) end

--- @param statName Hash 
--- @return number
function StatGetNumberOfMinutes(statName) end

--- @param statName Hash 
--- @return number
function StatGetNumberOfSeconds(statName) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return boolean
function StatGetPos(p0, p1, p2, p3, p4) end

--- Needs more research. Possibly used to calculate the "mask" when calling "STAT_SET_BOOL_MASKED"?  
--- @param p0 number 
--- @return number
function StatGetPackedBoolMask(p0) end

--- Needs more research. Possibly used to calculate the "mask" when calling "STAT_SET_MASKED_INT"?  
--- @param p0 number 
--- @return number
function StatGetPackedIntMask(p0) end

--- @param statName Hash 
--- @return number
function StatGetNumberOfDays(statName) end

--- @param p0 number 
--- @return number
function StatGetSaveMigrationConsumeContentUnlockStatus(p0) end

--- p1 is always -1 in the script files  
--- @param statHash Hash 
--- @param p1 number 
--- @return string
function StatGetString(statHash, p1) end

--- Needs more research. Seems to return "STAT_UNKNOWN" if no such user id exists.  
--- @param p0  
--- @return string
function StatGetUserId(p0) end

--- @param data  
--- @return number
function StatGetSaveMigrationStatus(data) end

--- @param statName Hash 
--- @param value number 
--- @return void (Type not found)
function StatIncrement(statName, value) end

--- platformName must be one of the following: ps3, xbox360, ps4, xboxone
--- @param platformName string 
--- @return boolean
function StatMigrateSave(platformName) end

--- @param p0 number 
--- @return boolean
function StatLoad(p0) end

--- @param p0  
--- @return boolean
function StatLoadPending(p0) end

--- NativeDB Added Parameter 4: Any p3
--- @param p0 number 
--- @param p1 boolean 
--- @param p2 number 
--- @return boolean
function StatSave(p0, p1, p2) end

--- @param contentId Hash 
--- @param srcPlatform string 
--- @param srcGamerHandle string 
--- @return boolean
function StatSaveMigrationConsumeContentUnlock(contentId, srcPlatform, srcGamerHandle) end

--- @return boolean
function StatSaveMigrationStatusStart() end

--- @param statName Hash 
--- @param value boolean 
--- @param mask number 
--- @param save boolean 
--- @return boolean
function StatSetBoolMasked(statName, value, mask, save) end

--- @return boolean
function StatSavePendingOrRequested() end

--- @return boolean
function StatSavePending() end

--- @return boolean
function StatSaveMigrationCancel() end

--- @param toggle boolean 
--- @return void (Type not found)
function StatSetBlockSaves(toggle) end

--- Example:
---  STATS::STAT_SET_BOOL(MISC::GET_HASH_KEY("MPPLY_MELEECHLENGECOMPLETED"), trur, true);
--- @param statName Hash 
--- @param value boolean 
--- @param save boolean 
--- @return boolean
function StatSetBool(statName, value, save) end

--- @return void (Type not found)
function StatSetCheatIsActive() end

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
--- @param statName Hash 
--- @param value  
--- @param numFields number 
--- @param save boolean 
--- @return boolean
function StatSetDate(statName, value, numFields, save) end

--- @param statName Hash 
--- @param p1  
--- @param p2  
--- @param p3 number 
--- @param save boolean 
--- @return boolean
function StatSetMaskedInt(statName, p1, p2, p3, save) end

--- Example:
---  STATS::STAT_SET_FLOAT(MISC::GET_HASH_KEY("MP0_WEAPON_ACCURACY"), 66.6f, true);
--- @param statName Hash 
--- @param value number 
--- @param save boolean 
--- @return boolean
function StatSetFloat(statName, value, save) end

--- p1 always true.  
--- @param statName Hash 
--- @param p1 boolean 
--- @return boolean
function StatSetCurrentPosixTime(statName, p1) end

--- @param statName Hash 
--- @param value number 
--- @param save boolean 
--- @return boolean
function StatSetInt(statName, value, save) end

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
--- @param statName Hash 
--- @param value string 
--- @param save boolean 
--- @return boolean
function StatSetGxtLabel(statName, value, save) end

--- @param statName Hash 
--- @param value string 
--- @param save boolean 
--- @return boolean
function StatSetString(statName, value, save) end

--- @param statName Hash 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param save boolean 
--- @return boolean
function StatSetPos(statName, x, y, z, save) end

--- @param statName Hash 
--- @param str string 
--- @return boolean
function StatSetLicensePlate(statName, str) end

--- Does not take effect immediately, unfortunately.
--- profileSetting seems to only be 936, 937 and 938 in scripts
--- @param profileSetting number 
--- @param value number 
--- @return void (Type not found)
function StatSetProfileSettingValue(profileSetting, value) end

--- @param p0  
--- @return boolean
function StatSlotIsLoaded(p0) end

--- @param statName Hash 
--- @param value string 
--- @param save boolean 
--- @return boolean
function StatSetUserId(statName, value, save) end
