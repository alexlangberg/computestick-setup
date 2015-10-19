command="/sbin/shutdown -r now"
job="1 6 * * * $command"
cat <(fgrep -i -v "$command" <(crontab -l)) <(echo "$job") | crontab -