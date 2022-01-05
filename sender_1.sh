#! /bin/bash
find /tmp -type f -atime +10 -delete
statuscode=$?
zabbix_sender -c /etc/zabbix/zabbix_agentd.conf -s "$(hostname)" -k temp.cleanup -o $statuscode
# k	The item key that the data will be recorded against. In this case we will make an item called temp.cleanup in Zabbix and the script will record its data there.
