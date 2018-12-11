##Plex Media Server

 free media server that can stream local and internet content to you several of your devices. It has a server component that catalogs your media (movies, tv shows, photos, videos, music, etc.). To stream, you need the client app installed on compatible Plex client devices. With the introduction of Plex News it can now stream News content. Plexamp music player enhances music listening experience.

Best Plex Client Devices:
NVIDIA SHIELD TV Pro Home Media Server - $299.99 editors pick
Amazon Fire TV Streaming Media Player - $89.99
Roku Premiere+ 4K UHD - $83.99
CanaKit Raspberry Pi 3 Complete Starter Kit - $69.99
Xbox One 500 GB Console - $264.99
We have covered plex in detail, including comparing Plex and Kodi and installation of Plex on various platforms: XBox One, PS4, Windows Server, and Ubuntu Server. We have even described Plex docker setup. Docker compose makes installation of Plex easier and here is the docker-compose code for it (pay attention to blank spaces at the beginning of each line):

  plexms:
    container_name: plexms
    restart: always
    image: plexinc/pms-docker
    volumes:
      - ${USERDIR}/docker/plexms:/config
      - ${USERDIR}/Downloads/plex_tmp:/transcode
      - /media/media:/media
      - ${USERDIR}/docker/shared:/shared
    ports:
      - "32400:32400/tcp"
      - "3005:3005/tcp"
      - "8324:8324/tcp"
      - "32469:32469/tcp"
      - "1900:1900/udp"
      - "32410:32410/udp"
      - "32412:32412/udp"
      - "32413:32413/udp"
      - "32414:32414/udp"
    environment:
      - TZ=${TZ}
      - HOSTNAME="Docker Plex"
      - PLEX_CLAIM="claim-YYYYYYYYY"
      - PLEX_UID=${PUID}
      - PLEX_GID=${PGID}
      - ADVERTISE_IP="http://SERVER-IP:32400/"
Replace/Configure:

${USERDIR}/Downloads/plex_tmp – Path temporary dolder for transcoding. ${USERDIR} is filled automatically from the environment file we created previously.
/media/media – Path where to your media library.
HOSTNAME – Name your plex server.
PLEX_CLAIM – Your Plex access claim code from here. The word “claim” in front of the code must be in lower case.
ADVERTISE_IP – IP Address of your server (eg. 192.168.1.100) – you can get this from your router admin page or run ifconfig in terminal.