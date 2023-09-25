#!/bin/bash

set -eou pipefail

function install_minikube(){
  echo "=============== INSTALLING MINIKUBE ==============="
  wget -P /home/user/Downloads https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
  sudo install /home/user/Downloads/minikube-linux-amd64 /usr/local/bin/minikube
  sudo rm -f /home/user/Downloads/minikube-linux-amd64
}

function install_kubectl(){
  echo "=============== INSTALLING KUBECTL ==============="
  sudo apt-get update
  sudo apt-get install -y apt-transport-https ca-certificates curl
  curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
  echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
  sudo apt-get update
  sudo apt-get install -y kubectl
}