#!/bin/bash
docker build -t waves-backend . &&
docker run  -d \
--publish 4000:4000 \
-e USER_NAME='root' \
-e PASSWORD='password' \
-e DATABASE='wavesdb' \
-e HOST='172.17.0.2' \
-e PORT='4000' \
--link waves-mysql:db \
--name=waves-backend waves-backend