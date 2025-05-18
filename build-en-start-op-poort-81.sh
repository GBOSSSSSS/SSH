#!/bin/bash
echo build
docker image build -t demo-site .
echo stop
docker stop demo-container 2>dev/null
echo remove
docker rm demo-container 2>/dev/null
echo run
docker container run -dt --name demo-container -p81:80 demo-site
