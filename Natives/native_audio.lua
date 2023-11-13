
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
--- @name ADD_LINE_TO_CONVERSATION
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

--- 4 calls in the b617d scripts. The only one with p0 and p2 in clear text:
--- AUDIO::ADD_PED_TO_CONVERSATION(5, l_AF, "DINAPOLI");
--- =================================================
--- One of the 2 calls in dialogue_handler.c p0 is in a while-loop, and so is determined to also possibly be 0 - 15.
--- @name ADD_PED_TO_CONVERSATION
--- @param index number 
--- @param ped Ped 
--- @param p2 string 
--- @return void (Type not found)
function AddPedToConversation(index, ped, p2) end

--- @name AUDIO_IS_SCRIPTED_MUSIC_PLAYING
--- @return boolean
function AudioIsScriptedMusicPlaying() end

--- @name ACTIVATE_AUDIO_SLOWMO_MODE
--- @param p0 string 
--- @return void (Type not found)
function ActivateAudioSlowmoMode(p0) end

--- Plays the siren sound of a vehicle which is otherwise activated when fastly double-pressing the horn key.  
--- Only works on vehicles with a police siren.  
--- @name BLIP_SIREN
--- @param vehicle Vehicle 
--- @return void (Type not found)
function BlipSiren(vehicle) end

--- Checks if the ped can play the speech or has the speech file, last parameter is usually 0  
--- @name _CAN_PED_SPEAK
--- @param ped Ped 
--- @param speechName string 
--- @param unk boolean 
--- @return boolean
function CanPedSpeak(ped, speechName, unk) end

--- @name _CANCEL_CURRENT_POLICE_REPORT
--- @return void (Type not found)
function CancelCurrentPoliceReport() end

--- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
--- @name CANCEL_MUSIC_EVENT
--- @param eventName string 
--- @return boolean
function CancelMusicEvent(eventName) end

--- All found occurrences in b678d:
--- pastebin.com/ceu67jz8
--- @name ADD_ENTITY_TO_AUDIO_MIX_GROUP
--- @param entity Entity 
--- @param groupName string 
--- @param p2 number 
--- @return void (Type not found)
function AddEntityToAudioMixGroup(entity, groupName, p2) end

--- @name CLEAR_ALL_BROKEN_GLASS
--- @return void (Type not found)
function ClearAllBrokenGlass() end

--- @name CLEAR_AMBIENT_ZONE_LIST_STATE
--- @param p0  
--- @param p1 boolean 
--- @return void (Type not found)
function ClearAmbientZoneListState(p0, p1) end

--- This function also has a p2, unknown. Signature AUDIO::CLEAR_AMBIENT_ZONE_STATE(const char* zoneName, bool p1, Any p2);
--- Still needs more research.
--- @name CLEAR_AMBIENT_ZONE_STATE
--- @param zoneName string 
--- @param p1 boolean 
--- @return void (Type not found)
function ClearAmbientZoneState(zoneName, p1) end

--- 3 calls in the b617d scripts, removed duplicate.
--- AUDIO::CLEAR_CUSTOM_RADIO_TRACK_LIST("RADIO_16_SILVERLAKE");
--- AUDIO::CLEAR_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK");
--- @name CLEAR_CUSTOM_RADIO_TRACK_LIST
--- @param radioStation string 
--- @return void (Type not found)
function ClearCustomRadioTrackList(radioStation) end

--- @name BLOCK_DEATH_JINGLE
--- @param toggle boolean 
--- @return void (Type not found)
function BlockDeathJingle(toggle) end

--- @name DEACTIVATE_AUDIO_SLOWMO_MODE
--- @param p0 string 
--- @return void (Type not found)
function DeactivateAudioSlowmoMode(p0) end

--- @name DISABLE_PED_PAIN_AUDIO
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function DisablePedPainAudio(ped, toggle) end

--- @name CREATE_NEW_SCRIPTED_CONVERSATION
--- @return void (Type not found)
function CreateNewScriptedConversation() end

--- @name ENABLE_STALL_WARNING_SOUNDS
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function EnableStallWarningSounds(vehicle, toggle) end

--- If value is set to true, and ambient siren sound will be played.
--- Appears to enable/disable an audio flag.
--- @name DISTANT_COP_CAR_SIRENS
--- @param value boolean 
--- @return void (Type not found)
function DistantCopCarSirens(value) end

--- @name FIND_RADIO_STATION_INDEX
--- @param stationNameHash number 
--- @return number
function FindRadioStationIndex(stationNameHash) end

--- Sets whether the vehicle passed has exhaust pops.
--- @name ENABLE_VEHICLE_EXHAUST_POPS
--- @param vehicle Vehicle 
--- @param toggle boolean Enables or disables exaust pops.
--- @return void (Type not found)
function EnableVehicleExhaustPops(vehicle, toggle) end

--- This native sets the audio of the specified vehicle to the audioName (p1).
--- Use the audioNameHash found in vehicles.meta
--- Example:
--- _SET_VEHICLE_AUDIO(veh, "ADDER");
--- The selected vehicle will now have the audio of the Adder.
--- FORCE_VEHICLE_???
--- @name _FORCE_VEHICLE_ENGINE_AUDIO
--- @param vehicle Vehicle 
--- @param audioName string 
--- @return void (Type not found)
function ForceVehicleEngineAudio(vehicle, audioName) end

--- NativeDB Introduced: v2372
--- @name _FORCE_RADIO_TRACK_LIST_POSITION
--- @param radioStation string 
--- @param trackListName string 
--- @param milliseconds number 
--- @return void (Type not found)
function ForceRadioTrackListPosition(radioStation, trackListName, milliseconds) end

--- @name _GET_AMBIENT_VOICE_NAME_HASH
--- @param ped Ped 
--- @return Hash
function GetAmbientVoiceNameHash(ped) end

--- @name GET_CURRENT_SCRIPTED_CONVERSATION_LINE
--- @return number
function GetCurrentScriptedConversationLine() end

--- @name FREEZE_MICROPHONE
--- @return void (Type not found)
function FreezeMicrophone() end

--- @name GET_AUDIBLE_MUSIC_TRACK_TEXT_ID
--- @return number
function GetAudibleMusicTrackTextId() end

--- Return the playback time (in milliseconds) of the radio stations current track. 
--- NativeDB Introduced: v1493
--- @name _GET_CURRENT_RADIO_TRACK_PLAYBACK_TIME
--- @param radioStationName string 
--- @return number
function GetCurrentRadioTrackPlaybackTime(radioStationName) end

