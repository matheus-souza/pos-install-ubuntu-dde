#!/bin/bash

programs_to_remove() {
    ./programs_to_remove.sh
}

programs_to_install_with_apt() {
    ./programs_to_install_with_apt.sh
}

programs_to_install_with_snap() {
    ./programs_to_install_with_snap.sh
}

disable_locks() {
    sudo rm /var/lib/apt/lists/lock
    sudo rm /var/lib/dpkg/lock
    sudo rm /var/lib/dpkg/lock-frontend
    sudo rm /var/cache/apt/archives/lock
}

enable_locks() {
    sudo dpkg --configure -a
}

update_upgrade() {
    sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y
}

autoremove_autoclean() {
    sudo apt autoremove -y && sudo apt autoclean -y
}

update_upgrade

disable_locks

update_upgrade

# install ttf-mscorefonts-installer
sudo apt install ttf-mscorefonts-installer -y

programs_to_remove

update_upgrade
autoremove_autoclean

programs_to_install_with_apt

programs_to_install_with_snap

for program in programs/*.sh; do
    ./$program
done

update_upgrade
autoremove_autoclean
enable_locks

