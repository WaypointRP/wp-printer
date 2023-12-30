Config = {}

-- Frameworks
-- Supported framework options are listed next to each option
-- If the framework you are using is not listed, you will need to modify the framework.lua code to work with your framework
-- Note: If using ox for any option, enable @ox_lib/init.lua in the manifest!

Config.Framework = 'qb'     -- 'qb', 'esx'
Config.Notify = 'ox'        -- 'qb', 'esx', 'ox' 
Config.Inventory = 'ox'     -- 'qb', 'esx', 'ox'

Config.ValidExtensions = {
    [".png"] = true,
    [".gif"] = true,
    [".jpg"] = true,
    ["jpeg"] = true
}

Config.ValidExtensionsText = '.png, .gif, .jpg, .jpeg'
