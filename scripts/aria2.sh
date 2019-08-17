aria2_session="/etc/aria2/aria2.session" 
lockFile="/opt/lock" 

if [ ! -f "$aria2_session" ]; then 
    touch $aria2_session
fi

if [ ! -f "$lockFile" ]; then 
    yum install epel-release -y
    yum install aria2 -y
    touch $lockFile
fi 

aria2c --conf-path=/etc/aria2/aria2.conf