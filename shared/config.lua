Config = {}

Config.Framework = 'qb' -- supports 'qb' or 'esx'
Config.Notify = 'qb' -- supports 'qb', 'esx', 'ox' (if using ox enable @ox_lib/init.lua in the manifest)

Config.ValidExtensions = {
    [".png"] = true,
    [".gif"] = true,
    [".jpg"] = true,
    ["jpeg"] = true
}

Config.ValidExtensionsText = '.png, .gif, .jpg, .jpeg'