--- Return the hash of the radio stations current track.
--- NativeDB Introduced: v1493
--- @name _GET_CURRENT_RADIO_TRACK_NAME
--- @param radioStationName string 
--- @return Hash
function GetCurrentRadioTrackName(radioStationName) end

--- @name GET_IS_PRELOADED_CONVERSATION_READY
--- @return boolean
function GetIsPreloadedConversationReady() end

--- Could this be used alongside either,   
--- SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES or _SET_NETWORK_ID_SYNC_TO_PLAYER to make it so other players can hear the sound while online? It'd be a bit troll-fun to be able to play the Zancudo UFO creepy sounds globally.  
--- @name GET_NETWORK_ID_FROM_SOUND_ID
--- @param soundId number 
--- @return number
function GetNetworkIdFromSoundId(soundId) end

--- @name FREEZE_RADIO_STATION
--- @param radioStation string 
--- @return void (Type not found)
function FreezeRadioStation(radioStation) end

--- @name GET_NUM_UNLOCKED_RADIO_STATIONS
--- @return number
function GetNumUnlockedRadioStations() end

--- @name GET_MUSIC_PLAYTIME
--- @return number
function GetMusicPlaytime() end

--- Returns 255 (radio off index) if the function fails.  
--- @name GET_PLAYER_RADIO_STATION_INDEX
--- @return number
function GetPlayerRadioStationIndex() end

--- Returns String with radio station name.  
--- @name GET_RADIO_STATION_NAME
--- @param radioStation number 
--- @return string
function GetRadioStationName(radioStation) end

--- @name GET_PLAYER_RADIO_STATION_GENRE
--- @return number
function GetPlayerRadioStationGenre() end

--- Returns active radio station name  
--- @name GET_PLAYER_RADIO_STATION_NAME
--- @return string
function GetPlayerRadioStationName() end

