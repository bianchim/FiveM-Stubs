
--- @param arrayData  
--- @param value boolean 
--- @return void (Type not found)
function DataarrayAddBool(arrayData, value) end

--- @param arrayData  
--- @return 
function DataarrayAddDict(arrayData) end

--- @param arrayData  
--- @param value number 
--- @return void (Type not found)
function DataarrayAddFloat(arrayData, value) end

--- @param arrayData  
--- @param valueX number 
--- @param valueY number 
--- @param valueZ number 
--- @return void (Type not found)
function DataarrayAddVector(arrayData, valueX, valueY, valueZ) end

--- @param arrayData  
--- @param value string 
--- @return void (Type not found)
function DataarrayAddString(arrayData, value) end

--- @param arrayData  
--- @param arrayIndex number 
--- @return boolean
function DataarrayGetBool(arrayData, arrayIndex) end

--- @param arrayData  
--- @param value number 
--- @return void (Type not found)
function DataarrayAddInt(arrayData, value) end

--- @param arrayData  
--- @return number
function DataarrayGetCount(arrayData) end

--- @param arrayData  
--- @param arrayIndex number 
--- @return number
function DataarrayGetFloat(arrayData, arrayIndex) end

--- @param arrayData  
--- @param arrayIndex number 
--- @return 
function DataarrayGetDict(arrayData, arrayIndex) end

--- @param arrayData  
--- @param arrayIndex number 
--- @return number
function DataarrayGetInt(arrayData, arrayIndex) end

--- @param arrayData  
--- @param arrayIndex number 
--- @return string
function DataarrayGetString(arrayData, arrayIndex) end

--- Types:  
--- 1 = Boolean  
--- 2 = Integer  
--- 3 = Float  
--- 4 = String  
--- 5 = Vector3  
--- 6 = Object  
--- 7 = Array  
--- @param arrayData  
--- @param arrayIndex number 
--- @return number
function DataarrayGetType(arrayData, arrayIndex) end

--- @param objectData  
--- @param key string 
--- @return 
function DatadictCreateDict(objectData, key) end

--- @param arrayData  
--- @param arrayIndex number 
--- @return Vector3
function DataarrayGetVector(arrayData, arrayIndex) end

--- @param objectData  
--- @param key string 
--- @return boolean
function DatadictGetBool(objectData, key) end

--- @param objectData  
--- @param key string 
--- @return 
function DatadictCreateArray(objectData, key) end

--- @param objectData  
--- @param key string 
--- @return 
function DatadictGetDict(objectData, key) end

--- @param objectData  
--- @param key string 
--- @return 
function DatadictGetArray(objectData, key) end

--- @param objectData  
--- @param key string 
--- @param value boolean 
--- @return void (Type not found)
function DatadictSetBool(objectData, key, value) end

--- @param objectData  
--- @param key string 
--- @return string
function DatadictGetString(objectData, key) end

--- @param objectData  
--- @param key string 
--- @return number
function DatadictGetInt(objectData, key) end

--- @param objectData  
--- @param key string 
--- @param value number 
--- @return void (Type not found)
function DatadictSetInt(objectData, key, value) end

--- Types:  
--- 1 = Boolean  
--- 2 = Integer  
--- 3 = Float  
--- 4 = String  
--- 5 = Vector3  
--- 6 = Object  
--- 7 = Array  
--- @param objectData  
--- @param key string 
--- @return number
function DatadictGetType(objectData, key) end

--- @param objectData  
--- @param key string 
--- @return number
function DatadictGetFloat(objectData, key) end

--- @param objectData  
--- @param key string 
--- @return Vector3
function DatadictGetVector(objectData, key) end

--- @param objectData  
--- @param key string 
--- @param valueX number 
--- @param valueY number 
--- @param valueZ number 
--- @return void (Type not found)
function DatadictSetVector(objectData, key, valueX, valueY, valueZ) end

--- @param objectData  
--- @param key string 
--- @param value number 
--- @return void (Type not found)
function DatadictSetFloat(objectData, key, value) end

