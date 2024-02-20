#!/bin/bash

# Redirecting multiple commands to vtysh using a here document
vtysh << EOC
configure terminal

# configure R4 for R2-R4
interface eth1
ip address 10.10.11.6/30

# configure R4 for R3-R4
interface eth0
ip address 10.10.11.10/30

#configure R4 for DHCP
interface eth2
ip address 10.10.11.17/28

end
write
exit
EOC

# Echo a message upon script completion
echo "Config script exited with code 0"
