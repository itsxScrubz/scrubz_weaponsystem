---------------------------
-- Locals --
---------------------------
ESX = nil

---------------------------
-- ESX --
---------------------------
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

---------------------------
-- Registered Items --
---------------------------
--Pistols
ESX.RegisterUsableItem('pistol', function(source)
	local weapon = 'pistol'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('combatpistol', function(source)
	local weapon = 'combatpistol'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('appistol', function(source)
	local weapon = 'appistol'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('pistol50', function(source)
	local weapon = 'pistol50'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('snspistol', function(source)
	local weapon = 'snspistol'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('heavypistol', function(source)
	local weapon = 'heavypistol'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('vintagepistol', function(source)
	local weapon = 'vintagepistol'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('machinepistol', function(source)
	local weapon = 'machinepistol'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('revolver', function(source)
	local weapon = 'revolver'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('marksmanpistol', function(source)
	local weapon = 'marksmanpistol'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('doubleaction', function(source)
	local weapon = 'pdoubleaction'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('pistol_mk2', function(source)
	local weapon = 'pistol_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('snspistol_mk2', function(source)
	local weapon = 'snspistol_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('revolver_mk2', function(source)
	local weapon = 'revolver_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

--SMG
ESX.RegisterUsableItem('smg', function(source)
	local weapon = 'smg'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('assaultsmg', function(source)
	local weapon = 'assaultsmg'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('microsmg', function(source)
	local weapon = 'microsmg'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('minismg', function(source)
	local weapon = 'minismg'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('combatpdw', function(source)
	local weapon = 'combatpdw'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('smg_mk2', function(source)
	local weapon = 'smg_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

--Shotgun
ESX.RegisterUsableItem('pumpshotgun', function(source)
	local weapon = 'pumpshotgun'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('sawnoffshotgun', function(source)
	local weapon = 'sawnoffshotgun'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('assaultshotgun', function(source)
	local weapon = 'assaultshotgun'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('bullpupshotgun', function(source)
	local weapon = 'bullpupshotgun'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('heavyshotgun', function(source)
	local weapon = 'heavyshotgun'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('dbshotgun', function(source)
	local weapon = 'dbshotgun'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('autoshotgun', function(source)
	local weapon = 'autoshotgun'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('musket', function(source)
	local weapon = 'musket'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('pumpshotgun_mk2', function(source)
	local weapon = 'pumpshotgun_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

--Rifles
ESX.RegisterUsableItem('assaultrifle', function(source)
	local weapon = 'assaultrifle'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('carbinerifle', function(source)
	local weapon = 'carbinerifle'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('advancedrifle', function(source)
	local weapon = 'advancedrifle'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('specialcarbine', function(source)
	local weapon = 'specialcarbine'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('bullpuprifle', function(source)
	local weapon = 'bullpuprifle'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('compactrifle', function(source)
	local weapon = 'compactrifle'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('assaultrifle_mk2', function(source)
	local weapon = 'assaultrifle_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('bullpuprifle_mk2', function(source)
	local weapon = 'bullpuprifle_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('carbinerifle_mk2', function(source)
	local weapon = 'carbinerifle_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('specialcarbine_mk2', function(source)
	local weapon = 'specialcarbine_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

--Machine Guns
ESX.RegisterUsableItem('mg', function(source)
	local weapon = 'mg'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('combatmg', function(source)
	local weapon = 'combatmg'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('gusenberg', function(source)
	local weapon = 'gusenberg'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('combatmg_mk2', function(source)
	local weapon = 'combatmg_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)
--Snipers
ESX.RegisterUsableItem('sniperrifle', function(source)
	local weapon = 'sniperrifle'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('heavysniper', function(source)
	local weapon = 'heavysniper'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('heavysniper', function(source)
	local weapon = 'heavysniper'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('marksmanrifle', function(source)
	local weapon = 'marksmanrifle'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('heavysniper_mk2', function(source)
	local weapon = 'heavysniper_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('marksmanrifle_mk2', function(source)
	local weapon = 'marksmanrifle_mk2'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)
--Other
ESX.RegisterUsableItem('minigun', function(source)
	local weapon = 'minigun'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('railgun', function(source)
	local weapon = 'railgun'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('stungun', function(source)
	local weapon = 'stungun'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('rpg', function(source)
	local weapon = 'rpg'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('hominglauncher', function(source)
	local weapon = 'hominglauncher'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('grenadelauncher', function(source)
	local weapon = 'grenadelauncher'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('compactlauncher', function(source)
	local weapon = 'compactlauncher'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('flaregun', function(source)
	local weapon = 'flaregun'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('fireextinguisher', function(source)
	local weapon = 'fireextinguisher'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('petrolcan', function(source)
	local weapon = 'petrolcan'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('firework', function(source)
	local weapon = 'firework'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('flashlight', function(source)
	local weapon = 'flashlight'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('parachute', function(source)
	local weapon = 'parachute'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)
--Melee
ESX.RegisterUsableItem('knuckle', function(source)
	local weapon = 'knuckle'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('hatchet', function(source)
	local weapon = 'hatchet'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('machete', function(source)
	local weapon = 'machete'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('switchblade', function(source)
	local weapon = 'switchblade'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('bottle', function(source)
	local weapon = 'bottle'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('dagger', function(source)
	local weapon = 'dagger'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('poolcue', function(source)
	local weapon = 'poolcue'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('wrench', function(source)
	local weapon = 'wrench'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('battleaxe', function(source)
	local weapon = 'battleaxe'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('knife', function(source)
	local weapon = 'knife'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('nightstick', function(source)
	local weapon = 'nightstick'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('hammer', function(source)
	local weapon = 'hammer'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('bat', function(source)
	local weapon = 'bat'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('golfclub', function(source)
	local weapon = 'golfclub'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('crowbar', function(source)
	local weapon = 'crowbar'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)
--Throwables
ESX.RegisterUsableItem('grenade', function(source)
	local weapon = 'grenade'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('smokegrenade', function(source)
	local weapon = 'smokegrenade'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('stickybomb', function(source)
	local weapon = 'stickybomb'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('pipebomb', function(source)
	local weapon = 'pipebomb'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('bzgas', function(source)
	local weapon = 'bzgas'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('molotov', function(source)
	local weapon = 'molotov'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('proxmine', function(source)
	local weapon = 'proxmine'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('snowball', function(source)
	local weapon = 'snowball'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('ball', function(source)
	local weapon = 'ball'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

ESX.RegisterUsableItem('flare', function(source)
	local weapon = 'flare'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)