--- @param objectData  
--- @param key string 
--- @param value string 
--- @return void (Type not found)
function DatadictSetString(objectData, key, value) end

--- @param p0  
--- @return boolean
function DatafileDeleteRequestedFile(p0) end

--- NativeDB Added Parameter 1: int p0
--- @return void (Type not found)
function DatafileDelete() end

--- @return void (Type not found)
function DatafileClearWatchList() end

--- @return void (Type not found)
function DatafileFlushMissionHeader() end

--- NativeDB Added Parameter 1: int p0
--- @return void (Type not found)
function DatafileCreate() end

--- @param p0  
--- @return boolean
function DatafileHasLoadedFileData(p0) end

--- NativeDB Added Parameter 1: int p0
--- @return string
function DatafileGetFileDict() end

--- @param p0  
--- @return boolean
function DatafileHasValidFileData(p0) end

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
--- @return boolean
function DatafileIsSavePending() end

--- NativeDB Added Parameter 2: Any p1
--- @param p0  
--- @return boolean
function DatafileSelectActiveFile(p0) end

--- Loads a User-Generated Content (UGC) file. These files can be found in "[GTA5]\data\ugc" and "[GTA5]\common\patch\ugc". They seem to follow a naming convention, most likely of "[name]_[part].ugc". See example below for usage.
--- Returns whether or not the file was successfully loaded.
--- Example:
--- DATAFILE::_LOAD_UGC_FILE("RockstarPlaylists") // loads "rockstarplaylists_00.ugc"
--- NativeDB Added Parameter 2: Any p1
--- @param filename string 
--- @return boolean
function DatafileLoadOfflineUgc(filename) end

--- @param index number 
--- @return boolean
function DatafileIsValidRequestId(index) end

--- NativeDB Added Parameter 2: Any p1
--- @param p0 number 
--- @return boolean
function DatafileSelectUgcPlayerData(p0) end

--- NativeDB Added Parameter 2: Any p1
--- @param p0 number 
--- @return boolean
function DatafileSelectUgcData(p0) end

--- NativeDB Added Parameter 2: Any p1
--- @param p0 number 
--- @return boolean
function DatafileSelectCreatorStats(p0) end

--- NativeDB Added Parameter 3: Any p2
--- @param p0 number 
--- @param p1 boolean 
--- @return boolean
function DatafileSelectUgcStats(p0, p1) end

--- @param p0 boolean 
--- @return boolean
function DatafileUpdateSaveToCloud(p0) end

--- NativeDB Added Parameter 1: int p0
--- @return void (Type not found)
function DatafileStoreMissionHeader() end

--- NativeDB Added Parameter 2: Any p1
--- @param filename string 
--- @return boolean
function DatafileStartSaveToCloud(filename) end

--- Adds the given request ID to the watch list.
--- @param id number 
--- @return void (Type not found)
function DatafileWatchRequestId(id) end

--- NativeDB Added Parameter 8: Any p7
--- @param data string 
--- @param dataCount number 
--- @param contentName string 
--- @param description string 
--- @param tagsCsv string 
--- @param contentTypeName string 
--- @param publish boolean 
--- @return boolean
function UgcCreateContent(data, dataCount, contentName, description, tagsCsv, contentTypeName, publish) end

--- NativeDB Added Parameter 4: Any p3
--- @param contentId string 
--- @param rating number 
--- @param contentTypeName string 
--- @return boolean
function UgcSetPlayerData(contentId, rating, contentTypeName) end

--- NativeDB Added Parameter 8: Any p7
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
--- @param contentName string 
--- @param description string 
--- @param tagsCsv string 
--- @param contentTypeName string 
--- @param publish boolean 
--- @return boolean
function UgcCreateMission(contentName, description, tagsCsv, contentTypeName, publish) end

--- NativeDB Added Parameter 6: Any p5
--- @param contentId string 
--- @param contentName string 
--- @param description string 
--- @param tagsCsv string 
--- @param contentTypeName string 
--- @return boolean
function UgcUpdateMission(contentId, contentName, description, tagsCsv, contentTypeName) end
