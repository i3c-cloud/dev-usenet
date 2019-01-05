
#echo "cd0:"$(pwd)
_cloneOrPull https://github.com/jitsi/docker-jitsi-meet.git docker-jitsi-meet

if [ ! -e $uData/docker-jitsi-meet/.env ]; then
	cp $uData/docker-jitsi-meet/env.example $uData/docker-jitsi-meet/.env
fi
/i nc docker-jitsi-meet_meet.jitsi
/i rb jitsi/prosody
/i rb jitsi/jicofo
/i rb jitsi/jvb

#echo "rebuilding jitsi/web..."
#/i rb jitsi/web

#cd $uData/docker-jitsi-meet
#--compatibility - doesn't work limits ignored - back to dockerfiles...
cdr=$(pwd)
cd $uData/docker-jitsi-meet
#docker-compose up -d
cd $cdr
/i rr jitsi/prosody 
#/i nc  jitsi/prosody docker-jitsi-meet_meet.jitsi --alias xmpp.meet.jitsi
/i rr jitsi/jicofo
#/i nc  jitsi/jicofo docker-jitsi-meet_meet.jitsi
/i rr jitsi/jvb
#/i nc  jitsi/jvb docker-jitsi-meet_meet.jitsi
#/i rr jitsi/web
 
#/i nc jitsi/web bridge
#/i nc  jitsi/web docker-jitsi-meet_meet.jitsi



doCommand=false