
--- 4 calls in the b617d scripts. The only one with p0 and p2 in clear text:
--- AUDIO::ADD_PED_TO_CONVERSATION(5, l_AF, "DINAPOLI");
--- =================================================
--- One of the 2 calls in dialogue_handler.c p0 is in a while-loop, and so is determined to also possibly be 0 - 15.
--- @param index number 
--- @param ped Ped 
--- @param p2 string 
--- @return void (Type not found)
function AddPedToConversation(index, ped, p2) end

--- All found occurrences in b678d:
--- pastebin.com/ceu67jz8
--- @param entity Entity 
--- @param groupName string 
--- @param p2 number 
--- @return void (Type not found)
function AddEntityToAudioMixGroup(entity, groupName, p2) end

--- Plays the siren sound of a vehicle which is otherwise activated when fastly double-pressing the horn key.  
--- Only works on vehicles with a police siren.  
--- @param vehicle Vehicle 
--- @return void (Type not found)
function BlipSiren(vehicle) end

--- @param p0 string 
--- @return void (Type not found)
function ActivateAudioSlowmoMode(p0) end

--- @param toggle boolean 
--- @return void (Type not found)
function BlockDeathJingle(toggle) end

--- @return void (Type not found)
function CancelCurrentPoliceReport() end

--- NOTE: ones that are -1, 0 - 35 are determined by a function where it gets a TextLabel from a global then runs,
--- _GET_TEXT_SUBSTRING and depending on what the result is it goes in check order of 0 - 9 then A - Z then z (lowercase). So it will then return 0 - 35 or -1 if it's 'z'. The func to handle that ^^ is func_67 in dialog_handler.c atleast in TU27 Xbox360 scripts.
--- p0 is -1, 0 - 35
--- p1 is a char or string (whatever you wanna call it)
--- p2 is Global 10597 + i * 6. 'i' is a while(i < 70) loop
--- p3 is again -1, 0 - 35
--- p4 is again -1, 0 - 35
--- p5 is either 0 or 1 (bool ?)
--- p6 is either 0 or 1 (The func to determine this is bool)
--- p7 is either 0 or 1 (The func to determine this is bool)
--- p8 is either 0 or 1 (The func to determine this is bool)
--- p9 is 0 - 3 (Determined by func_60 in dialogue_handler.c)
--- p10 is either 0 or 1 (The func to determine this is bool)
--- p11 is either 0 or 1 (The func to determine this is bool)
--- p12 is unknown as in TU27 X360 scripts it only goes to p11.
--- @param index number 
--- @param p1 string 
--- @param p2 string 
--- @param p3 number 
--- @param p4 number 
--- @param p5 boolean 
--- @param p6 boolean 
--- @param p7 boolean 
--- @param p8 boolean 
--- @param p9 number 
--- @param p10 boolean 
--- @param p11 boolean 
--- @param p12 boolean 
--- @return void (Type not found)
function AddLineToConversation(index, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) end

--- @param p0  
--- @param p1 boolean 
--- @return void (Type not found)
function ClearAmbientZoneListState(p0, p1) end

--- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
--- @param eventName string 
--- @return boolean
function CancelMusicEvent(eventName) end

--- Checks if the ped can play the speech or has the speech file, last parameter is usually 0  
--- @param ped Ped 
--- @param speechName string 
--- @param unk boolean 
--- @return boolean
function CanPedSpeak(ped, speechName, unk) end

--- This function also has a p2, unknown. Signature AUDIO::CLEAR_AMBIENT_ZONE_STATE(const char* zoneName, bool p1, Any p2);
--- Still needs more research.
--- @param zoneName string 
--- @param p1 boolean 
--- @return void (Type not found)
function ClearAmbientZoneState(zoneName, p1) end

--- @return void (Type not found)
function CreateNewScriptedConversation() end

--- @return boolean
function AudioIsScriptedMusicPlaying() end

--- @return void (Type not found)
function ClearAllBrokenGlass() end

--- 3 calls in the b617d scripts, removed duplicate.
--- AUDIO::CLEAR_CUSTOM_RADIO_TRACK_LIST("RADIO_16_SILVERLAKE");
--- AUDIO::CLEAR_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK");
--- @param radioStation string 
--- @return void (Type not found)
function ClearCustomRadioTrackList(radioStation) end

--- @return boolean
function DoesPlayerVehHaveRadio() end

--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function DisablePedPainAudio(ped, toggle) end

--- If value is set to true, and ambient siren sound will be played.
--- Appears to enable/disable an audio flag.
--- @param value boolean 
--- @return void (Type not found)
function DistantCopCarSirens(value) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function EnableStallWarningSounds(vehicle, toggle) end

--- @param stationNameHash number 
--- @return number
function FindRadioStationIndex(stationNameHash) end

--- This native sets the audio of the specified vehicle to the audioName (p1).
--- Use the audioNameHash found in vehicles.meta
--- Example:
--- _SET_VEHICLE_AUDIO(veh, "ADDER");
--- The selected vehicle will now have the audio of the Adder.
--- FORCE_VEHICLE_???
--- @param vehicle Vehicle 
--- @param audioName string 
--- @return void (Type not found)
function ForceVehicleEngineAudio(vehicle, audioName) end

--- Sets whether the vehicle passed has exhaust pops.
--- @param vehicle Vehicle 
--- @param toggle boolean Enables or disables exaust pops.
--- @return void (Type not found)
function EnableVehicleExhaustPops(vehicle, toggle) end

--- @return void (Type not found)
function FreezeMicrophone() end

--- @param p0 string 
--- @return void (Type not found)
function DeactivateAudioSlowmoMode(p0) end

--- NativeDB Introduced: v2372
--- @param radioStation string 
--- @param trackListName string 
--- @param milliseconds number 
--- @return void (Type not found)
function ForceRadioTrackListPosition(radioStation, trackListName, milliseconds) end

--- @param ped Ped 
--- @return Hash
function GetAmbientVoiceNameHash(ped) end

--- @param radioStation string 
--- @return void (Type not found)
function FreezeRadioStation(radioStation) end

--- @return number
function GetCurrentScriptedConversationLine() end

--- @return boolean
function GetIsPreloadedConversationReady() end

--- @return number
function GetAudibleMusicTrackTextId() end

--- Return the hash of the radio stations current track.
--- NativeDB Introduced: v1493
--- @param radioStationName string 
--- @return Hash
function GetCurrentRadioTrackName(radioStationName) end

--- Return the playback time (in milliseconds) of the radio stations current track. 
--- NativeDB Introduced: v1493
--- @param radioStationName string 
--- @return number
function GetCurrentRadioTrackPlaybackTime(radioStationName) end

--- Could this be used alongside either,   
--- SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES or _SET_NETWORK_ID_SYNC_TO_PLAYER to make it so other players can hear the sound while online? It'd be a bit troll-fun to be able to play the Zancudo UFO creepy sounds globally.  
--- @param soundId number 
--- @return number
function GetNetworkIdFromSoundId(soundId) end

--- @return number
function GetMusicPlaytime() end

--- @return number
function GetPlayerRadioStationGenre() end

