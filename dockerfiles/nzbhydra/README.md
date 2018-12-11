##NZBHydra – NZB Meta Search


NZBHydra is a meta search for NZB indexers with easy access to a number of raw and newznab based indexers. It provides a unified interface to search all of your indexers from one place and also use it as indexer source for apps like Sickrage, Sonarr, and CouchPotato. If you are looking an indexer, you may want to review our list of best Usenet index sites. note that NZBHydra is not related to nzbhydra.com, which is an indexing service. We added NZBHydra to AtoMiC ToolKit for Ubuntu. While it is not that difficult to install and get started, Docker makes it easier. Here is the code for it (pay attention to blank spaces at the beginning of each line):


Replace/Configure:

${USERDIR}/Downloads – Path where to save downloaded files. ${USERDIR} is filled automatically from the environment file we created previously.
XXXX – port number on which you want the NZBHydra Webui to be available at. It could be the same port as the container: 5076 (must be free).