#!/bin/bash
# My fourth script - sysinfo.sh
# This coding will shows different strings

cat <<EOF
Host Name:
EOF
hostname
echo "Domain Name:Dev-Virtualbox"
echo "Operating System name and version: "
lsb_release -d
echo "LAN IP ADDRESS: "
ip a s enp0s3 | awk '/inet /{print$2}'
echo "Root File Status:"
df -h

