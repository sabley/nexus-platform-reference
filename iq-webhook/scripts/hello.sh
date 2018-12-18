#!/bin/bash
echo "Hello World"
echo $1

curl -u admin:admin 'http://iq-server:8070/api/v2/applications?publicId=juice-shop'
curl -u admin:admin -X GET 'http://iq-server:8070/api/v2/reports/applications/069e9cc9f9af41b9852e72c2ba33dfc9'
python

curl -u admin:admin \
  --header "Content-Type: application/json" \
  --request POST \
  --data @Success-metric.json \
  http://iq-server:8070/api/v2/reports/metrics