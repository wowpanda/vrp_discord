Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")
local cvRP = module("vrp", "client/vRP")
vRP = cvRP()

local cfg = module("vrp_discord", "cfg/discord")

local vRPdiscord = class("vRPdiscord", vRP.Extension)

function vRPdiscord:__construct()
  vRP.Extension.__construct(self)
end

local loading = true

RegisterNetEvent("discord:fetchdata")
AddEventHandler("discord:fetchdata", function(userdata)

    local playersOnline = GetNumberOfPlayers()

    if userdata.job == nil then
        userdata.job = 'citizen'
    end

    SetDiscordAppId(tonumber(cfg.DiscordAppId))
    SetDiscordRichPresenceAsset(cfg.DiscordRichPresenceAsset)
    SetDiscordRichPresenceAssetText(cfg.DiscordRichPresenceAssetText)
    SetDiscordRichPresenceAssetSmall(cfg.jobs[userdata.job].asset)
    SetDiscordRichPresenceAssetSmallText(cfg.jobs[userdata.job].name)
    SetRichPresence("[".. playersOnline .. "/" .. cfg.maxPlayers .. "] " .. userdata.name )

end)


Citizen.CreateThread(function()
    while true do
        if loading then
            loading = false
            Citizen.Wait(30000)
        else
            TriggerServerEvent("discord:setdata")
            Citizen.Wait(cfg.updateInterval * 10000) 
        end
	end
end)
