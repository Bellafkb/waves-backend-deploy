##!/bin/bash
sudo docker build -t waves-mysql . && sudo docker run  -d --publish 6603:3306 --volume=/home/bilal/Schreibtisch/waves/getting-started-docker-mysql-nodejs/mysql-microservice/data:/var/lib/mysql --name=waves-mysql waves-mysql

