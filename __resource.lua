-- Discord Presence with Char Name and Job for VRP2 - by pz#1337

description 'vrp_discord'

dependency "vrp"

client_scripts{ 
    "@vrp/lib/utils.lua",
    "client.lua"
}

server_scripts{ 
    "@vrp/lib/utils.lua",
    "vrp.lua"
}

files{
    "cfg/discord.lua"
}
