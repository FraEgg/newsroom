#!/bin/bash

# Simple Newsroomscript by Frank Eggen
# FrankEggen@emden.net
# Script for Pi in Newsrooms
# Version 1.0 21.03.2020

#cd ~ && rm -rf ~/newsroom/ ; git clone -q https://github.com/FraEgg/newsroom && cd ~/newsroom/ && git checkout covid19
#./update.sh

# 1. Firefox Browser im Fullwindow starten
sleep 10
nohup firefox --kiosk 'file:///home/pi/newsroom/index01.html' 2> /dev/null &
#sleep 10
#xdotool search --sync --onlyvisible --class "Firefox" windowactivate key F11

exit 0
