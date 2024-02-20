# configure R1 for AREA 0
vtysh << EOC
configure terminal
interface eth1
ip address 10.10.10.1/29
end
write
exit
EOC

echo "Config script exited with code 0"