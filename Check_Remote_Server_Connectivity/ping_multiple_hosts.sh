#!/bin/bash
#Author: Santanu Pal
#Date: 06-02-2024
#Description: This script will check the connectivity of a multiple hosts
#Last Modified: 06-02-2024

# output will store in dev/null file and so it will not display on the screen
hosts="./hosts.txt"

for ip in $(cat $hosts)
do
  ping -c 1 $ip &> /dev/null

  if [ $? -eq 0 ]
  then
      echo $ip UP AND RUNNING
  else
      echo $ip NOT RUNNING
  fi

done
