
--- Does nothing and always returns false.
--- @name DEPOSIT_VC
--- @param amount number 
--- @return boolean
function DepositVc(amount) end

--- p1 = 0 (always)  
--- p2 = 1 (always)  
--- @name NETWORK_BUY_AIRSTRIKE
--- @param cost number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkBuyAirstrike(cost, p1, p2) end

--- NativeDB Added Parameter 1: int p0
--- NativeDB Added Parameter 2: int p1
--- NativeDB Added Parameter 3: int amount
--- NativeDB Added Parameter 4: int* p3
--- @name _CAN_PAY_GOON
--- @return boolean
function CanPayGoon() end

--- NativeDB Introduced: v323
--- @name NETWORK_BUY_BACKUP_GANG
--- @param p0 number 
--- @param p1 number 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkBuyBackupGang(p0, p1, p2, p3) end

--- The first parameter is the amount spent which is store in a global when this native is called. The global returns 10. Which is the price for both rides.  
--- The last 3 parameters are,   
--- 2,0,1 in the am_ferriswheel.c  
--- 1,0,1 in the am_rollercoaster.c  
--- @name NETWORK_BUY_FAIRGROUND_RIDE
--- @param amountSpent number 
--- @param p1  
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkBuyFairgroundRide(amountSpent, p1, p2, p3) end

--- p1 is just an assumption. p2 was false and p3 was true.  
--- @name NETWORK_BUY_BOUNTY
--- @param amount number 
--- @param victim Player 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkBuyBounty(amount, victim, p2, p3) end

--- NativeDB Introduced: v323
--- @name NETWORK_BUY_LOTTERY_TICKET
--- @param p0 number 
--- @param p1 number 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkBuyLotteryTicket(p0, p1, p2, p3) end

--- @name _NETWORK_BUY_CONTRABAND
--- @param p0 number 
--- @param p1 number 
--- @param p2 Hash 
--- @param p3 boolean 
--- @param p4 boolean 
--- @return void (Type not found)
function NetworkBuyContraband(p0, p1, p2, p3, p4) end

--- @name NETWORK_BUY_ITEM
--- @param amount number 
--- @param item Hash 
--- @param p2  
--- @param p3  
--- @param p4 boolean 
--- @param item_name string 
--- @param p6  
--- @param p7  
--- @param p8  
--- @param p9 boolean 
--- @return void (Type not found)
function NetworkBuyItem(amount, item, p2, p3, p4, item_name, p6, p7, p8, p9) end

--- @name NETWORK_CAN_BET
--- @param amount number 
--- @return boolean
function NetworkCanBet(amount) end

--- @name NETWORK_BUY_HEALTHCARE
--- @param cost number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkBuyHealthcare(cost, p1, p2) end

--- p1 = 0 (always)  
--- p2 = 1 (always)  
--- @name NETWORK_BUY_HELI_STRIKE
--- @param cost number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkBuyHeliStrike(cost, p1, p2) end

--- @name NETWORK_BUY_PROPERTY
--- @param propertyCost number 
--- @param propertyName Hash 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkBuyProperty(propertyCost, propertyName, p2, p3) end

--- NativeDB Introduced: v323
--- @name NETWORK_BUY_SMOKES
--- @param p0 number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkBuySmokes(p0, p1, p2) end

--- NETWORK_C\*
--- NativeDB Introduced: v1734
--- @name _NETWORK_CASINO_CAN_GAMBLE
--- @param p0  
--- @return boolean
function NetworkCasinoCanGamble(p0) end

--- @name NETWORK_CAN_SHARE_JOB_CASH
--- @return boolean
function NetworkCanShareJobCash() end

--- NativeDB Introduced: v323
--- @name NETWORK_CAN_BUY_LOTTERY_TICKET
--- @param cost number 
--- @return boolean
function NetworkCanBuyLotteryTicket(cost) end

--- @name NETWORK_CAN_RECEIVE_PLAYER_CASH
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return boolean
function NetworkCanReceivePlayerCash(p0, p1, p2, p3) end

--- NativeDB Added Parameter 6: Any p5
--- @name NETWORK_CAN_SPEND_MONEY
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @param p4  
--- @return boolean
function NetworkCanSpendMoney(p0, p1, p2, p3, p4) end

--- GTAO_CASINO_HOUSE
--- GTAO_CASINO_INSIDETRACK
--- GTAO_CASINO_LUCKYWHEEL
--- GTAO_CASINO_BLACKJACK
--- GTAO_CASINO_ROULETTE
--- GTAO_CASINO_SLOTS
--- GTAO_CASINO_PURCHASE_CHIPS
--- NETWORK_C\*
--- NativeDB Introduced: v1734
--- @name _NETWORK_CASINO_CAN_USE_GAMBLING_TYPE
--- @param hash Hash 
--- @return boolean
function NetworkCasinoCanUseGamblingType(hash) end

--- NETWORK_CAN_R??? or NETWORK_CAN_S???  
--- NativeDB Added Parameter 7: Any p6
--- @name _NETWORK_CAN_SPEND_MONEY_2
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @param p4  
--- @param p5  
--- @return boolean
function NetworkCanSpendMoney2(p0, p1, p2, p3, p4, p5) end

--- Same as 0x394DCDB9E836B7A9.
--- NETWORK_C\*
--- NativeDB Introduced: v1734
--- @name _NETWORK_CASINO_CAN_PURCHASE_CHIPS_WITH_PVC_2
--- @return boolean
function NetworkCasinoCanPurchaseChipsWithPvc2() end

--- Same as 0x8968D4D8C6C40C11.
--- NETWORK_C\*
--- NativeDB Introduced: v1734
--- @name _NETWORK_CASINO_CAN_PURCHASE_CHIPS_WITH_PVC
--- @return boolean
function NetworkCasinoCanPurchaseChipsWithPvc() end

