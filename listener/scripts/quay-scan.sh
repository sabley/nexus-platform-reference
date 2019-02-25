#!/bin/sh
#Sample payload
# {
#  “docker_url”: “quay.io/cnyanko/webhook-listener”,
#  “homepage”: “https://quay.io/repository/cnyanko/webhook-listener“,
#  “name”: “webhook-listener”,
#  “namespace”: “cnyanko”,
#  “repository”: “cnyanko/webhook-listener”,
#  “updated_tags”: [
#    “latest”
#  ]
# }
echo "Payload"
echo $1 # Entire Payload
echo "Docker URL"
echo $2 # Docker URL
echo "Updated Tags"
echo $3 # Updated Tags
echo "Name"
echo $4 # Name
echo "namespace"
echo $5 # namespace
echo "Repository"
echo $6 # repositry
echo "vvvvvvvvvvvvv"

cd /etc/webhook;

AppID=${6/\//\_}
echo $AppID

URL='quay.io'
DockerPull=$URL/$6:$3
docker pull $DockerPull
docker save -o $AppID.tar $DockerPull
ls -lah
java -jar nexus-iq-cli.jar -s http://iq-server:8070 -i $AppID -a admin:admin $AppID.tar
rm $AppID.tar
docker rmi $6:$3
ls -lah