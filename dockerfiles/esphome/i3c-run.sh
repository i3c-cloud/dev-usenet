
#installed locally because of lack of arm64 docker image
pip3 install esphome

pip3 install tornado esptool

mkdir -p $uData/config

esphome $uData/config/ dashboard

doCommand=false