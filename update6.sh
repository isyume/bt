#!/bin/bash

while [ "$go" != 'y' ] && [ "$go" != 'n' ]
do
	read -p "是否安装宝塔下一步？(y/n): " go;
done

if [ "$go" == 'y' ];then
    cd /www/server/panel/plugin
    rm -rf /www/server/panel/plugin/shoki_cdn
	wget -O shoki_cdn.zip https://github.com/isyume/bt/raw/master/shoki_cdn.zip -T 10
	unzip shoki_cdn.zip
	rm -rf shoki_cdn.zip
	curl https://raw.githubusercontent.com/isyume/bt/master/update7.sh|bash
	rm -rf /home/update6.sh
fi
if [ "$go" == 'n' ];then
    #cd /www/server/panel/plugin
    #rm -rf shoki_cdn
	rm -rf /www/server/panel/plugin/shoki_cdn
	curl https://raw.githubusercontent.com/isyume/bt/master/update7.sh|bash
	rm -rf /home/update6.sh
fi
rm -rf /home/update6.sh
