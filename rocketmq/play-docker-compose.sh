#!/bin/bash
echo "正在构建docker镜像"
./build-image.sh
# Stop and remove existed containers if any
docker rm -f $(docker ps -a|awk '/rocketmqinc\/rocketmq/ {print $1}')

# Run namesrv and broker
echo "请确认是否修改conf内broker配置地址"
mkdir -R /data/rocketMQ/broker/conf
cp -R ./conf/ /data/rocketMQ/broker/conf

echo "请修改docker_compose中地址是否修改"
docker-compose -f ./docker-compose/docker-compose.yml up -d
