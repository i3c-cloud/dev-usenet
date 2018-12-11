
#-e PGID=<gid> -e PUID=<uid>  \
#-p 80:80 \
dParams="-d \
	-e VIRTUAL_PORT=80 \
	--name=organizr \
	-v $uData/config:/config"
	#lsiocommunity/organizr"
	
i3cImage="lsiocommunity/organizr";
i3cVersion="latest";