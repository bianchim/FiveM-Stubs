
--- Returns whether or not the specified property is set for the entity.  
--- @param entity Entity 
--- @param propertyName string 
--- @return boolean
function DecorExistOn(entity, propertyName) end

--- @param entity Entity 
--- @param propertyName string 
--- @return number
function DecorGetFloat(entity, propertyName) end

--- @param propertyName string 
--- @param type number See [`DECOR_REGISTER`](#\_0x9FD90732F56403CE).
--- @return boolean
function DecorIsRegisteredAsType(propertyName, type) end

--- @param entity Entity 
--- @param propertyName string 
--- @return number
function DecorGetInt(entity, propertyName) end

--- @param entity Entity 
--- @param propertyName string 
--- @return boolean
function DecorGetBool(entity, propertyName) end

--- @param entity Entity 
--- @param propertyName string 
--- @return boolean
function DecorRemove(entity, propertyName) end

--- Called after all decorator type initializations.  
--- @return void (Type not found)
function DecorRegisterLock() end

--- This function sets metadata of type bool to specified entity.  
--- @param entity Entity 
--- @param propertyName string 
--- @param value boolean 
--- @return boolean
function DecorSetBool(entity, propertyName, value) end

--- Decor types:
--- enum eDecorType
--- {
---     DECOR_TYPE_FLOAT = 1,
---     DECOR_TYPE_BOOL = 2,
---     DECOR_TYPE_INT = 3,
---     DECOR_TYPE_UNK = 4,
---     DECOR_TYPE_TIME = 5
--- };
--- @param propertyName string 
--- @param type number 
--- @return void (Type not found)
function DecorRegister(propertyName, type) end

--- Sets property to int.  
--- @param entity Entity 
--- @param propertyName string 
--- @param value number 
--- @return boolean
function DecorSetInt(entity, propertyName, value) end

--- @param entity Entity 
--- @param propertyName string 
--- @param timestamp number 
--- @return boolean
function DecorSetTime(entity, propertyName, timestamp) end

--- @param entity Entity 
--- @param propertyName string 
--- @param value number 
--- @return boolean
function DecorSetFloat(entity, propertyName, value) end
