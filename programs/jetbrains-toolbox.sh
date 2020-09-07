#!/bin/bash

VERSION="1.18.7455"

wget -P ~/Downloads https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-${VERSION}.tar.gz

process_id=$!
tar -vzxf ~/Downloads/jetbrains-toolbox-${VERSION}.tar.gz -C ~/Downloads

wait $process_id

~/Downloads/jetbrains-toolbox-${VERSION}/jetbrains-toolbox
