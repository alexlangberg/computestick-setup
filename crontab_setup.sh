COMMAND="/sbin/shutdown -r now"
JOB="1 6 * * * $COMMAND"
cat <(fgrep -i -v "$COMMAND" <(sudo crontab -l)) <(echo "$JOB") | sudo crontab -