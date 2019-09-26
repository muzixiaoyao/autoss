#!/bin/bash
chmod +x *
chmod +x /etc/rc.d/rc.local
chmod +x -R /opt/*
mv -f shadowsocks /opt/
mv -f server_linux_386 /opt/
mv -f rc.local /etc/