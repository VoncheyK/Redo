local defaultRedirectPlace = 0
local tps = game:GetService('TeleportService')
return 
{
		defaultRedirectPlace = defaultRedirectPlace,
		setDefault = function(newId)
			if not newId or type(newId) ~= "number" then error("No gameId passed / GameId isn't a number.",2) end
			defaultRedirectPlace=newId
		end,
		redirectPlayers = function(playerTable,id)
			if not id and defaultRedirectPlace ~= 0 then 
			tps:TeleportAsync(defaultRedirectPlace,playerTable)
			elseif not id and defaultRedirectPlace == 0 then 
			tps:TeleportAsync(id,playerTable)
			end
		end,
		kickPlayers = function(playerTable,msg)
			for _,plr in pairs(playerTable) do
				if msg then plr:Kick(msg) else plr:Kick("You have been kicked without context.") end
			end
		end,
}