--- @return number
function GetNumUnlockedRadioStations() end

--- Returns 255 (radio off index) if the function fails.  
--- @return number
function GetPlayerRadioStationIndex() end

--- Counterpart: [`GET_NETWORK_ID_FROM_SOUND_ID`](#\_0x2DE3F0A134FFBC0D).
--- @param netId number Network ID of sound.
--- @return number
function GetSoundIdFromNetworkId(netId) end

--- @return number
function GetStreamPlayTime() end

--- Returns active radio station name  
--- @return string
function GetPlayerRadioStationName() end

--- Returns String with radio station name.  
--- @param radioStation number 
--- @return string
function GetRadioStationName(radioStation) end

--- @return number
function GetSoundId() end

--- @param vehicle Vehicle 
--- @return Hash
function GetVehicleDefaultHornIgnoreMods(vehicle) end

--- Returns hash of default vehicle horn  
--- Hash is stored in audVehicleAudioEntity  
--- @param vehicle Vehicle 
--- @return Hash
function GetVehicleDefaultHorn(vehicle) end

--- HAS_*
--- @return boolean
function HasMultiplayerAudioDataLoaded() end

--- NativeDB Introduced: v1365
--- @param vehicle Vehicle 
--- @return number
function GetVehicleDefaultHornVariation(vehicle) end

--- HAS_*
--- @return boolean
function HasMultiplayerAudioDataUnloaded() end

--- @param soundId number 
--- @return boolean
function HasSoundFinished(soundId) end

--- NativeDB Added Parameter 3: Any p2
--- @param p0  
--- @param p1  
--- @return 
function HintAmbientAudioBank(p0, p1) end

--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function InterruptConversation(p0, p1, p2) end

--- One call found in the b617d scripts:
--- AUDIO::_8A694D7A68F8DC38(NETWORK::NET_TO_PED(l_3989._f26F[0/*1*/]), "CONV_INTERRUPT_QUIT_IT", "LESTER");
--- @param ped Ped 
--- @param p1 string 
--- @param p2 string 
--- @return void (Type not found)
function InterruptConversationAndPause(ped, p1, p2) end

--- NativeDB Added Parameter 3: Any p2
--- @param p0  
--- @param p1 number 
--- @return 
function HintScriptAudioBank(p0, p1) end

--- Common in the scripts:  
--- AUDIO::IS_AMBIENT_SPEECH_DISABLED(PLAYER::PLAYER_PED_ID());  
--- @param ped Ped 
--- @return boolean
function IsAmbientSpeechDisabled(ped) end

--- @param ped Ped 
--- @return boolean
function IsAmbientSpeechPlaying(ped) end

--- @param ambientZone string 
--- @return boolean
function IsAmbientZoneEnabled(ambientZone) end

--- @param pedHandle Ped 
--- @return boolean
function IsAnimalVocalizationPlaying(pedHandle) end

--- @param ped Ped 
--- @return boolean
function IsAnySpeechPlaying(ped) end

--- Hardcoded to return 1  
--- @return boolean
function IsGameInControlOfMusic() end

--- @return boolean
function IsMissionCompletePlaying() end

--- @param scene string 
--- @return boolean
function IsAudioSceneActive(scene) end

--- Checks whether the horn of a vehicle is currently played.  
--- @param vehicle Vehicle 
--- @return boolean
function IsHornActive(vehicle) end

--- Example:  
--- bool playing = AUDIO::IS_ALARM_PLAYING("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");  
--- @param alarmName string 
--- @return boolean
function IsAlarmPlaying(alarmName) end

--- @param newsStory number 
--- @return boolean
function IsMissionNewsStoryUnlocked(newsStory) end

--- @return boolean
function IsMissionCompleteReadyForUi() end

--- @return boolean
function IsMobilePhoneRadioActive() end

--- @param ped Ped 
--- @return boolean
function IsPedInCurrentConversation(ped) end

--- @return boolean
function IsMusicOneshotPlaying() end

--- @param ped Ped 
--- @return boolean
function IsPedRingtonePlaying(ped) end

--- @return boolean
function IsMobilePhoneCallOngoing() end

--- @return boolean
function IsPlayerVehRadioEnable() end

--- @return boolean
function IsRadioRetuning() end

--- @return boolean
function IsRadioFadedOut() end

--- NativeDB Introduced: v2699
--- @param radioStation string 
--- @return boolean
function IsRadioStationVisible(radioStation) end

--- @return boolean
function IsScriptedConversationOngoing() end

--- @return boolean
function IsStreamPlaying() end

--- @return boolean
function IsScriptedConversationLoaded() end

--- @param p0  
--- @return boolean
function IsScriptedSpeechPlaying(p0) end

--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleAudiblyDamaged(vehicle) end

--- L* (LINK_*?)
--- @param emitterName string 
--- @param entity Entity 
--- @return void (Type not found)
function LinkStaticEmitterToEntity(emitterName, entity) end

--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleRadioLoud(vehicle) end

--- IS_VEHICLE_*
--- @param vehicle Vehicle The vehicle to check
--- @return boolean
function IsVehicleRadioEnabled(vehicle) end

--- Example:  
--- AUDIO::LOAD_STREAM("CAR_STEAL_1_PASSBY", "CAR_STEAL_1_SOUNDSET");  
--- All found occurrences in the b678d decompiled scripts: pastebin.com/3rma6w5w  
--- Stream names often ends with "_MASTER", "_SMALL" or "_STREAM". Also "_IN", "_OUT" and numbers.     
--- soundSet is often set to 0 in the scripts. These are common to end the soundSets: "_SOUNDS", "_SOUNDSET" and numbers.  
--- @param streamName string 
--- @param soundSet string 
--- @return boolean
function LoadStream(streamName, soundSet) end

--- Example:  
--- AUDIO::LOAD_STREAM_WITH_START_OFFSET("STASH_TOXIN_STREAM", 2400, "FBI_05_SOUNDS");  
--- Only called a few times in the scripts.  
--- @param streamName string 
--- @param startOffset number 
--- @param soundSet string 
--- @return boolean
function LoadStreamWithStartOffset(streamName, startOffset, soundSet) end

--- Disables the radio station (hides it from the radio wheel).
--- NativeDB Introduced: v1493
--- @param radioStationName string 
--- @param toggle boolean 
--- @return void (Type not found)
function LockRadioStation(radioStationName, toggle) end

--- NativeDB Introduced: v2372
--- @param radioStation string 
--- @param trackListName string 
--- @return void (Type not found)
function LockRadioStationTrackList(radioStation, trackListName) end

--- @param hash Hash 
--- @param toggle boolean 
--- @return void (Type not found)
function OverridePlayerGroundMaterial(hash, toggle) end

--- This native enables the audio flag "TrevorRageIsOverridden" and sets the voice effect to `voiceEffect`
--- @param voiceEffect string 
--- @return void (Type not found)
function OverrideTrevorRage(voiceEffect) end

--- Overrides the vehicle's horn hash.
--- When changing this hash on a vehicle, [`_GET_VEHICLE_HORN_HASH`](#\_0xACB5DCCA1EC76840) will **not** return the 'overwritten' hash. It will still always return the default horn hash (same as [`GET_VEHICLE_DEFAULT_HORN`](#\_0x02165D55000219AC)).
--- List of possible hashes (found in decompiled scripts):
--- |        signed |     unsigned |      hex     |
--- |--------------:|-------------:|:------------:|
--- |  `1604822495` | `1604822495` | `0x5FA7A5DF` |
--- | `-1262465009` | `3032502287` | `0xB4C0500F` |
--- |  `-889553789` | `3405413507` | `0xCAFA7C83` |
--- | `-1557943086` | `2737024210` | `0xA323ACD2` |
--- | `-1318696617` | `2976270679` | `0xB1664957` |
--- |    `-7740003` | `4287227293` | `0xFF89E59D` |
--- | `-1815146967` | `2479820329` | `0x93CF0E29` |
--- |  `-339919356` | `3955047940` | `0xEBBD3E04` |
--- @param vehicle Vehicle The vehicle you want to change the horn on.
--- @param override boolean Must be set to true. If set to false, the default horn hash will be restored.
--- @param hornHash number A horn hash.
--- @return void (Type not found)
function OverrideVehHorn(vehicle, override, hornHash) end

--- @param speechName string 
--- @param voiceName string 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param speechParam string 
--- @return void (Type not found)
function PlayAmbientSpeechFromPositionNative(speechName, voiceName, x, y, z, speechParam) end

--- @param p0  
--- @param p1 boolean 
--- @return void (Type not found)
function OverrideUnderwaterStream(p0, p1) end

--- Sets audio flag "OverrideMicrophoneSettings"
--- @param hash Hash 
--- @param toggle boolean 
--- @return void (Type not found)
function OverrideMicrophoneSettings(hash, toggle) end

--- Plays sounds from a ped with chop model. For example it used to play bark or sniff sounds. p1 is always 3 or 4294967295 in decompiled scripts. By a quick disassembling I can assume that this arg is unused.
--- This native is works only when you call it on the ped with right model (ac_chop only ?)
--- Speech Name can be: CHOP_SNIFF_SEQ CHOP_WHINE CHOP_LICKS_MOUTH CHOP_PANT bark GROWL SNARL BARK_SEQ
--- @param pedHandle Ped 
--- @param p1 number 
--- @param speechName string 
--- @return void (Type not found)
function PlayAnimalVocalization(pedHandle, p1, speechName) end

--- @param p0 boolean 
--- @return void (Type not found)
function PauseScriptedConversation(p0) end

--- Only call found in the b617d scripts:
--- AUDIO::PLAY_DEFERRED_SOUND_FRONTEND("BACK", "HUD_FREEMODE_SOUNDSET");
--- @param soundName string 
--- @param soundsetName string 
--- @return void (Type not found)
function PlayDeferredSoundFrontend(soundName, soundsetName) end

--- @param play boolean 
--- @return void (Type not found)
function PlayEndCreditsMusic(play) end

--- See [`PLAY_PED_AMBIENT_SPEECH_NATIVE`](#\_0x8E04FEDD28D42462) for parameter specifications.
--- NativeDB Added Parameter 4: Any p3
--- @param ped Ped 
--- @param speechName string 
--- @param speechParam string 
--- @return void (Type not found)
function PlayPedAmbientSpeechAndCloneNative(ped, speechName, speechParam) end

--- **Warning**:
--- Parameters are wrong after painID. To preserve C-Sharp backwards compatibility, we can't add or remove parameters.
--- Correct parameters should be:\
--- `PLAY_PAIN(Ped ped, int painID, float p3, bool createNetEvent)`
--- Check the *examples* section for the correct usage of this native.
--- **Description:**
--- Plays a pain sound. A maximum of 33 pain IDs are allowed.\
--- `createNetEvent` creates a `CPedPlayPainEvent` when set to true.
--- Below is a list of all the pain IDs (Asterisks indicate that sounds can play in a Low, Medium or High fashion), for example: `PAIN_LOW_GENERIC`. The corresponding pain strings belong to the game exe.
--- **Pain IDs:**
--- *   0: PAIN_\*\_GENERIC (Low, Medium, High)
--- *   1: UNUSED
--- *   2: UNUSED
--- *   3: SCREAM_PANIC (Nothing can be heard)
--- *   4: SCREAM_PANIC_SHORT
--- *   5: SCREAM_SCARED
--- *   6: SCREAM_SHOCKED
--- *   7: SCREAM_TERROR
--- *   8: ON_FIRE
--- *   9: UNUSED
--- *   10: UNUSED
--- *   11: INHALE (Nothing can be heard)
--- *   12: EXHALE (Nothing can be heard)
--- *   13: DEATH_HIGH_SHORT
--- *   14: UNUSED
--- *   15: PAIN_HIGH_GENERIC
--- *   16: PAIN_\*\_GENERIC (Low, Medium, High)
--- *   17: PAIN_SHOVE
--- *   18: PAIN_WHEEZE
--- *   19: COUGH
--- *   20: PAIN_TAZER
--- *   21: UNUSED
--- *   22: CLIMB_LARGE (Nothing can be heard)
--- *   23: CLIMB_SMALL (Nothing can be heard)
--- *   24: JUMP (Nothing can be heard)
--- *   25: COWER
--- *   26: WHIMPER
--- *   27: DYING_MOAN
--- *   28: EXHALE_CYCLING (Nothing can be heard)
--- *   29: PAIN_RAPIDS (Nothing can be heard)
--- *   30: SNEEZE
--- *   31: MELEE_SMALL_GRUNT (Nothing can be heard)
--- *   32: MELEE_LARGE_GRUNT (Nothing can be heard)
--- *   33: PAIN_\*\_GENERIC (Low, Medium, High)
--- @param ped Ped The ped entity.
--- @param painID number The pain id, max allowed id is 33.
--- @param p1 number 
--- @return void (Type not found)
function PlayPain(ped, painID, p1) end

--- Called 38 times in the scripts. There are 5 different audioNames used.
---  One unknown removed below.
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("DEAD");
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("FRANKLIN_BIG_01");
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("GENERIC_FAILED");
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("TREVOR_SMALL_01");
--- @param audioName string 
--- @return void (Type not found)
function PlayMissionCompleteAudio(audioName) end

--- Plays ambient speech; see also [`PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE`](#\_0xC6941B4A3A8FBBB9).
--- speechParam: Can be one of the following:
--- SPEECH_PARAMS_STANDARD
--- SPEECH_PARAMS_ALLOW_REPEAT
--- SPEECH_PARAMS_BEAT
--- SPEECH_PARAMS_FORCE
--- SPEECH_PARAMS_FORCE_FRONTEND
--- SPEECH_PARAMS_FORCE_NO_REPEAT_FRONTEND
--- SPEECH_PARAMS_FORCE_NORMAL
--- SPEECH_PARAMS_FORCE_NORMAL_CLEAR
--- SPEECH_PARAMS_FORCE_NORMAL_CRITICAL
--- SPEECH_PARAMS_FORCE_SHOUTED
--- SPEECH_PARAMS_FORCE_SHOUTED_CLEAR
--- SPEECH_PARAMS_FORCE_SHOUTED_CRITICAL
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY
--- SPEECH_PARAMS_MEGAPHONE
--- SPEECH_PARAMS_HELI
--- SPEECH_PARAMS_FORCE_MEGAPHONE
--- SPEECH_PARAMS_FORCE_HELI
--- SPEECH_PARAMS_INTERRUPT
--- SPEECH_PARAMS_INTERRUPT_SHOUTED
--- SPEECH_PARAMS_INTERRUPT_SHOUTED_CLEAR
--- SPEECH_PARAMS_INTERRUPT_SHOUTED_CRITICAL
--- SPEECH_PARAMS_INTERRUPT_NO_FORCE
--- SPEECH_PARAMS_INTERRUPT_FRONTEND
--- SPEECH_PARAMS_INTERRUPT_NO_FORCE_FRONTEND
--- SPEECH_PARAMS_ADD_BLIP
--- SPEECH_PARAMS_ADD_BLIP_ALLOW_REPEAT
--- SPEECH_PARAMS_ADD_BLIP_FORCE
--- SPEECH_PARAMS_ADD_BLIP_SHOUTED
--- SPEECH_PARAMS_ADD_BLIP_SHOUTED_FORCE
--- SPEECH_PARAMS_ADD_BLIP_INTERRUPT
--- SPEECH_PARAMS_ADD_BLIP_INTERRUPT_FORCE
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CLEAR
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CRITICAL
--- SPEECH_PARAMS_SHOUTED
--- SPEECH_PARAMS_SHOUTED_CLEAR
--- SPEECH_PARAMS_SHOUTED_CRITICAL
--- Note: A list of Name and Parameters can be found here pastebin.com/1GZS5dCL
--- NativeDB Added Parameter 4: Any p3
--- @param ped Ped The ped to play the ambient speech.
--- @param speechName string Name of the speech to play, eg. "GENERIC_HI".
--- @param speechParam string 
--- @return void (Type not found)
function PlayPedAmbientSpeechNative(ped, speechName, speechParam) end

--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/RFb4GTny  
--- AUDIO::PLAY_PED_RINGTONE("Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
--- AUDIO::PLAY_PED_RINGTONE("Dial_and_Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
--- @param ringtoneName string 
--- @param ped Ped 
--- @param p2 boolean 
--- @return void (Type not found)
function PlayPedRingtone(ringtoneName, ped, p2) end

--- This is the same as PLAY_PED_AMBIENT_SPEECH_NATIVE and PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE but it will allow you to play a speech file from a specific voice file. It works on players and all peds, even animals.
--- EX (C#):
--- GTA.Native.Function.Call(Hash._0x3523634255FC3318, Game.Player.Character, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0);
--- The first param is the ped you want to play it on, the second is the speech name, the third is the voice name, the fourth is the speech param, and the last param is usually always 0.
--- @param ped Ped 
--- @param speechName string 
--- @param voiceName string 
--- @param speechParam string 
--- @param p4 boolean 
--- @return void (Type not found)
function PlayPedAmbientSpeechWithVoiceNative(ped, speechName, voiceName, speechParam, p4) end

--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/A8Ny8AHZ  
--- @param soundId number 
--- @param audioName string 
--- @param audioRef string 
--- @param p3 boolean 
--- @param p4  
--- @param p5 boolean 
--- @return void (Type not found)
function PlaySound(soundId, audioName, audioRef, p3, p4, p5) end

--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/eeFc5DiW  
--- gtaforums.com/topic/795622-audio-for-mods  
--- @param soundId number 
--- @param audioName string 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param audioRef string 
--- @param isNetwork boolean 
--- @param range number 
--- @param p8 boolean 
--- @return void (Type not found)
function PlaySoundFromCoord(soundId, audioName, x, y, z, audioRef, isNetwork, range, p8) end

--- List: https://pastebin.com/DCeRiaLJ
--- All occurrences as of Cayo Perico Heist DLC (b2189), sorted alphabetically and identical lines removed: https://git.io/JtLxM
--- @param soundId number 
--- @param audioName string 
--- @param audioRef string 
--- @param p3 boolean 
--- @return void (Type not found)
function PlaySoundFrontend(soundId, audioName, audioRef, p3) end

--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/f2A7vTj0   
--- No changes made in b678d.  
--- gtaforums.com/topic/795622-audio-for-mods  
--- @param soundId number 
--- @param audioName string 
--- @param entity Entity 
--- @param audioRef string 
--- @param isNetwork boolean 
--- @param p5  
--- @return void (Type not found)
function PlaySoundFromEntity(soundId, audioName, entity, audioRef, isNetwork, p5) end

--- Used with AUDIO::LOAD_STREAM
--- Example from finale_heist2b.c4:
--- TASK::TASK_SYNCHRONIZED_SCENE(l_4C8[2/*14*/], l_4C8[2/*14*/]._f7, l_30A, "push_out_vault_l", 4.0, -1.5, 5, 713, 4.0, 0);
---                     PED::SET_SYNCHRONIZED_SCENE_PHASE(l_4C8[2/*14*/]._f7, 0.0);
---                     PED::_2208438012482A1A(l_4C8[2/*14*/], 0, 0);
---                     PED::SET_PED_COMBAT_ATTRIBUTES(l_4C8[2/*14*/], 38, 1);
---                     PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(l_4C8[2/*14*/], 1);
---                     if (AUDIO::LOAD_STREAM("Gold_Cart_Push_Anim_01", "BIG_SCORE_3B_SOUNDS")) {
---                         AUDIO::PLAY_STREAM_FROM_OBJECT(l_36F[0/*1*/]);
---                     }
--- @param object Object 
--- @return void (Type not found)
function PlayStreamFromObject(object) end

--- Plays the given police radio message.
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/GBnsQ5hr
--- @param name string 
--- @param p1 number 
--- @return number
function PlayPoliceReport(name, p1) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function PlayStreamFromPosition(x, y, z) end

--- @param ped Ped 
--- @return void (Type not found)
function PlayStreamFromPed(ped) end

--- @param vehicle Vehicle 
--- @return void (Type not found)
function PlayStreamFromVehicle(vehicle) end

--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @return void (Type not found)
function PlayVehicleDoorCloseSound(vehicle, doorIndex) end

--- @return void (Type not found)
function PlayStreamFrontend() end

--- @param p0 boolean 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function PreloadScriptConversation(p0, p1, p2, p3) end

--- @param p0  
--- @return boolean
function PlaySynchronizedAudioEvent(p0) end

--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @return void (Type not found)
function PlayVehicleDoorOpenSound(vehicle, doorIndex) end

--- NativeDB Introduced: v1180
--- @param model Hash 
--- @return void (Type not found)
function PreloadVehicleAudio(model) end

--- Example:  
--- bool prepareAlarm = AUDIO::PREPARE_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");  
--- @param alarmName string 
--- @return boolean
function PrepareAlarm(alarmName) end

--- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
--- @param eventName string 
--- @return boolean
function PrepareMusicEvent(eventName) end

--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @return void (Type not found)
function RecordBrokenGlass(x, y, z, radius) end

--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function PreloadScriptPhoneConversation(p0, p1) end

--- @return void (Type not found)
function ReleaseAmbientAudioBank() end

--- @param p0 string 
--- @param p1  
--- @return 
function PrepareSynchronizedAudioEvent(p0, p1) end

--- @param p0  
--- @param p1  
--- @return boolean
function PrepareSynchronizedAudioEventForScene(p0, p1) end

--- **This native does absolutely nothing, just a nullsub**
--- @param p0 number 
--- @return void (Type not found)
function RegisterScriptWithAudio(p0) end

--- @param audioBank string 
--- @return void (Type not found)
function ReleaseNamedScriptAudioBank(audioBank) end

--- @return void (Type not found)
function ReleaseMissionAudioBank() end

--- NativeDB Introduced: v323
--- @return void (Type not found)
function ReleaseWeaponAudio() end

--- @param soundId number 
--- @return void (Type not found)
function ReleaseSoundId(soundId) end

--- @return void (Type not found)
function ReleaseScriptAudioBank() end

---  Found in the b617d scripts, duplicates removed:
---  AUDIO::_B4BBFD9CD8B3922B("V_CARSHOWROOM_PS_WINDOW_UNBROKEN");
---  AUDIO::_B4BBFD9CD8B3922B("V_CIA_PS_WINDOW_UNBROKEN");
---  AUDIO::_B4BBFD9CD8B3922B("V_DLC_HEIST_APARTMENT_DOOR_CLOSED");
---  AUDIO::_B4BBFD9CD8B3922B("V_FINALEBANK_PS_VAULT_INTACT");
---  AUDIO::_B4BBFD9CD8B3922B("V_MICHAEL_PS_BATHROOM_WITH_WINDOW");
--- @param p0 string 
--- @return void (Type not found)
function RemovePortalSettingsOverride(p0) end

--- @param entity Entity 
--- @param p1 number 
--- @return void (Type not found)
function RemoveEntityFromAudioMixGroup(entity, p1) end

--- All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/XZ1tmGEz
--- NativeDB Added Parameter 3: Any p2
--- @param p0 string 
--- @param p1 boolean 
--- @return boolean
function RequestAmbientAudioBank(p0, p1) end

--- @param ped Ped 
--- @return void (Type not found)
function ResetPedAudioFlags(ped) end

--- All occurrences and usages found in b617d: pastebin.com/NzZZ2Tmm  
--- NativeDB Added Parameter 3: Any p2
--- @param p0 string 
--- @param p1 boolean 
--- @return boolean
function RequestMissionAudioBank(p0, p1) end

--- All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/AkmDAVn6  
--- NativeDB Added Parameter 3: int p2
--- @param p0 string 
--- @param p1 boolean 
--- @return boolean
function RequestScriptAudioBank(p0, p1) end

--- @return void (Type not found)
function ResetTrevorRage() end

--- Makes pedestrians sound their horn longer, faster and more agressive when they use their horn.  
--- @param toggle boolean 
--- @return void (Type not found)
function SetAggressiveHorns(toggle) end

--- Audio List  
--- gtaforums.com/topic/795622-audio-for-mods/  
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/FTeAj4yZ  
--- Yes  
--- @param ped Ped 
--- @param name string 
--- @return void (Type not found)
function SetAmbientVoiceName(ped, name) end

--- @return void (Type not found)
function RestartScriptedConversation() end

--- @param zoneName string 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetAmbientZoneState(zoneName, p1, p2) end

--- @param ped Ped 
--- @param hash Hash 
--- @return void (Type not found)
function SetAmbientVoiceNameHash(ped, hash) end

--- @param p0 string 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetAmbientZoneListState(p0, p1, p2) end

--- mood can be 0 or 1 (it's not a boolean value!). Effects audio of the animal.  
--- @param animal Ped 
--- @param mood number 
--- @return void (Type not found)
function SetAnimalMood(animal, mood) end

--- @param scene string 
--- @param variable string 
--- @param value number 
--- @return void (Type not found)
function SetAudioSceneVariable(scene, variable, value) end

--- @param ambientZone string 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetAmbientZoneListStatePersistent(ambientZone, p1, p2) end

--- Possible flag names:  
--- "ActivateSwitchWheelAudio"  
--- "AllowAmbientSpeechInSlowMo"  
--- "AllowCutsceneOverScreenFade"  
--- "AllowForceRadioAfterRetune"  
--- "AllowPainAndAmbientSpeechToPlayDuringCutscene"  
--- "AllowPlayerAIOnMission"  
--- "AllowPoliceScannerWhenPlayerHasNoControl"  
--- "AllowRadioDuringSwitch"  
--- "AllowRadioOverScreenFade"  
--- "AllowScoreAndRadio"  
--- "AllowScriptedSpeechInSlowMo"  
--- "AvoidMissionCompleteDelay"  
--- "DisableAbortConversationForDeathAndInjury"  
--- "DisableAbortConversationForRagdoll"  
--- "DisableBarks"  
--- "DisableFlightMusic"  
--- "DisableReplayScriptStreamRecording"  
--- "EnableHeadsetBeep"  
--- "ForceConversationInterrupt"  
--- "ForceSeamlessRadioSwitch"  
--- "ForceSniperAudio"  
--- "FrontendRadioDisabled"  
--- "HoldMissionCompleteWhenPrepared"  
--- "IsDirectorModeActive"  
--- "IsPlayerOnMissionForSpeech"  
--- "ListenerReverbDisabled"  
--- "LoadMPData"  
--- "MobileRadioInGame"  
--- "OnlyAllowScriptTriggerPoliceScanner"  
--- "PlayMenuMusic"  
--- "PoliceScannerDisabled"  
--- "ScriptedConvListenerMaySpeak"  
--- "SpeechDucksScore"  
--- "SuppressPlayerScubaBreathing"  
--- "WantedMusicDisabled"  
--- "WantedMusicOnMission"  
--- -------------------------------  
--- No added flag names between b393d and b573d, including b573d.  
--- #######################################################################  
--- "IsDirectorModeActive" is an audio flag which will allow you to play speech infinitely without any pauses like in Director Mode.  
--- -----------------------------------------------------------------------  
--- All flag IDs and hashes:  
--- ID: 01 | Hash: 0x20A7858F  
--- ID: 02 | Hash: 0xA11C2259  
--- ID: 03 | Hash: 0x08DE4700  
--- ID: 04 | Hash: 0x989F652F  
--- ID: 05 | Hash: 0x3C9E76BA  
--- ID: 06 | Hash: 0xA805FEB0  
--- ID: 07 | Hash: 0x4B94EA26  
--- ID: 08 | Hash: 0x803ACD34  
--- ID: 09 | Hash: 0x7C741226  
--- ID: 10 | Hash: 0x31DB9EBD  
--- ID: 11 | Hash: 0xDF386F18  
--- ID: 12 | Hash: 0x669CED42  
--- ID: 13 | Hash: 0x51F22743  
--- ID: 14 | Hash: 0x2052B35C  
--- ID: 15 | Hash: 0x071472DC  
--- ID: 16 | Hash: 0xF9928BCC  
--- ID: 17 | Hash: 0x7ADBDD48  
--- ID: 18 | Hash: 0xA959BA1A  
--- ID: 19 | Hash: 0xBBE89B60  
--- ID: 20 | Hash: 0x87A08871  
--- ID: 21 | Hash: 0xED1057CE  
--- ID: 22 | Hash: 0x1584AD7A  
--- ID: 23 | Hash: 0x8582CFCB  
--- ID: 24 | Hash: 0x7E5E2FB0  
--- ID: 25 | Hash: 0xAE4F72DB  
--- ID: 26 | Hash: 0x5D16D1FA  
--- ID: 27 | Hash: 0x06B2F4B8  
--- ID: 28 | Hash: 0x5D4CDC96  
--- ID: 29 | Hash: 0x8B5A48BA  
--- ID: 30 | Hash: 0x98FBD539  
--- ID: 31 | Hash: 0xD8CB0473  
--- ID: 32 | Hash: 0x5CBB4874  
--- ID: 33 | Hash: 0x2E9F93A9  
--- ID: 34 | Hash: 0xD93BEA86  
--- ID: 35 | Hash: 0x92109B7D  
--- ID: 36 | Hash: 0xB7EC9E4D  
--- ID: 37 | Hash: 0xCABDBB1D  
--- ID: 38 | Hash: 0xB3FD4A52  
--- ID: 39 | Hash: 0x370D94E5  
--- ID: 40 | Hash: 0xA0F7938F  
--- ID: 41 | Hash: 0xCBE1CE81  
--- ID: 42 | Hash: 0xC27F1271  
--- ID: 43 | Hash: 0x9E3258EB  
--- ID: 44 | Hash: 0x551CDA5B  
--- ID: 45 | Hash: 0xCB6D663C  
--- ID: 46 | Hash: 0x7DACE87F  
--- ID: 47 | Hash: 0xF9DE416F  
--- ID: 48 | Hash: 0x882E6E9E  
--- ID: 49 | Hash: 0x16B447E7  
--- ID: 50 | Hash: 0xBD867739  
--- ID: 51 | Hash: 0xA3A58604  
--- ID: 52 | Hash: 0x7E046BBC  
--- ID: 53 | Hash: 0xD95FDB98  
--- ID: 54 | Hash: 0x5842C0ED  
--- ID: 55 | Hash: 0x285FECC6  
--- ID: 56 | Hash: 0x9351AC43  
--- ID: 57 | Hash: 0x50032E75  
--- ID: 58 | Hash: 0xAE6D0D59  
--- ID: 59 | Hash: 0xD6351785  
--- ID: 60 | Hash: 0xD25D71BC  
--- ID: 61 | Hash: 0x1F7F6423  
--- ID: 62 | Hash: 0xE24C3AA6  
--- ID: 63 | Hash: 0xBFFDD2B7  
--- @param flagName string 
--- @param toggle boolean 
--- @return void (Type not found)
function SetAudioFlag(flagName, toggle) end

--- @param ambientZone string 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetAmbientZoneStatePersistent(ambientZone, p1, p2) end

--- Needs to be called every frame.
--- Audio mode to apply this frame: https://alloc8or.re/gta5/doc/enums/audSpecialEffectMode.txt
--- @param mode number Audio mode to apply this frame
--- @return void (Type not found)
function SetAudioSpecialEffectMode(mode) end

--- Examples:
--- AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_MICHAEL", 1);
--- AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_MICHAEL", 1);
--- AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_TREVOR", 1);
--- AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "END_CREDITS_SAVE_MICHAEL_TREVOR", 1);
--- AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "OFF_ROAD_RADIO_ROCK_LIST", 1);
--- AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_06_COUNTRY", "MAGDEMO2_RADIO_DINGHY", 1);
--- AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_16_SILVERLAKE", "SEA_RACE_RADIO_PLAYLIST", 1);
--- AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "OFF_ROAD_RADIO_ROCK_LIST", 1);
--- @param radioStation string 
--- @param trackListName string 
--- @param p2 boolean 
--- @return void (Type not found)
function SetCustomRadioTrackList(radioStation, trackListName, p2) end

--- @param emitterName string 
--- @param radioStation string 
--- @return void (Type not found)
function SetEmitterRadioStation(emitterName, radioStation) end

--- All occurrences found in b617d, sorted alphabetically and identical lines removed:   
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_AK");  
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_CUSTOM");  
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_TOOTHLESS");  
--- @param name string 
--- @return void (Type not found)
function SetCutsceneAudioOverride(name) end

--- @param time number 
--- @return void (Type not found)
function SetAudioScriptCleanupTime(time) end

--- @param vehicle Vehicle 
--- @param p1  
--- @return void (Type not found)
function SetAudioVehiclePriority(vehicle, p1) end

--- @param radioStation string 
--- @return void (Type not found)
function SetInitialPlayerStation(radioStation) end

--- @param active boolean 
--- @return void (Type not found)
function SetGpsActive(active) end

--- @param active boolean 
--- @return void (Type not found)
function SetFrontendRadioActive(active) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetHornEnabled(vehicle, toggle) end

--- If this is the correct name, what microphone? I know your TV isn't going to reach out and adjust your headset so..  
--- @param p0 boolean 
--- @param x1 number 
--- @param y1 number 
--- @param z1 number 
--- @param x2 number 
--- @param y2 number 
--- @param z2 number 
--- @param x3 number 
--- @param y3 number 
--- @param z3 number 
--- @return void (Type not found)
function SetMicrophonePosition(p0, x1, y1, z1, x2, y2, z2, x3, y3, z3) end

--- @param state boolean 
--- @return void (Type not found)
function SetMobilePhoneRadioState(state) end

--- @param ped Ped 
--- @param p1 boolean 
--- @return void (Type not found)
function SetPedAudioGender(ped, p1) end

--- @param toggle boolean 
--- @return void (Type not found)
function SetMobileRadioEnabledDuringGameplay(toggle) end

--- Sets the ped drunk sounds.  Only works with PLAYER_PED_ID
--- ====================================================
--- As mentioned above, this only sets the drunk sound to ped/player.
--- To give the Ped a drunk effect with drunk walking animation try using SET_PED_MOVEMENT_CLIPSET
--- Below is an example
--- if (!Function.Call<bool>(Hash.HAS_ANIM_SET_LOADED, "move_m@drunk@verydrunk"))
---                 {
---                     Function.Call(Hash.REQUEST_ANIM_SET, "move_m@drunk@verydrunk");
---                 }
---                 Function.Call(Hash.SET_PED_MOVEMENT_CLIPSET, Ped.Handle, "move_m@drunk@verydrunk", 0x3E800000);
--- And to stop the effect use
--- RESET_PED_MOVEMENT_CLIPSET
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedIsDrunk(ped, toggle) end

--- Dat151RelType == 29
--- NativeDB Introduced: v2699
--- @param ped Ped 
--- @param voiceGroupHash Hash 
--- @return void (Type not found)
function SetPedVoiceGroupRace(ped, voiceGroupHash) end

--- Enables/disables ped's "loud" footstep sound.
--- NativeDB Introduced: v1493
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedAudioFootstepLoud(ped, toggle) end

--- Enables/disables ped's "quiet" footstep sound.
--- NativeDB Introduced: v1493
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedAudioFootstepQuiet(ped, toggle) end

--- Assigns some ambient voice to the ped.  
--- @param ped Ped 
--- @return void (Type not found)
function SetPedScream(ped) end

--- From the scripts:
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("PAIGE_PVG"));
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("TALINA_PVG"));
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("FEMALE_LOST_BLACK_PVG"));
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("FEMALE_LOST_WHITE_PVG"));
--- @param ped Ped 
--- @param voiceGroupHash Hash 
--- @return void (Type not found)
function SetPedVoiceGroup(ped, voiceGroupHash) end

--- Found in the b617d scripts, duplicates removed:
--- AUDIO::_044DBAD7A7FA2BE5("V_CARSHOWROOM_PS_WINDOW_UNBROKEN", "V_CARSHOWROOM_PS_WINDOW_BROKEN");
---  AUDIO::_044DBAD7A7FA2BE5("V_CIA_PS_WINDOW_UNBROKEN", "V_CIA_PS_WINDOW_BROKEN");
---  AUDIO::_044DBAD7A7FA2BE5("V_DLC_HEIST_APARTMENT_DOOR_CLOSED", "V_DLC_HEIST_APARTMENT_DOOR_OPEN");
---  AUDIO::_044DBAD7A7FA2BE5("V_FINALEBANK_PS_VAULT_INTACT", "V_FINALEBANK_PS_VAULT_BLOWN");
---  AUDIO::_044DBAD7A7FA2BE5("V_MICHAEL_PS_BATHROOM_WITH_WINDOW", "V_MICHAEL_PS_BATHROOM_WITHOUT_WINDOW");
--- @param p0 string 
--- @param p1 string 
--- @return void (Type not found)
function SetPortalSettingsOverride(p0, p1) end

--- @param toggle boolean 
--- @return void (Type not found)
function SetRadioAutoUnfreeze(toggle) end

--- Speech related.  
--- @param ped Ped 
--- @return void (Type not found)
function SetPedTalk(ped) end

--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerAngry(ped, toggle) end

--- 6 calls in the b617d scripts, removed identical lines:
--- AUDIO::SET_RADIO_STATION_MUSIC_ONLY("RADIO_01_CLASS_ROCK", 1);
--- AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 0);
--- AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 1);
--- @param radioStation string 
--- @param toggle boolean 
--- @return void (Type not found)
function SetRadioStationMusicOnly(radioStation, toggle) end

