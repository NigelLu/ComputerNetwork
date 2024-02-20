#!/bin/bash

# Redirecting multiple commands to vtysh using a here document
vtysh << EOC
configure terminal

# configure R3 for R2-R3
interface eth0
ip address 10.10.11.2/30

# configure R3 for R3-R4
interface eth1
ip address 10.10.11.9/30

end
write
exit
EOC

# Echo a message upon script completion
echo "Config script exited with code 0"
