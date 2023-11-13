
--- @name _ADD_AMMO_TO_PED_BY_TYPE
--- @param ped Ped 
--- @param ammoType Hash 
--- @param ammo number 
--- @return void (Type not found)
function AddAmmoToPedByType(ped, ammoType, ammo) end

--- @name _CREATE_AIR_DEFENSE_AREA
--- @param p0 number 
--- @param p1 number 
--- @param p2 number 
--- @param p3 number 
--- @param p4 number 
--- @param p5 number 
--- @param p6 number 
--- @param p7 number 
--- @param p8 number 
--- @param p9 number 
--- @param weaponHash Hash 
--- @return number
function CreateAirDefenseArea(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, weaponHash) end

--- this returns if you can use the weapon while using a parachute  
--- @name CAN_USE_WEAPON_ON_PARACHUTE
--- @param weaponHash Hash 
--- @return boolean
function CanUseWeaponOnParachute(weaponHash) end

--- @name ADD_AMMO_TO_PED
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param ammo number 
--- @return void (Type not found)
function AddAmmoToPed(ped, weaponHash, ammo) end

--- @name CLEAR_ENTITY_LAST_WEAPON_DAMAGE
--- @param entity Entity 
--- @return void (Type not found)
function ClearEntityLastWeaponDamage(entity) end

--- Does NOT seem to work with HAS_PED_BEEN_DAMAGED_BY_WEAPON. Use CLEAR_ENTITY_LAST_WEAPON_DAMAGE and HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON instead.
--- @name CLEAR_PED_LAST_WEAPON_DAMAGE
--- @param ped Ped 
--- @return void (Type not found)
function ClearPedLastWeaponDamage(ped) end

