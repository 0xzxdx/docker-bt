lockFile="/opt/lock" 

if [ ! -f "$lockFile" ]; then 
    apt update
    apt install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev ffmpeg zip graphicsmagick-imagemagick-compat
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
    docker-php-ext-install -j$(nproc) gd
    docker-php-ext-install exif
    touch $lockFile
fi 
php-fpm