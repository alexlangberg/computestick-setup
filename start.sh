#!/bin/bash

source stick.sh
source /home/ordrestyring/computestick-setup/stick.sh

export DISPLAY=:0

# google-chrome $STICK_CHROME_PARAMS --start-fullscreen --disable-session-crashed-bubble --disable-infobars --disable-translate $STICK_URL &
firefox $STICK_FIREFOX_PARAMS --fullscreen $STICK_URL &

xdotool mousemove 1920 1080

sleep 60 && source /home/ordrestyring/computestick-setup/click.sh && source click.sh
