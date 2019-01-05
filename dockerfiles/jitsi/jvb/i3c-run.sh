
. $i3cDataDir/jitsi/docker-jitsi-meet/.env

dParams="-d -m 100m -p ${JVB_PORT}:${JVB_PORT}/udp -p ${JVB_TCP_PORT}:${JVB_TCP_PORT} \
	--network=docker-jitsi-meet_meet.jitsi \
	-v $i3cDataDir/jitsi/config/jvb:/config \
    -e DOCKER_HOST_ADDRESS=$DOCKER_HOST_ADDRESS \
    -e XMPP_AUTH_DOMAIN=$XMPP_AUTH_DOMAIN \
    -e XMPP_INTERNAL_MUC_DOMAIN=$XMPP_INTERNAL_MUC_DOMAIN \
    -e XMPP_SERVER=xmpp.meet.jitsi \
    -e JVB_AUTH_USER=$JVB_AUTH_USER \
    -e JVB_AUTH_PASSWORD=$JVB_AUTH_PASSWORD \
    -e JVB_BREWERY_MUC=$JVB_BREWERY_MUC \
    -e JVB_PORT=$JVB_PORT \
    -e JVB_TCP_HARVESTER_DISABLED=$JVB_TCP_HARVESTER_DISABLED \
    -e JVB_TCP_PORT=$JVB_TCP_PORT \
    -e JVB_STUN_SERVERS=$JVB_STUN_SERVERS \
    -e JVB_ENABLE_APIS=$JVB_ENABLE_APIS \
    -e JICOFO_AUTH_USER=$JICOFO_AUTH_USER \
    -e TZ=$TZ \
	"
	
	
i3cAfter(){
echo "";	
#/i nc jitsi/jvb meet.jitsi	
#--alias xmpp.meet.jitsi
	
}	