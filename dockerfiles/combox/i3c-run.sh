

inFileV='';
if [ "x${COMBOX_INFILE}" != "x" ]; then
	inFileV="-v ${COMBOX_INFILE}:/toolbox/infile"
fi	

if [ -e $uData/ready ]; then
	rm $uData/ready
fi

dParams="--rm -d -p 5601:5601 \
	-e VIRTUAL_PORT=5601 \
	$inFileV \
	-v $uData/ESData:/toolbox/elasticsearch/data \
	-v $uData/logs:/toolbox/logs \
	-v $uData/logs/es:/toolbox/elasticsearch/logs
  	"
  
if [ "x${COMBOX_RUN}" == "x" ] && [ "x$inFileV" != "x" ]; then  
rParams=" \
  python /toolbox/elasticsearch-gmail/src/index_emails.py \
  --infile=/toolbox/infile \
  --init=True \
  --index-bodies=True \
  --index-bodies-ignore-content-types=application,image \
  --index-bodies-html-parser=html5lib \
  --index-name=infile_data
  "
else
	rParams="${COMBOX_RUN}";  
fi 

i3cAfter(){
	echo "==============================================================================="
	echo " Waiting while ComBoX is starting ..."
	echo " (detailed logs being written into /i3c/data/combox/logs folder) ..."
	echo "==============================================================================="	
	while [ ! -e $uData/ready ]; do
		sleep 10;
		if [ -e $uData/starting ]; then
			cat $uData/starting
		fi		
	done	
	echo "==============================================================================="
	echo " ComBoX started. Access Kibana on [hostIp]:5601 or combox.[hostDomain]"
	echo "==============================================================================="	

} 