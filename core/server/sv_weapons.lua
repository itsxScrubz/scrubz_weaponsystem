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
ESX.RegisterUsableItem('assaultrifle', function(source)
	local weapon = 'assaultrifle'
	TriggerClientEvent('scrubz_weaponsystem_cl:addWeapon', source, weapon)
end)

