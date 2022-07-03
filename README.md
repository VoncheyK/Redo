# Redo
A simple roblox module to shorten down the amount of code for redirecting between games or mass kicking players.

When using this (**which you probably wont**) you don't have to credit me, as this is all very simple shit.

Usage:
```lua
local module = require(Redo)
module.setDefault(gameId)

game.Players.PlayerAdded:Connect(function(plr)
	module.redirectPlayers({plr})
end)
```