--- NETWORK_C\*
--- NativeDB Introduced: v1734
--- @name _NETWORK_CASINO_PURCHASE_CHIPS
--- @param p0 number 
--- @param p1 number 
--- @return boolean
function NetworkCasinoPurchaseChips(p0, p1) end

--- @name NETWORK_CLEAR_CHARACTER_WALLET
--- @param characterSlot number 
--- @return void (Type not found)
function NetworkClearCharacterWallet(characterSlot) end

--- Note the 2nd parameters are always 1, 0. I have a feeling it deals with your money, wallet, bank. So when you delete the character it of course wipes the wallet cash at that time. So if that was the case, it would be eg, NETWORK_DELETE_CHARACTER(characterIndex, deleteWalletCash, deleteBankCash);  
--- @name NETWORK_DELETE_CHARACTER
--- @param characterSlot number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkDeleteCharacter(characterSlot, p1, p2) end

--- NETWORK_C\*
--- NativeDB Introduced: v1734
--- @name _NETWORK_CASINO_SELL_CHIPS
--- @param p0 number 
--- @param p1 number 
--- @return boolean
function NetworkCasinoSellChips(p0, p1) end

--- NativeDB Introduced: v323
--- @name _NETWORK_DEDUCT_CASH
--- @param amount number 
--- @param p1 string 
--- @param p2 string 
--- @param p3 boolean 
--- @param p4 boolean 
--- @param p5 boolean 
--- @return void (Type not found)
function NetworkDeductCash(amount, p1, p2, p3, p4, p5) end

--- @name _NETWORK_EARN_BOSS_AGENCY
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkEarnBossAgency(p0, p1, p2, p3) end

--- NativeDB Introduced: v1868
--- @name _NETWORK_EARN_CASINO_HEIST
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @return void (Type not found)
function NetworkEarnCasinoHeist(p0, p1, p2, p3, p4, p5, p6) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_EARN_BOUNTY_HUNTER_REWARD
--- @param p0  
--- @return void (Type not found)
function NetworkEarnBountyHunterReward(p0) end

--- NativeDB Introduced: v1868
--- @name _NETWORK_EARN_CASINO_HEIST_BONUS
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function NetworkEarnCasinoHeistBonus(p0, p1, p2, p3, p4) end

--- @name _NETWORK_EARN_BOSS
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkEarnBoss(p0, p1, p2) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_EARN_FMBB_WAGE_BONUS
--- @param p0  
--- @return void (Type not found)
function NetworkEarnFmbbWageBonus(p0) end

--- NativeDB Introduced: v2060
--- @name _NETWORK_EARN_COLLECTABLE_COMPLETED_COLLECTION
--- @param amount number 
--- @param p1  
--- @return void (Type not found)
function NetworkEarnCollectableCompletedCollection(amount, p1) end

--- DSPORT  
--- @name NETWORK_EARN_FROM_AI_TARGET_KILL
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function NetworkEarnFromAiTargetKill(p0, p1) end

--- Example for p1: "AM_DISTRACT_COPS"  
--- @name NETWORK_EARN_FROM_AMBIENT_JOB
--- @param p0 number 
--- @param p1 string 
--- @param p2  
--- @return void (Type not found)
function NetworkEarnFromAmbientJob(p0, p1, p2) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_EARN_FROM_ARENA_CAREER_PROGRESSION
--- @param amount number 
--- @param p1  
--- @return void (Type not found)
function NetworkEarnFromArenaCareerProgression(amount, p1) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_EARN_FROM_ARENA_SKILL_LEVEL_PROGRESSION
--- @param amount number 
--- @param p1  
--- @return void (Type not found)
function NetworkEarnFromArenaSkillLevelProgression(amount, p1) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_EARN_FROM_ARENA_WAR
--- @param amount number 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkEarnFromArenaWar(amount, p1, p2, p3) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_EARN_FROM_ASSASSINATE_TARGET_KILLED
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromAssassinateTargetKilled(amount) end

--- For the money bags that drop a max of $40,000. Often called 40k bags.
--- Most likely NETWORK_EARN_FROM_ROB***
--- @name _NETWORK_EARN_FROM_ARMOUR_TRUCK
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromArmourTruck(amount) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_EARN_FROM_BB_EVENT_BONUS
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromBbEventBonus(amount) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_EARN_FROM_AUTOSHOP_BUSINESS
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function NetworkEarnFromAutoshopBusiness(p0, p1) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_EARN_FROM_ASSASSINATE_TARGET_KILLED_2
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromAssassinateTargetKilled2(amount) end

--- @name NETWORK_EARN_FROM_BETTING
--- @param amount number 
--- @param p1 string 
--- @return void (Type not found)
function NetworkEarnFromBetting(amount, p1) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_EARN_FROM_AUTOSHOP_INCOME
--- @param p0  
--- @return void (Type not found)
function NetworkEarnFromAutoshopIncome(p0) end

--- @name NETWORK_EARN_FROM_BEND_JOB
--- @param amount number 
--- @param heistHash string 
--- @return void (Type not found)
function NetworkEarnFromBendJob(amount, heistHash) end

--- NativeDB Introduced: v2699
--- @name _NETWORK_EARN_FROM_BIKE_SHOP_BUSINESS
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function NetworkEarnFromBikeShopBusiness(p0, p1) end

--- NativeDB Introduced: v2699
--- @name _NETWORK_EARN_FROM_BIKER_INCOME
--- @param p0  
--- @return void (Type not found)
function NetworkEarnFromBikerIncome(p0) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_EARN_FROM_BUSINESS_BATTLE
--- @param p0  
--- @return void (Type not found)
function NetworkEarnFromBusinessBattle(p0) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_EARN_FROM_BB_EVENT_CARGO
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromBbEventCargo(amount) end

