
# Virtual Machine Setup for Inżynier AI/ML Kodołamacz course

Maintainer: Marcin Rybiński - m.rybinski@sages.io

Virtual Machines are kept here: [x86](https://drive.google.com/drive/u/0/folders/1ck_usf1Ei4G_LDlZmHyXdF0FsSGriFy9), [arm64](https://mega.nz/file/L7IUFYKC#8Z2ANTKHAxq0dTu9DWzH824KsS-tv8cf_wGSL_PocLw)

## What's inside Virtual Machine

* python 3.10 and 3.11
* `docker`
* `minikube` and `kubectl`
* `gcloud`
* `git`
* `postgres` and `redis`
* `poetry`
* IDE: VSCode for x86 and arm64, PyCharm only for x86
* Web browsers: chromium for x86 and arm64, google chrome only for x86

## How to run the virtual machine

### x86_64

1. Install [VirtualBox **7.0.x** for your operating system](https://www.virtualbox.org/wiki/Downloads).
2. Download [Inżynier AI Virtual Machine image](https://drive.google.com/drive/u/0/folders/1dl8P7FTF4CXqe14AwotMTKOl9uaiaFS_) - x86_64
3. Unzip the downloaded file and run `.ova` file.
4. OracleVM Virtual Box should pop up with information about the image. **You don't need to change anything** \
    By default the image is run on:
    * 8GB RAM
    * 2 CPU
    * 50 gb disk
5. Click **Finish** and wait for importing process to end.
6. Change video memory to be able to work in Fullscreen.
    * Select machine
    * Select **Settings**
    * Select **Display**
    * Set **Video Memory** to recommended 128 mb.
    * Click **Ok**
7. Select the machine and run **Start** - username = **user** , password = **user**.
8. Create shared directory with your host machine (**recommended**)
   * Create folder (and name it e. g. `share`) on your **host machine**,
   * In your **virtual machine**
     * Select **Devices** from top menu
     * Choose **Shared folders**
     * Select **Shared folders settings...**
     * Click **Transient folders**
     * Click the icon to create new shared folder (on the right)
     * In **Folder path** select the folder you have previously created
     * Check **Automount** and **Make permanent**
     * Click **Ok** twice.
     * Open **Files** (from the left panel) 
     * The folder should appear in the **Files menu** on the left as a last option on the list and the path is `/media/sf_<<YOUR_FOLER_NAME>>`.

### arm64 (macOS)

1. Install [UTM](https://github.com/utmapp/UTM/releases/latest/download/UTM.dmg)
2. Download [Inżynier AI Virtual Machine image](https://drive.google.com/drive/u/0/folders/1dl8P7FTF4CXqe14AwotMTKOl9uaiaFS_) - arm64
3. Unzip the downloaded file
4. Double click on the extracted `.utm` file - this will open the VM image with UTM
5. Update the shared directory path (recommended)
   * Click on the VM name on the left panel
   * Click on the "Shared Directory" drop down
   * Choose "Browse..." option
   * Select a directory on your host machine that you want to share with your VM
6. Start the VM. The Ubuntu OS should start, the shared directory should be available at `/media/share`

## How to create the Virtual Machine

### x86_64

1. Install [VirtualBox **7.0.x** for your operating system](https://www.virtualbox.org/wiki/Downloads).

2. Download [Desktop ISO Image for Ubuntu 22.04.3 LTS (Jammy Jellyfish)](https://releases.ubuntu.com/jammy/) on which we are going to build our Virtual Machine.

3. Create image:
   1. Specify name, type and version:
       * Name: **inzynier-ai-vm-x86_64**
       * ISO Image: **select Ubuntu ISO image you have downloaded in previous step**
   2. Unattended Guest OS Install Setup: \
      **We need to change default values** because creating user with default values wont grant us root privilages
      * User: **user**
      * Password: **user** 
      * Hostname: **inzynier-ai-vm-x86-64**
      * Domain name: **remains unchanged**
      * Please select checkbox **Guest Additions**
   3. Hardware specification:
      * 8192 MB Memory
      * 2 CPU
   4. Virtual Disk specification:
      * 50 GB

4. Launch image and select **Try or install Ubuntu** and wait for the installer to finish process.
5. Skip all the "_Introduction steps_"
6. Fix the initial problem with opening the terminal (maybe it will get fixed in the new versions of VirtualBox?)
   * Go to the **Settings**
   * Choose **Region & Languages**
   * Change **Language** and select **United Kingdom**
   * Click the **Restart** button.
7. Add **user** to the sudo group:
   * Run terminal
   * Run command: `su -`
   * Insert the password which is: `user`
   * Add the user to sudoers: `sudo adduser user sudo`
   * Go back to the user: `su user`
   * **Restart your VM!**
8. Unfortunately [drag-and-drop is implemented only for X-Windows based systems](https://www.virtualbox.org/manual/UserManual.html#guestadd-dnd) 
so in our case we need to create Shared folder to be able to copy all bash scripts from this repository to our VM:
   * Create folder (and name it e. g. `shared_folder`) on your **host machine**,
   * In your **virtual machine**
     * Select **Devices** from top menu
     * Choose **Shared folders**
     * Select **Shared folders settings...**
     * Click **Transient folders**
     * Click the icon to create new shared folder (on the right)
     * In **Folder path** select the folder you have previously created
     * Check **Automount**
     * Click **Ok** twice.
     * Open **Files**
     * The folder should appear in the **Files menu** on the left as a last option on the list and the path is `/media/sf_<<YOUR_FOLER_NAME>>`.
9. In the shared folder **on your host machine** just `git clone` into this repository to download all the installation scripts.
10. Go back to your **virtual machine**, head over to the **setup** folder with scripts and run terminal in this location.
11. After that, just run `bash setup.sh`.

### arm64 (macOS)
1. Install [UTM](https://github.com/utmapp/UTM/releases/latest/download/UTM.dmg)
2. Download [ARM Server ISO Image of Ubuntu 22.04.3 LTS (Jammy Jellyfish)](https://ubuntu.com/download/server/arm)
3. Create image:
    1. Create new VM in UTM:
      * Machine type: **Virtualize**
      * Operating System: **Linux**
      * Virtualization Engine: **Use Apple Virtualization**
      * Boot ISO image: **Choose previously downloaded ISO image**
      * Hardware:
          * CPU Cores: **2**
          * Memory: **8192 MB**
      * Storage: **50 GB**
      * Shared Directory Path: **Choose a directory on your machine**
      * Name: **inzynier-ai-vm-arm64**
      * Save
    2. Start the machine and follow installation instructions
      * Language: **English**
      * Keyboard:
          * Layout: **Polish**
          * Variant: **Polish**
      * Base for the installation: **Ubuntu Server**
      * Storage configuration:
          * Storage layout: **Use an entire disk**
          * **UNCHECK** the "Set up this disk as an LVM group
      * Profile setup:
          * Name: **user**
          * Nerver name: **inzynier-ai-vm-arm64**
          * Username: **user**
          * Password: **user**
      * Upgrade to Ubuntu Pro: **skip for now**
4. Let your new VM boot
5. Log in using the user account (it's already added to the sudo group)
6. In the shared folder **on your host machine** just `git clone` this repository to download all the installation scripts
7. Go back to your VM
8. Create the mountpoint and mount the shared directory

```
sudo mkdir /media/share
sudo mount -t virtiofs share /media/share
```

9. Go to  /media/share/your_shared_directory/inzynier-ai-vm/setup
10. Run `./setup.sh`
11. When setup process is done, reboot the VM. The VM should start in the graphical mode this time
   * Go through the initial setup creator (mostly clicking next...)
   * Check if your shared directory is available at /media/share