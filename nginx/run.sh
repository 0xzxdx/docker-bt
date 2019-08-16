apt update
apt install wget unzip -y

if [ ! -d "/usr/share/nginx/html/aria2" ]; then
    wget https://github.com/mayswind/AriaNg-DailyBuild/archive/master.zip
    unzip master.zip
    mv AriaNg-DailyBuild-master/ /usr/share/nginx/html/aria2
    rm -f master.zip
fi

if [ ! -d "/usr/share/nginx/html/store/private" ]; then
    wget https://release.larsjung.de/h5ai/h5ai-0.29.2.zip
    unzip h5ai-0.29.2.zip
    mv _h5ai/{private,public} /usr/share/nginx/html/store/
    rm -fr _h5ai h5ai-0.29.2.zip
fi

nginx -g 'daemon off;'