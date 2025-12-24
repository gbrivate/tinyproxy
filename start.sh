#!/bin/bash
clear
ulimit -n 100000
docker container stop tinyproxy
docker container remove tinyproxy
docker image remove tinyproxy-secure:1.0
docker build --tag tinyproxy-secure:1.0 .
#docker run -d --name tinyproxy -p 127.0.0.1:8888:8888 tinyproxy-secure:1.0

docker compose up -d
