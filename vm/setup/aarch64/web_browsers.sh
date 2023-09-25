#!/bin/bash

set -eou pipefail

function install_chromium(){
  echo "=============== INSTALLING CHROMIUM ==============="
  sudo snap install chromium
}
