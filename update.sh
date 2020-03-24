#!/bin/bash

# Simple Update Newsroomscript by Frank Eggen
# FrankEggen@emden.net
# Script for Pi in Newsrooms
# Version 1.0 21.03.2020

cd ~/newsroom/

# Kill Browser
killall -w firefox-esr
sleep 2

git --no-optional-locks reset -q --hard
git checkout covid19
git pull

nohup firefox 'index01.html' 2> /dev/null &
sleep 5
xdotool search --sync --onlyvisible --class "Firefox" windowactivate key F11

exit 0