--- Counterpart: [`GET_NETWORK_ID_FROM_SOUND_ID`](#\_0x2DE3F0A134FFBC0D).
--- @name GET_SOUND_ID_FROM_NETWORK_ID
--- @param netId number Network ID of sound.
--- @return number
function GetSoundIdFromNetworkId(netId) end

--- @name GET_SOUND_ID
--- @return number
function GetSoundId() end

--- @name DOES_PLAYER_VEH_HAVE_RADIO
--- @return boolean
function DoesPlayerVehHaveRadio() end

--- @name GET_VEHICLE_DEFAULT_HORN_IGNORE_MODS
--- @param vehicle Vehicle 
--- @return Hash
function GetVehicleDefaultHornIgnoreMods(vehicle) end

--- Returns hash of default vehicle horn  
--- Hash is stored in audVehicleAudioEntity  
--- @name GET_VEHICLE_DEFAULT_HORN
--- @param vehicle Vehicle 
--- @return Hash
function GetVehicleDefaultHorn(vehicle) end

--- NativeDB Introduced: v1365
--- @name _GET_VEHICLE_DEFAULT_HORN_VARIATION
--- @param vehicle Vehicle 
--- @return number
function GetVehicleDefaultHornVariation(vehicle) end

--- HAS_*
--- @name _HAS_MULTIPLAYER_AUDIO_DATA_LOADED
--- @return boolean
function HasMultiplayerAudioDataLoaded() end

--- HAS_*
--- @name _HAS_MULTIPLAYER_AUDIO_DATA_UNLOADED
--- @return boolean
function HasMultiplayerAudioDataUnloaded() end

--- @name GET_STREAM_PLAY_TIME
--- @return number
function GetStreamPlayTime() end

--- NativeDB Added Parameter 3: Any p2
--- @name HINT_AMBIENT_AUDIO_BANK
--- @param p0  
--- @param p1  
--- @return 
function HintAmbientAudioBank(p0, p1) end

--- NativeDB Added Parameter 3: Any p2
--- @name HINT_SCRIPT_AUDIO_BANK
--- @param p0  
--- @param p1 number 
--- @return 
function HintScriptAudioBank(p0, p1) end

--- Example:  
--- bool playing = AUDIO::IS_ALARM_PLAYING("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");  
--- @name IS_ALARM_PLAYING
--- @param alarmName string 
--- @return boolean
function IsAlarmPlaying(alarmName) end

--- @name HAS_SOUND_FINISHED
--- @param soundId number 
--- @return boolean
function HasSoundFinished(soundId) end

--- @name INTERRUPT_CONVERSATION
--- @param p0  
--- @param p1  
--- @param p2  
--- @return void (Type not found)
function InterruptConversation(p0, p1, p2) end

--- One call found in the b617d scripts:
--- AUDIO::_8A694D7A68F8DC38(NETWORK::NET_TO_PED(l_3989._f26F[0/*1*/]), "CONV_INTERRUPT_QUIT_IT", "LESTER");
--- @name INTERRUPT_CONVERSATION_AND_PAUSE
--- @param ped Ped 
--- @param p1 string 
--- @param p2 string 
--- @return void (Type not found)
function InterruptConversationAndPause(ped, p1, p2) end

--- @name IS_AMBIENT_SPEECH_PLAYING
--- @param ped Ped 
--- @return boolean
function IsAmbientSpeechPlaying(ped) end

--- Common in the scripts:  
--- AUDIO::IS_AMBIENT_SPEECH_DISABLED(PLAYER::PLAYER_PED_ID());  
--- @name IS_AMBIENT_SPEECH_DISABLED
--- @param ped Ped 
--- @return boolean
function IsAmbientSpeechDisabled(ped) end

--- @name IS_ANIMAL_VOCALIZATION_PLAYING
--- @param pedHandle Ped 
--- @return boolean
function IsAnimalVocalizationPlaying(pedHandle) end

--- @name IS_AMBIENT_ZONE_ENABLED
--- @param ambientZone string 
--- @return boolean
function IsAmbientZoneEnabled(ambientZone) end

--- @name IS_AUDIO_SCENE_ACTIVE
--- @param scene string 
--- @return boolean
function IsAudioSceneActive(scene) end

--- Hardcoded to return 1  
--- @name IS_GAME_IN_CONTROL_OF_MUSIC
--- @return boolean
function IsGameInControlOfMusic() end

--- @name IS_ANY_SPEECH_PLAYING
--- @param ped Ped 
--- @return boolean
function IsAnySpeechPlaying(ped) end

--- @name IS_MISSION_COMPLETE_PLAYING
--- @return boolean
function IsMissionCompletePlaying() end

--- Checks whether the horn of a vehicle is currently played.  
--- @name IS_HORN_ACTIVE
--- @param vehicle Vehicle 
--- @return boolean
function IsHornActive(vehicle) end

--- @name IS_MISSION_NEWS_STORY_UNLOCKED
--- @param newsStory number 
--- @return boolean
function IsMissionNewsStoryUnlocked(newsStory) end

--- @name IS_MISSION_COMPLETE_READY_FOR_UI
--- @return boolean
function IsMissionCompleteReadyForUi() end

--- @name IS_MOBILE_PHONE_RADIO_ACTIVE
--- @return boolean
function IsMobilePhoneRadioActive() end

--- @name IS_PED_IN_CURRENT_CONVERSATION
--- @param ped Ped 
--- @return boolean
function IsPedInCurrentConversation(ped) end

--- @name IS_MOBILE_PHONE_CALL_ONGOING
--- @return boolean
function IsMobilePhoneCallOngoing() end

--- @name IS_PED_RINGTONE_PLAYING
--- @param ped Ped 
--- @return boolean
function IsPedRingtonePlaying(ped) end

--- @name IS_MUSIC_ONESHOT_PLAYING
--- @return boolean
function IsMusicOneshotPlaying() end

--- @name IS_PLAYER_VEH_RADIO_ENABLE
--- @return boolean
function IsPlayerVehRadioEnable() end

--- @name IS_SCRIPTED_CONVERSATION_LOADED
--- @return boolean
function IsScriptedConversationLoaded() end

--- @name IS_RADIO_FADED_OUT
--- @return boolean
function IsRadioFadedOut() end

--- NativeDB Introduced: v2699
--- @name _IS_RADIO_STATION_VISIBLE
--- @param radioStation string 
--- @return boolean
function IsRadioStationVisible(radioStation) end

--- @name IS_SCRIPTED_SPEECH_PLAYING
--- @param p0  
--- @return boolean
function IsScriptedSpeechPlaying(p0) end

--- @name IS_SCRIPTED_CONVERSATION_ONGOING
--- @return boolean
function IsScriptedConversationOngoing() end

--- @name IS_STREAM_PLAYING
--- @return boolean
function IsStreamPlaying() end

--- @name IS_VEHICLE_AUDIBLY_DAMAGED
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleAudiblyDamaged(vehicle) end

--- IS_VEHICLE_*
--- @name _IS_VEHICLE_RADIO_ENABLED
--- @param vehicle Vehicle The vehicle to check
--- @return boolean
function IsVehicleRadioEnabled(vehicle) end

--- L* (LINK_*?)
--- @name _LINK_STATIC_EMITTER_TO_ENTITY
--- @param emitterName string 
--- @param entity Entity 
--- @return void (Type not found)
function LinkStaticEmitterToEntity(emitterName, entity) end

--- @name IS_RADIO_RETUNING
--- @return boolean
function IsRadioRetuning() end

--- @name _IS_VEHICLE_RADIO_LOUD
--- @param vehicle Vehicle 
--- @return boolean
function IsVehicleRadioLoud(vehicle) end

--- Example:  
--- AUDIO::LOAD_STREAM("CAR_STEAL_1_PASSBY", "CAR_STEAL_1_SOUNDSET");  
--- All found occurrences in the b678d decompiled scripts: pastebin.com/3rma6w5w  
--- Stream names often ends with "_MASTER", "_SMALL" or "_STREAM". Also "_IN", "_OUT" and numbers.     
--- soundSet is often set to 0 in the scripts. These are common to end the soundSets: "_SOUNDS", "_SOUNDSET" and numbers.  
--- @name LOAD_STREAM
--- @param streamName string 
--- @param soundSet string 
--- @return boolean
function LoadStream(streamName, soundSet) end

--- Example:  
--- AUDIO::LOAD_STREAM_WITH_START_OFFSET("STASH_TOXIN_STREAM", 2400, "FBI_05_SOUNDS");  
--- Only called a few times in the scripts.  
--- @name LOAD_STREAM_WITH_START_OFFSET
--- @param streamName string 
--- @param startOffset number 
--- @param soundSet string 
--- @return boolean
function LoadStreamWithStartOffset(streamName, startOffset, soundSet) end

--- NativeDB Introduced: v2372
--- @name _LOCK_RADIO_STATION_TRACK_LIST
--- @param radioStation string 
--- @param trackListName string 
--- @return void (Type not found)
function LockRadioStationTrackList(radioStation, trackListName) end

--- Disables the radio station (hides it from the radio wheel).
--- NativeDB Introduced: v1493
--- @name _LOCK_RADIO_STATION
--- @param radioStationName string 
--- @param toggle boolean 
--- @return void (Type not found)
function LockRadioStation(radioStationName, toggle) end

--- @name OVERRIDE_PLAYER_GROUND_MATERIAL
--- @param hash Hash 
--- @param toggle boolean 
--- @return void (Type not found)
function OverridePlayerGroundMaterial(hash, toggle) end

--- Sets audio flag "OverrideMicrophoneSettings"
--- @name _OVERRIDE_MICROPHONE_SETTINGS
--- @param hash Hash 
--- @param toggle boolean 
--- @return void (Type not found)
function OverrideMicrophoneSettings(hash, toggle) end

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
--- @name OVERRIDE_VEH_HORN
--- @param vehicle Vehicle The vehicle you want to change the horn on.
--- @param override boolean Must be set to true. If set to false, the default horn hash will be restored.
--- @param hornHash number A horn hash.
--- @return void (Type not found)
function OverrideVehHorn(vehicle, override, hornHash) end

--- This native enables the audio flag "TrevorRageIsOverridden" and sets the voice effect to `voiceEffect`
--- @name OVERRIDE_TREVOR_RAGE
--- @param voiceEffect string 
--- @return void (Type not found)
function OverrideTrevorRage(voiceEffect) end

--- @name PLAY_AMBIENT_SPEECH_FROM_POSITION_NATIVE
--- @param speechName string 
--- @param voiceName string 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param speechParam string 
--- @return void (Type not found)
function PlayAmbientSpeechFromPositionNative(speechName, voiceName, x, y, z, speechParam) end

--- @name OVERRIDE_UNDERWATER_STREAM
--- @param p0  
--- @param p1 boolean 
--- @return void (Type not found)
function OverrideUnderwaterStream(p0, p1) end

--- Only call found in the b617d scripts:
--- AUDIO::PLAY_DEFERRED_SOUND_FRONTEND("BACK", "HUD_FREEMODE_SOUNDSET");
--- @name PLAY_DEFERRED_SOUND_FRONTEND
--- @param soundName string 
--- @param soundsetName string 
--- @return void (Type not found)
function PlayDeferredSoundFrontend(soundName, soundsetName) end

--- @name PAUSE_SCRIPTED_CONVERSATION
--- @param p0 boolean 
--- @return void (Type not found)
function PauseScriptedConversation(p0) end

--- Called 38 times in the scripts. There are 5 different audioNames used.
---  One unknown removed below.
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("DEAD");
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("FRANKLIN_BIG_01");
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("GENERIC_FAILED");
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("TREVOR_SMALL_01");
--- @name PLAY_MISSION_COMPLETE_AUDIO
--- @param audioName string 
--- @return void (Type not found)
function PlayMissionCompleteAudio(audioName) end

--- Plays sounds from a ped with chop model. For example it used to play bark or sniff sounds. p1 is always 3 or 4294967295 in decompiled scripts. By a quick disassembling I can assume that this arg is unused.
--- This native is works only when you call it on the ped with right model (ac_chop only ?)
--- Speech Name can be: CHOP_SNIFF_SEQ CHOP_WHINE CHOP_LICKS_MOUTH CHOP_PANT bark GROWL SNARL BARK_SEQ
--- @name PLAY_ANIMAL_VOCALIZATION
--- @param pedHandle Ped 
--- @param p1 number 
--- @param speechName string 
--- @return void (Type not found)
function PlayAnimalVocalization(pedHandle, p1, speechName) end

--- See [`PLAY_PED_AMBIENT_SPEECH_NATIVE`](#\_0x8E04FEDD28D42462) for parameter specifications.
--- NativeDB Added Parameter 4: Any p3
--- @name PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE
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
--- @name PLAY_PAIN
--- @param ped Ped The ped entity.
--- @param painID number The pain id, max allowed id is 33.
--- @param p1 number 
--- @return void (Type not found)
function PlayPain(ped, painID, p1) end

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
--- @name PLAY_PED_AMBIENT_SPEECH_NATIVE
--- @param ped Ped The ped to play the ambient speech.
--- @param speechName string Name of the speech to play, eg. "GENERIC_HI".
--- @param speechParam string 
--- @return void (Type not found)
function PlayPedAmbientSpeechNative(ped, speechName, speechParam) end

--- This is the same as PLAY_PED_AMBIENT_SPEECH_NATIVE and PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE but it will allow you to play a speech file from a specific voice file. It works on players and all peds, even animals.
--- EX (C#):
--- GTA.Native.Function.Call(Hash._0x3523634255FC3318, Game.Player.Character, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0);
--- The first param is the ped you want to play it on, the second is the speech name, the third is the voice name, the fourth is the speech param, and the last param is usually always 0.
--- @name PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE
--- @param ped Ped 
--- @param speechName string 
--- @param voiceName string 
--- @param speechParam string 
--- @param p4 boolean 
--- @return void (Type not found)
function PlayPedAmbientSpeechWithVoiceNative(ped, speechName, voiceName, speechParam, p4) end

--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/RFb4GTny  
--- AUDIO::PLAY_PED_RINGTONE("Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
--- AUDIO::PLAY_PED_RINGTONE("Dial_and_Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
--- @name PLAY_PED_RINGTONE
--- @param ringtoneName string 
--- @param ped Ped 
--- @param p2 boolean 
--- @return void (Type not found)
function PlayPedRingtone(ringtoneName, ped, p2) end

--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/eeFc5DiW  
--- gtaforums.com/topic/795622-audio-for-mods  
--- @name PLAY_SOUND_FROM_COORD
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

--- @name PLAY_END_CREDITS_MUSIC
--- @param play boolean 
--- @return void (Type not found)
function PlayEndCreditsMusic(play) end

--- Plays the given police radio message.
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/GBnsQ5hr
--- @name PLAY_POLICE_REPORT
--- @param name string 
--- @param p1 number 
--- @return number
function PlayPoliceReport(name, p1) end

--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/f2A7vTj0   
--- No changes made in b678d.  
--- gtaforums.com/topic/795622-audio-for-mods  
--- @name PLAY_SOUND_FROM_ENTITY
--- @param soundId number 
--- @param audioName string 
--- @param entity Entity 
--- @param audioRef string 
--- @param isNetwork boolean 
--- @param p5  
--- @return void (Type not found)
function PlaySoundFromEntity(soundId, audioName, entity, audioRef, isNetwork, p5) end

--- @name PLAY_STREAM_FROM_PED
--- @param ped Ped 
--- @return void (Type not found)
function PlayStreamFromPed(ped) end

--- List: https://pastebin.com/DCeRiaLJ
--- All occurrences as of Cayo Perico Heist DLC (b2189), sorted alphabetically and identical lines removed: https://git.io/JtLxM
--- @name PLAY_SOUND_FRONTEND
--- @param soundId number 
--- @param audioName string 
--- @param audioRef string 
--- @param p3 boolean 
--- @return void (Type not found)
function PlaySoundFrontend(soundId, audioName, audioRef, p3) end

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
--- @name PLAY_STREAM_FROM_OBJECT
--- @param object Object 
--- @return void (Type not found)
function PlayStreamFromObject(object) end

--- @name PLAY_STREAM_FRONTEND
--- @return void (Type not found)
function PlayStreamFrontend() end

--- @name PLAY_STREAM_FROM_POSITION
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function PlayStreamFromPosition(x, y, z) end

--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/A8Ny8AHZ  
--- @name PLAY_SOUND
--- @param soundId number 
--- @param audioName string 
--- @param audioRef string 
--- @param p3 boolean 
--- @param p4  
--- @param p5 boolean 
--- @return void (Type not found)
function PlaySound(soundId, audioName, audioRef, p3, p4, p5) end

--- @name PLAY_VEHICLE_DOOR_CLOSE_SOUND
--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @return void (Type not found)
function PlayVehicleDoorCloseSound(vehicle, doorIndex) end

--- @name PLAY_STREAM_FROM_VEHICLE
--- @param vehicle Vehicle 
--- @return void (Type not found)
function PlayStreamFromVehicle(vehicle) end

--- @name PLAY_SYNCHRONIZED_AUDIO_EVENT
--- @param p0  
--- @return boolean
function PlaySynchronizedAudioEvent(p0) end

--- @name PRELOAD_SCRIPT_CONVERSATION
--- @param p0 boolean 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function PreloadScriptConversation(p0, p1, p2, p3) end

--- @name PRELOAD_SCRIPT_PHONE_CONVERSATION
--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function PreloadScriptPhoneConversation(p0, p1) end

--- @name PLAY_VEHICLE_DOOR_OPEN_SOUND
--- @param vehicle Vehicle 
--- @param doorIndex number 
--- @return void (Type not found)
function PlayVehicleDoorOpenSound(vehicle, doorIndex) end

--- Example:  
--- bool prepareAlarm = AUDIO::PREPARE_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");  
--- @name PREPARE_ALARM
--- @param alarmName string 
--- @return boolean
function PrepareAlarm(alarmName) end

--- @name PREPARE_SYNCHRONIZED_AUDIO_EVENT
--- @param p0 string 
--- @param p1  
--- @return 
function PrepareSynchronizedAudioEvent(p0, p1) end

--- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
--- @name PREPARE_MUSIC_EVENT
--- @param eventName string 
--- @return boolean
function PrepareMusicEvent(eventName) end

--- @name RECORD_BROKEN_GLASS
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @return void (Type not found)
function RecordBrokenGlass(x, y, z, radius) end

--- NativeDB Introduced: v1180
--- @name _PRELOAD_VEHICLE_AUDIO
--- @param model Hash 
--- @return void (Type not found)
function PreloadVehicleAudio(model) end

--- @name RELEASE_NAMED_SCRIPT_AUDIO_BANK
--- @param audioBank string 
--- @return void (Type not found)
function ReleaseNamedScriptAudioBank(audioBank) end

--- **This native does absolutely nothing, just a nullsub**
--- @name REGISTER_SCRIPT_WITH_AUDIO
--- @param p0 number 
--- @return void (Type not found)
function RegisterScriptWithAudio(p0) end

--- @name RELEASE_AMBIENT_AUDIO_BANK
--- @return void (Type not found)
function ReleaseAmbientAudioBank() end

--- @name PREPARE_SYNCHRONIZED_AUDIO_EVENT_FOR_SCENE
--- @param p0  
--- @param p1  
--- @return boolean
function PrepareSynchronizedAudioEventForScene(p0, p1) end

--- @name RELEASE_SOUND_ID
--- @param soundId number 
--- @return void (Type not found)
function ReleaseSoundId(soundId) end

--- @name RELEASE_SCRIPT_AUDIO_BANK
--- @return void (Type not found)
function ReleaseScriptAudioBank() end

--- @name REMOVE_ENTITY_FROM_AUDIO_MIX_GROUP
--- @param entity Entity 
--- @param p1 number 
--- @return void (Type not found)
function RemoveEntityFromAudioMixGroup(entity, p1) end

--- All occurrences and usages found in b617d: pastebin.com/NzZZ2Tmm  
--- NativeDB Added Parameter 3: Any p2
--- @name REQUEST_MISSION_AUDIO_BANK
--- @param p0 string 
--- @param p1 boolean 
--- @return boolean
function RequestMissionAudioBank(p0, p1) end

--- All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/AkmDAVn6  
--- NativeDB Added Parameter 3: int p2
--- @name REQUEST_SCRIPT_AUDIO_BANK
--- @param p0 string 
--- @param p1 boolean 
--- @return boolean
function RequestScriptAudioBank(p0, p1) end

--- NativeDB Introduced: v323
--- @name RELEASE_WEAPON_AUDIO
--- @return void (Type not found)
function ReleaseWeaponAudio() end

---  Found in the b617d scripts, duplicates removed:
---  AUDIO::_B4BBFD9CD8B3922B("V_CARSHOWROOM_PS_WINDOW_UNBROKEN");
---  AUDIO::_B4BBFD9CD8B3922B("V_CIA_PS_WINDOW_UNBROKEN");
---  AUDIO::_B4BBFD9CD8B3922B("V_DLC_HEIST_APARTMENT_DOOR_CLOSED");
---  AUDIO::_B4BBFD9CD8B3922B("V_FINALEBANK_PS_VAULT_INTACT");
---  AUDIO::_B4BBFD9CD8B3922B("V_MICHAEL_PS_BATHROOM_WITH_WINDOW");
--- @name REMOVE_PORTAL_SETTINGS_OVERRIDE
--- @param p0 string 
--- @return void (Type not found)
function RemovePortalSettingsOverride(p0) end

--- @name RELEASE_MISSION_AUDIO_BANK
--- @return void (Type not found)
function ReleaseMissionAudioBank() end

--- All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/XZ1tmGEz
--- NativeDB Added Parameter 3: Any p2
--- @name REQUEST_AMBIENT_AUDIO_BANK
--- @param p0 string 
--- @param p1 boolean 
--- @return boolean
function RequestAmbientAudioBank(p0, p1) end

--- @name RESET_PED_AUDIO_FLAGS
--- @param ped Ped 
--- @return void (Type not found)
function ResetPedAudioFlags(ped) end

--- @name RESTART_SCRIPTED_CONVERSATION
--- @return void (Type not found)
function RestartScriptedConversation() end

--- Makes pedestrians sound their horn longer, faster and more agressive when they use their horn.  
--- @name SET_AGGRESSIVE_HORNS
--- @param toggle boolean 
--- @return void (Type not found)
function SetAggressiveHorns(toggle) end

--- @name _SET_AMBIENT_VOICE_NAME_HASH
--- @param ped Ped 
--- @param hash Hash 
--- @return void (Type not found)
function SetAmbientVoiceNameHash(ped, hash) end

--- Audio List  
--- gtaforums.com/topic/795622-audio-for-mods/  
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/FTeAj4yZ  
--- Yes  
--- @name SET_AMBIENT_VOICE_NAME
--- @param ped Ped 
--- @param name string 
--- @return void (Type not found)
function SetAmbientVoiceName(ped, name) end

--- @name RESET_TREVOR_RAGE
--- @return void (Type not found)
function ResetTrevorRage() end

--- @name SET_AMBIENT_ZONE_LIST_STATE
--- @param p0 string 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetAmbientZoneListState(p0, p1, p2) end

--- @name SET_AMBIENT_ZONE_STATE_PERSISTENT
--- @param ambientZone string 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetAmbientZoneStatePersistent(ambientZone, p1, p2) end

--- @name SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT
--- @param ambientZone string 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetAmbientZoneListStatePersistent(ambientZone, p1, p2) end

--- mood can be 0 or 1 (it's not a boolean value!). Effects audio of the animal.  
--- @name SET_ANIMAL_MOOD
--- @param animal Ped 
--- @param mood number 
--- @return void (Type not found)
function SetAnimalMood(animal, mood) end

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
--- @name SET_AUDIO_FLAG
--- @param flagName string 
--- @param toggle boolean 
--- @return void (Type not found)
function SetAudioFlag(flagName, toggle) end

--- @name SET_AMBIENT_ZONE_STATE
--- @param zoneName string 
--- @param p1 boolean 
--- @param p2 boolean 
--- @return void (Type not found)
function SetAmbientZoneState(zoneName, p1, p2) end

--- @name SET_AUDIO_SCENE_VARIABLE
--- @param scene string 
--- @param variable string 
--- @param value number 
--- @return void (Type not found)
function SetAudioSceneVariable(scene, variable, value) end

--- @name SET_AUDIO_VEHICLE_PRIORITY
--- @param vehicle Vehicle 
--- @param p1  
--- @return void (Type not found)
function SetAudioVehiclePriority(vehicle, p1) end

--- Needs to be called every frame.
--- Audio mode to apply this frame: https://alloc8or.re/gta5/doc/enums/audSpecialEffectMode.txt
--- @name SET_AUDIO_SPECIAL_EFFECT_MODE
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
--- @name SET_CUSTOM_RADIO_TRACK_LIST
--- @param radioStation string 
--- @param trackListName string 
--- @param p2 boolean 
--- @return void (Type not found)
function SetCustomRadioTrackList(radioStation, trackListName, p2) end

--- @name SET_AUDIO_SCRIPT_CLEANUP_TIME
--- @param time number 
--- @return void (Type not found)
function SetAudioScriptCleanupTime(time) end

--- All occurrences found in b617d, sorted alphabetically and identical lines removed:   
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_AK");  
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_CUSTOM");  
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_TOOTHLESS");  
--- @name SET_CUTSCENE_AUDIO_OVERRIDE
--- @param name string 
--- @return void (Type not found)
function SetCutsceneAudioOverride(name) end

--- @name SET_GPS_ACTIVE
--- @param active boolean 
--- @return void (Type not found)
function SetGpsActive(active) end

--- @name SET_FRONTEND_RADIO_ACTIVE
--- @param active boolean 
--- @return void (Type not found)
function SetFrontendRadioActive(active) end

--- @name SET_EMITTER_RADIO_STATION
--- @param emitterName string 
--- @param radioStation string 
--- @return void (Type not found)
function SetEmitterRadioStation(emitterName, radioStation) end

--- @name SET_MOBILE_PHONE_RADIO_STATE
--- @param state boolean 
--- @return void (Type not found)
function SetMobilePhoneRadioState(state) end

--- @name SET_INITIAL_PLAYER_STATION
--- @param radioStation string 
--- @return void (Type not found)
function SetInitialPlayerStation(radioStation) end

--- If this is the correct name, what microphone? I know your TV isn't going to reach out and adjust your headset so..  
--- @name SET_MICROPHONE_POSITION
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

--- @name SET_HORN_ENABLED
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetHornEnabled(vehicle, toggle) end

--- Enables/disables ped's "quiet" footstep sound.
--- NativeDB Introduced: v1493
--- @name _SET_PED_AUDIO_FOOTSTEP_QUIET
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedAudioFootstepQuiet(ped, toggle) end

--- @name _SET_PED_AUDIO_GENDER
--- @param ped Ped 
--- @param p1 boolean 
--- @return void (Type not found)
function SetPedAudioGender(ped, p1) end

--- @name SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY
--- @param toggle boolean 
--- @return void (Type not found)
function SetMobileRadioEnabledDuringGameplay(toggle) end

--- Enables/disables ped's "loud" footstep sound.
--- NativeDB Introduced: v1493
--- @name _SET_PED_AUDIO_FOOTSTEP_LOUD
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedAudioFootstepLoud(ped, toggle) end

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
--- @name SET_PED_IS_DRUNK
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedIsDrunk(ped, toggle) end

--- Dat151RelType == 29
--- NativeDB Introduced: v2699
--- @name _SET_PED_VOICE_GROUP_RACE
--- @param ped Ped 
--- @param voiceGroupHash Hash 
--- @return void (Type not found)
function SetPedVoiceGroupRace(ped, voiceGroupHash) end

--- Speech related.  
--- @name _SET_PED_TALK
--- @param ped Ped 
--- @return void (Type not found)
function SetPedTalk(ped) end

--- Assigns some ambient voice to the ped.  
--- @name _SET_PED_SCREAM
--- @param ped Ped 
--- @return void (Type not found)
function SetPedScream(ped) end

--- From the scripts:
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("PAIGE_PVG"));
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("TALINA_PVG"));
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("FEMALE_LOST_BLACK_PVG"));
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("FEMALE_LOST_WHITE_PVG"));
--- @name _SET_PED_VOICE_GROUP
--- @param ped Ped 
--- @param voiceGroupHash Hash 
--- @return void (Type not found)
function SetPedVoiceGroup(ped, voiceGroupHash) end

--- @name SET_PLAYER_ANGRY
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPlayerAngry(ped, toggle) end

--- Found in the b617d scripts, duplicates removed:
--- AUDIO::_044DBAD7A7FA2BE5("V_CARSHOWROOM_PS_WINDOW_UNBROKEN", "V_CARSHOWROOM_PS_WINDOW_BROKEN");
---  AUDIO::_044DBAD7A7FA2BE5("V_CIA_PS_WINDOW_UNBROKEN", "V_CIA_PS_WINDOW_BROKEN");
---  AUDIO::_044DBAD7A7FA2BE5("V_DLC_HEIST_APARTMENT_DOOR_CLOSED", "V_DLC_HEIST_APARTMENT_DOOR_OPEN");
---  AUDIO::_044DBAD7A7FA2BE5("V_FINALEBANK_PS_VAULT_INTACT", "V_FINALEBANK_PS_VAULT_BLOWN");
---  AUDIO::_044DBAD7A7FA2BE5("V_MICHAEL_PS_BATHROOM_WITH_WINDOW", "V_MICHAEL_PS_BATHROOM_WITHOUT_WINDOW");
--- @name SET_PORTAL_SETTINGS_OVERRIDE
--- @param p0 string 
--- @param p1 string 
--- @return void (Type not found)
function SetPortalSettingsOverride(p0, p1) end

--- Doesn't have an effect in Story Mode.
--- NativeDB Introduced: v2372
--- @name _SET_RADIO_STATION_IS_VISIBLE
--- @param radioStation string 
--- @param toggle boolean 
--- @return void (Type not found)
function SetRadioStationIsVisible(radioStation, toggle) end

--- 6 calls in the b617d scripts, removed identical lines:
--- AUDIO::SET_RADIO_STATION_MUSIC_ONLY("RADIO_01_CLASS_ROCK", 1);
--- AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 0);
--- AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 1);
--- @name SET_RADIO_STATION_MUSIC_ONLY
--- @param radioStation string 
--- @param toggle boolean 
--- @return void (Type not found)
function SetRadioStationMusicOnly(radioStation, toggle) end

