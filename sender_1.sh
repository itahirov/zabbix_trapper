#! /bin/bash
find /tmp -type f -atime +10 -delete
statuscode=$?
zabbix_sender -c /etc/zabbix/zabbix_agentd.conf -s "$(hostname)" -k temp.cleanup -o $statuscode
