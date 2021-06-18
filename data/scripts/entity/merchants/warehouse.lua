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
Warehouse.trader.buyFromOthers = false
Warehouse.trader.sellToOthers = false
Warehouse.trader.useUpGoodsEnabled = false

Warehouse.trader.boughtGoods = {}
for _, g in pairs(goods) do
	table.insert(Warehouse.trader.boughtGoods, tableToGood(g))
end

Warehouse.trader.soldGoods = {}
for _, g in pairs(goods) do
	table.insert(Warehouse.trader.soldGoods, tableToGood(g))
end

local initialize =  Warehouse.initialize
local buyGoodsFunc = Warehouse.buyGoods

function Warehouse.initialize()
	local station = Entity()
	if onServer() then
		Sector():addScriptOnce("sector/traders.lua")
		if station.title == "" then
			station.title = "Warehouse"%_t
		end
	end
	if onClient() then
		if EntityIcon().icon == "" then
			EntityIcon().icon = "data/textures/icons/pixel/crate.png"
		end
	end

	print("calling warehouse init")
	if(initialize)then initialize() end

end

