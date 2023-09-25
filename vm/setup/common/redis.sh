#!/bin/bash

set -eou pipefail

function install_redis_client(){
  echo "=============== INSTALLING REDIS CLIENT ==============="
  sudo apt update
  sudo apt install -y redis-tools
}