## ComBox - comms-analyzer-toolbox

Docker image that provides a simplified toolset for the import and analysis of communications content from email MBOX files, and other CSV data (such as text messages) using Elasticsearch and Kibana. This provides a single command that launches a full analytical software stack as well as imports all of your communications into it, ready for analysis w/ Kibana and ElasticSearch.

###troubles with mem? run this:

```bash
docker-machine ssh default
sudo vi /var/lib/boot2docker/bootlocal.sh
# Add this line into /var/lib/boot2docker/bootlocal.sh
sudo sysctl -w vm.max_map_count=262144
sudo chmod +x /var/lib/boot2docker/bootlocal.sh
```

refs:
https://takeout.google.com/settings/takeout?pli=1