
--- @return boolean
function IsRockstarMessageReadyForScript() end

--- @return string
function RockstarMessageGetString() end

--- @return void (Type not found)
function ScEmailMessageClearRecipList() end

--- @param networkHandle number 
--- @return void (Type not found)
function ScEmailMessagePushGamerToRecipList(networkHandle) end

--- sfink: from scripts:
--- func_720(socialclub::_0x8416FE4E4629D7D7("bIgnoreCheaterOverride"));
--- func_719(socialclub::_0x8416FE4E4629D7D7("bIgnoreBadSportOverride"));
--- @param name string 
--- @return boolean
function ScGamerdataGetBool(name) end

--- @param msgIndex number 
--- @return boolean
function ScInboxGetMessageIsReadAtIndex(msgIndex) end

--- NativeDB Introduced: v323
--- @param name string 
--- @param outValue number 
--- @return boolean
function ScGamerdataGetInt(name, outValue) end

--- Same as HAS_ACHIEVEMENT_BEEN_PASSED
--- @param achievement number 
--- @return boolean
function ScGetHasAchievementBeenPassed(achievement) end

--- Returns the nickname of the logged-in Rockstar Social Club account.
--- @return string
function ScGetNickname() end

--- @param offset number 
--- @param limit number 
--- @return void (Type not found)
function ScInboxGetEmails(offset, limit) end

--- NativeDB Introduced: v323
--- @param name string 
--- @param outValue number 
--- @return boolean
function ScGamerdataGetFloat(name, outValue) end

--- @return number
function ScInboxGetTotalNumMessages() end

--- @param msgIndex number 
--- @return Hash
function ScInboxGetMessageTypeAtIndex(msgIndex) end

--- @param p0 number 
--- @return boolean
function ScInboxMessageDoApply(p0) end

--- @param p0 number 
--- @param context string 
--- @param out string 
--- @return boolean
function ScInboxMessageGetDataString(p0, context, out) end

--- @param p0 number 
--- @param context string 
--- @param out number 
--- @return boolean
function ScInboxMessageGetDataInt(p0, context, out) end

--- @param p0 number 
--- @param p1 string 
--- @return boolean
function ScInboxMessageGetDataBool(p0, p1) end

--- @param p0 number 
--- @return boolean
function ScInboxMessagePop(p0) end

--- @param index number 
--- @param outData number 
--- @return boolean
function ScInboxMessageGetBountyData(index, outData) end

--- @param p0 number 
--- @return string
function ScInboxMessageGetString(p0) end

--- @param p0  
--- @param p1  
--- @return boolean
function ScInboxMessageGetUgcdata(p0, p1) end

--- @param networkHandle number 
--- @return void (Type not found)
function ScInboxMessagePushGamerToEventRecipList(networkHandle) end

--- Social Club native to add license plate for the user
--- @param plateText string 
--- @param plateData string 
--- @param tokenOut number 
--- @return boolean
function ScLicenseplateAdd(plateText, plateData, tokenOut) end

--- Gets number of plates in the response of the get license plates request.
--- Range: \[0, count) can be used as second argument to \_0x1D4446A62D35B0D0 and \_0x2E89990DDFF670C3
--- @param token number 
--- @return number
function ScLicenseplateGetCount(token) end

--- @param data string 
--- @return void (Type not found)
function ScInboxMessageSendUgcStatUpdateEvent(data) end

--- Returns true if the add license plate text request is still pending.
--- @param token number 
--- @return boolean
function ScLicenseplateGetAddIsPending(token) end

--- Gets license plate text related to the get license plate info request
--- @param token number 
--- @param plateIndex number The plate index from the list of result plates. Use SC_LICENSEPLATE_GET_COUNT for the number of plates.
--- @return string
function ScLicenseplateGetPlate(token, plateIndex) end

--- Gets the status of the is valid license plate request
--- @param token number 
--- @return number
function ScLicenseplateGetIsvalidStatus(token) end

--- Checks if the "is valid license plate" request is still pending.
--- @param token number 
--- @return boolean
function ScLicenseplateGetIsvalidIsPending(token) end

--- Returns a status for adding the license plate
--- @param token number 
--- @return number
function ScLicenseplateGetAddStatus(token) end

--- SC native to start a request for if license plate text is valid
--- @param plateText string 
--- @param tokenOut number 
--- @return boolean
function ScLicenseplateIsvalid(plateText, tokenOut) end

--- Gets license plate data related to the get license plate info request
--- @param token number 
--- @param plateIndex number The plate index from the list of result plates. Use SC_LICENSEPLATE_GET_COUNT for the number of plates.
--- @return string
function ScLicenseplateGetPlateData(token, plateIndex) end

--- Changes the license plate for the user (no insert).
--- @param oldPlateText string 
--- @param newPlateText string 
--- @param plateData string 
--- @return boolean
function ScLicenseplateSetPlateData(oldPlateText, newPlateText, plateData) end

--- @param attrHash Hash 
--- @param value number 
--- @return boolean
function ScPresenceAttrSetInt(attrHash, value) end

--- NativeDB Introduced: v323
--- NativeDB Added Parameter 1: Hash attrHash
--- NativeDB Added Parameter 2: float value
--- @return boolean
function ScPresenceAttrSetFloat() end

--- @param data string 
--- @return boolean
function ScInboxMessageSendBountyPresenceEvent(data) end

--- Starts a task to check an entered string for profanity on the ROS/Social Club services.
--- See also: [`SC_PROFANITY_GET_CHECK_IS_VALID`](#\_0x1753344C770358AE) and [`SC_PROFANITY_GET_CHECK_IS_PENDING`](#\_0x82E4A58BABC15AE7).
--- @param string string 
--- @param token number 
--- @return boolean
function ScProfanityCheckString(string, token) end

--- @param string string 
--- @param token number 
--- @return boolean
function ScProfanityCheckUgcString(string, token) end

--- @param token number 
--- @return boolean
function ScProfanityGetCheckIsPending(token) end

--- @param attrHash Hash 
--- @param value string 
--- @return boolean
function ScPresenceAttrSetString(attrHash, value) end

--- @param token number 
--- @return number
function ScProfanityGetStringStatus(token) end

--- @param token number 
--- @return boolean
function ScProfanityGetCheckIsValid(token) end

--- @param toggle boolean 
--- @return void (Type not found)
function SetHandleRockstarMessageViaScript(toggle) end

--- @param token number 
--- @return boolean
function ScProfanityGetStringPassed(token) end
