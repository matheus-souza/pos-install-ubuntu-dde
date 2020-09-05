#!/bin/bash

APT_PROGRAMAS=(
    git
    git-flow
    deepin-screen-recorder
    ubuntu-restricted-extras
    unrar
    gimp
    curl
    inkscape
)

for program in ${APT_PROGRAMAS[@]}; do
    sudo apt install "$program" -y
done
