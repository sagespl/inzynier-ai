#!/bin/bash

set -eou pipefail

function install_git(){
  echo "=============== INSTALLING GIT ==============="
  sudo apt-get update
  sudo apt-get install git
}