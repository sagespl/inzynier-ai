function install_desktop() {
  echo "=============== INSTALLING UBUNTU DESKTOP==============="
  sudo apt update && sudo apt install -y ubuntu-desktop
}

function install_spice_vdagent() {
  echo "=============== INSTALLING SPICE VDAGENT==============="
  sudo apt install spice-vdagent
}

function mount_shared_dir() {
  echo  "=============== ADDING SHARED DIR TO /etc/fstab==============="
  sudo echo -e " # Shared directory \n \
share   /media/share    virtiofs        rw,nofail       0       0" | sudo tee -a /etc/fstab
  sudo mount -a
}
