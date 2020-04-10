#!/bin/bash

echo "Current working directory is:"
pwd

cd /var/www/html/admin.bejebeje.com/

echo "Now the current working directory is:"
pwd

echo "stopping docker container"
docker stop bejebejeadmin

echo "pull latest docker image"
docker pull bejebejeadmin

echo "cleaning the volume"
docker run -d -p 5015:5000 --env-file ./variables.env bejebejeadmin