#!/bin/bash

COMMAND="/sbin/shutdown -r now"
JOB="1 6 * * * $COMMAND"
cat <(fgrep -i -v "$COMMAND" <(crontab -l)) <(echo "$JOB") | crontab -