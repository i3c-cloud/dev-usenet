

cd $uData/docker-jitsi-meet
if [ ! -e $uData/docker-jitsi-meet/.env ]; then
	cp $uData/docker-jitsi-meet/env.example $uData/docker-jitsi-meet/.env
fi

docker-compose up -d --compatibility 
/i nc docker-jitsi-meet_web_1 bridge
doCommand=false