--- @name SET_RADIO_FRONTEND_FADE_TIME
--- @param fadeTime number 
--- @return void (Type not found)
function SetRadioFrontendFadeTime(fadeTime) end

--- Find the radio station list [here](https://gist.github.com/4mmonium/b47d6512a2d992cbf4eea15d9038b581)
--- @name SET_RADIO_TO_STATION_NAME
--- @param stationName string 
--- @return void (Type not found)
function SetRadioToStationName(stationName) end

--- @name SET_RADIO_AUTO_UNFREEZE
--- @param toggle boolean 
--- @return void (Type not found)
function SetRadioAutoUnfreeze(toggle) end

--- Only found this one in the decompiled scripts:  
--- AUDIO::SET_RADIO_TRACK("RADIO_03_HIPHOP_NEW", "ARM1_RADIO_STARTS");  
--- @name SET_RADIO_TRACK
--- @param radioStation string 
--- @param radioTrack string 
--- @return void (Type not found)
function SetRadioTrack(radioStation, radioTrack) end

--- Sets radio station by index.  
--- @name SET_RADIO_TO_STATION_INDEX
--- @param radioStation number 
--- @return void (Type not found)
function SetRadioToStationIndex(radioStation) end

--- NativeDB Introduced: v2372
--- @name _SET_SIREN_KEEP_ON
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetSirenKeepOn(vehicle, toggle) end

--- NativeDB Introduced: v1493
--- @name _SET_RADIO_TRACK_MIX
--- @param radioStationName string 
--- @param mixName string 
--- @param p2 number 
--- @return void (Type not found)
function SetRadioTrackMix(radioStationName, mixName, p2) end

--- Example:
--- AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false);
--- This turns off surrounding sounds not connected directly to peds.
--- @name SET_STATIC_EMITTER_ENABLED
--- @param emitterName string 
--- @param toggle boolean 
--- @return void (Type not found)
function SetStaticEmitterEnabled(emitterName, toggle) end

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
--- @name _SET_SYNCHRONIZED_AUDIO_EVENT_POSITION_THIS_FRAME
--- @param p0 string 
--- @param p1 Entity 
--- @return void (Type not found)
function SetSynchronizedAudioEventPositionThisFrame(p0, p1) end

