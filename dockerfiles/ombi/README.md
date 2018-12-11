##Ombi – Accept Requests for your Media Server

If you share your media server with friends and family, you may have heard of Plex Requests. Ombi is similar to that but better. Ombi allows you to accept Movie or TV Show requests from friends and family. When a request comes in, it can automatically add to integrated apps such as sonarr, radarr, couchpotato, etc. The request can be automatically downloaded and added to your library. Ombi is compatible with both Plex and Emby. Docker makes it easier to install Ombi and here is the code for it (pay attention to blank spaces at the beginning of each line):

  ombi:
    container_name: ombi
    restart: always
    image: linuxserver/ombi
    volumes:
      - ${USERDIR}/docker/ombi:/config
      - ${USERDIR}/docker/shared:/shared
    ports:
      - "XXXX:3579"
    environment:
      - PUID=${PUID}
      - PGID=${PGID}
      - TZ=${TZ}  
Replace/Configure:

XXXX – port number on which you want the Ombi Webui to be available at. It could be the same port as the container: 3579 (must be free).
Save and run the docker-compose.yml file as described previously and check if the app is working. Ombi should will be available at http://SERVER-IP:XXXX.s