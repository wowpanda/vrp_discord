local vRPdiscord = class("vRPdiscord", vRP.Extension)

function vRPdiscord:__construct()
    vRP.Extension.__construct(self)
end

RegisterServerEvent('discord:setdata')
AddEventHandler('discord:setdata', function()

	local user = vRP.users_by_source[source]
	local playerName = user.identity.firstname .. " " .. user.identity.name
	local playerJob = user:getGroupByType("job")

	local userdata = { name = playerName, job = playerJob }

	TriggerClientEvent('discord:fetchdata', source, userdata)
	
end)
