#!/bin/bash

# Simple Newsroomscript by Frank Eggen
# FrankEggen@emden.net
# Script for Pi in Newsrooms
# Version 1.0 21.03.2020

cd ~ && rm -rf ~/newsroom/ ; git clone -q https://github.com/FraEgg/newsroom && cd ~/newsroom/ && git checkout covid19
./update.sh

# 1. Firefox Browser im Fullwindow starten
nohup firefox 'index01.html' 2> /dev/null &
sleep 10
xdotool search --sync --onlyvisible --class "Firefox" windowactivate key F11

## Sample for open Browsers and Close on Rasbian Buster
## Google News
#nohup chromium-browser --kiosk 'https://news.google.com/search?q=Coronavirus%20Bundeswehr&hl=de&gl=DE&ceid=DE%3Ade' 2> /dev/null &
#sleep 240 ; killall -15 chromium-browse

# Firefox Browser mit tagesschau24 livestream starten
#nohup firefox 'https://www.ardmediathek.de/ard/live/Y3JpZDovL2Rhc2Vyc3RlLmRlL3RhZ2Vzc2NoYXUvbGl2ZXN0cmVhbQ?devicetype=pc&embedded=true' 2> /dev/null &
#sleep 5
#xdotool search --sync --onlyvisible --class "Firefox" windowactivate key F11
#sleep 240
#killall -w firefox-esr ; sleep 2

exit 0
