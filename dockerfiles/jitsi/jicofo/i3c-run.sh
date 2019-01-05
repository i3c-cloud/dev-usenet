
. $i3cDataDir/jitsi/docker-jitsi-meet/.env

dParams="-d -m 200m \
	--network=docker-jitsi-meet_meet.jitsi \
	-v  $i3cDataDir/jitsi/config/jicofo:/config \
    -e ENABLE_AUTH=$ENABLE_AUTH \
    -e XMPP_DOMAIN=$XMPP_DOMAIN \
    -e XMPP_AUTH_DOMAIN=$XMPP_AUTH_DOMAIN \
    -e XMPP_INTERNAL_MUC_DOMAIN=$XMPP_INTERNAL_MUC_DOMAIN \
    -e XMPP_SERVER=xmpp.meet.jitsi \
    -e JICOFO_COMPONENT_SECRET=$JICOFO_COMPONENT_SECRET \
    -e JICOFO_AUTH_USER=$JICOFO_AUTH_USER \
    -e JICOFO_AUTH_PASSWORD=$JICOFO_AUTH_PASSWORD \
    -e JVB_BREWERY_MUC=$JVB_BREWERY_MUC \
    -e JIGASI_BREWERY_MUC=$JIGASI_BREWERY_MUC \
    -e TZ=$TZ \
	"
	
	
i3cAfter(){
echo "";	
#/i nc jitsi/jicofo meet.jitsi	
#--alias xmpp.meet.jitsi
	
}	