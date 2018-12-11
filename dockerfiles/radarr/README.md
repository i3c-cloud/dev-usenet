##Radarr – Movie Download and Management

Radarr is a Movie PVR. You add the movies you want to see to Radarr and it will search various bittorrent and Usenet providers for the movie. If it is available it will grab the index file and send it to your bittorrent client or NZB client for downloading. Once the download is complete it can rename your movie to a specified format and move it to a folder of your choice (movie library). It can even update your Kodi library or notify you when a new movie is ready for you to watch. [Read: CouchPotato vs SickBeard, SickRage, or Sonarr for beginners]

We have already covered Radarr installation on Ubuntu, as well as, using docker and Kitematic. Docker makes it easier to install. Here is the code to add in the docker-compose file (pay attention to blank spaces at the beginning of each line):

Replace/Configure:

${USERDIR}/Downloads/completed – Path where to save downloaded files. ${USERDIR} is filled automatically from the environment file we created previously.
${USERDIR}/media/movies – Path where to your movie library. ${USERDIR} is filled automatically from the environment file we created previously.
XXXX – port number on which you want the Radarr Webui to be available at. It could be the same port as the container: 7878 (must be free).