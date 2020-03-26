---------------------------
-- Locals --
---------------------------
ESX = nil
local weaponInfo = 
{
    [1] = {id = 'advancedrifle', hash = "WEAPON_ADVANCEDRIFLE"},
    [2] = {id = 'appistol', hash = "WEAPON_APPISTOL"},
    [3] = {id = 'assaultrifle', hash = "WEAPON_ASSAULTRIFLE"},
    [4] = {id = 'wrench', hash = "WEAPON_WRENCH"},
    [5] = {id = 'assaulshotgun', hash = "WEAPON_ASSAULTSHOTGUN"},
    [6] = {id = 'assualtsmg', hash = "WEAPON_ASSAULTSMG"},
    [7] = {id = 'ball', hash = "WEAPON_BALL"},
    [8] = {id = 'bat', hash = "WEAPON_BAT"},
    [9] = {id = 'battleaxe', hash = "WEAPON_BATTLEAXE"},
    [10] = {id = 'bottle', hash = "WEAPON_BOTTLE"},
    [11] = {id = 'bullpuprifle', hash = "WEAPON_BULLPUPRIFLE"},
    [12] = {id = 'bzgas', hash = "WEAPON_BZGAS"},
    [13] = {id = 'carbinerifle', hash = "WEAPON_CARBINERIFLE"},
    [14] = {id = 'combatmg', hash = "WEAPON_COMBATMG"},
    [15] = {id = 'combatpdw', hash = "WEAPON_COMBATPDW"},
    [16] = {id = 'combatpistol', hash = "WEAPON_COMBATPISTOL"},
    [17] = {id = 'compactrifle', hash = "WEAPON_COMPACTRIFLE"},
    [18] = {id = 'crowbar', hash = "WEAPON_CROWBAR"},
    [19] = {id = 'dagger', hash = "WEAPON_DAGGER"},
    [20] = {id = 'dbshotgun', hash = "WEAPON_DBSHOTGUN"},
    [21] = {id = 'digiscanner', hash = "WEAPON_DIGISCANNER"},
    [22] = {id = 'doubleaction', hash = "WEAPON_DOUBLEACTION"},
    [23] = {id = 'fireextinguisher', hash = "WEAPON_FIREEXTINGUISHER"},
    [24] = {id = 'flare', hash = "WEAPON_FLARE"},
    [25] = {id = 'flaregun', hash = "WEAPON_FLAREGUN"},
    [26] = {id = 'flashlight', hash = "WEAPON_FLASHLIGHT"},
    [27] = {id = 'golfclub', hash = "WEAPON_GOLFCLUB"},
    [28] = {id = 'grenade', hash = "WEAPON_GRENADE"},
    [29] = {id = 'gusenberg', hash = "WEAPON_GUSENBERG"},
    [30] = {id = 'hammer', hash = "WEAPON_HAMMER"},
    [31] = {id = 'handcuffs', hash = "WEAPON_HANDCUFFS"},
    [32] = {id = 'hatchet', hash = "WEAPON_HATCHET"},
    [33] = {id = 'heavypistol', hash = "WEAPON_HEAVYPISTOL"},
    [34] = {id = 'heavyshotgun', hash = "WEAPON_HEAVYSHOTGUN"},
    [35] = {id = 'knife', hash = "WEAPON_HEAVYSNIPER"},
    [36] = {id = 'knuckle', hash = "WEAPON_KNIFE"},
    [37] = {id = 'knuckle', hash = "WEAPON_KNUCKLE"},
    [38] = {id = 'machete', hash = "WEAPON_MACHETE"},
    [39] = {id = 'machinepistol', hash = "WEAPON_MACHINEPISTOL"},
    [40] = {id = 'marksmanpistol', hash = "WEAPON_MARKSMANPISTOL"},
    [41] = {id = 'marksmanrifle', hash = "WEAPON_MARKSMANRIFLE"},
    [42] = {id = 'microsmg', hash = "WEAPON_MICROSMG"},
    [43] = {id = 'minismg', hash = "WEAPON_MINISMG"},
    [44] = {id = 'molotov', hash = "WEAPON_MOLOTOV"},
    [45] = {id = 'musket', hash = "WEAPON_MUSKET"},
    [46] = {id = 'nightstick', hash = "WEAPON_NIGHTSTICK"},
    [47] = {id = 'parachute', hash = "GADGET_PARACHUTE"},
    [48] = {id = 'petrolcan', hash = "WEAPON_PETROLCAN"},
    [49] = {id = 'pistol', hash = "WEAPON_PISTOL"},
    [50] = {id = 'pistol50', hash = "WEAPON_PISTOL50"},
    [51] = {id = 'pistol_mk2', hash = "WEAPON_PISTOL_MK2"},
    [52] = {id = 'poolcue', hash = "WEAPON_POOLCUE"},
    [53] = {id = 'pumpshotgun', hash = "WEAPON_PUMPSHOTGUN"},
    [54] = {id = 'revolver', hash = "WEAPON_REVOLVER"},
    [55] = {id = 'rpg', hash = "WEAPON_RPG"},
    [56] = {id = 'sawnoffshotgun', hash = "WEAPON_SAWNOFFSHOTGUN"},
    [57] = {id = 'smg', hash = "WEAPON_SMG"},
    [58] = {id = 'smokegrenade', hash = "WEAPON_SMOKEGRENADE"},
    [59] = {id = 'sniperrifle', hash = "WEAPON_SNIPERRIFLE"},
    [60] = {id = 'snowball', hash = "WEAPON_SNOWBALL"},
    [61] = {id = 'snspistol', hash = "WEAPON_SNSPISTOL"},
    [62] = {id = 'snspistol_mk2', hash = "WEAPON_SNSPISTOL_MK2"},
    [63] = {id = 'stungun', hash = "WEAPON_STUNGUN"},
    [64] = {id = 'switchblade', hash = "WEAPON_SWITCHBLADE"},
    [65] = {id = 'vintagepistol', hash = "WEAPON_VINTAGEPISTOL"}
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

-- Adding a weapon to the wheel.
RegisterNetEvent('scrubz_weaponsystem_cl:addWeapon')
AddEventHandler('scrubz_weaponsystem_cl:addWeapon', function(weapon)
    local plyPed = GetPlayerPed(-1)
    for k, v in pairs(weaponInfo) do
        if weapon == v.id then
            if not HasPedGotWeapon(plyPed, GetHashKey(v.hash), false) then
                GiveWeaponToPed(plyPed, GetHashKey(v.hash), 0, false, false)
            else
                exports['mythic_notify']:SendAlert('error', 'You already have that weapon equipped!')
            end
        end
    end
end)
