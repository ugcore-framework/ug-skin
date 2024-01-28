local UgCore = exports['ug-core']:GetCore()

RegisterServerEvent('ug-skin:Save')
AddEventHandler('ug-skin:Save', function(skin)
	local player = UgCore.Functions.GetPlayer(source)
	local defaultMaxWeight = UgCore.Config.Core.Inventory.MaxWeight
	local backpackModifier = Config.BackpackWeight[skin.bags_1]
	if backpackModifier then
		player.Functions.SetMaxWeight(defaultMaxWeight + backpackModifier)
	else
		player.Functions.SetMaxWeight(defaultMaxWeight)
	end

	MySQL.update('UPDATE users SET skin = @skin WHERE identifier = @identifier', {
		['@skin'] = json.encode(skin),
		['@identifier'] = player.identifier
	})
end)

RegisterServerEvent('ug-skin:SetWeight')
AddEventHandler('ug-skin:SetWeight', function(skin)
	local player = UgCore.Functions.GetPlayer(source)
	local defaultMaxWeight = UgCore.Config.Core.Inventory.MaxWeight
	local backpackModifier = Config.BackpackWeight[skin.bags_1]
	if backpackModifier then
		player.Functions.SetMaxWeight(defaultMaxWeight + backpackModifier)
	else
		player.Functions.SetMaxWeight(defaultMaxWeight)
	end
end)

RegisterServerEvent('ug-skin:ResponseSaveSkin')
AddEventHandler('ug-skin:ResponseSaveSkin', function(skin)
	local player = UgCore.Functions.GetPlayer(source)

	if player.Functions.GetGroup() == 'admin' then
		local file = io.open('resources/[UG]/ug-skin/skins.txt', "a")

		file:write(json.encode(skin) .. "\n\n")
		file:flush()
		file:close()
	end
end)

UgCore.Callbacks.CreateCallback('ug-skin:GetPlayerSkin', function(source, cb)
	local player = UgCore.Functions.GetPlayer(source)

	MySQL.query('SELECT skin FROM users WHERE identifier = @identifier', {
		['@identifier'] = player.identifier
	}, function(users)
		local user, skin = users[1]

		if user.skin then
			skin = json.decode(user.skin)
		end

		cb(skin)
	end)
end)

UgCore.Commands.CreateCommand('skin', 'admin', function (player)
	player.Functions.TriggerEvent('ug-skin:OpenSaveableMenu')
end, false, { help = Languages.GetTranslation('skin') })

UgCore.Commands.CreateCommand('skinsave', 'admin', function (player)
	player.Functions.TriggerEvent('ug-skin:RequestSaveSkin')
end, false, { help = Languages.GetTranslation('saveskin') })