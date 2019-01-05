
. $i3cDataDir/jitsi/docker-jitsi-meet/.env
#	-v $i3cDataDir/jitsi/config/prosody:/config 
#	-v /home/mb//.jitsi-meet-cfg/prosody:/config 
dParams="-d -m 50m \
	--network=docker-jitsi-meet_meet.jitsi \
	--network-alias xmpp.meet.jitsi \
	--hostname xmpp.meet.jitsi \
	-v $i3cDataDir/jitsi/config/prosody:/config \
    -e ENABLE_AUTH=$ENABLE_AUTH \
    -e ENABLE_GUESTS=$ENABLE_GUESTS \
    -e XMPP_DOMAIN=$XMPP_DOMAIN \
    -e XMPP_AUTH_DOMAIN=$XMPP_AUTH_DOMAIN \
    -e XMPP_GUEST_DOMAIN=$XMPP_GUEST_DOMAIN \
    -e XMPP_MUC_DOMAIN=$XMPP_MUC_DOMAIN \
    -e XMPP_INTERNAL_MUC_DOMAIN=$XMPP_INTERNAL_MUC_DOMAIN \
    -e JICOFO_COMPONENT_SECRET=$JICOFO_COMPONENT_SECRET \
    -e JICOFO_AUTH_USER=$JICOFO_AUTH_USER \
    -e JICOFO_AUTH_PASSWORD=$JICOFO_AUTH_PASSWORD \
    -e JVB_AUTH_USER=$JVB_AUTH_USER \
    -e JVB_AUTH_PASSWORD=$JVB_AUTH_PASSWORD \
    -e JIGASI_XMPP_USER=$JIGASI_XMPP_USER \
    -e JIGASI_XMPP_PASSWORD=$JIGASI_XMPP_PASSWORD \
    -e TZ=$TZ \
	"
	
	
i3cAfter(){
echo "";	
#/i nc jitsi/prosody meet.jitsi	--alias xmpp.meet.jitsi
	
}	