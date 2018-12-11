
dParams="-d --net host \
		-e UDATA=/i3c/data \
		-v $i3cScriptDir/res:/i3cres \
		-v /etc/timezone:/etc/timezone:ro \
		-v /etc/localtime:/etc/localtime:ro \
		"
		
addIParams=true;


i3cAfter(){
	/i execd openremote docker-compose -p openremote -f /i3cres/compose/demo.yml pull	
	/i execd openremote docker-compose -p openremote -f /i3cres/compose/demo.yml up	
}