--- Doesn't have an effect in Story Mode.
--- NativeDB Introduced: v2372
--- @param radioStation string 
--- @param toggle boolean 
--- @return void (Type not found)
function SetRadioStationIsVisible(radioStation, toggle) end

--- @param fadeTime number 
--- @return void (Type not found)
function SetRadioFrontendFadeTime(fadeTime) end

--- Sets radio station by index.  
--- @param radioStation number 
--- @return void (Type not found)
function SetRadioToStationIndex(radioStation) end

--- Find the radio station list [here](https://gist.github.com/4mmonium/b47d6512a2d992cbf4eea15d9038b581)
--- @param stationName string 
--- @return void (Type not found)
function SetRadioToStationName(stationName) end

--- Only found this one in the decompiled scripts:  
--- AUDIO::SET_RADIO_TRACK("RADIO_03_HIPHOP_NEW", "ARM1_RADIO_STARTS");  
--- @param radioStation string 
--- @param radioTrack string 
--- @return void (Type not found)
function SetRadioTrack(radioStation, radioTrack) end

--- NativeDB Introduced: v1493
--- @param radioStationName string 
--- @param mixName string 
--- @param p2 number 
--- @return void (Type not found)
function SetRadioTrackMix(radioStationName, mixName, p2) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetSirenWithNoDriver(vehicle, toggle) end

--- @param doorHash Hash 
--- @param toggle boolean 
--- @return void (Type not found)
function SetScriptUpdateDoorAudio(doorHash, toggle) end

--- Sets the position of the audio event to the entity's position for one frame(?)
--- if (l_8C3 == 0) {
---     sub_27fd1(0, -1, 1);
---     if (PED::IS_SYNCHRONIZED_SCENE_RUNNING(l_87D)) {
---         AUDIO::STOP_SYNCHRONIZED_AUDIO_EVENT(l_87D);
---     }
---     if (sub_7dd(l_A00)) {
---         AUDIO::_950A154B8DAB6185("PAP2_IG1_POPPYSEX", l_A00);
---     }
---     sub_91c("TK************ SETTING SYNCH SCENE AUDIO POSITION THIS FRAME ************TK");
---     l_8C3 = 1;
--- }
--- --
--- Found in the b617d scripts, duplicates removed:
--- AUDIO::_950A154B8DAB6185("CAR_5_IG_6", l_7FE[1/*1*/]);
--- AUDIO::_950A154B8DAB6185("EX03_TRAIN_BIKE_LAND",   PLAYER::PLAYER_PED_ID());
--- AUDIO::_950A154B8DAB6185("FBI_2_MCS_1_LeadIn", l_40[2/*1*/]);
--- AUDIO::_950A154B8DAB6185("FIN_C2_MCS_1", l_24C[0/*1*/]);
--- AUDIO::_950A154B8DAB6185("MNT_DNC", l_5F);
--- AUDIO::_950A154B8DAB6185("PAP2_IG1_POPPYSEX", l_A00);
--- @param p0 string 
--- @param p1 Entity 
--- @return void (Type not found)
function SetSynchronizedAudioEventPositionThisFrame(p0, p1) end

--- Example:
--- AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false);
--- This turns off surrounding sounds not connected directly to peds.
--- @param emitterName string 
--- @param toggle boolean 
--- @return void (Type not found)
function SetStaticEmitterEnabled(emitterName, toggle) end

