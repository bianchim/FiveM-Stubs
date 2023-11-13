
--- @name DATAARRAY_ADD_DICT
--- @param arrayData  
--- @return 
function DataarrayAddDict(arrayData) end

--- @name DATAARRAY_ADD_INT
--- @param arrayData  
--- @param value number 
--- @return void (Type not found)
function DataarrayAddInt(arrayData, value) end

--- @name DATAARRAY_ADD_STRING
--- @param arrayData  
--- @param value string 
--- @return void (Type not found)
function DataarrayAddString(arrayData, value) end

--- @name DATAARRAY_GET_BOOL
--- @param arrayData  
--- @param arrayIndex number 
--- @return boolean
function DataarrayGetBool(arrayData, arrayIndex) end

--- @name DATAARRAY_ADD_BOOL
--- @param arrayData  
--- @param value boolean 
--- @return void (Type not found)
function DataarrayAddBool(arrayData, value) end

--- @name DATAARRAY_ADD_FLOAT
--- @param arrayData  
--- @param value number 
--- @return void (Type not found)
function DataarrayAddFloat(arrayData, value) end

--- @name DATAARRAY_ADD_VECTOR
--- @param arrayData  
--- @param valueX number 
--- @param valueY number 
--- @param valueZ number 
--- @return void (Type not found)
function DataarrayAddVector(arrayData, valueX, valueY, valueZ) end

--- @name DATAARRAY_GET_COUNT
--- @param arrayData  
--- @return number
function DataarrayGetCount(arrayData) end

--- @name DATAARRAY_GET_DICT
--- @param arrayData  
--- @param arrayIndex number 
--- @return 
function DataarrayGetDict(arrayData, arrayIndex) end

--- @name DATAARRAY_GET_FLOAT
--- @param arrayData  
--- @param arrayIndex number 
--- @return number
function DataarrayGetFloat(arrayData, arrayIndex) end

--- @name DATAARRAY_GET_INT
--- @param arrayData  
--- @param arrayIndex number 
--- @return number
function DataarrayGetInt(arrayData, arrayIndex) end

--- Types:  
--- 1 = Boolean  
--- 2 = Integer  
--- 3 = Float  
--- 4 = String  
--- 5 = Vector3  
--- 6 = Object  
--- 7 = Array  
--- @name DATAARRAY_GET_TYPE
--- @param arrayData  
--- @param arrayIndex number 
--- @return number
function DataarrayGetType(arrayData, arrayIndex) end

--- @name DATADICT_CREATE_DICT
--- @param objectData  
--- @param key string 
--- @return 
function DatadictCreateDict(objectData, key) end

--- @name DATAARRAY_GET_VECTOR
--- @param arrayData  
--- @param arrayIndex number 
--- @return Vector3
function DataarrayGetVector(arrayData, arrayIndex) end

--- @name DATADICT_CREATE_ARRAY
--- @param objectData  
--- @param key string 
--- @return 
function DatadictCreateArray(objectData, key) end

--- @name DATAARRAY_GET_STRING
--- @param arrayData  
--- @param arrayIndex number 
--- @return string
function DataarrayGetString(arrayData, arrayIndex) end

--- @name DATADICT_GET_BOOL
--- @param objectData  
--- @param key string 
--- @return boolean
function DatadictGetBool(objectData, key) end

--- @name DATADICT_GET_FLOAT
--- @param objectData  
--- @param key string 
--- @return number
function DatadictGetFloat(objectData, key) end

--- @name DATADICT_GET_STRING
--- @param objectData  
--- @param key string 
--- @return string
function DatadictGetString(objectData, key) end

--- @name DATADICT_GET_VECTOR
--- @param objectData  
--- @param key string 
--- @return Vector3
function DatadictGetVector(objectData, key) end

--- @name DATADICT_GET_INT
--- @param objectData  
--- @param key string 
--- @return number
function DatadictGetInt(objectData, key) end

