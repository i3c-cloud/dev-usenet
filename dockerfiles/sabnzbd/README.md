## SABnzbd – Usenet (NZB) Downloader

NZB newsgrabber client. If you do not know what this is, then I suggest you review our post on [Usenet vs Torrents](https://www.smarthomebeginner.com/complete-usenet-guide/). We have covered SABnzbd installation on Ubuntu and Windows. It is also available as Docker container. Here is the code to add in the docker-compose file (pay attention to blank spaces at the beginning of each line):

###Replace/Configure:

- add frontend domain to $uData/config/sabnzbd.ini host_whitelist (ie i3c.h)

${USERDIR}/Downloads/completed – Path where to save downloaded files. ${USERDIR} is filled automatically from the environment file we created previously.
${USERDIR}/Downloads/incomplete – Path where to save currently downloading files. ${USERDIR} is filled automatically from the environment file we created previously.
XXXX – port number on which you want the SABnzbd Webui to be available at. It could be the same port as the container: 8080 (must be free).

###Usenet providers worth considering:

XSNEWS - XSNews is a solid provider with an excellent free Usenet trial: 14 Days / unlimited speed and unlimited data allowance. XSNews offers speeds up to 800 Mbps.

TWEAKNEWS - Tweaknews is another Netherlands-based provider with an uncapped 10-day free trial.

EWEKA - Eweka also offers a 7-day trial with unlimited downloads. 7 Days / No GB Cap!. There is no limit on the amount of data you can download during the free trial and download speeds are unrestricted too.

https://free-usenet.com/ - this is interesting - free account + premium paid by bandwith ...
