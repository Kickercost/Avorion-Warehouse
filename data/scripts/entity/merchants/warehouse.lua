include ("randomext")
include ("galaxy")
include ("utility")
--include ("productions")
include ("faction")
include ("stringutility")
include ("goods")
include ("callable")

local TradingAPI = include("tradingmanager")

-- Don't remove or alter the following comment, it tells the game the namespace this script lives in. If you remove it, the script will break.
-- namespace Warehouse
Warehouse = {}
Warehouse = TradingAPI:CreateNamespace()

function Warehouse.useUpBoughtGoods()

end

function Warehouse.getSoldGoodByName(name)
	return goods[name]
end

function Warehouse.getBoughtGoodByName(name)
	return goods[name]
end

function Warehouse.initialize()
	local station = Entity()
	Warehouse.boughtGoods = goods	
	Warehouse.soldGoods = goods		
    if station.title == "" then
        station.title = "Warehouse"%_t
    end
	if onClient() then
		if EntityIcon().icon == "" then
			EntityIcon().icon = "data/textures/icons/pixel/crate.png"
		end
	end

end

