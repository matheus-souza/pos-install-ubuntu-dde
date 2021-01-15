#!/bin/bash

sudo apt update

sudo apt install -y software-properties-common apt-transport-https wget

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt update

sudo apt install -y code

code --install-extension alefragnani.Bookmarks
code --install-extension bierner.github-markdown-preview
code --install-extension bierner.markdown-checkbox
code --install-extension bierner.markdown-emoji
code --install-extension bierner.markdown-preview-github-styles
code --install-extension bierner.markdown-yaml-preamble
code --install-extension codezombiech.gitignore
code --install-extension CoenraadS.bracket-pair-colorizer-2
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dracula-theme.theme-dracula
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension HookyQR.beautify
code --install-extension hoovercj.vscode-power-mode
code --install-extension isudox.vscode-jetbrains-keybindings
code --install-extension mathiasfrohlich.Kotlin
code --install-extension mikestead.dotenv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension naumovs.color-highlight
code --install-extension PKief.material-icon-theme
code --install-extension ritwickdey.LiveServer
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension streetsidesoftware.code-spell-checker-portuguese-brazilian

wget https://gist.githubusercontent.com/matheus-souza/403a803e224de02742a072ca809a0df0/raw/b7c2c3ab4dbe8374a7c7f6b7e50589b3a41fef45/vscode.settings.json -O ~/.config/Code/User/settings.json

sudo rm -f /etc/apt/sources.list.d/vscode.list
