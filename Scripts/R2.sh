#!/bin/bash

# Redirecting multiple commands to vtysh using a here document
vtysh << EOC
configure terminal
# configure R2 for AREA 0
interface eth0
ip address 10.10.10.2/29
# configure R2 for R2-R3
interface eth1
ip address 10.10.11.1/30
# configure R2 for R2-R4
interface eth2
ip address 10.10.11.5/30
end
write
exit
EOC

# Echo a message upon script completion
echo "Config script exited with code 0"
