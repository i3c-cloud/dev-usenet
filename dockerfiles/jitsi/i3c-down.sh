
/i down jitsi/web
/i down jitsi/prosody
/i down jitsi/jvb
/i down jitsi/jicofo
cdr=$(pwd)
cd $uData/docker-jitsi-meet/
docker-compose down
cd $cdr
doCommand=false