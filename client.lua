RegisterNetEvent("wp-printer:client:UseDocument", function(itemData)
    local itemMetadata = GetItemMetadata(itemData)
    local documentUrl = itemMetadata.url ~= nil and itemMetadata.url or false

    SendNUIMessage({
        action = "open",
        url = documentUrl,
    })
    SetNuiFocus(true, false)
end)

RegisterNetEvent("wp-printer:client:UsePrinter", function()
    SendNUIMessage({
        action = "start",
    })
    SetNuiFocus(true, true)
end)

RegisterNUICallback("SaveDocument", function(data)
    if data.url ~= nil then
        TriggerServerEvent("wp-printer:server:SaveDocument", data.url)
    end
end)

RegisterNUICallback("CloseDocument", function()
    SetNuiFocus(false, false)
end)
