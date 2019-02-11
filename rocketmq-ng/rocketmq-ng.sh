!/bin/bash
docker run -e "JAVA_OPTS=-Drocketmq.namesrv.addr=xxxx:xxx -Dcom.rocketmq.sendMessageWithVIPChannel=false" -p 18080:8080 -t styletang/rocketmq-console-ng
