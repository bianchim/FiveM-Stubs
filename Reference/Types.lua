---@class Citizen
Citizen = {}

---@class Entity
Entity = {}

---@generic Entity
---@class Ped:Entity
Ped = {}

---@class Object:Entity
Object = {}

---@class Vehicle:Entity
Vehicle = {}

---@class Cam:Entity
Cam = {}

---@class Hash
Hash = {}

---@class Player:Entity
Player = {}

---@class Vector2
---@field x number
---@field y number
Vector2 = {}

-- Override because complete is lost without it.
---@class vector2:Vector2
vector2 = {}

---@class Vector3
---@field x number
---@field y number
---@field z number
Vector3 = {}

-- Override because complete is lost without it.
---@class vector3:Vector3
vector3 = {}

---@class Vector4
---@field x number
---@field y number
---@field z number
---@field w number
Vector4 = {}

-- Override because complete is lost without it.
---@class vector4:Vector4
vector4 = {}

---@class ScrHandle
ScrHandle = {}

---@class Blip
Blip = {}

---@class Pickup
Pickup = {}

---@class FireId
FireId = {}

---@class quat
quat = {}