taskkill /f /t /im Shadowsocks.exe
taskkill /f /t /im kcptun.exe
start Shadowsocks.exe
kcptun -r "ip:18030" -l ":8030" -mode fast2