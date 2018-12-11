##SickRage – TV Show Download and Management (Alternative)

SickRage is an alterantive to Sonarr. During my switch to Docker, I moved from SickRage to Sonarr and I am very happy with it. We have previously covered SickRage installation on Ubuntu and Windows. If you prefer SickRage over Sonarr (you only need one of them), here is the code to add in the docker-compose file (pay attention to blank spaces at the beginning of each line):


Replace/Configure:

${USERDIR}/Downloads/completed – Path where to save downloaded files. ${USERDIR} is filled automatically from the environment file we created previously.
${USERDIR}/media/tvshows – Path where to your movie library. ${USERDIR} is filled automatically from the environment file we created previously.
XXXX – port number on which you want the SickRage Webui to be available at. It could be the same port as the container: 8081 (must be free).