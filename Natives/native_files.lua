
--- @param componentHash Hash 
--- @param restrictionTagHash Hash 
--- @param componentId number 
--- @return boolean
function DoesShopPedApparelHaveRestrictionTag(componentHash, restrictionTagHash, componentId) end

--- @param hash Hash 
--- @return Hash
function GetDlcVehicleModLockHash(hash) end

--- dlcVehicleIndex is 0 to GET_NUM_DLC_VEHICLS()  
--- @param dlcVehicleIndex number 
--- @return Hash
function GetDlcVehicleModel(dlcVehicleIndex) end

--- @param dlcVehicleIndex number 
--- @return number
function GetDlcVehicleFlags(dlcVehicleIndex) end

--- The Second item in the struct `*(Hash *)(outData + 1)` is the vehicle hash.
--- @param dlcVehicleIndex number takes a number from 0 to `GET_NUM_DLC_VEHICLES()` - 1.
--- @param outData  a struct of 3 8-byte items.
--- @return boolean
function GetDlcVehicleData(dlcVehicleIndex, outData) end

--- Same as GET_DLC_WEAPON_DATA but only works for DLC weapons that are available in SP.
--- NativeDB Introduced: v2060
--- @param dlcWeaponIndex number 
--- @param outData number 
--- @return boolean
function GetDlcWeaponDataSp(dlcWeaponIndex, outData) end

--- p0 seems to be the weapon index  
--- p1 seems to be the weapon component index  
--- struct DlcComponentData{  
--- int attachBone;  
--- int padding1;  
--- int bActiveByDefault;  
--- int padding2;  
--- int unk;  
--- int padding3;  
--- int componentHash;  
--- int padding4;  
--- int unk2;  
--- int padding5;  
--- int componentCost;  
--- int padding6;  
--- char nameLabel[64];  
--- char descLabel[64];  
--- };  
--- @param dlcWeaponIndex number 
--- @param dlcWeapCompIndex number 
--- @param ComponentDataPtr number 
--- @return boolean
function GetDlcWeaponComponentData(dlcWeaponIndex, dlcWeapCompIndex, ComponentDataPtr) end

--- @param componentHash Hash 
--- @param forcedComponentIndex number 
--- @param nameHash Hash 
--- @param enumValue number 
--- @param componentType number 
--- @return void (Type not found)
function GetForcedComponent(componentHash, forcedComponentIndex, nameHash, enumValue, componentType) end

--- Same as GET_DLC_WEAPON_COMPONENT_DATA but only works for DLC components that are available in SP.
--- NativeDB Introduced: v2060
--- @param dlcWeaponIndex number 
--- @param dlcWeapCompIndex number 
--- @param ComponentDataPtr number 
--- @return boolean
function GetDlcWeaponComponentDataSp(dlcWeaponIndex, dlcWeapCompIndex, ComponentDataPtr) end

--- @param entity Entity 
--- @param componentId number 
--- @param propIndex number 
--- @param propTextureIndex number 
--- @return Hash
function GetHashNameForProp(entity, componentId, propIndex, propTextureIndex) end

--- dlcWeaponIndex takes a number from 0 - GET_NUM_DLC_WEAPONS() - 1.  
--- struct DlcWeaponData  
--- {  
--- int emptyCheck; //use DLC1::_IS_DLC_DATA_EMPTY on this  
--- int padding1;  
--- int weaponHash;  
--- int padding2;  
--- int unk;  
--- int padding3;  
--- int weaponCost;  
--- int padding4;  
--- int ammoCost;  
--- int padding5;  
--- int ammoType;  
--- int padding6;  
--- int defaultClipSize;  
--- int padding7;  
--- char nameLabel[64];  
--- char descLabel[64];  
--- char desc2Label[64]; // usually "the" + name  
--- char upperCaseNameLabel[64];  
--- };  
--- @param dlcWeaponIndex number 
--- @param outData number 
--- @return boolean
function GetDlcWeaponData(dlcWeaponIndex, outData) end

--- Returns the total number of DLC vehicles.
--- @return number
function GetNumDlcVehicles() end