--- @name SET_SCRIPT_UPDATE_DOOR_AUDIO
--- @param doorHash Hash 
--- @param toggle boolean 
--- @return void (Type not found)
function SetScriptUpdateDoorAudio(doorHash, toggle) end

--- @name SET_USER_RADIO_CONTROL_ENABLED
--- @param toggle boolean 
--- @return void (Type not found)
function SetUserRadioControlEnabled(toggle) end

--- SET_VARIABLE_ON_*
--- @name _SET_VARIABLE_ON_CUTSCENE_AUDIO
--- @param variableName string 
--- @param value number 
--- @return void (Type not found)
function SetVariableOnCutsceneAudio(variableName, value) end

--- From the scripts, p0:  
--- "ArmWrestlingIntensity",  
--- "INOUT",  
--- "Monkey_Stream",  
--- "ZoomLevel"  
--- @name SET_VARIABLE_ON_STREAM
--- @param p0 string 
--- @param p1 number 
--- @return void (Type not found)
function SetVariableOnStream(p0, p1) end

--- AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 1.0);
--- AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 0.0);
--- @name SET_VARIABLE_ON_UNDER_WATER_STREAM
--- @param variableName string 
--- @param value number 
--- @return void (Type not found)
function SetVariableOnUnderWaterStream(variableName, value) end

