#!/bin/bash

MY_HOME=/home/changfu
ERROR_LOG_FOLDER=$MY_HOME/changfu_config
# start the shadowsocks after boot
sslocal -c $MY_HOME/.shadowsocks/config.json 1>/dev/null 2>$ERROR_LOG_FOLDER/shadowsock_error.log &
