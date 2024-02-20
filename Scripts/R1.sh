# configure R1 for AREA 0
vtysh
configure terminal
interface eth1
ip address 10.10.10.1/29
end
write
exit
echo Config script exited with code 0