--- NativeDB Introduced: v2699
--- @name _NETWORK_EARN_FROM_BUSINESS_HUB_SOURCE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkEarnFromBusinessHubSource(p0, p1, p2, p3) end

--- @name NETWORK_EARN_FROM_BOUNTY
--- @param amount number 
--- @param networkHandle number 
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkEarnFromBounty(amount, networkHandle, p2, p3) end

--- @name _NETWORK_EARN_FROM_BUSINESS_PRODUCT
--- @param amount number 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkEarnFromBusinessProduct(amount, p1, p2, p3) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_EARN_FROM_BUSINESS_HUB_SELL
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkEarnFromBusinessHubSell(p0, p1, p2) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_EARN_FROM_CARCLUB_MEMBERSHIP
--- @param p0  
--- @return void (Type not found)
function NetworkEarnFromCarclubMembership(p0) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_CASINO_AWARD
--- @param amount number 
--- @param hash Hash 
--- @return void (Type not found)
function NetworkEarnFromCasinoAward(amount, hash) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_CASINO_MISSION_REWARD
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromCasinoMissionReward(amount) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_CASINO_MISSION_PARTICIPATION
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromCasinoMissionParticipation(amount) end

--- @name NETWORK_EARN_FROM_CHALLENGE_WIN
--- @param p0  
--- @param p1  
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkEarnFromChallengeWin(p0, p1, p2) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_CASINO_STORY_MISSION_REWARD
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromCasinoStoryMissionReward(amount) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_CASHING_OUT
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromCashingOut(amount) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_COLLECTABLES_ACTION_FIGURES
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromCollectablesActionFigures(amount) end

--- @name _NETWORK_EARN_FROM_CONTRABAND
--- @param amount number 
--- @param p1  
--- @return void (Type not found)
function NetworkEarnFromContraband(amount, p1) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_EARN_FROM_CLUB_MANAGEMENT_PARTICIPATION
--- @param p0  
--- @return void (Type not found)
function NetworkEarnFromClubManagementParticipation(p0) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_COLLECTION_ITEM
--- @param amount number 
--- @param p1  
--- @return void (Type not found)
function NetworkEarnFromCollectionItem(amount, p1) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_CRIMINAL_MASTERMIND_BONUS
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkEarnFromCriminalMastermindBonus(p0, p1, p2) end

--- @name NETWORK_EARN_FROM_DAILY_OBJECTIVES
--- @param p0 number 
--- @param p1 string 
--- @param p2 number 
--- @return void (Type not found)
function NetworkEarnFromDailyObjectives(p0, p1, p2) end

--- @name NETWORK_EARN_FROM_CRATE_DROP
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromCrateDrop(amount) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_COMPLETE_COLLECTION
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromCompleteCollection(amount) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_DAR_CHALLENGE
--- @param amount number 
--- @param p1  
--- @return void (Type not found)
function NetworkEarnFromDarChallenge(amount, p1) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_EARN_FROM_FMBB_BOSS_WORK
--- @param p0  
--- @return void (Type not found)
function NetworkEarnFromFmbbBossWork(p0) end

--- @name _NETWORK_EARN_FROM_DESTROYING_CONTRABAND
--- @param p0  
--- @return void (Type not found)
function NetworkEarnFromDestroyingContraband(p0) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_DAILY_OBJECTIVE_EVENT
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromDailyObjectiveEvent(amount) end

--- @name _NETWORK_EARN_FROM_GANG_PICKUP
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromGangPickup(amount) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_DOOMSDAY_FINALE_BONUS
--- @param amount number 
--- @param vehicleHash Hash 
--- @return void (Type not found)
function NetworkEarnFromDoomsdayFinaleBonus(amount, vehicleHash) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_GANGOPS_ELITE
--- @param amount number 
--- @param unk string 
--- @param actIndex number 
--- @return void (Type not found)
function NetworkEarnFromGangopsElite(amount, unk, actIndex) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_GANGOPS_AWARDS
--- @param amount number 
--- @param unk string 
--- @param p2  
--- @return void (Type not found)
function NetworkEarnFromGangopsAwards(amount, unk, p2) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_GANGOPS_JOBS_PREP_PARTICIPATION
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromGangopsJobsPrepParticipation(amount) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_GANGOPS_JOBS_FINALE
--- @param amount number 
--- @param unk string 
--- @return void (Type not found)
function NetworkEarnFromGangopsJobsFinale(amount, unk) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_EARN_FROM_FMBB_PHONECALL_MISSION
--- @param p0  
--- @return void (Type not found)
function NetworkEarnFromFmbbPhonecallMission(p0) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_GANGOPS_WAGES_BONUS
--- @param amount number 
--- @param p1 number 
--- @return void (Type not found)
function NetworkEarnFromGangopsWagesBonus(amount, p1) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_EARN_FROM_HACKER_TRUCK_MISSION
--- @param p0  
--- @param amount number 
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkEarnFromHackerTruckMission(p0, amount, p2, p3) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_GANGOPS_JOBS_SETUP
--- @param amount number 
--- @param unk string 
--- @return void (Type not found)
function NetworkEarnFromGangopsJobsSetup(amount, unk) end

--- @name NETWORK_EARN_FROM_HOLDUPS
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromHoldups(amount) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_GANGOPS_WAGES
--- @param amount number 
--- @param p1 number 
--- @return void (Type not found)
function NetworkEarnFromGangopsWages(amount, p1) end

--- @name NETWORK_EARN_FROM_JOB
--- @param amount number 
--- @param p1 string 
--- @return void (Type not found)
function NetworkEarnFromJob(amount, p1) end

--- NativeDB Introduced: v323
--- @name NETWORK_EARN_FROM_JOB_BONUS
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkEarnFromJobBonus(p0, p1, p2) end

--- @name NETWORK_EARN_FROM_NOT_BADSPORT
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromNotBadsport(amount) end

