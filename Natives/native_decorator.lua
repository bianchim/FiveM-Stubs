
--- @name DECOR_GET_FLOAT
--- @param entity Entity 
--- @param propertyName string 
--- @return number
function DecorGetFloat(entity, propertyName) end

--- Returns whether or not the specified property is set for the entity.  
--- @name DECOR_EXIST_ON
--- @param entity Entity 
--- @param propertyName string 
--- @return boolean
function DecorExistOn(entity, propertyName) end

--- @name DECOR_GET_INT
--- @param entity Entity 
--- @param propertyName string 
--- @return number
function DecorGetInt(entity, propertyName) end

--- @name DECOR_GET_BOOL
--- @param entity Entity 
--- @param propertyName string 
--- @return boolean
function DecorGetBool(entity, propertyName) end

--- Decor types:
--- enum eDecorType
--- {
---     DECOR_TYPE_FLOAT = 1,
---     DECOR_TYPE_BOOL = 2,
---     DECOR_TYPE_INT = 3,
---     DECOR_TYPE_UNK = 4,
---     DECOR_TYPE_TIME = 5
--- };
--- @name DECOR_REGISTER
--- @param propertyName string 
--- @param type number 
--- @return void (Type not found)
function DecorRegister(propertyName, type) end

--- @name DECOR_SET_FLOAT
--- @param entity Entity 
--- @param propertyName string 
--- @param value number 
--- @return boolean
function DecorSetFloat(entity, propertyName, value) end

--- @name DECOR_IS_REGISTERED_AS_TYPE
--- @param propertyName string 
--- @param type number See [`DECOR_REGISTER`](#\_0x9FD90732F56403CE).
--- @return boolean
function DecorIsRegisteredAsType(propertyName, type) end

--- This function sets metadata of type bool to specified entity.  
--- @name DECOR_SET_BOOL
--- @param entity Entity 
--- @param propertyName string 
--- @param value boolean 
--- @return boolean
function DecorSetBool(entity, propertyName, value) end

--- Sets property to int.  
--- @name DECOR_SET_INT
--- @param entity Entity 
--- @param propertyName string 
--- @param value number 
--- @return boolean
function DecorSetInt(entity, propertyName, value) end

--- @name DECOR_REMOVE
--- @param entity Entity 
--- @param propertyName string 
--- @return boolean
function DecorRemove(entity, propertyName) end

--- Called after all decorator type initializations.  
--- @name DECOR_REGISTER_LOCK
--- @return void (Type not found)
function DecorRegisterLock() end

--- @name DECOR_SET_TIME
--- @param entity Entity 
--- @param propertyName string 
--- @param timestamp number 
--- @return boolean
function DecorSetTime(entity, propertyName, timestamp) end
