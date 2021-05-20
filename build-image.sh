#!/bin/bash

docker pull amazon/aws-cli:latest
docker build -t nxarena/arena-deploy:latest .
