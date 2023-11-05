CreateUseableItem("printerdocument", function(source, item)
    TriggerClientEvent('wp-printer:printer:client:UseDocument', source, item)
end)

RegisterServerEvent('wp-printer:printer:server:SaveDocument', function(url)
    local src = source
    local info = {}
    local extension = string.sub(url, -4)
    local validexts = Config.ValidExtensions
    if url ~= nil then
        if validexts[extension] then
            info.url = url
            AddItem(src, 'printerdocument', 1, info)
        else
            Notify('Thats not a valid extension, only '..Config.ValidExtensionsText..' extension links are allowed.', "error", src)
        end
    end
end)
