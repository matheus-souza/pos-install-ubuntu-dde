#!/bin/bash

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C

sudo sh -c 'echo "deb http://apt.insync.io/ubuntu focal non-free contrib" >> /etc/apt/sources.list.d/insync.list'

sudo apt update

sudo apt-get install insync
