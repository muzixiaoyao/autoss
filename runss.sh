#!/bin/bash
screen -v > /dev/null 2>&1
if [ $? -eq 127 ];then
	sudo yum -y install screen
fi
screen_name=$"ss"
screen -dmS $screen_name
cmd1=$"/bin/python /opt/shadowsocks/shadowsocks/server.py -d start"
cmd2=$"/opt/server_linux_386 -t "127.0.0.1:8030" -l ":18030" -mode fast2";
screen -x -S $screen_name -p 0 -X stuff "$cmd1"
screen -x -S $screen_name -p 0 -X stuff $'\n'
screen -x -S $screen_name -p 0 -X stuff "$cmd2"
screen -x -S $screen_name -p 0 -X stuff $'\n'