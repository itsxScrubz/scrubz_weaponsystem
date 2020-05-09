---------------------------
-- Locals --
---------------------------
ESX = nil
local weaponInfo = 
{
  [1] = {id = 'advancedrifle', hash = "WEAPON_ADVANCEDRIFLE"},
  [2] = {id = 'autoshotgun', hash = "WEAPON_AUTOSHOTGUN"},
  [3] = {id = 'appistol', hash = "WEAPON_APPISTOL"},
  [4] = {id = 'assaultrifle', hash = "WEAPON_ASSAULTRIFLE"},
  [5] = {id = 'assaultrifle_mk2', hash = "WEAPON_ASSAULTRIFLE_MK2"},
  [6] = {id = 'wrench', hash = "WEAPON_WRENCH"},
  [7] = {id = 'assaulshotgun', hash = "WEAPON_ASSAULTSHOTGUN"},
  [8] = {id = 'assualtsmg', hash = "WEAPON_ASSAULTSMG"},
  [9] = {id = 'ball', hash = "WEAPON_BALL"},
  [10] = {id = 'bat', hash = "WEAPON_BAT"},
  [11] = {id = 'battleaxe', hash = "WEAPON_BATTLEAXE"},
  [12] = {id = 'bottle', hash = "WEAPON_BOTTLE"},
  [13] = {id = 'bullpuprifle', hash = "WEAPON_BULLPUPRIFLE"},
  [14] = {id = 'bullpuprifle_mk2', hash = "WEAPON_BULLPUPRIFLE_MK2"},
  [15] = {id = 'bullpupshotgun', hash = "WEAPON_BULLPUPSHOTG"},
  [16] = {id = 'bzgas', hash = "WEAPON_BZGAS"},
  [17] = {id = 'carbinerifle', hash = "WEAPON_CARBINERIFLE"},
  [18] = {id = 'carbinerifle_mk2', hash = "WEAPON_CARBINERIFLE_MK@"},
  [19] = {id = 'combatmg', hash = "WEAPON_COMBATMG"},
  [20] = {id = 'combatmg_mk2', hash = "WEAPON_COMBATMG_MK2"},
  [21] = {id = 'combatpdw', hash = "WEAPON_COMBATPDW"},
  [22] = {id = 'combatpistol', hash = "WEAPON_COMBATPISTOL"},
  [23] = {id = 'compactlauncher', hash = "WEAPON_COMPACTLAUNCHER"},
  [24] = {id = 'compactrifle', hash = "WEAPON_COMPACTRIFLE"},
  [25] = {id = 'crowbar', hash = "WEAPON_CROWBAR"},
  [26] = {id = 'dagger', hash = "WEAPON_DAGGER"},
  [27] = {id = 'dbshotgun', hash = "WEAPON_DBSHOTGUN"},
  [28] = {id = 'digiscanner', hash = "WEAPON_DIGISCANNER"},
  [29] = {id = 'doubleaction', hash = "WEAPON_DOUBLEACTION"},
  [30] = {id = 'fireextinguisher', hash = "WEAPON_FIREEXTINGUISHER"},
  [31] = {id = 'firework', hash = "WEAPON_FIREWORK"},
  [32] = {id = 'flare', hash = "WEAPON_FLARE"},
  [33] = {id = 'flaregun', hash = "WEAPON_FLAREGUN"},
  [34] = {id = 'flashlight', hash = "WEAPON_FLASHLIGHT"},
  [35] = {id = 'golfclub', hash = "WEAPON_GOLFCLUB"},
  [36] = {id = 'grenade', hash = "WEAPON_GRENADE"},
  [37] = {id = 'grenadelauncher', hash = "WEAPON_GRENADELAUNCHER"},
  [38] = {id = 'gusenberg', hash = "WEAPON_GUSENBERG"},
  [39] = {id = 'hammer', hash = "WEAPON_HAMMER"},
  [40] = {id = 'handcuffs', hash = "WEAPON_HANDCUFFS"},
  [41] = {id = 'hatchet', hash = "WEAPON_HATCHET"},
  [42] = {id = 'heavypistol', hash = "WEAPON_HEAVYPISTOL"},
  [43] = {id = 'heavyshotgun', hash = "WEAPON_HEAVYSHOTGUN"},
  [44] = {id = 'heavysniper', hash = "WEAPON_HEAVYSNIPER"},
  [45] = {id = 'heavysniper_mk2', hash = "WEAPON_HEAVYSNIPER_MK2"},
  [46] = {id = 'hominglauncher', hash = "WEAPON_HOMINGLAUNCHER"},
  [47] = {id = 'knife', hash = "WEAPON_KNIFE"},
  [48] = {id = 'knuckle', hash = "WEAPON_KNUCKLE"},
  [49] = {id = 'machete', hash = "WEAPON_MACHETE"},
  [50] = {id = 'machinepistol', hash = "WEAPON_MACHINEPISTOL"},
  [51] = {id = 'marksmanpistol', hash = "WEAPON_MARKSMANPISTOL"},
  [52] = {id = 'marksmanrifle', hash = "WEAPON_MARKSMANRIFLE"},
  [53] = {id = 'marksmanrifle_mk2', hash = "WEAPON_MARKSMANRIFLE_MK2"},
  [54] = {id = 'mg', hash = "WEAPON_MG"},
  [55] = {id = 'microsmg', hash = "WEAPON_MICROSMG"},
  [56] = {id = 'minigun', hash = "WEAPON_MINIGUN"},
  [57] = {id = 'minismg', hash = "WEAPON_MINISMG"},
  [58] = {id = 'molotov', hash = "WEAPON_MOLOTOV"},
  [59] = {id = 'musket', hash = "WEAPON_MUSKET"},
  [60] = {id = 'nightstick', hash = "WEAPON_NIGHTSTICK"},
  [61] = {id = 'parachute', hash = "GADGET_PARACHUTE"},
  [62] = {id = 'petrolcan', hash = "WEAPON_PETROLCAN"},
  [63] = {id = 'pipebomb', hash = "WEAPON_PIPEBOMB"},
  [64] = {id = 'pistol', hash = "WEAPON_PISTOL"},
  [65] = {id = 'pistol50', hash = "WEAPON_PISTOL50"},
  [66] = {id = 'pistol_mk2', hash = "WEAPON_PISTOL_MK2"},
  [67] = {id = 'proxmine', hash = "WEAPON_PROXMINE"},
  [68] = {id = 'poolcue', hash = "WEAPON_POOLCUE"},
  [69] = {id = 'pumpshotgun', hash = "WEAPON_PUMPSHOTGUN"}, 
  [70] = {id = 'pumpshotgun_mk2', hash = "WEAPON_PUMPSHOTGUN_MK2"},
  [71] = {id = 'railgun', hash = "WEAPON_RAILGUN"},
  [72] = {id = 'revolver', hash = "WEAPON_REVOLVER"},
  [73] = {id = 'revolver_MK2', hash = "WEAPON_REVOLVER_MK2"},
  [74] = {id = 'rpg', hash = "WEAPON_RPG"},
  [75] = {id = 'sawnoffshotgun', hash = "WEAPON_SAWNOFFSHOTGUN"},
  [76] = {id = 'snowball', hash = "WEAPON_SNOWBALL"},
  [77] = {id = 'smg', hash = "WEAPON_SMG"},
  [78] = {id = 'smg_mk2', hash = "WEAPON_SMG_MK2"},
  [78] = {id = 'smokegrenade', hash = "WEAPON_SMOKEGRENADE"},
  [79] = {id = 'sniperrifle', hash = "WEAPON_SNIPERRIFLE"},
  [80] = {id = 'snowball', hash = "WEAPON_SNOWBALL"},
  [81] = {id = 'snspistol', hash = "WEAPON_SNSPISTOL"},
  [82] = {id = 'snspistol_mk2', hash = "WEAPON_SNSPISTOL_MK2"},
  [83] = {id = 'specialcarbine', hash = "WEAPON_SPECIALCARBINE"},
  [84] = {id = 'specialcarbine_mk2', hash = "WEAPON_SPECIALCARBINE_MK2"},
  [85] = {id = 'stickybomb', hash = "WEAPON_STICKYBOMB"},
  [86] = {id = 'stungun', hash = "WEAPON_STUNGUN"},
  [87] = {id = 'switchblade', hash = "WEAPON_SWITCHBLADE"},
  [88] = {id = 'vintagepistol', hash = "WEAPON_VINTAGEPISTOL"},
  [89] = {id = 'wrench', hash = "WEAPON_WRENCH"}
}

