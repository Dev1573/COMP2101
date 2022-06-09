#!/bin/bash
# My fourth script - sysinfo.sh
# This coding will shows different strings

#Let's make variable for hostname
hn=$(hostname)
echo "Host Name: $hn"

#We will use some extantion to get precise information 
dn=$(hostname --fqdn)
echo "Domain Name of VM: $dn"

#Now it's time to use uname variable to get os name
os=$(uname -om)
echo "Information about Operating system: $os"

#For ip address there is a command $ip addr
ip=$(ip addr | awk 'NR=="9" {print$2}')
echo "Virtual machine IP ADDRESS: $ip"

#Information of filesystem can be gotten from df command
rt=$(df -h)
echo "Status of root filesystem: "
echo "$rt"

