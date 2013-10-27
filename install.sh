#!/bin/sh
#
apt-get install openbsd-inetd update-inetd logrotate
update-inetd --remove 14013
install fritzident /usr/local/sbin/firtzident
install logrotate.fritzident /etc/logrotate.d/fritzident
update-inetd --add "14013	stream	tcp	nowait	root	/usr/local/sbin/fritzident fritzindent -l /var/log/fritzident.log"