--- Both coordinates are from objects in the decompiled scripts.
--- Native related to [\_0xECDC202B25E5CF48](#\_0xECDC202B25E5CF48) p1 value. The only weapon hash used in the decompiled scripts is weapon_air_defence_gun. These two natives are used by the yacht script, decompiled scripts suggest it and the weapon hash used (valkyrie's rockets) are also used by yachts.
--- @name _CREATE_AIR_DEFENSE_SPHERE
--- @param x number X coordinate
--- @param y number Y coordinate
--- @param z number Z coordinate
--- @param radius number Unknown float 150.0 is used in freemode script.
--- @param p4 number X coordinate
--- @param p5 number Y coordinate
--- @param p6 number Z coordinate
--- @param weaponHash Hash weapon_air_defence_gun and 0 are used in the decompiled scripts.
--- @return number
function CreateAirDefenseSphere(x, y, z, radius, p4, p5, p6, weaponHash) end

--- @name _DOES_AIR_DEFENSE_ZONE_EXIST
--- @param zoneId number 
--- @return boolean
function DoesAirDefenseZoneExist(zoneId) end

--- Now has 8 params.  
--- NativeDB Added Parameter 9: Any p8
--- NativeDB Added Parameter 10: Any p9
--- @name CREATE_WEAPON_OBJECT
--- @param weaponHash Hash 
--- @param ammoCount number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @param showWorldModel boolean 
--- @param scale number 
--- @param p7  
--- @return Object
function CreateWeaponObject(weaponHash, ammoCount, x, y, z, showWorldModel, scale, p7) end

--- WEAPON::EXPLODE_PROJECTILES(PLAYER::PLAYER_PED_ID(), func_221(0x00000003), 0x00000001);  
--- @name EXPLODE_PROJECTILES
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param p2 boolean 
--- @return void (Type not found)
function ExplodeProjectiles(ped, weaponHash, p2) end

--- Enables laser sight on any weapon.  
--- It doesn't work. Neither on tick nor OnKeyDown  
--- @name ENABLE_LASER_SIGHT_RENDERING
--- @param toggle boolean 
--- @return void (Type not found)
function EnableLaserSightRendering(toggle) end

--- @name _FIRE_AIR_DEFENSE_WEAPON
--- @param zoneId number 
--- @param x number 
--- @param y number 
--- @param z number 
--- @return void (Type not found)
function FireAirDefenseWeapon(zoneId, x, y, z) end

--- WEAPON::GET_AMMO_IN_PED_WEAPON(PLAYER::PLAYER_PED_ID(), a_0)  
--- From decompiled scripts  
--- Returns total ammo in weapon  
--- GTALua Example :  
--- natives.WEAPON.GET_AMMO_IN_PED_WEAPON(plyPed, WeaponHash)  
--- @name GET_AMMO_IN_PED_WEAPON
--- @param ped Ped 
--- @param weaponhash Hash 
--- @return number
function GetAmmoInPedWeapon(ped, weaponhash) end

--- @name GET_AMMO_IN_CLIP
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param ammo number 
--- @return boolean
function GetAmmoInClip(ped, weaponHash, ammo) end

--- NativeDB Added Parameter 2: Any p1
--- @name GET_CURRENT_PED_WEAPON_ENTITY_INDEX
--- @param ped Ped 
--- @return Entity
function GetCurrentPedWeaponEntityIndex(ped) end

--- p1 is always 0 in the scripts.  
--- @name GET_BEST_PED_WEAPON
--- @param ped Ped 
--- @param p1 boolean 
--- @return Hash
function GetBestPedWeapon(ped, p1) end

--- @name DOES_WEAPON_TAKE_WEAPON_COMPONENT
--- @param weaponHash Hash 
--- @param componentHash Hash 
--- @return boolean
function DoesWeaponTakeWeaponComponent(weaponHash, componentHash) end

--- @name GET_LOCKON_DISTANCE_OF_CURRENT_PED_WEAPON
--- @param ped Ped 
--- @return number
function GetLockonDistanceOfCurrentPedWeapon(ped) end

--- @name GET_CURRENT_PED_VEHICLE_WEAPON
--- @param ped Ped 
--- @param weaponHash Hash 
--- @return boolean
function GetCurrentPedVehicleWeapon(ped, weaponHash) end

--- The return value seems to indicate returns true if the hash of the weapon object weapon equals the weapon hash.  
--- p2 seems to be 1 most of the time; and is not implemented.
--- @name GET_CURRENT_PED_WEAPON
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param p2 boolean 
--- @return boolean
function GetCurrentPedWeapon(ped, weaponHash, p2) end

--- gadgetHash - was always 0xFBAB5776 ("GADGET_PARACHUTE").  
--- @name GET_IS_PED_GADGET_EQUIPPED
--- @param ped Ped 
--- @param gadgetHash Hash 
--- @return boolean
function GetIsPedGadgetEquipped(ped, gadgetHash) end

--- @name GET_MAX_AMMO
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param ammo number 
--- @return boolean
function GetMaxAmmo(ped, weaponHash, ammo) end

--- @name _GET_MAX_AMMO_BY_TYPE
--- @param ped Ped 
--- @param ammoType Hash 
--- @param ammo number 
--- @return boolean
function GetMaxAmmoByType(ped, ammoType, ammo) end

--- p2 is mostly 1 in the scripts.  
--- @name GET_MAX_AMMO_IN_CLIP
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param p2 boolean 
--- @return number
function GetMaxAmmoInClip(ped, weaponHash, p2) end

--- Returns the current ammo type of the specified ped's specified weapon.
--- MkII magazines will change the return value, like Pistol MkII returning AMMO_PISTOL without any components and returning AMMO_PISTOL_TRACER after Tracer Rounds component is attached.
--- Use 0xF489B44DD5AF4BD9 if you always want AMMO_PISTOL.
--- @name GET_PED_AMMO_TYPE_FROM_WEAPON
--- @param ped Ped 
--- @param weaponHash Hash 
--- @return Hash
function GetPedAmmoTypeFromWeapon(ped, weaponHash) end

--- Pass ped. Pass address of Vector3.  
--- The coord will be put into the Vector3.  
--- The return will determine whether there was a coord found or not.  
--- @name GET_PED_LAST_WEAPON_IMPACT_COORD
--- @param ped Ped 
--- @param coords Vector3 
--- @return boolean
function GetPedLastWeaponImpactCoord(ped, coords) end

--- @name GET_PED_AMMO_BY_TYPE
--- @param ped Ped 
--- @param ammoType Hash 
--- @return number
function GetPedAmmoByType(ped, ammoType) end

--- Returns the base/default ammo type of the specified ped's specified weapon.
--- Use GET_PED_AMMO_TYPE_FROM_WEAPON if you want current ammo type (like AMMO_MG_INCENDIARY/AMMO_MG_TRACER while using MkII magazines) and use this if you want base ammo type. (AMMO_MG)
--- @name _GET_PED_AMMO_TYPE_FROM_WEAPON_2
--- @param ped Ped 
--- @param weaponHash Hash 
--- @return Hash
function GetPedAmmoTypeFromWeapon2(ped, weaponHash) end

--- @name GET_PED_WEAPON_TINT_INDEX
--- @param ped Ped 
--- @param weaponHash Hash 
--- @return number
function GetPedWeaponTintIndex(ped, weaponHash) end

--- @name GET_MAX_RANGE_OF_CURRENT_PED_WEAPON
--- @param ped Ped 
--- @return number
function GetMaxRangeOfCurrentPedWeapon(ped) end

--- @name _GET_PED_WEAPON_LIVERY_COLOR
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param camoComponentHash Hash 
--- @return number
function GetPedWeaponLiveryColor(ped, weaponHash, camoComponentHash) end

--- @name GET_PED_WEAPONTYPE_IN_SLOT
--- @param ped Ped 
--- @param weaponSlot Hash 
--- @return Hash
function GetPedWeapontypeInSlot(ped, weaponSlot) end

--- @name GET_WEAPON_COMPONENT_HUD_STATS
--- @param componentHash Hash 
--- @param outData number 
--- @return boolean
function GetWeaponComponentHudStats(componentHash, outData) end

--- // Returns the size of the default weapon component clip.  
--- Use it like this:  
--- char cClipSize[32];  
--- Hash cur;  
--- if (WEAPON::GET_CURRENT_PED_WEAPON(playerPed, &cur, 1))  
--- {  
---     if (WEAPON::IS_WEAPON_VALID(cur))  
---     {  
---         int iClipSize = WEAPON::GET_WEAPON_CLIP_SIZE(cur);  
---         sprintf_s(cClipSize, "ClipSize: %.d", iClipSize);  
---         vDrawString(cClipSize, 0.5f, 0.5f);  
---     }  
--- }  
--- @name GET_WEAPON_CLIP_SIZE
--- @param weaponHash Hash 
--- @return number
function GetWeaponClipSize(weaponHash) end

--- @name GET_WEAPON_COMPONENT_TYPE_MODEL
--- @param componentHash Hash 
--- @return Hash
function GetWeaponComponentTypeModel(componentHash) end

--- @name _GET_WEAPON_COMPONENT_VARIANT_EXTRA_COMPONENT_MODEL
--- @param componentHash Hash 
--- @param extraComponentIndex number 
--- @return Hash
function GetWeaponComponentVariantExtraComponentModel(componentHash, extraComponentIndex) end

--- @name GET_SELECTED_PED_WEAPON
--- @param ped Ped 
--- @return Hash
function GetSelectedPedWeapon(ped) end

--- @name _GET_WEAPON_COMPONENT_VARIANT_EXTRA_COMPONENT_COUNT
--- @param componentHash Hash 
--- @return number
function GetWeaponComponentVariantExtraComponentCount(componentHash) end

--- 0=unknown (or incorrect weaponHash)  
--- 1= no damage (flare,snowball, petrolcan)  
--- 2=melee  
--- 3=bullet  
--- 4=force ragdoll fall  
--- 5=explosive (RPG, Railgun, grenade)  
--- 6=fire(molotov)  
--- 8=fall(WEAPON_HELI_CRASH)  
--- 10=electric  
--- 11=barbed wire  
--- 12=extinguisher  
--- 13=gas  
--- 14=water cannon(WEAPON_HIT_BY_WATER_CANNON)  
--- @name GET_WEAPON_DAMAGE_TYPE
--- @param weaponHash Hash 
--- @return number
function GetWeaponDamageType(weaponHash) end

--- // members should be aligned to 8 bytes by default but it's best to use alignas here, just to be sure  
--- struct WeaponHudStatsData  
--- {  
--- 	alignas(8) uint8_t hudDamage; // 0x0000  
--- 	alignas(8) uint8_t hudSpeed; // 0x0008  
--- 	alignas(8) uint8_t hudCapacity; // 0x0010  
--- 	alignas(8) uint8_t hudAccuracy; // 0x0018  
--- 	alignas(8) uint8_t hudRange; // 0x0020  
--- };  
--- Usage:  
--- WeaponHudStatsData data;  
--- if (GET_WEAPON_HUD_STATS(weaponHash, (Any*)&data))  
--- {  
---     // uint8_t damagePercentage = data.hudDamage etc...  
--- }  
--- @name GET_WEAPON_HUD_STATS
--- @param weaponHash Hash 
--- @param outData  
--- @return boolean
function GetWeaponHudStats(weaponHash, outData) end

--- @name _GET_WEAPON_TIME_BETWEEN_SHOTS
--- @param weaponHash Hash 
--- @return number
function GetWeaponTimeBetweenShots(weaponHash) end

--- Drops the current weapon and returns the object  
--- Unknown behavior when unarmed.  
--- @name GET_WEAPON_OBJECT_FROM_PED
--- @param ped Ped 
--- @param p1 boolean 
--- @return Object
function GetWeaponObjectFromPed(ped, p1) end

--- This native does not return damages of weapons from the melee and explosive group.
--- @name GET_WEAPON_DAMAGE
--- @param weaponHash Hash 
--- @param componentHash Hash 0 in the decompiled scripts.
--- @return number
function GetWeaponDamage(weaponHash, componentHash) end

--- @name GET_WEAPON_OBJECT_TINT_INDEX
--- @param weapon Object 
--- @return number
function GetWeaponObjectTintIndex(weapon) end

--- @name _GET_WEAPON_OBJECT_LIVERY_COLOR
--- @param weaponObject Object 
--- @param camoComponentHash Hash 
--- @return number
function GetWeaponObjectLiveryColor(weaponObject, camoComponentHash) end

--- @name GET_WEAPON_TINT_COUNT
--- @param weaponHash Hash 
--- @return number
function GetWeaponTintCount(weaponHash) end

--- Returns the model of any weapon.  
--- Can also take an ammo hash?  
--- sub_6663a(&l_115B, WEAPON::GET_WEAPONTYPE_MODEL(${ammo_rpg}));  
--- @name GET_WEAPONTYPE_MODEL
--- @param weaponHash Hash 
--- @return Hash
function GetWeapontypeModel(weaponHash) end

--- @name GET_WEAPONTYPE_SLOT
--- @param weaponHash Hash 
--- @return Hash
function GetWeapontypeSlot(weaponHash) end

--- @name GET_WEAPONTYPE_GROUP
--- @param weaponHash Hash The hash of the Weapon.
--- @return Hash
function GetWeapontypeGroup(weaponHash) end

--- Gives a weapon to PED with a delay, example:
--- WEAPON::GIVE_DELAYED_WEAPON_TO_PED(PED::PLAYER_PED_ID(), MISC::GET_HASH_KEY("WEAPON_PISTOL"), 1000, false)
--- @name GIVE_DELAYED_WEAPON_TO_PED
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param ammoCount number 
--- @param bForceInHand boolean 
--- @return void (Type not found)
function GiveDelayedWeaponToPed(ped, weaponHash, ammoCount, bForceInHand) end

--- addonHash:
--- (use WEAPON::GET_WEAPON_COMPONENT_TYPE_MODEL() to get hash value)
--- ${component_at_ar_flsh}, ${component_at_ar_supp}, ${component_at_pi_flsh}, ${component_at_scope_large}, ${component_at_ar_supp_02}
--- @name GIVE_WEAPON_COMPONENT_TO_WEAPON_OBJECT
--- @param weaponObject Object 
--- @param addonHash Hash 
--- @return void (Type not found)
function GiveWeaponComponentToWeaponObject(weaponObject, addonHash) end

--- @name GIVE_WEAPON_TO_PED
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param ammoCount number 
--- @param isHidden boolean 
--- @param bForceInHand boolean 
--- @return void (Type not found)
function GiveWeaponToPed(ped, weaponHash, ammoCount, isHidden, bForceInHand) end

--- @name GIVE_WEAPON_COMPONENT_TO_PED
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param componentHash Hash 
--- @return void (Type not found)
function GiveWeaponComponentToPed(ped, weaponHash, componentHash) end

--- @name _GIVE_LOADOUT_TO_PED
--- @param ped Ped 
--- @param loadoutHash Hash 
--- @return void (Type not found)
function GiveLoadoutToPed(ped, loadoutHash) end

--- It determines what weapons caused damage:  
--- If you want to define only a specific weapon, second parameter=weapon hash code, third parameter=0  
--- If you want to define any melee weapon, second parameter=0, third parameter=1.  
--- If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.  
--- @name HAS_PED_BEEN_DAMAGED_BY_WEAPON
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param weaponType number 
--- @return boolean
function HasPedBeenDamagedByWeapon(ped, weaponHash, weaponType) end

--- @name GIVE_WEAPON_OBJECT_TO_PED
--- @param weaponObject Object 
--- @param ped Ped 
--- @return void (Type not found)
function GiveWeaponObjectToPed(weaponObject, ped) end

--- @name HAS_PED_GOT_WEAPON_COMPONENT
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param componentHash Hash 
--- @return boolean
function HasPedGotWeaponComponent(ped, weaponHash, componentHash) end

--- It determines what weapons caused damage:
--- If you want to define only a specific weapon, second parameter=weapon hash code, third parameter=0
--- If you want to define any melee weapon, second parameter=0, third parameter=1.
--- If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.
--- @name HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON
--- @param entity Entity 
--- @param weaponHash Hash 
--- @param weaponType number 
--- @return boolean
function HasEntityBeenDamagedByWeapon(entity, weaponHash, weaponType) end

--- @name HAS_WEAPON_ASSET_LOADED
--- @param weaponHash Hash 
--- @return boolean
function HasWeaponAssetLoaded(weaponHash) end

--- p2 should be FALSE, otherwise it seems to always return FALSE  
--- Bool does not check if the weapon is current equipped, unfortunately.  
--- @name HAS_PED_GOT_WEAPON
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param p2 boolean 
--- @return boolean
function HasPedGotWeapon(ped, weaponHash, p2) end

--- @name HAS_WEAPON_GOT_WEAPON_COMPONENT
--- @param weapon Object 
--- @param addonHash Hash 
--- @return boolean
function HasWeaponGotWeaponComponent(weapon, addonHash) end

--- Hides the players weapon during a cutscene.  
--- @name HIDE_PED_WEAPON_FOR_SCRIPTED_CUTSCENE
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function HidePedWeaponForScriptedCutscene(ped, toggle) end

--- This native returns a true or false value.  
--- Ped ped = The ped whose weapon you want to check.  
--- @name IS_PED_CURRENT_WEAPON_SILENCED
--- @param ped Ped 
--- @return boolean
function IsPedCurrentWeaponSilenced(ped) end

--- Third Parameter = unsure, but pretty sure it is weapon hash  
--- --> get_hash_key("weapon_stickybomb")  
--- Fourth Parameter = unsure, almost always -1  
--- @name HAS_VEHICLE_GOT_PROJECTILE_ATTACHED
--- @param driver Ped 
--- @param vehicle Vehicle 
--- @param weaponHash Hash 
--- @param p3  
--- @return boolean
function HasVehicleGotProjectileAttached(driver, vehicle, weaponHash, p3) end

--- @name _IS_ANY_AIR_DEFENSE_ZONE_INSIDE_SPHERE
--- @param x number 
--- @param y number 
--- @param z number 
--- @param radius number 
--- @param SphereIndex number 
--- @return boolean
function IsAnyAirDefenseZoneInsideSphere(x, y, z, radius, SphereIndex) end

--- @name IS_PED_WEAPON_COMPONENT_ACTIVE
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param componentHash Hash 
--- @return boolean
function IsPedWeaponComponentActive(ped, weaponHash, componentHash) end

--- Checks if the ped is currently equipped with a weapon matching a bit specified using a bitwise-or in typeFlags.
--- | Bit value | Effect            |
--- |-----------|-------------------|
--- | 1         | Melee weapons     |
--- | 2         | Explosive weapons |
--- | 4         | Any other weapons |
--- Not specifying any bit will lead to the native *always* returning 'false', and for example specifying '4 | 2' will check for any weapon except fists and melee weapons.
--- @name IS_PED_ARMED
--- @param ped Ped The ped to check armed state on.
--- @param typeFlags number Type flags to check.
--- @return boolean
function IsPedArmed(ped, typeFlags) end

--- @name IS_WEAPON_VALID
--- @param weaponHash Hash 
--- @return boolean
function IsWeaponValid(weaponHash) end

--- Forces a ped to reload only if they are able to; if they have a full magazine, they will not reload.
--- @name MAKE_PED_RELOAD
--- @param ped Ped 
--- @return boolean
function MakePedReload(ped) end

--- @name IS_FLASH_LIGHT_ON
--- @param ped Ped 
--- @return boolean
function IsFlashLightOn(ped) end

--- @name IS_PED_WEAPON_READY_TO_SHOOT
--- @param ped Ped 
--- @return boolean
function IsPedWeaponReadyToShoot(ped) end

--- @name _REMOVE_AIR_DEFENSE_ZONE
--- @param zoneId number 
--- @return boolean
function RemoveAirDefenseZone(zoneId) end

--- Parameter `p1` does not seem to be used or referenced in game binaries.\
--- **Note:** When called for networked entities, a `CRemoveAllWeaponsEvent` will be created per request.
--- @name REMOVE_ALL_PED_WEAPONS
--- @param ped Ped The ped entity
--- @param p1 boolean 
--- @return void (Type not found)
function RemoveAllPedWeapons(ped, p1) end

--- @name _REMOVE_ALL_AIR_DEFENSE_ZONES
--- @return void (Type not found)
function RemoveAllAirDefenseZones() end

--- If `explode` true, then removal is done through exploding the projectile. Basically the same as EXPLODE_PROJECTILES but without defining the owner ped.
--- @name REMOVE_ALL_PROJECTILES_OF_TYPE
--- @param weaponHash Hash 
--- @param explode boolean 
--- @return void (Type not found)
function RemoveAllProjectilesOfType(weaponHash, explode) end

--- @name REFILL_AMMO_INSTANTLY
--- @param ped Ped 
--- @return boolean
function RefillAmmoInstantly(ped) end

--- @name REMOVE_WEAPON_COMPONENT_FROM_WEAPON_OBJECT
--- @param weaponObject Object 
--- @param addonHash Hash 
--- @return void (Type not found)
function RemoveWeaponComponentFromWeaponObject(weaponObject, addonHash) end

--- @name REMOVE_WEAPON_COMPONENT_FROM_PED
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param componentHash Hash 
--- @return void (Type not found)
function RemoveWeaponComponentFromPed(ped, weaponHash, componentHash) end

--- @name REMOVE_WEAPON_ASSET
--- @param weaponHash Hash 
--- @return void (Type not found)
function RemoveWeaponAsset(weaponHash) end

--- This native removes a specified weapon from your selected ped.  
--- Weapon Hashes: pastebin.com/0wwDZgkF  
--- Example:  
--- C#:  
--- Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);  
--- C++:  
--- WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);  
--- The code above removes the knife from the player.  
--- @name REMOVE_WEAPON_FROM_PED
--- @param ped Ped 
--- @param weaponHash Hash 
--- @return void (Type not found)
function RemoveWeaponFromPed(ped, weaponHash) end

