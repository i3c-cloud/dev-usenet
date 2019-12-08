
id -u openhab
if [ $? -eq 0 ]; then
    echo "User openhab exists"
else
    echo "User openhab does not exist - creating ..."
    sudo useradd -r -s /sbin/nologin openhab
fi

    usermod -a -G openhab $USER
    mkdir -p $uData
	mkdir -p $uData/conf
	mkdir -p $uData/userdata
	mkdir -p $uData/addons
	chown -R openhab:openhab $uData

dParams="-d \
        --name openhab \
        --net=host \
        -v /etc/localtime:/etc/localtime:ro \
        -v /etc/timezone:/etc/timezone:ro \
        -v $uData/conf:/openhab/conf \
        -v $uData/userdata:/openhab/userdata \
        -v $uData/addons:/openhab/addons"
 #       -e USER_ID=<uid> \
 #       -e GROUP_ID=<gid>"