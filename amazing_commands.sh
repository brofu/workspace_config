#!/bin/bash

# get the last difference with the latest commit of git
git log git_push.sh | grep commit | head -1 | awk '{print $2}' | git show

# kill all the process of shadowsocks_monitor.sh
sudo kill -9 `ps -aux | grep shadowsocks_monitor.sh | head -1 | awk '{print$2}'`