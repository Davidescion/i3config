#!/bin/bash
#gud shit happens here
while true #start a loop
do #do things inside the loop
mem=$(free --mega | grep Mem | awk '{print $3, "/", $2, "MB"}') #get used and total mem
kernelver=$(uname -a | awk '{print $3}') #this is the easiest to understand, we just get the kernel version from uname -a
date=$(TZ='UTC' date | awk '{print $4, $3, $2, $6}') #cmon do I really need to explain this? NOTE THAT YOU NEED TO PUT YOUR TIMEZONE
CPU=$(top -bn 1 | grep "%Cpu(s)" | awk '{usage=100-$8} END {print usage}') #gets gpu usage from top
rootspace=$(df -h | grep sdb2 | awk '{print $4, "free in", $6}') #gets free space from drive YOU PROBABLY NEED TO PUT SDXY WHERE SDXY IS YOUR /
lol=$(echo $CPU "%" "|" $mem "|" $rootspace "|" $kernelver "|"  $date) #make a nice var with all of the stuff above
echo -n $lol #print it
sleep 1 #sleep for 1 second to save dat cpu powa
done #stop doing things inside the loop