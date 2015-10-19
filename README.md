# computestick-setup

Run post_install.sh.

While installing:

 - Disable update-notifier under "Startup Applications".
 - Disable screen lock.
 - Disable screensaver.
 - Set autologin to 10 sec in /etc/lightdm/lightdm.conf.
 - Set Grub timeout to 5 sec if set to -1 in /boot/grub.conf.
 - As root, run crontab_setup.sh to enable rebooting at 6 in the morning.