#!/bin/bash
docker run --name mysql-server \
       	-p 3306:3306 \
	-v /mnt/mysql/config:/etc/mysql/conf.d
	-v /mnt/mysql/logs:/logs \
	-v /mnt/data:/var/lib/mysql \ 
	-e MYSQL_ROOT_PASSWORD=zx19950124 \
       	-d \
	--restart=always \
	--privileged=true \
	mysql:latest


