# aimware-quickserver
a lua for quick server switching via chat commands

# how to use
your prefix is in the settings table called prefix, by default being "@"

type in either team or global chat the message "@ server " and then your server name that you put into the servers table.

so like "@ server example" would send you to the server in the table named "example"

# how to add servers
add your server by adding something along the lines of this to the table "servers"
["servername"] = "serverip"
