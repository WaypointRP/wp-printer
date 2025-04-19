CreateUseableItem("printerdocument", function(source, item)
    TriggerClientEvent("wp-printer:client:UseDocument", source, item)
end)

RegisterServerEvent("wp-printer:server:SaveDocument", function(url)
    local src = source
    if url ~= nil then
        local info = {}
        info.url = url
        AddItem(src, "printerdocument", 1, info)
    end
end)
