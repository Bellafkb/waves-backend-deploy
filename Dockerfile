## Pull the mysql:5.7 image
FROM mysql:5.7

## The maintainer name and email
MAINTAINER bilal bellafkir <bilal.bellafkir@gmail.com>

# database = test and password for root = password
ENV MYSQL_DATABASE=wavesdb \
    MYSQL_ROOT_PASSWORD=password

# when container will be started, we'll have `test` database created with this schema
COPY ./Dump20200125.sql /docker-entrypoint-initdb.d/
