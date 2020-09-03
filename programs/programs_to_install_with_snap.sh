#!/bin/bash

SNAP_PROGRAMS=(
    mailspring
    spotify
    postman
)

SNAP_CLASSIC_PROGRAMS=(
    gitkraken
    slack
)

for program in ${SNAP_PROGRAMS[@]}; do
    sudo snap install "$program"
done

for program in ${SNAP_CLASSIC_PROGRAMS[@]}; do
    sudo snap install "$program" --classic
done
