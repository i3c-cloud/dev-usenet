##Watchtower – Automatic Update of Containers/Apps

Watchtower monitors your Docker containers. If their images in the Docker Store change, then watchtower will pull the new image, shutdown the running container and restart with the new image and the options you originally set for the container while deploying. You can specify the frequency of update check as time interval or as cron time.

###Replace/Configure:

--schedule "0 0 4 * * *" – containers are checked for updates at 4 am everyday. You can use the 6-digit cron schedule or you can specify time interval: --interval 30 for checking every 30 seconds. Daily check is good enough for home use in my opinion. If you want weekly, then use 0 0 23 * * SUN for every update at 11 pm on Sundays.