--- @name SET_VARIABLE_ON_SOUND
--- @param soundId number 
--- @param variableName string 
--- @param value number 
--- @return void (Type not found)
function SetVariableOnSound(soundId, variableName, value) end

--- NativeDB Introduced: v2372
--- @name _SET_VEH_HAS_RADIO_OVERRIDE
--- @param vehicle Vehicle 
--- @return void (Type not found)
function SetVehHasRadioOverride(vehicle) end

--- Vehicle will make a 'rattling' noise when decelerating
--- @name SET_VEHICLE_AUDIO_BODY_DAMAGE_FACTOR
--- @param vehicle Vehicle Vehicle to modify
--- @param intensity number A value 0.0 - 1.0. Higher the value, the more likely the vehicle is to make the sound while decelerating
--- @return void (Type not found)
function SetVehicleAudioBodyDamageFactor(vehicle, intensity) end

--- @name SET_SIREN_WITH_NO_DRIVER
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetSirenWithNoDriver(vehicle, toggle) end

--- Find the radio station list [here](https://gist.github.com/4mmonium/b47d6512a2d992cbf4eea15d9038b581)
--- @name SET_VEH_RADIO_STATION
--- @param vehicle Vehicle 
--- @param radioStation string 
--- @return void (Type not found)
function SetVehRadioStation(vehicle, radioStation) end

--- SET_VEHICLE_BOOST_ACTIVE(vehicle, 1, 0);  
--- SET_VEHICLE_BOOST_ACTIVE(vehicle, 0, 0);   
--- Will give a boost-soundeffect.  
--- @name SET_VEHICLE_BOOST_ACTIVE
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleBoostActive(vehicle, toggle) end

--- @name SET_VEHICLE_AUDIO_ENGINE_DAMAGE_FACTOR
--- @param vehicle Vehicle 
--- @param damageFactor number 
--- @return void (Type not found)
function SetVehicleAudioEngineDamageFactor(vehicle, damageFactor) end

--- can't seem to enable radio on cop cars etc  
--- @name SET_VEHICLE_RADIO_ENABLED
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleRadioEnabled(vehicle, toggle) end

--- @name SET_VEHICLE_RADIO_LOUD
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function SetVehicleRadioLoud(vehicle, toggle) end

--- NativeDB Introduced: v1365
--- @name _SET_VEHICLE_HORN_VARIATION
--- @param vehicle Vehicle 
--- @param value number 
--- @return void (Type not found)
function SetVehicleHornVariation(vehicle, value) end

--- Overrides the vehicle's startup engine rev sound.
--- 2 calls found in the b617d scripts:
--- ```cpp
--- AUDIO::SET_VEHICLE_STARTUP_REV_SOUND(l_A42, "Franklin_Bike_Rev", "BIG_SCORE_3A_SOUNDS");  
--- AUDIO::SET_VEHICLE_STARTUP_REV_SOUND(l_166, "Trevor_Revs_Off", "PALETO_SCORE_SETUP_SOUNDS");
--- @name SET_VEHICLE_STARTUP_REV_SOUND
--- @param vehicle Vehicle 
--- @param p1 string 
--- @param p2 string 
--- @return void (Type not found)
function SetVehicleStartupRevSound(vehicle, p1, p2) end

--- @name SKIP_RADIO_FORWARD
--- @return void (Type not found)
function SkipRadioForward() end

--- SET_*
--- @name _SOUND_VEHICLE_HORN_THIS_FRAME
--- @param vehicle Vehicle 
--- @return void (Type not found)
function SoundVehicleHornThisFrame(vehicle) end

--- Used to prepare a scene where the surrounding sound is muted or a bit changed. This does not play any sound.  
--- List of all usable scene names found in b617d. Sorted alphabetically and identical names removed: pastebin.com/MtM9N9CC  
--- @name START_AUDIO_SCENE
--- @param scene string 
--- @return boolean
function StartAudioScene(scene) end

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
--- @name START_ALARM
--- @param alarmName string 
--- @param p2 boolean 
--- @return void (Type not found)
function StartAlarm(alarmName, p2) end

--- @name START_PRELOADED_CONVERSATION
--- @return void (Type not found)
function StartPreloadedConversation() end

--- @name START_SCRIPT_CONVERSATION
--- @param p0 boolean 
--- @param p1 boolean 
--- @param p2 boolean 
--- @param p3 boolean 
--- @return void (Type not found)
function StartScriptConversation(p0, p1, p2, p3) end

--- @name SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE
--- @return void (Type not found)
function SkipToNextScriptedConversationLine() end

--- @name START_SCRIPT_PHONE_CONVERSATION
--- @param p0 boolean 
--- @param p1 boolean 
--- @return void (Type not found)
function StartScriptPhoneConversation(p0, p1) end

--- Example:  
--- This will stop the alarm at Fort Zancudo.  
--- AUDIO::STOP_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
--- First parameter (char) is the name of the alarm.  
--- Second parameter (bool) has to be true (1) to have any effect.  
--- @name STOP_ALARM
--- @param alarmName string 
--- @param toggle boolean 
--- @return void (Type not found)
function StopAlarm(alarmName, toggle) end

--- @name STOP_ALL_ALARMS
--- @param stop boolean 
--- @return void (Type not found)
function StopAllAlarms(stop) end

--- ??  
--- @name STOP_AUDIO_SCENES
--- @return void (Type not found)
function StopAudioScenes() end

--- @name STOP_AUDIO_SCENE
--- @param scene string 
--- @return void (Type not found)
function StopAudioScene(scene) end

--- @name STOP_PED_RINGTONE
--- @param ped Ped 
--- @return void (Type not found)
function StopPedRingtone(ped) end

--- @name STOP_CURRENT_PLAYING_AMBIENT_SPEECH
--- @param ped Ped 
--- @return void (Type not found)
function StopCurrentPlayingAmbientSpeech(ped) end

--- @name STOP_CUTSCENE_AUDIO
--- @return void (Type not found)
function StopCutsceneAudio() end

--- @name STOP_PED_SPEAKING
--- @param ped Ped 
--- @param shaking boolean 
--- @return void (Type not found)
function StopPedSpeaking(ped, shaking) end

--- @name STOP_SCRIPTED_CONVERSATION
--- @param p0 boolean 
--- @return number
function StopScriptedConversation(p0) end

--- @name STOP_SOUND
--- @param soundId number 
--- @return void (Type not found)
function StopSound(soundId) end

--- @name STOP_CURRENT_PLAYING_SPEECH
--- @param ped Ped 
--- @return void (Type not found)
function StopCurrentPlayingSpeech(ped) end

--- @name STOP_STREAM
--- @return void (Type not found)
function StopStream() end

--- ... When not in a vehicle
--- NativeDB Introduced: v1290
--- @name _TRIGGER_SIREN
--- @param vehicle Vehicle 
--- @return void (Type not found)
function TriggerSiren(vehicle) end

--- List of all usable event names found in b617d used with this native. Sorted alphabetically and identical names removed: pastebin.com/RzDFmB1W  
--- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
--- @name TRIGGER_MUSIC_EVENT
--- @param eventName string 
--- @return boolean
function TriggerMusicEvent(eventName) end

--- @name STOP_SYNCHRONIZED_AUDIO_EVENT
--- @param p0  
--- @return boolean
function StopSynchronizedAudioEvent(p0) end

--- @name UNFREEZE_RADIO_STATION
--- @param radioStation string 
--- @return void (Type not found)
function UnfreezeRadioStation(radioStation) end

--- AUDIO::UNLOCK_RADIO_STATION_TRACK_LIST("RADIO_16_SILVERLAKE", "MIRRORPARK_LOCKED");
--- @name UNLOCK_RADIO_STATION_TRACK_LIST
--- @param radioStation string 
--- @param trackListName string 
--- @return void (Type not found)
function UnlockRadioStationTrackList(radioStation, trackListName) end

--- NativeDB Introduced: v1493
--- @name _UPDATE_LSUR
--- @param enableMixes boolean 
--- @return void (Type not found)
function UpdateLsur(enableMixes) end

--- @name USE_SIREN_AS_HORN
--- @param vehicle Vehicle 
--- @param toggle boolean 
--- @return void (Type not found)
function UseSirenAsHorn(vehicle, toggle) end

--- **This native does absolutely nothing, just a nullsub**
--- On last-gen this just runs blr and this func is called by several other functions other then the native's table.  
--- @name UNREGISTER_SCRIPT_WITH_AUDIO
--- @return void (Type not found)
function UnregisterScriptWithAudio() end

--- @name UNLOCK_MISSION_NEWS_STORY
--- @param newsStory number 
--- @return void (Type not found)
function UnlockMissionNewsStory(newsStory) end
