
--- @name _ROCKSTAR_MESSAGE_GET_STRING
--- @return string
function RockstarMessageGetString() end

--- @name SC_EMAIL_MESSAGE_CLEAR_RECIP_LIST
--- @return void (Type not found)
function ScEmailMessageClearRecipList() end

--- sfink: from scripts:
--- func_720(socialclub::_0x8416FE4E4629D7D7("bIgnoreCheaterOverride"));
--- func_719(socialclub::_0x8416FE4E4629D7D7("bIgnoreBadSportOverride"));
--- @name SC_GAMERDATA_GET_BOOL
--- @param name string 
--- @return boolean
function ScGamerdataGetBool(name) end

--- NativeDB Introduced: v323
--- @name SC_GAMERDATA_GET_INT
--- @param name string 
--- @param outValue number 
--- @return boolean
function ScGamerdataGetInt(name, outValue) end

--- @name SC_EMAIL_MESSAGE_PUSH_GAMER_TO_RECIP_LIST
--- @param networkHandle number 
--- @return void (Type not found)
function ScEmailMessagePushGamerToRecipList(networkHandle) end

--- Returns the nickname of the logged-in Rockstar Social Club account.
--- @name _SC_GET_NICKNAME
--- @return string
function ScGetNickname() end

--- @name _IS_ROCKSTAR_MESSAGE_READY_FOR_SCRIPT
--- @return boolean
function IsRockstarMessageReadyForScript() end

--- Same as HAS_ACHIEVEMENT_BEEN_PASSED
--- @name _SC_GET_HAS_ACHIEVEMENT_BEEN_PASSED
--- @param achievement number 
--- @return boolean
function ScGetHasAchievementBeenPassed(achievement) end

--- NativeDB Introduced: v323
--- @name SC_GAMERDATA_GET_FLOAT
--- @param name string 
--- @param outValue number 
--- @return boolean
function ScGamerdataGetFloat(name, outValue) end

--- @name SC_INBOX_GET_TOTAL_NUM_MESSAGES
--- @return number
function ScInboxGetTotalNumMessages() end

--- @name _SC_INBOX_GET_EMAILS
--- @param offset number 
--- @param limit number 
--- @return void (Type not found)
function ScInboxGetEmails(offset, limit) end

--- @name SC_INBOX_GET_MESSAGE_IS_READ_AT_INDEX
--- @param msgIndex number 
--- @return boolean
function ScInboxGetMessageIsReadAtIndex(msgIndex) end

--- @name SC_INBOX_GET_MESSAGE_TYPE_AT_INDEX
--- @param msgIndex number 
--- @return Hash
function ScInboxGetMessageTypeAtIndex(msgIndex) end

--- @name _SC_INBOX_MESSAGE_GET_BOUNTY_DATA
--- @param index number 
--- @param outData number 
--- @return boolean
function ScInboxMessageGetBountyData(index, outData) end

--- @name _SC_INBOX_MESSAGE_GET_DATA_BOOL
--- @param p0 number 
--- @param p1 string 
--- @return boolean
function ScInboxMessageGetDataBool(p0, p1) end

--- @name SC_INBOX_MESSAGE_GET_DATA_STRING
--- @param p0 number 
--- @param context string 
--- @param out string 
--- @return boolean
function ScInboxMessageGetDataString(p0, context, out) end

--- @name SC_INBOX_MESSAGE_DO_APPLY
--- @param p0 number 
--- @return boolean
function ScInboxMessageDoApply(p0) end

--- @name SC_INBOX_MESSAGE_GET_DATA_INT
--- @param p0 number 
--- @param context string 
--- @param out number 
--- @return boolean
function ScInboxMessageGetDataInt(p0, context, out) end

--- @name SC_INBOX_MESSAGE_GET_UGCDATA
--- @param p0  
--- @param p1  
--- @return boolean
function ScInboxMessageGetUgcdata(p0, p1) end

--- @name _SC_INBOX_MESSAGE_GET_STRING
--- @param p0 number 
--- @return string
function ScInboxMessageGetString(p0) end

--- @name _SC_INBOX_MESSAGE_PUSH_GAMER_TO_EVENT_RECIP_LIST
--- @param networkHandle number 
--- @return void (Type not found)
function ScInboxMessagePushGamerToEventRecipList(networkHandle) end

--- @name _SC_INBOX_MESSAGE_POP
--- @param p0 number 
--- @return boolean
function ScInboxMessagePop(p0) end

--- @name _SC_INBOX_MESSAGE_SEND_BOUNTY_PRESENCE_EVENT
--- @param data string 
--- @return boolean
function ScInboxMessageSendBountyPresenceEvent(data) end

--- Social Club native to add license plate for the user
--- @name SC_LICENSEPLATE_ADD
--- @param plateText string 
--- @param plateData string 
--- @param tokenOut number 
--- @return boolean
function ScLicenseplateAdd(plateText, plateData, tokenOut) end

