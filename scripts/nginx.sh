aria2Dir="/usr/share/nginx/html/aria2"

if [ ! -d "$aria2Dir" ]; then
    apt update
    apt install wget unzip -y
    wget https://github.com/mayswind/AriaNg-DailyBuild/archive/master.zip
    unzip master.zip
    mv AriaNg-DailyBuild-master/ $aria2Dir
    rm -f master.zip
fi

if [ ! -d "/usr/share/nginx/html/store/private" ]; then
    wget https://release.larsjung.de/h5ai/h5ai-0.29.2.zip
    unzip h5ai-0.29.2.zip
    chmod 777 _h5ai/public/cache
    chmod 777 _h5ai/private/cache
    mv _h5ai/{private,public} /usr/share/nginx/html/store/
    rm -fr _h5ai h5ai-0.29.2.zip
fi

nginx -g 'daemon off;'