--- @param componentHash Hash 
--- @param forcedPropIndex number 
--- @param nameHash Hash 
--- @param enumValue number 
--- @param anchorPoint number 
--- @return void (Type not found)
function GetForcedProp(componentHash, forcedPropIndex, nameHash, enumValue, anchorPoint) end

--- Returns the total number of DLC weapon components that are available in SP.
--- NativeDB Introduced: v2060
--- @param dlcWeaponIndex number 
--- @return number
function GetNumDlcWeaponComponentsSp(dlcWeaponIndex) end

--- @param entity Entity 
--- @param componentId number 
--- @param drawableVariant number 
--- @param textureVariant number 
--- @return Hash
function GetHashNameForComponent(entity, componentId, drawableVariant, textureVariant) end

--- Returns the total number of DLC weapon components.
--- @param dlcWeaponIndex number 
--- @return number
function GetNumDlcWeaponComponents(dlcWeaponIndex) end

--- Returns the total number of DLC weapons that are available in SP (availableInSP field in shop_weapon.meta).
--- NativeDB Introduced: v2060
--- @return number
function GetNumDlcWeaponsSp() end

--- Character types:
--- 0 = Michael,
--- 1 = Franklin,
--- 2 = Trevor,
--- 3 = MPMale,
--- 4 = MPFemale
--- @param character number 
--- @return number
function GetNumTattooShopDlcItems(character) end

--- Returns number of possible values of the forcedComponentIndex argument of GET_FORCED_COMPONENT.
--- @param componentHash Hash 
--- @return number
function GetShopPedApparelForcedComponentCount(componentHash) end

--- Returns the total number of DLC weapons.
--- @return number
function GetNumDlcWeapons() end

--- @param componentHash Hash 
--- @return number
function GetShopPedApparelVariantComponentCount(componentHash) end

--- Returns number of possible values of the forcedPropIndex argument of GET_FORCED_PROP.
--- @param componentHash Hash 
--- @return number
function GetShopPedApparelForcedPropCount(componentHash) end

--- More info here: https://gist.github.com/root-cause/3b80234367b0c856d60bf5cb4b826f86
--- @param componentHash Hash 
--- @param outComponent  
--- @return void (Type not found)
function GetShopPedComponent(componentHash, outComponent) end

--- @param propHash Hash Ped helmet prop hash
--- @return number
function GetShopPedApparelVariantPropCount(propHash) end

