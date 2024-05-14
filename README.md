# Printers
![wp-printer](https://github.com/WaypointRP/wp-printer/assets/18689469/b61e0dd5-8d0f-49b4-bf64-661e64a1fe9d)

This is a simple addon for [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables) that provides provides players the ability to place printers, print documents and view them.

> This script is based on [qb-printer](https://github.com/qbcore-framework/qb-printer) and was modified to remove the QB framework dependency and work as an addon for [Waypoint Placeables](https://github.com/WaypointRP/wp-printer).

[Preview](https://www.youtube.com/watch?v=Gqb9SSoaNAs)

## Usage

- Place the printer
- Interact with the printer and select "Use printer"
- Input the URL to the document you wish to print
- The player is given a unique `printerdocument` with metadata attached to it
- When players view the document, they will see what was printed to the document

## Setup

> If you already have qb-printer or a related printer script, then you can either disable that script and use the implementation provided here or you can continue using that script and might need to make slight adjustments to the script you use (_don't forget to update the event in wp-placeables that should get triggered to the one you use_).

1. Ensure you have [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables) downloaded and setup.

2. Enable the script in your server.cfg
   - Be sure to start this script after `wp-placeables`

3. Add this to your items.lua:
    ```lua
    printerdocument = {name = "printerdocument", label = "Document", weight = 500, type = "item", image = "printerdocument.png", unique = true, useable = true, shouldClose = true,   combinable = nil,   description = "A nice document"},
    printer = {name = "printer", label = "Printer", weight = 5000, type = "item", image = "printer1.png", unique = true, useable = true, shouldClose = true,   combinable = nil,   description = "Print a nice document"},
    printer2 = {name = "printer2", label = "Printer", weight = 5000, type = "item", image = "printer2.png", unique = true, useable = true, shouldClose = true,   combinable = nil,   description = "Print a nice document"},
    printer3 = {name = "printer3", label = "Printer", weight = 5000, type = "item", image = "printer3.png", unique = true, useable = true, shouldClose = true,   combinable = nil,   description = "Print a nice document"},
    printer4 = {name = "printer4", label = "Printer", weight = 5000, type = "item", image = "printer4.png", unique = true, useable = true, shouldClose = true,   combinable = nil,   description = "Print a nice document"},
    photocopier = {name = "photocopier", label = "Photocopier", weight = 5000, type = "item", image = "photocopier.png", unique = true, useable = true, shouldClose = true, combinable = nil, description = "Make a lot of copies"},
    ```
4. In `wp-placeables/shared/config.lua`, search for `-- Uncomment this line if you are using wp-printer` and uncomment the following lines:
    ```lua
    local printerCustomTargetOptions = {
        {
            event = "wp-printer:client:UsePrinter",
            icon = "fas fa-print",
            label = "Use printer",
        },
    }

    {item = "printer", label = "Printer", model = "prop_printer_01", isFrozen = true, customTargetOptions = printerCustomTargetOptions},
    {item = "printer2", label = "Printer", model = "prop_printer_02", isFrozen = true, customTargetOptions = printerCustomTargetOptions},
    {item = "printer3", label = "Printer", model = "v_res_printer", isFrozen = true, customTargetOptions = printerCustomTargetOptions},
    {item = "printer4", label = "Printer", model = "v_ret_gc_print", isFrozen = true, customTargetOptions = printerCustomTargetOptions},
    {item = "photocopier", label = "Photocopier", model = "v_med_cor_photocopy", isFrozen = true, customTargetOptions = printerCustomTargetOptions},
    ```
> Note: If you are using `ox` for any of the Framework options you need to uncomment `@ox_lib/init.lua` in the fxmanifest.lua.

## Dependencies
- [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables)
- QBCore / ESX / Or other frameworks (must implement framework specific solutions in framework.lua)
- QBCore / ESX / OX for Notifications

## Credit

Originally authored by: [QBCore Framework - qb-printer](https://github.com/qbcore-framework/qb-printer)
Modified by: BackSH00TER - Waypoint Scripts

@DonHulieo for providing insipiration and examples for structuring the framework.lua file.
