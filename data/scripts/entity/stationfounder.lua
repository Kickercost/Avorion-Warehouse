
warehouse = {
        name = "Warehouse"%_t,
        tooltip = "This structure serves as central storage for any type of trade good you wish to store. Can also be pulled from automatically via factories."%_t,
        scripts = {{script = "data/scripts/entity/merchants/warehouse.lua"}},
        getPrice = function()
            return 20000000
        end
    }

table.insert(StationFounder.stations, warehouse)
	