
#cloneDfAndBuild https://github.com/openremote/openremote.git openremote openremote
_cloneOrPull https://github.com/openremote/openremote.git openremote

if [ ! -e $uData/openremote/manager/build ]; then
	echo "mkdir $uData/openremote/manager/build"
	mkdir $uData/openremote/manager/build
	mkdir $uData/openremote/manager/build/install
	mkdir $uData/openremote/manager/build/install/manager
fi