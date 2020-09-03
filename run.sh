#!/bin/bash

programs_to_remove() {
    ./programs_to_remove.sh
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

remove_clean() {
    sudo apt autoremove -y && sudo apt autoclean -y
}

update_upgrade

disable_locks

update_upgrade

programs_to_remove

for program in programs/*.sh; do
    ./$program
done
