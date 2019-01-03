

cd $uData/docker-jitsi-meet
if [ ! -e $uData/docker-jitsi-meet/.env ]; then
	cp $uData/docker-jitsi-meet/env.example $uData/docker-jitsi-meet/.env
fi
#--compatibility - doesn't work limits ignored - back to dockerfiles...
docker-compose up -d  
/i nc docker-jitsi-meet_web_1 bridge
doCommand=false