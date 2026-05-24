# install.sh
#!/bin/bash
sudo apt upgrade && sudo apt update 
sudo apt install unzip ripgrep fd-find cppcheck clangd
sudo npm install -g pyright
ln -s $(which fdfind) ~/.local/bin/fdfind
