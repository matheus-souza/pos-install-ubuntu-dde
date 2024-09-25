#!/bin/bash

wget https://gist.githubusercontent.com/matheus-souza/49f7fb27eea56a230be1bd5942c8cc31/raw/bd08e376811996e5ab867a4c06cc52ffffb92dc5/remove-unused-snaps -O ~/Downloads/remove-unused-snaps


sudo cp ~/Downloads/remove-unused-snaps /usr/local/bin/remove-unused-snaps

sudo chmod u+rwx,g+rx,a+rx /usr/local/bin/remove-unused-snaps