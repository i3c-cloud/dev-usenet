#!/bin/bash

echo "Starting /run-nzedb ...";
uData='/i3c/data';

case "$1" in
	startup)
	    
	    #had to cheat a little to make it runing ...
		cd /nzedb && cp -r data/* data2/ && rm -rf data && ln -s data2 data
		
		#prepare custom (overriden from simple)  mariadb image
		docker build -t slydetector/simply-nzedb-mariadb mariadb
		
		# Start up nzedb to do initial setup
		make start

		#fix some problems detected previously by web-setup ..
		venv/bin/docker-compose exec nzedb script -c "chmod 777 -R /var/www/nZEDb/resources/covers"
		venv/bin/docker-compose exec nzedb script -c "chmod 777 -R /var/www/nZEDb/configuration/"
		venv/bin/docker-compose exec nzedb script -c "chmod 777 -R /var/www/nZEDb/www/install"
		venv/bin/docker-compose exec nzedb script -c "chmod 777 -R /var/www/nZEDb/resources"		

		#setup web setup & wait for user to be notified by i3cAfter and go through it
		# This will run through the web setup for you using settings from simply_nzedb.conf.
		# Logs are in web_setup.log
		bin/web_setup
		#signal event	
		touch $uData/wiready
		#... and wait for return (for now one have to manualy create [I3CRoot]/daata/nzedb/wiconfigured
		if [ -e $uData/wiconfigured ]; then rm 	$uData/wiconfigured; fi 
		while [ ! -e $uData/wiconfigured ]; do
			echo "... waiting for user to web-configure ..."
			sleep 10;
		done
		rm 	$uData/wiconfigured	
		
		echo "... continuing automatic install ..."
		# Update settings db table with locations of various executables like ffmpeg, mediainfo, etc
		# and subscribe to alt.binaries.teevee for verification
		bin/apply_defaults
		
		# Restart to pick up changes
		make start			

		while true; do
			sleep 1000
		done
		;;
	echo)
		echo "Echo from /run-nzedb: ${@:2}"
		;;
esac

. /run-ubuntu18.sh	

case "$1" in
	*)
		echo "No operation specified"
		;;
esac
		