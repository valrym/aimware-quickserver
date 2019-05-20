local settings = {
	["prefix"] = "@"
}

local servers = {
["example"] = "13.371.337.133:71337",
["example1"] = "13.371.337.133:71337"
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
