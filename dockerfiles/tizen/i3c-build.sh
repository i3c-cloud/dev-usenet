
echo [i3c-build] clone or pull tizen project ...
_cloneOrPull https://github.com/cirocavani/tizen-studio-docker.git tizen-studio-docker

echo [i3c-build] tizen - build image ... 
cd $uData/tizen-studio-docker

./build_image.sh

echo [i3c-build] tizen - create container ... 
./create_container.sh
./kvm-update.sh
echo [i3c-build] tizen - build ended. 
doCommand=false;
