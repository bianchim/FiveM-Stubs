
--- @return void (Type not found)
function AppClearBlock() end

--- @return void (Type not found)
function AppCloseBlock() end

--- @param appName string 
--- @return boolean
function AppDeleteAppData(appName) end

--- @return void (Type not found)
function AppCloseApp() end

--- @param property string 
--- @return number
function AppGetFloat(property) end

--- @param property string 
--- @return string
function AppGetString(property) end

--- @param appName string 
--- @return boolean
function AppHasSyncedData(appName) end

--- @return boolean
function AppDataValid() end

--- @param property string 
--- @return number
function AppGetInt(property) end

--- @return number
function AppGetDeletedFileStatus() end

--- Called in the gamescripts like:  
--- APP::APP_SET_APP("car");  
--- APP::APP_SET_APP("dog");  
--- @param appName string 
--- @return void (Type not found)
function AppSetApp(appName) end

--- @return boolean
function AppHasLinkedSocialClubAccount() end

--- @param property string 
--- @param value string 
--- @return void (Type not found)
function AppSetString(property, value) end

--- @param property string 
--- @param value number 
--- @return void (Type not found)
function AppSetFloat(property, value) end

--- @param property string 
--- @param value number 
--- @return void (Type not found)
function AppSetInt(property, value) end

--- @param blockName string 
--- @return void (Type not found)
function AppSetBlock(blockName) end

--- @return void (Type not found)
function AppSaveData() end
