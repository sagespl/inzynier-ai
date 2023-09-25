#!/bin/bash

set -eou pipefail

function install_google_chrome(){
  echo "=============== INSTALLING GOOGLE CHROME ==============="
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
  sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
  sudo apt-get update
  sudo apt-get install google-chrome-stable
}

function install_chromium(){
  echo "=============== INSTALLING CHROMIUM ==============="
  sudo snap install chromium
}