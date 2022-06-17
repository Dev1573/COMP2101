#1/bin/bash
#We are going to launch container to webserver

#Let's insTall lxd in ubuntu
sudo snap install lxd --channel=4.0/stable

#To get lxdbr0, use following command
lxd init --auto

#Let's check how many container we have
lxc remote list

#It's time to launch a container
sudo lxc launch ubuntu:20.04 COMP2101-S22

#Now get ip address of container
lxc list | awk '/eth0/ {print $6}'

#Now we will install apach2
sudo lxc exec COMP2101-S22 -- apt install apache2 -y

#Now we will make script that retrive the webpage from web service and notify user about result
sudo curl http://10.126.19.75 && echo "Successful" || echo "Unsuccessful"


