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



disable_locks

programs_to_remove
