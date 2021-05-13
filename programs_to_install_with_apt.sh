#!/bin/bash

APT_PROGRAMAS=(
    git
    git-flow
    deepin-screen-recorder
    deepin-calculator
    ubuntu-restricted-extras
    unrar
    gimp
    language-pack-gnome-pt
    language-pack-gnome-pt-base
    curl
    inkscape
    vim
)

for program in ${APT_PROGRAMAS[@]}; do
    sudo apt install "$program" -y
done
