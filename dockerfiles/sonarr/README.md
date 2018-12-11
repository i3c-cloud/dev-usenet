##Sonarr – TV Show Download and Management

PVR for TV Shows. You add the shows you want to see to Sonarr and it will search various bittorrent and Usenet providers for the show episodes. If it is available it will grab the index file and send it to your bitorrent client or NZB client for downloading. Once the download is complete it can rename your episode to a specified format and move it to a folder of your choice (TV Show library). It can even update your Kodi library or notify you when a new episode is ready for you to watch. We have previously covered Sonarr installation on Ubuntu, Windows, using Docker, and using Kitematic. Docker makes it easier to install. Here is the code to add in the docker-compose file (pay attention to blank spaces at the beginning of each line):


Replace/Configure:

${USERDIR}/Downloads/completed – Path where to save downloaded files. ${USERDIR} is filled automatically from the environment file we created previously.
${USERDIR}/media/tvshows – Path where to your movie library. ${USERDIR} is filled automatically from the environment file we created previously.
XXXX – port number on which you want the Sonarr Webui to be available at. It could be the same port as the container: 8989 (must be free).