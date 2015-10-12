#!/bin/bash

source stick.sh
source /home/ordrestyring/computestick-setup/stick.sh

export DISPLAY=:0

google-chrome $STICK_CHROME_PARAMS --disable-session-crashed-bubble --disable-infobars --disable-translate $STICK_URL &

sleep 60 && xdotool key F11 && sleep 3 && source /home/ordrestyring/computestick-setup/click.sh || source click.sh
