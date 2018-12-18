#!/bin/sh
#exec > /etc/webhook/output.log 2>&1

echo $1
echo $2
echo $3
cd /etc/webhook;
docker pull $2:my-webhook-test
docker save -o docker.tar $2:my-webhook-test
java -jar nexus-iq-cli.jar -s http://iq-server:8070 -i juice-shop -a admin:admin docker.tar
ls -la
