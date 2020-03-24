#!/bin/bash

# Simple Update Newsroomscript by Frank Eggen
# FrankEggen@emden.net
# Script for Pi in Newsrooms
# Version 1.0 21.03.2020

cd ~/newsroom/

git --no-optional-locks reset -q --hard
git checkout covid19
git pull

exit 0