---------------------------
-- ESX --
---------------------------
Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(250)
    end
end)


---------------------------
-- Event Handlers --
---------------------------
-- Checking if weapon is equipped and removing from the wheel if it is.
-- Still need to add checks for item amount so it doesn't remove the weapon if you have multiple in your inventory.
RegisterNetEvent('esx:removeInventoryItem')
AddEventHandler('esx:removeInventoryItem', function(name, count)
    local plyPed = GetPlayerPed(-1)
    for k, v in pairs(weaponInfo) do
        if v.id == name then
            if HasPedGotWeapon(plyPed, v.hash, false) then
                SetPedAmmo(plyPed, GetHashKey(v.hash), 0)
                Citizen.Wait(5)
                RemoveWeaponFromPed(plyPed, GetHashKey(v.hash))
                print("Weapon removed from wheel")
                --exports['mythic_notify']:SendAlert('error', "Weapon Unequipped!") --Equipped weapon has been removed.
            else
                print("Weapon not equipped")
            end
        end
    end
end)

-- Printing the weapons group hash.
--[[RegisterCommand('printweapon', function(source, args, raw)
    local plyPed = GetPlayerPed(-1)
    local currentWeapon = GetSelectedPedWeapon(plyPed)
    local weaponType = GetWeapontypeGroup(GetHashKey(currentWeapon))
    print(weaponType)
end, false)]]

