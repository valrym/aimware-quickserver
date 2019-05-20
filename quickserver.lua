local settings = {
	["prefix"] = "&"
}

local servers = {
["example"] = "13.371.337.133:71337",
["example1"] = "13.371.337.133:71337"
}

function quickserver(m)
		if m:GetID() == 6 or m:GetID() == 5 and m:GetInt( 1 ) == client.GetLocalPlayerIndex() then 
			if string.find(m:GetString(4,1), settings.prefix) then
				local msgs = m:GetString(4,1);
				local params = {}
				for sub in msgs:gmatch("%S+") do table.insert(params, sub) end
				if params[2] == nil then return end
				local cmd = params[2] .. " " .. fullparams
				if params[2] == "server" then 
					if params[3] == "*" then
						for i,v in next, servers do
							client.Command("echo" .. " [CPS]: " .. i, true)
						end
					return
					end 
				client.Command("connect " .. servers[params[3]], true); 
					return 
				end
			end
		end
end

callbacks.Register("DispatchUserMessage", "qserver", quickserver);
