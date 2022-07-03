# Redo
A simple roblox module to shorten down the amount of code for redirecting between games or mass kicking players.

When using this (**which you probably wont**) you don't have to credit me, as this is all very simple shit.

Usage [Redirecting]:
```lua
local module = require(Redo)
module.setDefault(10104738225)

game.Players.PlayerAdded:Connect(function(plr)
	module.redirectPlayers({plr}, PlaceId) --PlaceId is optional, if you have done the setDefault part
end)
```

Usage [Kicking]:
```lua
local module = require(Redo)

game.Players.PlayerAdded:Connect(function(plr)
	module.kickPlayers({plr}, KickMessage) --KickMessage is optional
end)
```

I will update this github page when i add something new.
