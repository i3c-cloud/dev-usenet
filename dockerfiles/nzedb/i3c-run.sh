/i stop nzedb_database_1

dParams="-d \
	-e VIRTUAL_PORT=8800 \
	-e VIRTUAL_PROTO=fastcgi \
	-v /nzedb/data:/nzedb/data2 \
	"


addIParams=true


i3cAfter(){

	echo "Started nZEDb bootstrap ...";
	if [ -e $uData/wiready ]; then rm $uData/wiready; fi
	while [ ! -e $uData/wiready ]; do
		echo "Waiting for web install part to be accesible ...";
		sleep 10;
	done
	rm $uData/wiready;
	echo "Web install accesible. Go to $cName.$i3cExHost:8800 to continue install ..."
	echo "(on WSL You have to configure [win]drivers/etc/hosts or try to go to public port $i3cExHost:8800)"	
	
	
}