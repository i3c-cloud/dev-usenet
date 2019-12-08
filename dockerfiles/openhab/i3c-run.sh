
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
	
oh_uinfo=$(id openhab)
set -- $oh_uinfo
oh_uid=$(echo $1 | cut -d'=' -f 2 | cut -d'(' -f 1)
oh_gid=$(echo $2 | cut -d'=' -f 2 | cut -d'(' -f 1)


dParams="-d \
        --name openhab \
        --net=host \
        -v /etc/localtime:/etc/localtime:ro \
        -v /etc/timezone:/etc/timezone:ro \
        -v $uData/conf:/openhab/conf \
        -v $uData/userdata:/openhab/userdata \
        -v $uData/addons:/openhab/addons \
        -e USER_ID=$oh_uid \
        -e GROUP_ID=$oh_gid"