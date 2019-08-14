#!/bin/sh
$(aws ecr get-login --no-include-email --region us-west-2)
docker build -t sethigh/nginx-proxy .
docker tag sethigh/nginx-proxy:latest 837236474353.dkr.ecr.us-west-2.amazonaws.com/sethigh/nginx-proxy:latest
docker push 837236474353.dkr.ecr.us-west-2.amazonaws.com/sethigh/nginx-proxy:latest
