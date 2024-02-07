#!/bin/bash
#Author: Santanu Pal
#Date: 06-02-2024
#Description: This script will check the connectivity of a single host
#Last Modified: 07-02-2024


# output will store in dev/null file and so it will not display on the screen
 
read -p "Enter the ip address:" host

ping -c 1 $host &> /dev/null

if [ $? -eq 0 ]
then
    echo $host UP AND RUNNING
else
    echo $host NOT RUNNING
fi