--- Types:  
--- 1 = Boolean  
--- 2 = Integer  
--- 3 = Float  
--- 4 = String  
--- 5 = Vector3  
--- 6 = Object  
--- 7 = Array  
--- @name DATADICT_GET_TYPE
--- @param objectData  
--- @param key string 
--- @return number
function DatadictGetType(objectData, key) end

--- @name DATADICT_SET_BOOL
--- @param objectData  
--- @param key string 
--- @param value boolean 
--- @return void (Type not found)
function DatadictSetBool(objectData, key, value) end

--- @name DATADICT_GET_ARRAY
--- @param objectData  
--- @param key string 
--- @return 
function DatadictGetArray(objectData, key) end

--- @name DATADICT_SET_FLOAT
--- @param objectData  
--- @param key string 
--- @param value number 
--- @return void (Type not found)
function DatadictSetFloat(objectData, key, value) end

--- @name DATADICT_SET_STRING
--- @param objectData  
--- @param key string 
--- @param value string 
--- @return void (Type not found)
function DatadictSetString(objectData, key, value) end

--- @name DATADICT_SET_VECTOR
--- @param objectData  
--- @param key string 
--- @param valueX number 
--- @param valueY number 
--- @param valueZ number 
--- @return void (Type not found)
function DatadictSetVector(objectData, key, valueX, valueY, valueZ) end

--- @name DATADICT_GET_DICT
--- @param objectData  
--- @param key string 
--- @return 
function DatadictGetDict(objectData, key) end

--- @name DATADICT_SET_INT
--- @param objectData  
--- @param key string 
--- @param value number 
--- @return void (Type not found)
function DatadictSetInt(objectData, key, value) end

--- NativeDB Added Parameter 1: int p0
--- @name DATAFILE_CREATE
--- @return void (Type not found)
function DatafileCreate() end

--- @name DATAFILE_CLEAR_WATCH_LIST
--- @return void (Type not found)
function DatafileClearWatchList() end

--- NativeDB Added Parameter 1: int p0
--- @name DATAFILE_DELETE
--- @return void (Type not found)
function DatafileDelete() end

--- @name DATAFILE_DELETE_REQUESTED_FILE
--- @param p0  
--- @return boolean
function DatafileDeleteRequestedFile(p0) end

--- NativeDB Added Parameter 1: int p0
--- @name DATAFILE_GET_FILE_DICT
--- @return string
function DatafileGetFileDict() end

--- @name DATAFILE_FLUSH_MISSION_HEADER
--- @return void (Type not found)
function DatafileFlushMissionHeader() end

--- @name DATAFILE_HAS_LOADED_FILE_DATA
--- @param p0  
--- @return boolean
function DatafileHasLoadedFileData(p0) end

--- Example:  
--- if (!DATAFILE::_BEDB96A7584AA8CF())  
--- {  
---     if (!g_109E3)  
--- 	{  
---         if (((sub_d4f() == 2) == 0) && (!NETWORK::NETWORK_IS_GAME_IN_PROGRESS()))  
--- {  
---             if (NETWORK::NETWORK_IS_CLOUD_AVAILABLE())  
--- 	{  
---                 g_17A8B = 0;  
---             }  
---             if (!g_D52C)  
--- 	{  
---                 sub_730();  
---             }  
---         }  
---     }  
--- }  
--- @name DATAFILE_IS_SAVE_PENDING
--- @return boolean
function DatafileIsSavePending() end

--- Loads a User-Generated Content (UGC) file. These files can be found in "[GTA5]\data\ugc" and "[GTA5]\common\patch\ugc". They seem to follow a naming convention, most likely of "[name]_[part].ugc". See example below for usage.
--- Returns whether or not the file was successfully loaded.
--- Example:
--- DATAFILE::_LOAD_UGC_FILE("RockstarPlaylists") // loads "rockstarplaylists_00.ugc"
--- NativeDB Added Parameter 2: Any p1
--- @name DATAFILE_LOAD_OFFLINE_UGC
--- @param filename string 
--- @return boolean
function DatafileLoadOfflineUgc(filename) end

