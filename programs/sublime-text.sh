#!/bin/bash

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

sudo apt-get install apt-transport-https wget -y

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update

sudo apt-get install sublime-text -y

wget -P ~/.config/sublime-text-3/Installed\ Packages/ https://packagecontrol.io/Package%20Control.sublime-package

#subl --command close
subl --command start

sleep 1m

subl --command close

#~/.config/sublime-text-3/Installed Packages

wget -P ~/.config/sublime-text-3/Packages/User/ https://gist.githubusercontent.com/matheus-souza/4881c35588d50f99ebe5651958003f66/raw/304bea15f1c499c4d6bd51116c346d81289175ea/Package%2520Control.sublime-settings

wget -P ~/.config/sublime-text-3/Packages/User/ https://gist.githubusercontent.com/matheus-souza/0641e9fcfb84cccab8c20148224729b9/raw/b3becf6621df144687e0e8f321f4ae832fba7d8b/Preferences.sublime-settings

subl --command start
