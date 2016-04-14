#!/bin/bash



# function monitor shadowsocks
monitor_shadowsocks()
{
p_number=`ps -aux | grep sslocal | wc -l`
if [ $p_number = "1" ]
then
	datetime=`date`
	echo "${datetime} shadowsocks quit with known reason, restart it" 
	echo temp | sudo -S ./start_after_boot.sh >/dev/null
fi
}




while [ 1 = 1 ]
do
	sleep 1 
	monitor_shadowsocks
done
