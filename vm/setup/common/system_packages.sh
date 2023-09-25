#!/bin/bash

set -eou pipefail

function update_system_packages() {
  echo "=============== UPDATING SYSTEM PACKAGES ==============="
  sudo apt update
  sudo apt upgrade -y
  sudo snap refresh
}