--- @name NETWORK_EARN_FROM_IMPORT_EXPORT
--- @param amount number 
--- @param modelHash Hash 
--- @return void (Type not found)
function NetworkEarnFromImportExport(amount, modelHash) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_JOB_X2
--- @param amount number 
--- @param p1 string 
--- @return void (Type not found)
function NetworkEarnFromJobX2(amount, p1) end

--- @name NETWORK_EARN_FROM_PERSONAL_VEHICLE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @param p7  
--- @param p8  
--- @return void (Type not found)
function NetworkEarnFromPersonalVehicle(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- @name _NETWORK_EARN_FROM_PREMIUM_JOB
--- @param amount number 
--- @param p1 string 
--- @return void (Type not found)
function NetworkEarnFromPremiumJob(amount, p1) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_RC_TIME_TRIAL
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromRcTimeTrial(amount) end

--- @name NETWORK_EARN_FROM_PROPERTY
--- @param amount number 
--- @param propertyName Hash 
--- @return void (Type not found)
function NetworkEarnFromProperty(amount, propertyName) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_RDR_BONUS
--- @param amount number 
--- @param p1  
--- @return void (Type not found)
function NetworkEarnFromRdrBonus(amount, p1) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_SELL_BASE
--- @param amount number 
--- @param baseNameHash Hash 
--- @return void (Type not found)
function NetworkEarnFromSellBase(amount, baseNameHash) end

--- @name _NETWORK_EARN_FROM_SELL_BUNKER
--- @param amount number 
--- @param bunkerHash Hash 
--- @return void (Type not found)
function NetworkEarnFromSellBunker(amount, bunkerHash) end

--- @name NETWORK_EARN_FROM_ROCKSTAR
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromRockstar(amount) end

--- @name NETWORK_EARN_FROM_PICKUP
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromPickup(amount) end

--- NativeDB Added Parameter 2: Any p1
--- NativeDB Added Parameter 3: Any p2
--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_SELLING_VEHICLE
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromSellingVehicle(amount) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_EARN_FROM_SPIN_THE_WHEEL_CASH
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromSpinTheWheelCash(amount) end

--- NativeDB Introduced: v2699
--- @name _NETWORK_EARN_FROM_SIGHTSEEING
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkEarnFromSightseeing(p0, p1, p2, p3) end

--- NativeDB Introduced: v1180
--- @name _NETWORK_EARN_FROM_SMUGGLING
--- @param amount number 
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkEarnFromSmuggling(amount, p1, p2, p3) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_EARN_FROM_TUNER_FINALE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function NetworkEarnFromTunerFinale(p0, p1, p2, p3, p4) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_EARN_FROM_TIME_TRIAL_WIN
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromTimeTrialWin(amount) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_FROM_TARGET_REFUND
--- @param amount number 
--- @param p1 number 
--- @return void (Type not found)
function NetworkEarnFromTargetRefund(amount, p1) end

--- @name NETWORK_EARN_FROM_VEHICLE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @param p7  
--- @return void (Type not found)
function NetworkEarnFromVehicle(p0, p1, p2, p3, p4, p5, p6, p7) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_EARN_FROM_TUNER_AWARD
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkEarnFromTunerAward(p0, p1, p2) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_EARN_FROM_VEHICLE_AUTOSHOP
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function NetworkEarnFromVehicleAutoshop(p0, p1) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_EARN_FROM_UPGRADE_AUTOSHOP_LOCATION
--- @param p0  
--- @param p1  
--- @return void (Type not found)
function NetworkEarnFromUpgradeAutoshopLocation(p0, p1) end

--- NativeDB Introduced: v1180
--- @name _NETWORK_EARN_FROM_WAGE_PAYMENT
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromWagePayment(amount) end

--- @name _NETWORK_EARN_FROM_VEHICLE_EXPORT
--- @param amount number 
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkEarnFromVehicleExport(amount, p1, p2) end

--- NativeDB Added Parameter 1: int amount
--- NativeDB Added Parameter 2: int id
--- @name _NETWORK_EARN_FROM_WAREHOUSE
--- @return void (Type not found)
function NetworkEarnFromWarehouse() end

--- NativeDB Introduced: v1180
--- @name _NETWORK_EARN_FROM_WAGE_PAYMENT_BONUS
--- @param amount number 
--- @return void (Type not found)
function NetworkEarnFromWagePaymentBonus(amount) end

--- NativeDB Introduced: v2189
--- @name _NETWORK_EARN_ISLAND_HEIST
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return void (Type not found)
function NetworkEarnIslandHeist(p0, p1, p2, p3, p4, p5) end

--- @name _NETWORK_EARN_GOON
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkEarnGoon(p0, p1, p2) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_EARN_FROM_VEHICLE_AUTOSHOP_BONUS
--- @param p0  
--- @return void (Type not found)
function NetworkEarnFromVehicleAutoshopBonus(p0) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_JOB_BONUS_HEIST_AWARD
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkEarnJobBonusHeistAward(p0, p1, p2) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_EARN_JOB_BONUS_FIRST_TIME_BONUS
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkEarnJobBonusFirstTimeBonus(p0, p1, p2) end

--- NativeDB Introduced: v323
--- @name NETWORK_GET_EVC_BALANCE
--- @return number
function NetworkGetEvcBalance() end

--- Same as 0xEA560AC9EEB1E19B.
--- Same as 0xEA560AC9EEB1E19B.
--- NativeDB Introduced: v323
--- @name NETWORK_GET_PVC_TRANSFER_BALANCE
--- @return number
function NetworkGetPvcTransferBalance() end

--- NativeDB Introduced: v323
--- @name NETWORK_GET_PVC_BALANCE
--- @return number
function NetworkGetPvcBalance() end

--- Same as 0x13A8DE2FD77D04F3.
--- NativeDB Introduced: v323
--- @name NETWORK_GET_REMAINING_TRANSFER_BALANCE
--- @return number
function NetworkGetRemainingTransferBalance() end

--- NativeDB Introduced: v323
--- @name NETWORK_GET_STRING_BANK_WALLET_BALANCE
--- @return string
function NetworkGetStringBankWalletBalance() end

--- NativeDB Introduced: v323
--- @name NETWORK_GET_STRING_WALLET_BALANCE
--- @param characterSlot number 
--- @return string
function NetworkGetStringWalletBalance(characterSlot) end

--- NativeDB Introduced: v323
--- @name _NETWORK_GET_IS_HIGH_EARNER
--- @return boolean
function NetworkGetIsHighEarner() end

--- Returns true if bank balance >= amount.
--- NativeDB Introduced: v323
--- @name _NETWORK_GET_VC_BANK_BALANCE_IS_NOT_LESS_THAN
--- @param amount number 
--- @return boolean
function NetworkGetVcBankBalanceIsNotLessThan(amount) end

--- @name NETWORK_GET_STRING_BANK_BALANCE
--- @return string
function NetworkGetStringBankBalance() end

--- @name NETWORK_GET_VC_WALLET_BALANCE
--- @param characterSlot number 
--- @return number
function NetworkGetVcWalletBalance(characterSlot) end

--- Returns true if bank balance + wallet balance >= amount.
--- @name _NETWORK_GET_VC_BANK_WALLET_BALANCE_IS_NOT_LESS_THAN
--- @param amount number 
--- @param characterSlot number 
--- @return boolean
function NetworkGetVcBankWalletBalanceIsNotLessThan(amount, characterSlot) end

--- Returns true if wallet balance >= amount.
--- NativeDB Introduced: v323
--- @name _NETWORK_GET_VC_WALLET_BALANCE_IS_NOT_LESS_THAN
--- @param amount number 
--- @param characterSlot number 
--- @return boolean
function NetworkGetVcWalletBalanceIsNotLessThan(amount, characterSlot) end

--- @name NETWORK_GET_VC_BALANCE
--- @return number
function NetworkGetVcBalance() end

--- @name NETWORK_GET_VC_BANK_BALANCE
--- @return number
function NetworkGetVcBankBalance() end

--- @name NETWORK_GIVE_PLAYER_JOBSHARE_CASH
--- @param amount number 
--- @param networkHandle number 
--- @return void (Type not found)
function NetworkGivePlayerJobshareCash(amount, networkHandle) end

--- @name NETWORK_MONEY_CAN_BET
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return boolean
function NetworkMoneyCanBet(amount, p1, p2) end

--- @name NETWORK_PAY_EMPLOYEE_WAGE
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkPayEmployeeWage(p0, p1, p2) end

--- @name _NETWORK_MANUAL_DELETE_CHARACTER
--- @param characterSlot number 
--- @return void (Type not found)
function NetworkManualDeleteCharacter(characterSlot) end

--- @name NETWORK_PAY_UTILITY_BILL
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkPayUtilityBill(amount, p1, p2) end

--- @name NETWORK_PAY_MATCH_ENTRY_FEE
--- @param amount number 
--- @param matchId string 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkPayMatchEntryFee(amount, matchId, p2, p3) end

--- index  
--- -------  
--- See function sub_1005 in am_boat_taxi.ysc  
--- context  
--- ----------  
--- "BACKUP_VAGOS"  
--- "BACKUP_LOST"  
--- "BACKUP_FAMILIES"  
--- "HIRE_MUGGER"  
--- "HIRE_MERCENARY"  
--- "BUY_CARDROPOFF"  
--- "HELI_PICKUP"  
--- "BOAT_PICKUP"  
--- "CLEAR_WANTED"  
--- "HEAD_2_HEAD"  
--- "CHALLENGE"  
--- "SHARE_LAST_JOB"  
--- "DEFAULT"  
--- reason  
--- ---------  
--- "NOTREACHTARGET"  
--- "TARGET_ESCAPE"  
--- "DELIVERY_FAIL"  
--- "NOT_USED"  
--- "TEAM_QUIT"  
--- "SERVER_ERROR"  
--- "RECEIVE_LJ_L"  
--- "CHALLENGE_PLAYER_LEFT"  
--- "DEFAULT"  
--- unk  
--- -----  
--- Unknown bool value  
--- @name NETWORK_REFUND_CASH
--- @param index number 
--- @param context string 
--- @param reason string 
--- @param unk boolean 
--- @return void (Type not found)
function NetworkRefundCash(index, context, reason, unk) end

--- @name NETWORK_RECEIVE_PLAYER_JOBSHARE_CASH
--- @param value number 
--- @param networkHandle number 
--- @return void (Type not found)
function NetworkReceivePlayerJobshareCash(value, networkHandle) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_RIVAL_DELIVERY_COMPLETED
--- @param earnedMoney number 
--- @return void (Type not found)
function NetworkRivalDeliveryCompleted(earnedMoney) end

--- @name NETWORK_SPENT_AMMO_DROP
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentAmmoDrop(p0, p1, p2) end

--- NativeDB Introduced: v1868
--- @name _NETWORK_SPENT_ARCADE_GENERIC
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function NetworkSpentArcadeGeneric(p0, p1, p2, p3, p4) end

--- NativeDB Introduced: v1868
--- @name _NETWORK_SPENT_ARCADE_GAME
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function NetworkSpentArcadeGame(p0, p1, p2, p3, p4) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_SPENT_ARENA_JOIN_SPECTATOR
--- @param amount number 
--- @param p1  
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentArenaJoinSpectator(amount, p1, p2, p3) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_SPENT_ARENA_PREMIUM
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentArenaPremium(amount, p1, p2) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_SPENT_ARENA_SPECTATOR_BOX
--- @param amount number 
--- @param p1  
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentArenaSpectatorBox(amount, p1, p2, p3) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_SPENT_AUTOSHOP_MODIFICATIONS
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function NetworkSpentAutoshopModifications(p0, p1, p2, p3, p4) end

--- @name NETWORK_INITIALIZE_CASH
--- @param wallet number 
--- @param bank number 
--- @return void (Type not found)
function NetworkInitializeCash(wallet, bank) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_SPENT_AUTOSHOP_PROPERTY_UTILITY_FEE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentAutoshopPropertyUtilityFee(p0, p1, p2, p3) end

--- @name NETWORK_SPENT_ARREST_BAIL
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentArrestBail(p0, p1, p2) end

--- @name _NETWORK_SPENT_BALLISTIC_EQUIPMENT
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentBallisticEquipment(amount, p1, p2) end

--- NativeDB Introduced: v323
--- @name NETWORK_SPENT_BANK_INTEREST
--- @param p0 number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentBankInterest(p0, p1, p2) end

--- @name _NETWORK_SPENT_BA_SERVICE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function NetworkSpentBaService(p0, p1, p2, p3, p4) end

--- @name NETWORK_SPENT_BETTING
--- @param amount number 
--- @param p1 number 
--- @param matchId string 
--- @param p3 boolean 
--- @param p4 boolean 
--- @return void (Type not found)
function NetworkSpentBetting(amount, p1, matchId, p3, p4) end

--- NativeDB Introduced: v2699
--- @name _NETWORK_SPENT_BIKE_SHOP_MODIFY
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentBikeShopModify(p0, p1, p2, p3) end

--- NativeDB Introduced: v2189
--- @name _NETWORK_SPENT_BEACH_PARTY_GENERIC
--- @param p0  
--- @return void (Type not found)
function NetworkSpentBeachPartyGeneric(p0) end

--- NativeDB Added Parameter 1: int amount
--- NativeDB Added Parameter 2: BOOL p1
--- NativeDB Added Parameter 3: BOOL p2
--- @name _NETWORK_SPENT_BOSS
--- @return boolean
function NetworkSpentBoss() end

--- NativeDB Introduced: v1493
--- @name _NETWORK_SPENT_BOUNTY_HUNTER_MISSION
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentBountyHunterMission(amount, p1, p2) end

--- @name NETWORK_SPENT_BOAT_PICKUP
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentBoatPickup(p0, p1, p2) end

--- @name NETWORK_SPENT_BOUNTY
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentBounty(p0, p1, p2) end

--- @name _NETWORK_SPENT_BUSINESS
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentBusiness(p0, p1, p2, p3) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_SPENT_BUY_ARENA
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 string 
--- @return void (Type not found)
function NetworkSpentBuyArena(amount, p1, p2, p3) end

--- @name NETWORK_SPENT_BULL_SHARK
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentBullShark(p0, p1, p2) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_SPENT_BUY_AUTOSHOP
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentBuyAutoshop(p0, p1, p2, p3) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_SPENT_BUY_CASINO
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param data  
--- @return void (Type not found)
function NetworkSpentBuyCasino(amount, p1, p2, data) end

--- @name _NETWORK_SPENT_BUY_BUNKER
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentBuyBunker(p0, p1, p2, p3) end

--- @name NETWORK_SPENT_BUY_OFFTHERADAR
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentBuyOfftheradar(p0, p1, p2) end

--- @name NETWORK_SPENT_BUY_REVEAL_PLAYERS
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentBuyRevealPlayers(p0, p1, p2) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_SPENT_BUY_BASE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentBuyBase(p0, p1, p2, p3) end

--- @name NETWORK_SPENT_BUY_PASSIVE_MODE
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentBuyPassiveMode(p0, p1, p2) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_SPENT_BUY_TILTROTOR
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentBuyTiltrotor(p0, p1, p2, p3) end

--- @name NETWORK_SPENT_CALL_PLAYER
--- @param p0  
--- @param p1  
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentCallPlayer(p0, p1, p2, p3) end

--- @name NETWORK_SPENT_BUY_WANTEDLEVEL
--- @param p0  
--- @param p1  
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentBuyWantedlevel(p0, p1, p2, p3) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_SPENT_CARCLUB_MEMBERSHIP
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function NetworkSpentCarclubMembership(p0, p1, p2, p3, p4) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_SPENT_CARCLUB
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3  
--- @return void (Type not found)
function NetworkSpentCarclub(p0, p1, p2, p3) end

--- NativeDB Introduced: v2699
--- @name _NETWORK_SPENT_CARGO_SOURCING
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return void (Type not found)
function NetworkSpentCargoSourcing(p0, p1, p2, p3, p4, p5) end

--- @name NETWORK_SPENT_CARWASH
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3 boolean 
--- @param p4 boolean 
--- @return void (Type not found)
function NetworkSpentCarwash(p0, p1, p2, p3, p4) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_SPENT_CARCLUB_TAKEOVER
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentCarclubTakeover(p0, p1, p2, p3) end

--- NativeDB Introduced: v2189
--- @name _NETWORK_SPENT_CASINO_CLUB_GENERIC
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @param p6  
--- @param p7  
--- @param p8  
--- @return void (Type not found)
function NetworkSpentCasinoClubGeneric(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- @name NETWORK_SPENT_CASH_DROP
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentCashDrop(amount, p1, p2) end

--- @name _NETWORK_SPENT_BUY_TRUCK
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentBuyTruck(p0, p1, p2, p3) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_SPENT_CASINO_GENERIC
--- @param amount number 
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function NetworkSpentCasinoGeneric(amount, p1, p2, p3, p4) end

--- NativeDB Introduced: v1868
--- @name _NETWORK_SPENT_CASINO_HEIST
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
--- @param p10  
--- @return void (Type not found)
function NetworkSpentCasinoHeist(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_SPENT_CASINO_MEMBERSHIP
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 number 
--- @return void (Type not found)
function NetworkSpentCasinoMembership(amount, p1, p2, p3) end

--- NativeDB Introduced: v1868
--- @name _NETWORK_SPENT_CASINO_HEIST_SKIP_MISSION
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentCasinoHeistSkipMission(p0, p1, p2, p3) end

--- @name NETWORK_SPENT_CINEMA
--- @param p0  
--- @param p1  
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentCinema(p0, p1, p2, p3) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_SPENT_FROM_BANK
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentFromBank(p0, p1, p2, p3) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_SPENT_EMPLOY_ASSASSINS
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentEmployAssassins(p0, p1, p2, p3) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_SPENT_GANGOPS_START_MISSION
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentGangopsStartMission(p0, p1, p2, p3) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_SPENT_GANGOPS_CANNON
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentGangopsCannon(p0, p1, p2, p3) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_SPENT_GANGOPS_START_STRAND
--- @param type number 
--- @param amount number 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentGangopsStartStrand(type, amount, p2, p3) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_SPENT_GANGOPS_TRIP_SKIP
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentGangopsTripSkip(amount, p1, p2) end

--- NativeDB Introduced: v2699
--- @name _NETWORK_SPENT_GUNRUNNING_CONTACT_SERVICE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentGunrunningContactService(p0, p1, p2, p3) end

--- NativeDB Introduced: v1180
--- @name _NETWORK_SPENT_HANGAR_STAFF_CHARGES
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentHangarStaffCharges(amount, p1, p2) end

--- @name NETWORK_SPENT_FROM_ROCKSTAR
--- @param bank number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentFromRockstar(bank, p1, p2) end

--- @name NETWORK_SPENT_HELI_PICKUP
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentHeliPickup(p0, p1, p2) end

--- @name NETWORK_SPENT_HIRE_MERCENARY
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentHireMercenary(p0, p1, p2) end

--- Only used once in a script (am_contact_requests)  
--- p1 = 0  
--- p2 = 1  
--- @name NETWORK_SPENT_HIRE_MUGGER
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentHireMugger(p0, p1, p2) end

--- @name NETWORK_SPENT_HOLDUPS
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentHoldups(p0, p1, p2) end

--- NativeDB Introduced: v1180
--- @name _NETWORK_SPENT_HANGAR_UTILITY_CHARGES
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentHangarUtilityCharges(amount, p1, p2) end

--- @name _NETWORK_SPENT_IMPORT_EXPORT_REPAIR
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkSpentImportExportRepair(p0, p1, p2) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_SPENT_IM_ABILITY
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentImAbility(p0, p1, p2, p3) end

--- NativeDB Introduced: v2189
--- @name _NETWORK_SPENT_ISLAND_HEIST
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentIslandHeist(p0, p1, p2, p3) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_SPENT_MAKE_IT_RAIN
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentMakeItRain(amount, p1, p2) end

--- @name NETWORK_SPENT_IN_STRIPCLUB
--- @param p0  
--- @param p1 boolean 
--- @param p2  
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentInStripclub(p0, p1, p2, p3) end

--- NativeDB Introduced: v323
--- @name _NETWORK_SPENT_JOB_SKIP
--- @param amount number 
--- @param matchId string 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentJobSkip(amount, matchId, p2, p3) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_SPENT_NIGHTCLUB_BAR_DRINK
--- @param amount number 
--- @param p1  
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentNightclubBarDrink(amount, p1, p2, p3) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_SPENT_NIGHTCLUB_ENTRY_FEE
--- @param player Player 
--- @param amount number 
--- @param p1  
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentNightclubEntryFee(player, amount, p1, p2, p3) end

--- @name _NETWORK_SPENT_MOVE_YACHT
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentMoveYacht(amount, p1, p2) end

--- @name NETWORK_SPENT_NO_COPS
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentNoCops(p0, p1, p2) end

--- @name _NETWORK_SPENT_ORDER_BODYGUARD_VEHICLE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentOrderBodyguardVehicle(p0, p1, p2, p3) end

--- @name _NETWORK_SPENT_PA_SERVICE_DANCER
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentPaServiceDancer(p0, p1, p2, p3) end

--- @name _NETWORK_SPENT_ORDER_WAREHOUSE_VEHICLE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentOrderWarehouseVehicle(p0, p1, p2, p3) end

--- @name _NETWORK_SPENT_PAY_BOSS
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkSpentPayBoss(p0, p1, p2) end

--- @name _NETWORK_SPENT_PA_SERVICE_HELI_PICKUP
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentPaServiceHeliPickup(p0, p1, p2, p3) end

--- @name _NETWORK_SPENT_JUKEBOX
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentJukebox(p0, p1, p2, p3) end

--- @name _NETWORK_SPENT_PAY_GOON
--- @param p0 number 
--- @param p1 number 
--- @param amount number 
--- @return void (Type not found)
function NetworkSpentPayGoon(p0, p1, amount) end

--- According to how I understood this in the freemode script alone,
--- The first parameter is determined by a function named, func_5749 within the freemode script which has a list of all the vehicles and a set price to return which some vehicles deals with globals as well. So the first parameter is basically the set in stone insurance cost it's gonna charge you for that specific vehicle model.
--- The second parameter whoever put it was right, they call GET_ENTITY_MODEL with the vehicle as the paremeter.
--- The third parameter is the network handle as they call their little struct<13> func or atleast how the script decompiled it to look which in lamens terms just returns the network handle of the previous owner based on DECOR_GET_INT(vehicle, "Previous_Owner").
--- The fourth parameter is a bool that returns true/false depending on if your bank balance is greater then 0.
--- The fifth and last parameter is a bool that returns true/false depending on if you have the money for the car based on the cost returned by func_5749. In the freemode script eg,
--- bool hasTheMoney = MONEY::_GET_BANK_BALANCE() < carCost.
--- @name NETWORK_SPENT_PAY_VEHICLE_INSURANCE_PREMIUM
--- @param amount number 
--- @param vehicleModel Hash 
--- @param networkHandle number 
--- @param notBankrupt boolean 
--- @param hasTheMoney boolean 
--- @return void (Type not found)
function NetworkSpentPayVehicleInsurancePremium(amount, vehicleModel, networkHandle, notBankrupt, hasTheMoney) end

--- @name NETWORK_SPENT_PLAYER_HEALTHCARE
--- @param p0 number 
--- @param p1 number 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentPlayerHealthcare(p0, p1, p2, p3) end

--- NativeDB Introduced: v1180
--- @name _NETWORK_SPENT_PURCHASE_HANGAR
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentPurchaseHangar(p0, p1, p2, p3) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_SPENT_RDRHATCHET_BONUS
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentRdrhatchetBonus(amount, p1, p2) end

--- @name _NETWORK_SPENT_PURCHASE_WAREHOUSE
--- @param amount number 
--- @param data  
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentPurchaseWarehouse(amount, data, p2, p3) end

--- @name _NETWORK_SPENT_RENAME_ORGANIZATION
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkSpentRenameOrganization(p0, p1, p2) end

--- NativeDB Introduced: v1493
--- @name _NETWORK_SPENT_REHIRE_DJ
--- @param amount number 
--- @param p1  
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentRehireDj(amount, p1, p2, p3) end

--- @name NETWORK_SPENT_REQUEST_HEIST
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentRequestHeist(p0, p1, p2) end

--- NativeDB Introduced: v2699
--- @name _NETWORK_SPENT_SALES_DISPLAY
--- @param p0 boolean 
--- @return void (Type not found)
function NetworkSpentSalesDisplay(p0) end

--- @name NETWORK_SPENT_REQUEST_JOB
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentRequestJob(p0, p1, p2) end

--- @name NETWORK_SPENT_PROSTITUTES
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentProstitutes(p0, p1, p2) end

--- NativeDB Introduced: v1604
--- NativeDB Removed Parameter 4: BOOL p3
--- @name _NETWORK_SPENT_SPIN_THE_WHEEL_PAYMENT
--- @param amount number 
--- @param p1  
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function NetworkSpentSpinTheWheelPayment(amount, p1, p2, p3) end

--- @name NETWORK_SPENT_ROBBED_BY_MUGGER
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentRobbedByMugger(amount, p1, p2) end

--- NativeDB Introduced: v2189
--- @name _NETWORK_SPENT_SUBMARINE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @param p5  
--- @return void (Type not found)
function NetworkSpentSubmarine(p0, p1, p2, p3, p4, p5) end

--- NativeDB Introduced: v2372
--- @name _NETWORK_SPENT_UPGRADE_AUTOSHOP
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentUpgradeAutoshop(p0, p1, p2, p3) end

--- @name NETWORK_SPENT_TAXI
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentTaxi(amount, p1, p2) end

--- NativeDB Introduced: v1604
--- @name _NETWORK_SPENT_UPGRADE_ARENA
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 string 
--- @return void (Type not found)
function NetworkSpentUpgradeArena(amount, p1, p2, p3) end

--- @name _NETWORK_SPENT_UPGRADE_BUNKER
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentUpgradeBunker(p0, p1, p2, p3) end

--- NativeDB Introduced: v1180
--- @name _NETWORK_SPENT_UPGRADE_HANGAR
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentUpgradeHangar(p0, p1, p2, p3) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_SPENT_UPGRADE_BASE
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentUpgradeBase(p0, p1, p2, p3) end

--- NativeDB Introduced: v2189
--- @name _NETWORK_SPENT_UPGRADE_SUB
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentUpgradeSub(p0, p1, p2, p3) end

--- NativeDB Introduced: v1734
--- @name _NETWORK_SPENT_UPGRADE_CASINO
--- @param amount number 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param data  
--- @return void (Type not found)
function NetworkSpentUpgradeCasino(amount, p1, p2, data) end

--- @name _NETWORK_SPENT_UPGRADE_TRUCK
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentUpgradeTruck(p0, p1, p2, p3) end

--- @name _NETWORK_SPENT_VIP_UTILITY_CHARGES
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function NetworkSpentVipUtilityCharges(p0, p1, p2) end

--- @name NETWORK_SPENT_TELESCOPE
--- @param p0  
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function NetworkSpentTelescope(p0, p1, p2) end

--- NativeDB Introduced: v1290
--- @name _NETWORK_SPENT_UPGRADE_TILTROTOR
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @return void (Type not found)
function NetworkSpentUpgradeTiltrotor(p0, p1, p2, p3) end

--- @name _NETWORK_SPENT_WAGER
--- @param p0  
--- @param p1  
--- @param amount number 
--- @return void (Type not found)
function NetworkSpentWager(p0, p1, amount) end

--- NativeDB Introduced: v2699
--- @name _NETWORK_SPENT_VEHICLE_REQUESTED
--- @param p0  
--- @param p1  
--- @param p2  
--- @param p3  
--- @param p4  
--- @return void (Type not found)
function NetworkSpentVehicleRequested(p0, p1, p2, p3, p4) end

--- @name PROCESS_CASH_GIFT
--- @param p0 number 
--- @param p1 number 
--- @param p2 string 
--- @return string
function ProcessCashGift(p0, p1, p2) end

--- @name _NETWORK_SPENT_VEHICLE_EXPORT_MODS
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
function NetworkSpentVehicleExportMods(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- Does nothing and always returns 0.
--- @name WITHDRAW_VC
--- @param amount number 
--- @return number
function WithdrawVc(amount) end
