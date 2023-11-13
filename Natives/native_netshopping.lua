
--- @name _NET_GAMESERVER_BASKET_ADD_ITEM
--- @param itemData  
--- @param quantity number 
--- @return boolean
function NetGameserverBasketAddItem(itemData, quantity) end

--- NativeDB Introduced: v372
--- @name _NET_GAMESERVER_BASKET_DELETE
--- @return boolean
function NetGameserverBasketDelete() end

--- @name _NET_GAMESERVER_BASKET_APPLY_SERVER_DATA
--- @param p0  
--- @param p1  
--- @return boolean
function NetGameserverBasketApplyServerData(p0, p1) end

--- @name _NET_GAMESERVER_BASKET_IS_FULL
--- @return boolean
function NetGameserverBasketIsFull() end

--- @name _NET_GAMESERVER_CATALOG_IS_READY
--- @return boolean
function NetGameserverCatalogIsReady() end

--- @name _NET_GAMESERVER_BASKET_START
--- @param transactionId number 
--- @param categoryHash Hash 
--- @param actionHash Hash 
--- @param flags number 
--- @return boolean
function NetGameserverBasketStart(transactionId, categoryHash, actionHash, flags) end

--- @name _NET_GAMESERVER_CATALOG_ITEM_EXISTS
--- @param name string 
--- @return boolean
function NetGameserverCatalogItemExists(name) end

--- @name _NET_GAMESERVER_BASKET_END
--- @return boolean
function NetGameserverBasketEnd() end

--- @name _NET_GAMESERVER_DELETE_CHARACTER_SLOT
--- @param slot number 
--- @param transfer boolean 
--- @param reason Hash 
--- @return boolean
function NetGameserverDeleteCharacterSlot(slot, transfer, reason) end

--- @name _NET_GAMESERVER_CATALOG_ITEM_EXISTS_HASH
--- @param hash Hash 
--- @return boolean
function NetGameserverCatalogItemExistsHash(hash) end

--- @name _NET_GAMESERVER_GET_CATALOG_STATE
--- @param state number 
--- @return boolean
function NetGameserverGetCatalogState(state) end

--- @name _NET_GAMESERVER_BEGIN_SERVICE
--- @param transactionId number 
--- @param categoryHash Hash 
--- @param itemHash Hash 
--- @param actionTypeHash Hash 
--- @param value number 
--- @param flags number 
--- @return boolean
function NetGameserverBeginService(transactionId, categoryHash, itemHash, actionTypeHash, value, flags) end

--- @name _NET_GAMESERVER_END_SERVICE
--- @param transactionId number 
--- @return boolean
function NetGameserverEndService(transactionId) end

--- @name _NET_GAMESERVER_CHECKOUT_START
--- @param transactionId number 
--- @return boolean
function NetGameserverCheckoutStart(transactionId) end

--- @name _NET_GAMESERVER_DELETE_CHARACTER_SLOT_GET_STATUS
--- @return number
function NetGameserverDeleteCharacterSlotGetStatus() end

--- Note: only one of the arguments can be set to true at a time
--- @name _NET_GAMESERVER_GET_BALANCE
--- @param inventory boolean 
--- @param playerbalance boolean 
--- @return boolean
function NetGameserverGetBalance(inventory, playerbalance) end

--- @name _NET_GAMESERVER_DELETE_SET_TELEMETRY_NONCE_SEED
--- @return boolean
function NetGameserverDeleteSetTelemetryNonceSeed() end

--- bool is always true in game scripts  
--- @name _NET_GAMESERVER_GET_PRICE
--- @param itemHash Hash 
--- @param categoryHash Hash 
--- @param p2 boolean 
--- @return number
function NetGameserverGetPrice(itemHash, categoryHash, p2) end

--- @name _NET_GAMESERVER_GET_TRANSACTION_MANAGER_DATA
--- @param p0 number 
--- @param p1 boolean 
--- @return boolean
function NetGameserverGetTransactionManagerData(p0, p1) end

--- @name _NET_GAMESERVER_SET_TELEMETRY_NONCE_SEED
--- @param p0 number 
--- @return boolean
function NetGameserverSetTelemetryNonceSeed(p0) end

--- @name _NET_GAMESERVER_SESSION_APPLY_RECEIVED_DATA
--- @param charSlot number 
--- @return boolean
function NetGameserverSessionApplyReceivedData(charSlot) end

--- @name _NET_GAMESERVER_IS_SESSION_VALID
--- @param charSlot number 
--- @return boolean
function NetGameserverIsSessionValid(charSlot) end

--- @name _NET_GAMESERVER_IS_SESSION_REFRESH_PENDING
--- @return boolean
function NetGameserverIsSessionRefreshPending() end

--- @name _NET_GAMESERVER_START_SESSION
--- @param charSlot number 
--- @return boolean
function NetGameserverStartSession(charSlot) end

--- Same as 0x350AA5EBC03D3BD2
--- @name _NET_GAMESERVER_TRANSFER_CASH_GET_STATUS
--- @return number
function NetGameserverTransferCashGetStatus() end

--- Used to be NETWORK_SHOP_CASH_TRANSFER_SET_TELEMETRY_NONCE_SEED
--- @name _NET_GAMESERVER_TRANSFER_CASH_SET_TELEMETRY_NONCE_SEED
--- @return boolean
function NetGameserverTransferCashSetTelemetryNonceSeed() end

--- Same as 0x23789E777D14CE44
--- @name _NET_GAMESERVER_TRANSFER_CASH_GET_STATUS_2
--- @return number
function NetGameserverTransferCashGetStatus2() end

--- @name _NET_GAMESERVER_TRANSFER_BANK_TO_WALLET
--- @param charSlot number 
--- @param amount number 
--- @return boolean
function NetGameserverTransferBankToWallet(charSlot, amount) end

--- @name _NET_GAMESERVER_TRANSFER_WALLET_TO_BANK
--- @param charSlot number 
--- @param amount number 
--- @return boolean
function NetGameserverTransferWalletToBank(charSlot, amount) end

--- @name _NET_GAMESERVER_IS_CATALOG_VALID
--- @return boolean
function NetGameserverIsCatalogValid() end

--- NativeDB Introduced: v1290
--- @name _NET_GAMESERVER_USE_SERVER_TRANSACTIONS
--- @return boolean
function NetGameserverUseServerTransactions() end
