##Transmission with VPN – Bittorrent Downloader

Transmission is one of the most commonly used bittorrent download client on Linux. It is lightwieght, multiplatform, and has all the bells and whistles of a torrent client. 

For this home server we are going to use this awesome [Transmission-OpenVPN build](https://github.com/haugene/docker-transmission-openvpn). The beauty of this build is that it supports several VPN Providers, including IPVanish. If VPN connection is lost, Transmission would stop downloading/uploading. If you do not have a VPN account yet, go ahead and get one from IPVanish with this discounted link.


###Replace/Configure:

XXXX – port number on which you want the Transmission Webui to be available at. It could be the same port as the container: 9091 (must be free).
OPENVPN_PROVIDER – Desired VPN Provider. I have shown IPVanish. Check here for other provider names.
OPENVPN_USERNAME – VPN provider username.
OPENVPN_PASSWORD – VPN provider password.
OPENVPN_CONFIG – Optional (you may remove this line). If you like a specific VPN server you may add it here. For example, ipvanish-CA-Montreal-yul-c04 in place of YYYYYYYYYYY.
LOCAL_NETWORK – This is important. Since Transmission traffic goes through VPN, you won’t be able to access the web UI unless local network is specified correctly. Typically, it is 192.168.1.0/24 or 192.168.0.0/24. With your network listed here you should be able to access WebUI from your home network.
TRANSMISSION_RPC_HOST_WHITELIST – Specify the hosts from which you can connect to Transmission WebUI. This typically includes server on which Transmission is running (127.0.0.1) and your local network IPs (192.168.*.*).
TRANSMISSION_RPC_PASSWORD – Desired Transmission WebUI password.
TRANSMISSION_RPC_USERNAME – Desired Transmission WebUI username.
TRANSMISSION_UMASK – Recommended is 022. But for home use I prefer 002 to avoid permission issues.
Save and run the docker-compose.yml file as described previously and check if the app is working. Transmission WebUI will be available at http://SERVER-IP:XXXX. You can check the real-time logs using  docker-compose logs transmission-vpn for errors.