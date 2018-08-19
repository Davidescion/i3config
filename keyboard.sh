#!/bin/bash
setxkbmap -layout us option ctrl:nocaps
xmodmap -e "keycode 66 = Tab"