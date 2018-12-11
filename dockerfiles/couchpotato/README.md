##CouchPotato – Movie Download and Management (Alternative)

is an alterantive to Radarr. During my switch to Docker, I moved from CouchPotato to Radarr and I am very happy with it. We have previously covered CouchPotato installation on Ubuntu and Windows. If you prefer CouchPotato over Radarr (you only need one of them), here is the code to add in the docker-compose file (pay attention to blank spaces at the beginning of each line):

  couchpotato:
    image: "linuxserver/couchpotato"
    container_name: "couchpotato"
    volumes:
      - ${USERDIR}/docker/couchpotato:/config
      - ${USERDIR}/Downloads/completed:/downloads
      - ${USERDIR}/media/movies:/movies
      - ${USERDIR}/docker/shared:/shared
    ports:
      - "XXXX:5050"
    restart: always
    environment:
      - PUID=${PUID}
      - PGID=${PGID}
      - UMASK_SET=002
      - TZ=${TZ}
Replace/Configure:

${USERDIR}/Downloads/completed – Path where to save downloaded files. ${USERDIR} is filled automatically from the environment file we created previously.
${USERDIR}/media/movies – Path where to your movie library. ${USERDIR} is filled automatically from the environment file we created previously.
XXXX – port number on which you want the CouchPotato Webui to be available at. It could be the same port as the container: 5050 (must be free).
UMASK_SET – 022 is recommended. But I prefer 002 to avoid permission issues.