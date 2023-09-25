#!/bin/bash

set -eou pipefail

function install_postgres_client(){
  echo "=============== INSTALLING POSTGRES CLIENT ==============="
  sudo apt update
  sudo apt install -y postgresql-client
}