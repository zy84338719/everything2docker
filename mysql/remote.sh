#!/bin/bash
#连接MySQL数据库
Host=127.0.0.1
User=root
PW=Zx19950124

#本地连接
mysql -h$Host -u$User -p$PW <<EOF 
use mysql;
GRANT ALL ON *.* TO 'root'@'%';
update user set host = '%' where user = 'root';
flush privileges;
EOF

