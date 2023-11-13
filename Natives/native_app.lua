
--- @name APP_CLOSE_APP
--- @return void (Type not found)
function AppCloseApp() end

--- @name APP_CLOSE_BLOCK
--- @return void (Type not found)
function AppCloseBlock() end

--- @name APP_DATA_VALID
--- @return boolean
function AppDataValid() end

--- @name APP_DELETE_APP_DATA
--- @param appName string 
--- @return boolean
function AppDeleteAppData(appName) end

--- @name APP_CLEAR_BLOCK
--- @return void (Type not found)
function AppClearBlock() end

--- @name APP_GET_FLOAT
--- @param property string 
--- @return number
function AppGetFloat(property) end

--- @name APP_GET_STRING
--- @param property string 
--- @return string
function AppGetString(property) end

--- @name APP_HAS_LINKED_SOCIAL_CLUB_ACCOUNT
--- @return boolean
function AppHasLinkedSocialClubAccount() end

--- @name APP_GET_INT
--- @param property string 
--- @return number
function AppGetInt(property) end

--- @name APP_SAVE_DATA
--- @return void (Type not found)
function AppSaveData() end

--- @name APP_GET_DELETED_FILE_STATUS
--- @return number
function AppGetDeletedFileStatus() end

--- Called in the gamescripts like:  
--- APP::APP_SET_APP("car");  
--- APP::APP_SET_APP("dog");  
--- @name APP_SET_APP
--- @param appName string 
--- @return void (Type not found)
function AppSetApp(appName) end

--- @name APP_SET_BLOCK
--- @param blockName string 
--- @return void (Type not found)
function AppSetBlock(blockName) end

--- @name APP_HAS_SYNCED_DATA
--- @param appName string 
--- @return boolean
function AppHasSyncedData(appName) end

--- @name APP_SET_STRING
--- @param property string 
--- @param value string 
--- @return void (Type not found)
function AppSetString(property, value) end

--- @name APP_SET_FLOAT
--- @param property string 
--- @param value number 
--- @return void (Type not found)
function AppSetFloat(property, value) end

--- @name APP_SET_INT
--- @param property string 
--- @param value number 
--- @return void (Type not found)
function AppSetInt(property, value) end
