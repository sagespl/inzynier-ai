#!/bin/bash

set -eou pipefail

function install_pycharm_community() {
  echo "=============== INSTALLING PYCHARM COMMUNITY EDITION ==============="
  sudo snap install pycharm-community --classic
}