--- @param outfit Hash A structure, see [`GET_SHOP_PED_QUERY_OUTFIT`](#\_0x6D793F03A631FE56).
--- @param slot number outfit slot.
--- @param outComponentVariant  
--- @return boolean
function GetShopPedOutfitComponentVariant(outfit, slot, outComponentVariant) end

--- @param p0  
--- @return number
function GetShopPedOutfitLocate(p0) end

--- @param p0  
--- @param p1  
--- @return void (Type not found)
function GetShopPedOutfit(p0, p1) end

--- @param componentHash Hash 
--- @param outProp  
--- @return void (Type not found)
function GetShopPedProp(componentHash, outProp) end

--- @param outfitHash Hash 
--- @param variantIndex number 
--- @param outPropVariant  
--- @return boolean
function GetShopPedOutfitPropVariant(outfitHash, variantIndex, outPropVariant) end

--- struct Outfit_s  
--- {  
--- 	int mask, torso, pants, parachute, shoes, misc1, tops1, armour, crew, tops2, hat, glasses, earpiece;  
--- 	int maskTexture, torsoTexture, pantsTexture, parachuteTexture, shoesTexture, misc1Texture, tops1Texture,   
--- 		armourTexture, crewTexture, tops2Texture, hatTexture, glassesTexture, earpieceTexture;  
--- };  
--- @param outfitIndex number 
--- @param outfit  
--- @return void (Type not found)
function GetShopPedQueryOutfit(outfitIndex, outfit) end

--- @param componentId number 
--- @param outComponent number 
--- @return void (Type not found)
function GetShopPedQueryComponent(componentId, outComponent) end

--- @param componentId number 
--- @param outProp  
--- @return void (Type not found)
function GetShopPedQueryProp(componentId, outProp) end

--- Character types:
--- 0 = Michael,
--- 1 = Franklin,
--- 2 = Trevor,
--- 3 = MPMale,
--- 4 = MPFemale
--- ```csharp
--- enum TattooZoneData
--- {
---     ZONE_TORSO = 0,
---     ZONE_HEAD = 1,
---     ZONE_LEFT_ARM = 2,
---     ZONE_RIGHT_ARM = 3,
---     ZONE_LEFT_LEG = 4,
---     ZONE_RIGHT_LEG = 5,
---     ZONE_UNKNOWN = 6,
---     ZONE_NONE = 7,
--- };
--- struct outComponent
--- {
---     // these vars are suffixed with 4 bytes of padding each.
---     uint unk;
---     int unk2;
---     uint tattooCollectionHash;
---     uint tattooNameHash;
---     int unk3;
---     TattooZoneData zoneId;
---     uint unk4;
---     uint unk5;
---     // maybe more, not sure exactly, decompiled scripts are very vague around this part.
--- }
--- @param characterType number Character types 0 = Michael, 1 = Franklin, 2 = Trevor, 3 = MPMale, 4 = MPFemale.
--- @param decorationIndex number Tattoo index, value between 0 and GetNumDecorations(characterType).
--- @param outComponent  The referenced struct.
--- @return boolean
function GetTattooShopDlcItemData(characterType, decorationIndex, outComponent) end

--- @param outComponent number 
--- @return void (Type not found)
function InitShopPedComponent(outComponent) end

--- @param componentHash Hash 
--- @param variantComponentIndex number 
--- @param nameHash Hash 
--- @param enumValue number 
--- @param componentType number 
--- @return void (Type not found)
function GetVariantComponent(componentHash, variantComponentIndex, nameHash, enumValue, componentType) end

--- @param hash Hash 
--- @return boolean
function IsDlcVehicleMod(hash) end

--- @param componentHash Hash 
--- @param variantPropIndex number 
--- @param nameHash Hash 
--- @param enumValue number 
--- @param anchorPoint number 
--- @return void (Type not found)
function GetVariantProp(componentHash, variantPropIndex, nameHash, enumValue, anchorPoint) end

--- From fm_deathmatch_creator and fm_race_creator:
--- FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
--- FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
--- NativeDB Introduced: v1604
--- @param hash Hash 
--- @return void (Type not found)
function LoadContentChangeSetGroup(hash) end

--- @param outProp number 
--- @return void (Type not found)
function InitShopPedProp(outProp) end

--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @return number
function SetupShopPedApparelQuery(p0, p1, p2, p3) end

--- character is 0 for Michael, 1 for Franklin, 2 for Trevor, 3 for freemode male, and 4 for freemode female.
--- componentId is between 0 and 11 and corresponds to the usual component slots.
--- p1 could be the outfit number; unsure.
--- p2 is usually -1; unknown function.
--- p3 appears to be for selecting between clothes and props; false is used with components/clothes, true is used with props.
--- p4 is usually -1; unknown function.
--- componentId is -1 when p3 is true in decompiled scripts.
--- @param character number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 boolean 
--- @param p4 number 
--- @param componentId number 
--- @return number
function SetupShopPedApparelQueryTu(character, p1, p2, p3, p4, componentId) end

--- characters
--- 0: Michael
--- 1: Franklin
--- 2: Trevor
--- 3: MPMale
--- 4: MPFemale
--- @param character number 
--- @param p1 boolean 
--- @return number
function SetupShopPedOutfitQuery(character, p1) end

--- @param itemHash Hash 
--- @return boolean
function IsContentItemLocked(itemHash) end

--- From fm_deathmatch_creator and fm_race_creator:
--- FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
--- FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
--- NativeDB Introduced: v1604
--- @param hash Hash 
--- @return void (Type not found)
function UnloadContentChangeSetGroup(hash) end
