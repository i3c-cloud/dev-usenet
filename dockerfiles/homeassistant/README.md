## Home Assistant – Smart Home Hub

With a compatible USB Z-wave Stick, you can convert any computer into a Smart Home Hub. With integration for nearly 1000 smart home services and components, its compatibility is unmatched. It also has very powerful automation capabilities. Only drawback is that it has a steep learning curve. There are other dockerized options such as OpenHAB and Domoticz

###Replace/Configure:

XXXX – port number on which you want the Home Assistant Webui to be available at. It could be the same port as the container: 9091 (must be free).
Devices List – This list will make USB devices available to home assistant inside the docker container. If you have a USB Z-wave stick then you will need to find out its device address. Typically, it should be /dev/ttyACM0 but you can find out the correct address using one of the following commands:
ls -ltr /dev/tty*|tail -n 1
ls /dev