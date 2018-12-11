dParams="-d --net host \
	-v $uData/media:/media \
	-e MINIDLNA_MEDIA_DIR=/media \
  	-e MINIDLNA_FRIENDLY_NAME=MyMini \
	"