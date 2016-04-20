#!/bin/bash

CHANGFU_HOME=/home/changfu
ERROR_LOG_FOLDER=$CHANGFU_HOME/changfu_config
# start the shadowsocks after boot
sslocal -c ./private_conf/.shadowsocks/config.json 1>/dev/null 2>$ERROR_LOG_FOLDER/shadowsock_error.log &