--- @param soundId number 
--- @param variableName string 
--- @param value number 
--- @return void (Type not found)
function SetVariableOnSound(soundId, variableName, value) end

--- NativeDB Introduced: v2372
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetSirenKeepOn(vehicle, toggle) end

--- @param toggle boolean 
--- @return void (Type not found)
function SetUserRadioControlEnabled(toggle) end

--- SET_VARIABLE_ON_*
--- @param variableName string 
--- @param value number 
--- @return void (Type not found)
function SetVariableOnCutsceneAudio(variableName, value) end

--- From the scripts, p0:  
--- "ArmWrestlingIntensity",  
--- "INOUT",  
--- "Monkey_Stream",  
--- "ZoomLevel"  
--- @param p0 string 
--- @param p1 number 
--- @return void (Type not found)
function SetVariableOnStream(p0, p1) end

--- AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 1.0);
--- AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 0.0);
--- @param variableName string 
--- @param value number 
--- @return void (Type not found)
function SetVariableOnUnderWaterStream(variableName, value) end

--- @param vehicle Vehicle 
--- @param damageFactor number 
--- @return void (Type not found)
function SetVehicleAudioEngineDamageFactor(vehicle, damageFactor) end

--- NativeDB Introduced: v1365
--- @param vehicle Vehicle 
--- @param value number 
--- @return void (Type not found)
function SetVehicleHornVariation(vehicle, value) end

