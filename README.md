# zabbix_trapper

apt install zabbix-sender

https://davidshomelab.com/monitor-your-scripts-with-zabbix-trappers/

zabbix_sender -c /etc/zabbix/zabbix_agentd.conf -s "$(hostname)" <b>-k temp.cleanup</b> -o $statuscode

<img src="https://github.com/itahirov/zabbix_trapper/blob/main/zabbix_trapper.png"/>
