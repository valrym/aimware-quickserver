local settings = {
	["prefix"] = "@"
}

local servers = {
["braindead"] = "74.91.122.250:27015",
["void.to"] = "172.107.198.122:27376",
["legion"] = "74.91.124.247:27015",
["deadpool"] = "192.223.24.145:27015",
["nospread"] = "74.91.125.145:27015"
}

function quickserver(m)
		if m:GetID() == 6 or m:GetID() == 5 and m:GetInt( 1 ) == client.GetLocalPlayerIndex() then 
			local msgs = m:GetString(4,1);
			local params = {}
			for sub in msgs:gmatch("%S+") do table.insert(params, sub) end
			if params[2] == "server" then 
					if params[3] == "*" then
						for i,v in next, servers do
							client.Command("echo" .. " [CPS]: " .. i, true)
						end
					return
					end 
					local sparam = params[3]; client.Command("connect " .. servers[sparam], true); 
					return 
				end
		end
end

callbacks.Register("DispatchUserMessage", "qserver", quickserver);
