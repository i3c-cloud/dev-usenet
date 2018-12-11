
cloneDfAndBuild https://github.com/openremote/openremote.git openremote openremote
#//cdir=$i3cScriptDir;
#scd 
# mkdir manager/build
# mkdir manager/build/install
# mkdir manager/build/install/manager
#docker-compose -p openremote -f $uData/openremote/profile/demo.yml pull
UDATA=$uData
export UDATA=$uData
export I3C_EXHOST=$i3cExHost
DOMAINNAME=$i3cExhost
export DOMAINNAME=$i3cExhost

docker-compose -p openremote -f $i3cScriptDir/docker-compose.yml pull

#lets try to configure it a little


#docker-compose -p openremote -f $uData/openremote/profile/demo.yml up &
docker-compose -p openremote -f $i3cScriptDir/docker-compose.yml up &



if [ ! -e $uData/logs ]; then
	mkdir $uData/logs;
fi	

/i logs openremote_proxy_1 > $uData/logs/openremote_proxy_1.log
/i logs openremote_manager_1 > $uData/logs/openremote_manager_1.log
/i logs openremote_keycloak_1 > $uData/logs/openremote_keycloak_1
/i logs openremote_postgresql_1 > $uData/logs/openremote_postgresql_1

doCommand=false
