#!/bin/bash

source site.sh

google-chrome --kiosk --disable-session-crashed-bubble --disable-infobars --disable-translate $STICK_URL
