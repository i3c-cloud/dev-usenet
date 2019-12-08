
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