#!/bin/bash

set -eou pipefail

DIR=$(dirname "$0")
COMMON_DIR="$DIR/../common"

source "$COMMON_DIR/system_packages.sh"
source "$DIR/web_browsers.sh"
source "$DIR/pycharm.sh"
source "$DIR/vscode.sh"
source "$COMMON_DIR/python_versions.sh"
source "$COMMON_DIR/python_package_managers.sh"
source "$DIR/kubernetes.sh"
source "$COMMON_DIR/docker.sh"
source "$COMMON_DIR/gcloud.sh"
source "$COMMON_DIR/git.sh"
source "$COMMON_DIR/postgres.sh"
source "$COMMON_DIR/redis.sh"
source "$COMMON_DIR/computer_vision_dependencies.sh"

echo "============= SETTING UP VIRTUAL MACHINE =================="

update_system_packages
install_google_chrome
install_chromium
install_py310
install_py311
install_poetry
install_pycharm_community
install_vscode
install_docker
install_redis_client
install_postgres_client
install_minikube
install_kubectl
install_gcloud
install_git

# TODO: we need to ask Waldek if he's going to use OpenCV on his classes
#install_opencv

echo "============= DONE =================="