-- Adding ammo. Will need to trigger this when using an item to give ammo. //Ammo Box//
RegisterNetEvent('scrubz_weaponsystem_cl:addAmmo')
AddEventHandler('scrubz_weaponsystem_cl:addAmmo', function(item, amount)
    local plyPed = GetPlayerPed(-1)
    local currentWeapon = GetSelectedPedWeapon(plyPed)
    local weaponType = GetWeapontypeGroup(GetHashKey(currentWeapon))
    if item == "ammopistol" then
        if weaponType == 416676503 then  -- Pistol
            SetPedAmmo(plyPed, currentWeapon, amount)
            exports['mythic_notify']:SendAlert('success', "Added rounds to your pistol.")
        elseif weaponType == -957766203 or weaponType == 1159398588 or weaponType == 860033945 or weaponType == 970310034 then
            exports['mythic_notify']:SendAlert('error', "A pistol is not equipped.")
        elseif weaponType == -1609580060 then  -- Unarmed
            exports['mythic_notify']:SendAlert('error', "You just gonna throw the ammo at people??")
        end
    elseif item == "ammosmg" then
        if weaponType == -957766203 or weaponType == 1159398588 then  -- SMG
            SetPedAmmo(plyPed, currentWeapon, amount)
            exports['mythic_notify']:SendAlert('success', "Added 30 rounds to your SMG.")
        elseif weaponType == -1609580060 then  -- Unarmed
            exports['mythic_notify']:SendAlert('error', "You just gonna throw the ammo at people??")
        elseif weaponType == 416676503 or weaponType == 860033945 or weaponType == 970310034 then
            exports['mythic_notify']:SendAlert('error', "A smg is not equipped.")
        end
    elseif item == "ammoshotgun" then
        if weaponType == 860033945 then  -- Shotgun
            SetPedAmmo(plyPed, currentWeapon, amount)
            exports['mythic_notify']:SendAlert('success', "Added 30 rounds to your shotgun.")
        elseif weaponType == -1609580060 then  -- Unarmed
            exports['mythic_notify']:SendAlert('error', "You just gonna throw the ammo at people??")
        elseif weaponType == 416676503 or weaponType == -957766203 or weaponType == 1159398588 or weaponType == 970310034 then
            exports['mythic_notify']:SendAlert('error', "A shotgun is not equipped.")
        end
    elseif item == "ammorifle" then  -- Rifle
        if weaponType == 970310034 then
            SetPedAmmo(plyPed, currentWeapon, amount)
            exports['mythic_notify']:SendAlert('success', "Added 30 rounds to your rifle.")
        elseif weaponType == -1609580060 then  -- Unarmed
            exports['mythic_notify']:SendAlert('error', "You just gonna throw the ammo at people??")
        elseif weaponType == 416676503 or weaponType == -957766203 or weaponType == 1159398588 or weaponType == 860033945 then
            exports['mythic_notify']:SendAlert('error', "A rifle is not equipped.")
        end
    end
end)

-- Adding a weapon to the wheel
RegisterNetEvent('scrubz_weaponsystem_cl:addWeapon')
AddEventHandler('scrubz_weaponsystem_cl:addWeapon', function(weapon)
    local plyPed = GetPlayerPed(-1)
    for k, v in pairs(weaponInfo) do
        if weapon == v.id then
            if not HasPedGotWeapon(plyPed, GetHashKey(v.hash), false) then
                GiveWeaponToPed(plyPed, GetHashKey(v.hash), 0, false, false)
                exports['mythic_notify']:SendAlert('success', 'You have equipped the weapon!')
            else
                exports['mythic_notify']:SendAlert('error', 'You already have that weapon equipped!')
            end
        end
    end
end)
