local MarketplaceService = game:GetService("MarketplaceService")

local games = {
    [402122991] = {src=""}, -- Blox Fruits
} 

local check = games[game.PlaceId] 

if check then
    loadstring(game:HttpGet(check.src, true))()
else
    local Players = game:GetService("Players")
    Players.LocalPlayer:Kick(string.format("%s is unsupported. Just for Prison life btw.", MarketplaceService:GetProductInfo(game.PlaceId).Name))
end
