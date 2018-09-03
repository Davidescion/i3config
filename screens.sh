#!/bin/sh
xrandr --newmode "1080p60" 148.50 1920 2008 2052 2200 1080 1084 1088 1125 -HSync -VSync
xrandr --addmode HDMI-A-1-2 1080p60
xrandr --output DisplayPort-1-1 --off --output DisplayPort-0 --off --output DVI-D-1-2 --off --output DVI-D-1-3 --off --output HDMI-3-1 --off --output DVI-I-3-1 --off --output VGA-3-1 --mode 1440x900 --pos 0x912 --rotate normal --output DVI-D-0 --off --output DVI-D-1 --off --output HDMI-A-1-2 --mode 1080p60 --pos 1440x0 --rotate left --output HDMI-A-1 --mode 1920x1080 --pos 2520x592 --rotate normal