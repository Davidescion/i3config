#!/bin/bash
#this is a pretty stupid program made in bash to practice the use of awk and grep because yah know what else should I do
#gud shit happens here
while true #loop for updating the info
do #start the loop
mem=$(free --mega | grep Mem | awk '{print $3, "/ " $2}') #get used and total mem
kernelver=$(uname -a | awk '{print $3}') #this is the easiest to understand, we just get the kernel version from uname -a
date=$(date | awk '{print $4, $3, $2, $6}') #cmon do I really need to explain this?
CPU=$(top -bn 1 | grep "%Cpu(s)" | awk '{usage=100-$8} END {print usage}') #gets cpu usage from top
floatKB=$(cat /sys/class/leds/smc\:\:kbd_backlight/brightness | awk '{usage=($1/255)*100} END {print usage}') #mbp backlight 
KB=$(printf "%.*f\n" 2 $floatKB) # sets a max of 2 numbers of float on the backlight
DISP=$(light -s gmux_backlight) # gets the display backlight
rootfree=$() #free space on root
batact=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep energy | awk 'NR==1 {print $2}') #gets the actual battery current left
batfull=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep energy | awk 'NR==3 {print $2}') #gets max current the battery can handle after wear
floatbatperc=$(python3 ~/.i3/battery.py $batact $batfull) #with a python script converts battery in percentage
batperc=$(printf "%.*f\n" 2 $floatbatperc) #limits float number
lol=$(echo "Bat:" $batperc "%" "|" "Disp:" $DISP "%" "|" "KB:" $KB "%" "|" "CPU:" $CPU "% |" $mem "MB" $rootfree "|"  $kernelver "|"  $date) #puts in a var all of the above info
echo -n $lol #echo the abouve mentioned var
sleep 1 #sleeps every second at the moment
done #end of the loop
# this has been written by davidescion on github or paranoidbashthot#7711 on discord for use on his own laptop feel free to modify it to make it work on whatever other device and create a new branch
# also remember that this was never eant to be looking good it just needs to werk and werk well. //which it kinda doesn't
