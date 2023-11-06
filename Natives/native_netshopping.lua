
--- NativeDB Introduced: v372
--- @return boolean
function NetGameserverBasketDelete() end

--- @param p0  
--- @param p1  
--- @return boolean
function NetGameserverBasketApplyServerData(p0, p1) end

--- @param itemData  
--- @param quantity number 
--- @return boolean
function NetGameserverBasketAddItem(itemData, quantity) end

--- @return boolean
function NetGameserverBasketEnd() end

--- @return boolean
function NetGameserverBasketIsFull() end

--- @param transactionId number 
--- @param categoryHash Hash 
--- @param actionHash Hash 
--- @param flags number 
--- @return boolean
function NetGameserverBasketStart(transactionId, categoryHash, actionHash, flags) end

--- @param transactionId number 
--- @param categoryHash Hash 
--- @param itemHash Hash 
--- @param actionTypeHash Hash 
--- @param value number 
--- @param flags number 
--- @return boolean
function NetGameserverBeginService(transactionId, categoryHash, itemHash, actionTypeHash, value, flags) end

--- @return boolean
function NetGameserverCatalogIsReady() end

--- @param name string 
--- @return boolean
function NetGameserverCatalogItemExists(name) end

--- @param hash Hash 
--- @return boolean
function NetGameserverCatalogItemExistsHash(hash) end

--- @param transactionId number 
--- @return boolean
function NetGameserverCheckoutStart(transactionId) end

--- Note: only one of the arguments can be set to true at a time
--- @param inventory boolean 
--- @param playerbalance boolean 
--- @return boolean
function NetGameserverGetBalance(inventory, playerbalance) end

--- @param slot number 
--- @param transfer boolean 
--- @param reason Hash 
--- @return boolean
function NetGameserverDeleteCharacterSlot(slot, transfer, reason) end

--- @param transactionId number 
--- @return boolean
function NetGameserverEndService(transactionId) end

--- @return boolean
function NetGameserverDeleteSetTelemetryNonceSeed() end

--- @param state number 
--- @return boolean
function NetGameserverGetCatalogState(state) end

--- @return number
function NetGameserverDeleteCharacterSlotGetStatus() end

--- @param charSlot number 
--- @return boolean
function NetGameserverIsSessionValid(charSlot) end

--- bool is always true in game scripts  
--- @param itemHash Hash 
--- @param categoryHash Hash 
--- @param p2 boolean 
--- @return number
function NetGameserverGetPrice(itemHash, categoryHash, p2) end

--- @return boolean
function NetGameserverIsSessionRefreshPending() end

--- @param p0 number 
--- @param p1 boolean 
--- @return boolean
function NetGameserverGetTransactionManagerData(p0, p1) end

--- @param charSlot number 
--- @return boolean
function NetGameserverStartSession(charSlot) end

--- @param charSlot number 
--- @return boolean
function NetGameserverSessionApplyReceivedData(charSlot) end

--- @param charSlot number 
--- @param amount number 
--- @return boolean
function NetGameserverTransferBankToWallet(charSlot, amount) end

--- @return boolean
function NetGameserverIsCatalogValid() end

--- @param p0 number 
--- @return boolean
function NetGameserverSetTelemetryNonceSeed(p0) end

--- @param charSlot number 
--- @param amount number 
--- @return boolean
function NetGameserverTransferWalletToBank(charSlot, amount) end

--- Same as 0x23789E777D14CE44
--- @return number
function NetGameserverTransferCashGetStatus2() end

--- Used to be NETWORK_SHOP_CASH_TRANSFER_SET_TELEMETRY_NONCE_SEED
--- @return boolean
function NetGameserverTransferCashSetTelemetryNonceSeed() end

--- Same as 0x350AA5EBC03D3BD2
--- @return number
function NetGameserverTransferCashGetStatus() end

--- NativeDB Introduced: v1290
--- @return boolean
function NetGameserverUseServerTransactions() end
