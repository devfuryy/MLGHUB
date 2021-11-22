local MarketplaceService = game:GetService("MarketplaceService")

local games = {
    [155615604] = {src="https://raw.githubusercontent.com/Entoy77/Dark-Hub/main/Init"}, -- Blox Fruits
} 

local check = games[game.PlaceId] 

if check then
    loadstring(game:HttpGet(check.src, true))()
else
    local Players = game:GetService("Players")
    Players.LocalPlayer:Kick(string.format("%s is unsupported. The Hub Is Just for Prison life btw.", MarketplaceService:GetProductInfo(game.PlaceId).Name))
end