--- NativeDB Added Parameter 2: Any p1
--- @name DATAFILE_SELECT_CREATOR_STATS
--- @param p0 number 
--- @return boolean
function DatafileSelectCreatorStats(p0) end

--- @name DATAFILE_IS_VALID_REQUEST_ID
--- @param index number 
--- @return boolean
function DatafileIsValidRequestId(index) end

--- NativeDB Added Parameter 2: Any p1
--- @name DATAFILE_SELECT_ACTIVE_FILE
--- @param p0  
--- @return boolean
function DatafileSelectActiveFile(p0) end

--- NativeDB Added Parameter 3: Any p2
--- @name DATAFILE_SELECT_UGC_STATS
--- @param p0 number 
--- @param p1 boolean 
--- @return boolean
function DatafileSelectUgcStats(p0, p1) end

--- NativeDB Added Parameter 2: Any p1
--- @name DATAFILE_SELECT_UGC_DATA
--- @param p0 number 
--- @return boolean
function DatafileSelectUgcData(p0) end

--- NativeDB Added Parameter 2: Any p1
--- @name DATAFILE_SELECT_UGC_PLAYER_DATA
--- @param p0 number 
--- @return boolean
function DatafileSelectUgcPlayerData(p0) end

--- NativeDB Added Parameter 2: Any p1
--- @name DATAFILE_START_SAVE_TO_CLOUD
--- @param filename string 
--- @return boolean
function DatafileStartSaveToCloud(filename) end

--- NativeDB Added Parameter 1: int p0
--- @name DATAFILE_STORE_MISSION_HEADER
--- @return void (Type not found)
function DatafileStoreMissionHeader() end

--- @name DATAFILE_HAS_VALID_FILE_DATA
--- @param p0  
--- @return boolean
function DatafileHasValidFileData(p0) end

--- @name DATAFILE_UPDATE_SAVE_TO_CLOUD
--- @param p0 boolean 
--- @return boolean
function DatafileUpdateSaveToCloud(p0) end

--- NativeDB Added Parameter 4: Any p3
--- @name UGC_SET_PLAYER_DATA
--- @param contentId string 
--- @param rating number 
--- @param contentTypeName string 
--- @return boolean
function UgcSetPlayerData(contentId, rating, contentTypeName) end

--- NativeDB Added Parameter 6: Any p5
--- @name UGC_UPDATE_MISSION
--- @param contentId string 
--- @param contentName string 
--- @param description string 
--- @param tagsCsv string 
--- @param contentTypeName string 
--- @return boolean
function UgcUpdateMission(contentId, contentName, description, tagsCsv, contentTypeName) end

--- NativeDB Added Parameter 8: Any p7
--- @name UGC_CREATE_CONTENT
--- @param data string 
--- @param dataCount number 
--- @param contentName string 
--- @param description string 
--- @param tagsCsv string 
--- @param contentTypeName string 
--- @param publish boolean 
--- @return boolean
function UgcCreateContent(data, dataCount, contentName, description, tagsCsv, contentTypeName, publish) end

--- NativeDB Added Parameter 8: Any p7
--- @name UGC_UPDATE_CONTENT
--- @param contentId string 
--- @param data  
--- @param dataCount number 
--- @param contentName string 
--- @param description string 
--- @param tagsCsv string 
--- @param contentTypeName string 
--- @return boolean
function UgcUpdateContent(contentId, data, dataCount, contentName, description, tagsCsv, contentTypeName) end

--- NativeDB Added Parameter 6: Any p5
--- @name UGC_CREATE_MISSION
--- @param contentName string 
--- @param description string 
--- @param tagsCsv string 
--- @param contentTypeName string 
--- @param publish boolean 
--- @return boolean
function UgcCreateMission(contentName, description, tagsCsv, contentTypeName, publish) end

--- Adds the given request ID to the watch list.
--- @name DATAFILE_WATCH_REQUEST_ID
--- @param id number 
--- @return void (Type not found)
function DatafileWatchRequestId(id) end