--- Checks if the "is valid license plate" request is still pending.
--- @name SC_LICENSEPLATE_GET_ISVALID_IS_PENDING
--- @param token number 
--- @return boolean
function ScLicenseplateGetIsvalidIsPending(token) end

--- @name _SC_INBOX_MESSAGE_SEND_UGC_STAT_UPDATE_EVENT
--- @param data string 
--- @return void (Type not found)
function ScInboxMessageSendUgcStatUpdateEvent(data) end

--- Returns a status for adding the license plate
--- @name SC_LICENSEPLATE_GET_ADD_STATUS
--- @param token number 
--- @return number
function ScLicenseplateGetAddStatus(token) end

--- Gets number of plates in the response of the get license plates request.
--- Range: \[0, count) can be used as second argument to \_0x1D4446A62D35B0D0 and \_0x2E89990DDFF670C3
--- @name SC_LICENSEPLATE_GET_COUNT
--- @param token number 
--- @return number
function ScLicenseplateGetCount(token) end

--- Gets the status of the is valid license plate request
--- @name SC_LICENSEPLATE_GET_ISVALID_STATUS
--- @param token number 
--- @return number
function ScLicenseplateGetIsvalidStatus(token) end

--- Returns true if the add license plate text request is still pending.
--- @name SC_LICENSEPLATE_GET_ADD_IS_PENDING
--- @param token number 
--- @return boolean
function ScLicenseplateGetAddIsPending(token) end

--- SC native to start a request for if license plate text is valid
--- @name SC_LICENSEPLATE_ISVALID
--- @param plateText string 
--- @param tokenOut number 
--- @return boolean
function ScLicenseplateIsvalid(plateText, tokenOut) end

--- Gets license plate text related to the get license plate info request
--- @name SC_LICENSEPLATE_GET_PLATE
--- @param token number 
--- @param plateIndex number The plate index from the list of result plates. Use SC_LICENSEPLATE_GET_COUNT for the number of plates.
--- @return string
function ScLicenseplateGetPlate(token, plateIndex) end

--- Gets license plate data related to the get license plate info request
--- @name SC_LICENSEPLATE_GET_PLATE_DATA
--- @param token number 
--- @param plateIndex number The plate index from the list of result plates. Use SC_LICENSEPLATE_GET_COUNT for the number of plates.
--- @return string
function ScLicenseplateGetPlateData(token, plateIndex) end

--- Changes the license plate for the user (no insert).
--- @name SC_LICENSEPLATE_SET_PLATE_DATA
--- @param oldPlateText string 
--- @param newPlateText string 
--- @param plateData string 
--- @return boolean
function ScLicenseplateSetPlateData(oldPlateText, newPlateText, plateData) end

--- NativeDB Introduced: v323
--- NativeDB Added Parameter 1: Hash attrHash
--- NativeDB Added Parameter 2: float value
--- @name SC_PRESENCE_ATTR_SET_FLOAT
--- @return boolean
function ScPresenceAttrSetFloat() end

--- @name SC_PRESENCE_ATTR_SET_STRING
--- @param attrHash Hash 
--- @param value string 
--- @return boolean
function ScPresenceAttrSetString(attrHash, value) end

--- @name SC_PROFANITY_GET_CHECK_IS_PENDING
--- @param token number 
--- @return boolean
function ScProfanityGetCheckIsPending(token) end

--- @name SC_PRESENCE_ATTR_SET_INT
--- @param attrHash Hash 
--- @param value number 
--- @return boolean
function ScPresenceAttrSetInt(attrHash, value) end

--- @name SC_PROFANITY_GET_CHECK_IS_VALID
--- @param token number 
--- @return boolean
function ScProfanityGetCheckIsValid(token) end

--- Starts a task to check an entered string for profanity on the ROS/Social Club services.
--- See also: [`SC_PROFANITY_GET_CHECK_IS_VALID`](#\_0x1753344C770358AE) and [`SC_PROFANITY_GET_CHECK_IS_PENDING`](#\_0x82E4A58BABC15AE7).
--- @name SC_PROFANITY_CHECK_STRING
--- @param string string 
--- @param token number 
--- @return boolean
function ScProfanityCheckString(string, token) end

--- @name _SC_PROFANITY_CHECK_UGC_STRING
--- @param string string 
--- @param token number 
--- @return boolean
function ScProfanityCheckUgcString(string, token) end

--- @name SC_PROFANITY_GET_STRING_STATUS
--- @param token number 
--- @return number
function ScProfanityGetStringStatus(token) end

--- @name SC_PROFANITY_GET_STRING_PASSED
--- @param token number 
--- @return boolean
function ScProfanityGetStringPassed(token) end

--- @name _SET_HANDLE_ROCKSTAR_MESSAGE_VIA_SCRIPT
--- @param toggle boolean 
--- @return void (Type not found)
function SetHandleRockstarMessageViaScript(toggle) end
