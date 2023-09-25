#!/bin/bash

set -eou pipefail

function install_opencv(){
  echo "=============== INSTALLING OPENCV ==============="
  sudo apt-get install python-opencv
}

