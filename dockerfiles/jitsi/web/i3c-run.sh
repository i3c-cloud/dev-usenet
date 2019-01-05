
. $i3cDataDir/jitsi/docker-jitsi-meet/.env

dParams="-d -m 50m -p 8000:80 -p 8443:443 \
	--network=docker-jitsi-meet_meet.jitsi \
	-v $i3cDataDir/jitsi/config/web:/config \
    -e ENABLE_AUTH=$ENABLE_AUTH \
    -e ENABLE_GUESTS=$ENABLE_GUESTS \
    -e ENABLE_LETSENCRYPT=$ENABLE_LETSENCRYPT \
    -e ENABLE_HTTP_REDIRECT=$ENABLE_HTTP_REDIRECT \
    -e DISABLE_HTTPS=$DISABLE_HTTPS \
    -e JICOFO_AUTH_USER=$JICOFO_AUTH_USER \
    -e LETSENCRYPT_DOMAIN=$LETSENCRYPT_DOMAIN \
    -e LETSENCRYPT_EMAIL=$LETSENCRYPT_EMAIL \
    -e VIRTUAL_PROTO=https \
    -e VIRTUAL_PORT=443 \
    -e XMPP_DOMAIN=$XMPP_DOMAIN \
    -e XMPP_AUTH_DOMAIN=$XMPP_AUTH_DOMAIN \
    -e XMPP_BOSH_URL_BASE=http://xmpp.meet.jitsi:5280 \
    -e XMPP_GUEST_DOMAIN=$XMPP_GUEST_DOMAIN \
    -e XMPP_MUC_DOMAIN=$XMPP_MUC_DOMAIN \
    -e TZ=$TZ \
	"
	
	
i3cAfter(){
echo "";	
#/i nc jitsi/web meet.jitsi	
	
}	