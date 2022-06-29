#!/bin/bash
# My fourth script - sysinfo.sh
# This coding will shows different strings

#Let's use echo command to show space in command line output
echo '                               '
#First we will creat Heading
echo "Report for My Virtual Machine"

#Now we will use echo command to get some space in output
echo '====================='
#We will use some extantion to get precise information
dn=$(hostname --fqdn)
echo "FQDN: $dn"

#Now it's time to use uname variable to get os name
os=$(uname -om)
echo "Information about Operating system: $os"

#For ip address there is a command $ip addr
ip=$(ip addr | awk 'NR=="9" {print$2}')
echo "Virtual machine IP ADDRESS: $ip"

#Information of filesystem can be gotten from df command
rt=$(df -h | awk 'NR=="2" {print $4}')
echo "Free space in root Filesystem: $rt"

#Again we will use echo command to get space in our output
echo '====================='
