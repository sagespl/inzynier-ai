#!/bin/bash

set -eou pipefail

function install_py310() {
  echo "=============== INSTALLING PYTHON 3.10 ==============="
  sudo apt install -y software-properties-common
  sudo add-apt-repository ppa:deadsnakes/ppa -y
  sudo apt install -y python3.10 python3.10-distutils python3.10-venv
}

function install_py311() {
  echo "=============== INSTALLING PYTHON 3.11 ==============="
  sudo apt install -y software-properties-common
  sudo add-apt-repository ppa:deadsnakes/ppa -y
  sudo apt install -y python3.11 python3.11-distutils python3.11-venv
}
