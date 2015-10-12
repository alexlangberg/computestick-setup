#!/bin/bash

source stick.sh
source /home/ordrestyring/computestick-setup/stick.sh

google-chrome --kiosk --disable-session-crashed-bubble --disable-infobars --disable-translate $STICK_URL

source click.sh
source /home/ordrestyring/computestick-setup/click.sh