--- Find the radio station list [here](https://gist.github.com/4mmonium/b47d6512a2d992cbf4eea15d9038b581)
--- @param vehicle Vehicle 
--- @param radioStation string 
--- @return void (Type not found)
function SetVehRadioStation(vehicle, radioStation) end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleRadioLoud(vehicle, toggle) end

--- Vehicle will make a 'rattling' noise when decelerating
--- @param vehicle Vehicle Vehicle to modify
--- @param intensity number A value 0.0 - 1.0. Higher the value, the more likely the vehicle is to make the sound while decelerating
--- @return void (Type not found)
function SetVehicleAudioBodyDamageFactor(vehicle, intensity) end

--- Overrides the vehicle's startup engine rev sound.
--- 2 calls found in the b617d scripts:
--- ```cpp
--- AUDIO::SET_VEHICLE_STARTUP_REV_SOUND(l_A42, "Franklin_Bike_Rev", "BIG_SCORE_3A_SOUNDS");  
--- AUDIO::SET_VEHICLE_STARTUP_REV_SOUND(l_166, "Trevor_Revs_Off", "PALETO_SCORE_SETUP_SOUNDS");
--- @param vehicle Vehicle 
--- @param p1 string 
--- @param p2 string 
--- @return void (Type not found)
function SetVehicleStartupRevSound(vehicle, p1, p2) end

--- @return void (Type not found)
function SkipToNextScriptedConversationLine() end

--- SET_VEHICLE_BOOST_ACTIVE(vehicle, 1, 0);  
--- SET_VEHICLE_BOOST_ACTIVE(vehicle, 0, 0);   
--- Will give a boost-soundeffect.  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleBoostActive(vehicle, toggle) end

--- NativeDB Introduced: v2372
--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetVehHasRadioOverride(vehicle) end

--- Example:
--- This will start the alarm at Fort Zancudo.
--- AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);
--- First parameter (char) is the name of the alarm.
--- Second parameter (bool) is unknown, it does not seem to make a difference if this one is 0 or 1.
--- ----------
--- It DOES make a difference but it has to do with the duration or something I dunno yet
--- ----------
---  Found in the b617d scripts:
---  AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS", 0);
---  AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER", 1);
---  AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER_B", 0);
---  AUDIO::START_ALARM("BIG_SCORE_HEIST_VAULT_ALARMS", a_0);
---  AUDIO::START_ALARM("FBI_01_MORGUE_ALARMS", 1);
---  AUDIO::START_ALARM("FIB_05_BIOTECH_LAB_ALARMS", 0);
---  AUDIO::START_ALARM("JEWEL_STORE_HEIST_ALARMS", 0);
---  AUDIO::START_ALARM("PALETO_BAY_SCORE_ALARM", 1);
---  AUDIO::START_ALARM("PALETO_BAY_SCORE_CHICKEN_FACTORY_ALARM", 0);
---  AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);
---  AUDIO::START_ALARM("PORT_OF_LS_HEIST_SHIP_ALARMS", 0);
---  AUDIO::START_ALARM("PRISON_ALARMS", 0);
---  AUDIO::START_ALARM("PROLOGUE_VAULT_ALARMS", 0);
--- @param alarmName string 
--- @param p2 boolean 
--- @return void (Type not found)
function StartAlarm(alarmName, p2) end

--- @return void (Type not found)
function StartPreloadedConversation() end

--- can't seem to enable radio on cop cars etc  
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleRadioEnabled(vehicle, toggle) end

--- Example:  
--- This will stop the alarm at Fort Zancudo.  
--- AUDIO::STOP_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
--- First parameter (char) is the name of the alarm.  
--- Second parameter (bool) has to be true (1) to have any effect.  
--- @param alarmName string 
--- @param toggle boolean 
--- @return void (Type not found)
function StopAlarm(alarmName, toggle) end

--- @param stop boolean 
--- @return void (Type not found)
function StopAllAlarms(stop) end

--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function StartScriptPhoneConversation(p0, p1) end

--- Used to prepare a scene where the surrounding sound is muted or a bit changed. This does not play any sound.  
--- List of all usable scene names found in b617d. Sorted alphabetically and identical names removed: pastebin.com/MtM9N9CC  
--- @param scene string 
--- @return boolean
function StartAudioScene(scene) end

--- @param p0 boolean 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function StartScriptConversation(p0, p1, p2, p3) end

--- @return void (Type not found)
function SkipRadioForward() end

--- SET_*
--- @param vehicle Vehicle 
--- @return void (Type not found)
function SoundVehicleHornThisFrame(vehicle) end

--- @param ped Ped 
--- @return void (Type not found)
function StopCurrentPlayingAmbientSpeech(ped) end

--- @param ped Ped 
--- @return void (Type not found)
function StopPedRingtone(ped) end

--- @param ped Ped 
--- @return void (Type not found)
function StopCurrentPlayingSpeech(ped) end

--- ??  
--- @return void (Type not found)
function StopAudioScenes() end

--- @param p0 boolean 
--- @return number
function StopScriptedConversation(p0) end

--- @param scene string 
--- @return void (Type not found)
function StopAudioScene(scene) end

--- @return void (Type not found)
function StopStream() end

--- @param ped Ped 
--- @param shaking boolean 
--- @return void (Type not found)
function StopPedSpeaking(ped, shaking) end

--- @return void (Type not found)
function StopCutsceneAudio() end

--- @param soundId number 
--- @return void (Type not found)
function StopSound(soundId) end

--- List of all usable event names found in b617d used with this native. Sorted alphabetically and identical names removed: pastebin.com/RzDFmB1W  
--- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
--- @param eventName string 
--- @return boolean
function TriggerMusicEvent(eventName) end

--- ... When not in a vehicle
--- NativeDB Introduced: v1290
--- @param vehicle Vehicle 
--- @return void (Type not found)
function TriggerSiren(vehicle) end

--- @param p0  
--- @return boolean
function StopSynchronizedAudioEvent(p0) end

--- @param radioStation string 
--- @return void (Type not found)
function UnfreezeRadioStation(radioStation) end

--- AUDIO::UNLOCK_RADIO_STATION_TRACK_LIST("RADIO_16_SILVERLAKE", "MIRRORPARK_LOCKED");
--- @param radioStation string 
--- @param trackListName string 
--- @return void (Type not found)
function UnlockRadioStationTrackList(radioStation, trackListName) end

--- NativeDB Introduced: v1493
--- @param enableMixes boolean 
--- @return void (Type not found)
function UpdateLsur(enableMixes) end

--- **This native does absolutely nothing, just a nullsub**
--- On last-gen this just runs blr and this func is called by several other functions other then the native's table.  
--- @return void (Type not found)
function UnregisterScriptWithAudio() end

--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function UseSirenAsHorn(vehicle, toggle) end

--- @param newsStory number 
--- @return void (Type not found)
function UnlockMissionNewsStory(newsStory) end
