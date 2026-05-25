# install.sh
#!/bin/bash

set -e

INSTALL_DIR="$HOME/downloads"
BIN_DIR="$HOME/.local/bin"
NVIM_APPIMAGE="$INSTALL_DIR/nvim.appimage"
NVIM_LINK="$BIN_DIR/nvim"

echo "Updating system packages..."
sudo apt update -qq

echo

echo "Installing dependencies..."
sudo apt install -y -qq unzip ripgrep fd-find cppcheck clangd
sudo npm install -g pyright --silent 2>/dev/null

echo 

echo "Setting up directories..."
mkdir -p "$INSTALL_DIR"
mkdir -p "$BIN_DIR"

echo 

echo "Linking fdfind..."
ln -sf $(which fdfind) "$BIN_DIR/fdfind"

echo

echo "Removing existing nvim..."
rm -f "$NVIM_APPIMAGE"
rm -f "$NVIM_LINK"

echo

echo "Downloading latest stable Neovim..."
curl -sL https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage \
  -o "$NVIM_APPIMAGE"

echo "Making executable..."
chmod u+x "$NVIM_APPIMAGE"

echo "Creating symlink..."
ln -s "$NVIM_APPIMAGE" "$NVIM_LINK"

echo "Sourcing ~/.bashrc..."
source ~/.bashrc

echo

echo "Done! nvim version:"
nvim --version | head -1
