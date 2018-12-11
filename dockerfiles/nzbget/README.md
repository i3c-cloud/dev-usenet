##NZBGet – Usenet (NZB) Downloader (Alternative)

Many people like NZBGet instead of SABnzbd as a Usenet downloader (you only need one of them). If you are one of them, here is the docker compose code for NZBget (pay attention to blank spaces at the beginning of each line):

###Replace/Configure:

${USERDIR}/Downloads/completed – Path where to save downloaded files. ${USERDIR} is filled automatically from the environment file we created previously.
XXXX – port number on which you want the NZBGet Webui to be available at. It could be the same port as the container: 6789 (must be free).