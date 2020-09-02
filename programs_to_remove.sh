#!/bin/bash

PROGRAMS_TO_REMOVE=(
    firefox
    firefox-locale-ar
    firefox-locale-de
    firefox-locale-en
    firefox-locale-es
    firefox-locale-fr
    firefox-locale-it
    firefox-locale-ja
    firefox-locale-pt
    firefox-locale-ru
    firefox-locale-zh-hans
    firefox-locale-zh-hant
    
    thunderbird

    libreoffice
    
    libreoffice-base-core      
    libreoffice-calc           
    libreoffice-common         
    libreoffice-core           
    libreoffice-draw           
    libreoffice-gtk            
    libreoffice-gtk2           
    libreoffice-gtk3           
    libreoffice-help-common
    libreoffice-help-pt
    libreoffice-impress
    libreoffice-l10n-pt
    libreoffice-math
    libreoffice-style-colibre
    libreoffice-style-tango
    libreoffice-writer
    
    gnome-screenshot
    
    gnome-2048
    gnome-chess
    gnome-mahjongg
    gnome-sudoku
    gnome-terminal
    gnome-terminal-data
    
)

for program_name in ${PROGRAMS_TO_REMOVE[@]}; do
    sudo apt remove "$program_name" -y
done