--- @name SET_AMMO_IN_CLIP
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param ammo number 
--- @return boolean
function SetAmmoInClip(ped, weaponHash, ammo) end

--- Does the same as [`_SET_CAN_PED_SELECT_WEAPON`](#\_0xB4771B9AAF4E68E4) except for all weapons.
--- @name _SET_CAN_PED_EQUIP_ALL_WEAPONS
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCanPedEquipAllWeapons(ped, toggle) end

--- @name REQUEST_WEAPON_HIGH_DETAIL_MODEL
--- @param weaponObject Entity 
--- @return void (Type not found)
function RequestWeaponHighDetailModel(weaponObject) end

--- Nearly every instance of p1 I found was 31. Nearly every instance of p2 I found was 0.  
--- REQUEST_WEAPON_ASSET(iLocal_1888, 31, 26);  
--- @name REQUEST_WEAPON_ASSET
--- @param weaponHash Hash 
--- @param p1 number 
--- @param p2 number 
--- @return void (Type not found)
function RequestWeaponAsset(weaponHash, p1, p2) end

--- Disables selecting the given weapon. Ped isn't forced to put the gun away. However you can't reselect the weapon if you holster then unholster. Weapon is also grayed out on the weapon wheel.
--- @name _SET_CAN_PED_EQUIP_WEAPON
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param toggle boolean 
--- @return void (Type not found)
function SetCanPedEquipWeapon(ped, weaponHash, toggle) end

--- Enables/disables flashlight on ped's weapon.
--- NativeDB Introduced: v2060
--- @name _SET_FLASH_LIGHT_ENABLED
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetFlashLightEnabled(ped, toggle) end

--- @name SET_CURRENT_PED_WEAPON
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param bForceInHand boolean 
--- @return void (Type not found)
function SetCurrentPedWeapon(ped, weaponHash, bForceInHand) end

--- NativeDB Added Parameter 4: BOOL p3
--- @name SET_PED_AMMO
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param ammo number 
--- @return void (Type not found)
function SetPedAmmo(ped, weaponHash, ammo) end

--- @name SET_FLASH_LIGHT_FADE_DISTANCE
--- @param distance number 
--- @return 
function SetFlashLightFadeDistance(distance) end

--- @name SET_CURRENT_PED_VEHICLE_WEAPON
--- @param ped Ped 
--- @param weaponHash Hash 
--- @return boolean
function SetCurrentPedVehicleWeapon(ped, weaponHash) end

--- Has 5 parameters since latest patches.  
--- @name SET_PED_CURRENT_WEAPON_VISIBLE
--- @param ped Ped 
--- @param visible boolean 
--- @param deselectWeapon boolean 
--- @param p3 boolean 
--- @param p4 boolean 
--- @return void (Type not found)
function SetPedCurrentWeaponVisible(ped, visible, deselectWeapon, p3, p4) end

--- @name SET_PED_AMMO_TO_DROP
--- @param ped Ped 
--- @param ammo number 
--- @return void (Type not found)
function SetPedAmmoToDrop(ped, ammo) end

--- @name SET_PED_DROPS_INVENTORY_WEAPON
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param xOffset number 
--- @param yOffset number 
--- @param zOffset number 
--- @param ammoCount number 
--- @return void (Type not found)
function SetPedDropsInventoryWeapon(ped, weaponHash, xOffset, yOffset, zOffset, ammoCount) end

--- @name SET_PED_AMMO_BY_TYPE
--- @param ped Ped 
--- @param ammoType Hash 
--- @param ammo number 
--- @return void (Type not found)
function SetPedAmmoByType(ped, ammoType, ammo) end

--- @name SET_PED_CHANCE_OF_FIRING_BLANKS
--- @param ped Ped 
--- @param xBias number 
--- @param yBias number 
--- @return void (Type not found)
function SetPedChanceOfFiringBlanks(ped, xBias, yBias) end

--- p1/gadgetHash was always 0xFBAB5776 ("GADGET_PARACHUTE").  
--- p2 is always true.  
--- @name SET_PED_GADGET
--- @param ped Ped 
--- @param gadgetHash Hash 
--- @param p2 boolean 
--- @return void (Type not found)
function SetPedGadget(ped, gadgetHash, p2) end

--- @name SET_PED_DROPS_WEAPONS_WHEN_DEAD
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedDropsWeaponsWhenDead(ped, toggle) end

--- @name SET_PED_INFINITE_AMMO
--- @param ped Ped 
--- @param toggle boolean 
--- @param weaponHash Hash 
--- @return void (Type not found)
function SetPedInfiniteAmmo(ped, toggle, weaponHash) end

--- @name SET_PED_DROPS_WEAPON
--- @param ped Ped 
--- @return void (Type not found)
function SetPedDropsWeapon(ped) end

--- @name SET_PED_INFINITE_AMMO_CLIP
--- @param ped Ped 
--- @param toggle boolean 
--- @return void (Type not found)
function SetPedInfiniteAmmoClip(ped, toggle) end

--- Returns handle of the projectile.
--- @name SET_PED_SHOOT_ORDNANCE_WEAPON
--- @param ped Ped 
--- @param p1 number 
--- @return Object
function SetPedShootOrdnanceWeapon(ped, p1) end

--- @name _SET_PED_WEAPON_LIVERY_COLOR
--- @param ped Ped 
--- @param weaponHash Hash 
--- @param camoComponentHash Hash 
--- @param colorIndex number 
--- @return void (Type not found)
function SetPedWeaponLiveryColor(ped, weaponHash, camoComponentHash, colorIndex) end

--- tintIndex can be the following:  
--- 0 : Default/Black
--- 1 : Green
--- 2 : Gold
--- 3 : Pink
--- 4 : Army
--- 5 : LSPD
--- 6 : Orange
--- 7 : Platinum
--- tintIndex for MK2 weapons :
--- 0 : Classic Black
--- 1 : Classic Gray
--- 2 : Classic Two-Tone
--- 3 : Classic White
--- 4 : Classic Beige
--- 5 : Classic Green
--- 6 : Classic Blue
--- 7 : Classic Earth
--- 8 : Classic Brown & Black
--- 9 : Red Contrast
--- 10 : Blue Contrast
--- 11 : Yellow Contrast
--- 12 : Orange Contrast
--- 13 : Bold Pink
--- 14 : Bold Purple & Yellow
--- 15 : Bold Orange
--- 16 : Bold Green & Purple
--- 17 : Bold Red Features
--- 18 : Bold Green Features
--- 19 : Bold Cyan Features
--- 20 : Bold Yellow Features
--- 21 : Bold Red & White
--- 22 : Bold Blue & White
--- 23 : Metallic Gold
--- 24 : Metallic Platinum
--- 25 : Metallic Gray & Lilac
--- 26 : Metallic Purple & Lime
--- 27 : Metallic Red
--- 28 : Metallic Green
--- 29 : Metallic Blue
--- 30 : Metallic White & Aqua
--- 31 : Metallic Orange & Yellow
--- 32 : Mettalic Red and Yellow
--- @name SET_PED_WEAPON_TINT_INDEX
--- @param ped Ped The target ped
--- @param weaponHash Hash The target weapon hash
--- @param tintIndex number Tint for weapon hash
--- @return void (Type not found)
function SetPedWeaponTintIndex(ped, weaponHash, tintIndex) end

--- Changes the selected ped aiming animation style.   
--- Note : You must use GET_HASH_KEY!  
--- Strings to use with GET_HASH_KEY :  
--- 	"Ballistic",  
--- 	"Default",  
--- 	"Fat",  
--- 	"Female",  
--- 	"FirstPerson",  
--- 	"FirstPersonAiming",  
--- 	"FirstPersonFranklin",  
--- 	"FirstPersonFranklinAiming",  
--- 	"FirstPersonFranklinRNG",  
--- 	"FirstPersonFranklinScope",  
--- 	"FirstPersonMPFemale",  
--- 	"FirstPersonMichael",  
--- 	"FirstPersonMichaelAiming",  
--- 	"FirstPersonMichaelRNG",  
--- 	"FirstPersonMichaelScope",  
--- 	"FirstPersonRNG",  
--- 	"FirstPersonScope",  
--- 	"FirstPersonTrevor",  
--- 	"FirstPersonTrevorAiming",  
--- 	"FirstPersonTrevorRNG",  
--- 	"FirstPersonTrevorScope",  
--- 	"Franklin",  
--- 	"Gang",  
--- 	"Gang1H",  
--- 	"GangFemale",  
--- 	"Hillbilly",  
--- 	"MP_F_Freemode",  
--- 	"Michael",  
--- 	"SuperFat",  
--- 	"Trevor"  
--- @name SET_WEAPON_ANIMATION_OVERRIDE
--- @param ped Ped 
--- @param animStyle Hash 
--- @return void (Type not found)
function SetWeaponAnimationOverride(ped, animStyle) end

--- Changes the weapon damage output by the given multiplier value.
--- Does NOT need to be called every frame.
--- @name _SET_WEAPON_DAMAGE_MODIFIER
--- @param weaponHash Hash Hash of the weapon
--- @param damageMultiplier number Damage Multiplier
--- @return void (Type not found)
function SetWeaponDamageModifier(weaponHash, damageMultiplier) end

--- @name _SET_PLAYER_AIR_DEFENSE_ZONE_FLAG
--- @param player Player 
--- @param zoneId number 
--- @param enable boolean 
--- @return void (Type not found)
function SetPlayerAirDefenseZoneFlag(player, zoneId, enable) end

--- @name _SET_WEAPON_OBJECT_LIVERY_COLOR
--- @param weaponObject Object 
--- @param camoComponentHash Hash 
--- @param colorIndex number 
--- @return void (Type not found)
function SetWeaponObjectLiveryColor(weaponObject, camoComponentHash, colorIndex) end

--- @name SET_WEAPON_OBJECT_TINT_INDEX
--- @param weapon Object 
--- @param tintIndex number 
--- @return void (Type not found)
function SetWeaponObjectTintIndex(weapon, tintIndex) end

--- NativeDB Introduced: v2372
--- @name _SET_WEAPON_EXPLOSION_RADIUS_MULTIPLIER
--- @param weaponHash Hash 
--- @param multiplier number 
--- @return void (Type not found)
function SetWeaponExplosionRadiusMultiplier(weaponHash, multiplier) end

--- @name SET_PICKUP_AMMO_AMOUNT_SCALER
--- @param p0 number 
--- @return void (Type not found)
function SetPickupAmmoAmountScaler(p0) end
