#!/bin/sh
sudo docker run -tid -v /home/llwang/repos/:/repos -p 22002:22 -p 80:80 -p 8080:8080 -p 443:443 -p 1080:1080 --privileged=true -v /sys/fs/cgroup:/sys/fs/cgroup ubuntu:14.04 /bin/bash
#sudo docker exec -it  77a2fe43e9e1 bash
