cfg = {}

cfg.DiscordAppId				            = 571072163638018075
cfg.DiscordRichPresenceAsset                = 'logo'
cfg.DiscordRichPresenceAssetText            = 'discord.io/MadCity'
cfg.maxPlayers                              = 32 -- Server Max Players
cfg.updateInterval                          = 60 -- Default: 60 sec (min 15 sec)

cfg.jobs = {
    -- default jobs for vrp2 / tabalhos originais do vrp2
    police = {name = "Policial", asset = "police"},
    emergency = {name = "Socorrista", asset = "emergency"},
    repair = {name = "Mecânico", asset = "repair"},
    taxi = {name = "Taxista", asset = "taxi"},
    citizen = {name = "Desempregado", asset = "default"},
    -- Custom Examples
    soldado = {name = "Soldado", asset = "police"},
    policial = {name = "Policial", asset = "police"},
    patrulheiro = {name = "Patrulheiro", asset = "police"},
    detetive = {name = "Detetive", asset = "police"},
    capitao = {name = "Capitao", asset = "police"}
}

return cfg
