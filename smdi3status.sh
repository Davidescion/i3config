#!/bin/bash
#this is a pretty stupid program made in bash to practice the use of awk and grep because yah know what else should I do
#gud shit happens here
notvirgin=0
while true
do
mem=$(free --mega | grep Mem | awk '{print $3, "/ " $2}') #get used and total mem
kernelver=$(uname -a | awk '{print $3}') #this is the easiest to understand, we just get the kernel version from uname -a
date=$(date | awk '{print $4, $3, $2, $6, ".", "    "}') #cmon do I really need to explain this?
CPU=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}') #bash insanity to get cpu usage
lol=$(echo "CPU:" $CPU "|" "Used Memory:" $mem "MB" "|" "Kernel:" $kernelver "|" "Time:" $date)
if notvirgin==1
then
echo -ne "\r$lol"
else
echo -n $lol
fi
sleep 1
notvirgin=1
done