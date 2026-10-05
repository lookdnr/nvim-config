#!/usr/bin/env bash

set -euo pipefail

if [[ ! -f /etc/os-release ]] || ! grep -q '^ID=ubuntu$' /etc/os-release; then
  echo "This installer currently supports Ubuntu only." >&2
  exit 1
fi

case "$(uname -m)" in
  x86_64) nvim_asset="nvim-linux-x86_64.tar.gz" ;;
  aarch64|arm64) nvim_asset="nvim-linux-arm64.tar.gz" ;;
  *) echo "Unsupported architecture: $(uname -m)" >&2; exit 1 ;;
esac

bin_dir="$HOME/.local/bin"
nvim_root="$HOME/.local/opt/nvim"
archive="$HOME/.cache/nvim/$nvim_asset"
nvim_link="$bin_dir/nvim"

echo "Installing system dependencies..."
sudo apt-get update -qq
sudo apt-get install -y -qq \
  ca-certificates curl git nodejs npm unzip ripgrep fd-find \
  cppcheck clangd clang-format python3-black python3-pip python3-venv \
  latexmk zathura xclip wl-clipboard

mkdir -p "$bin_dir" "$(dirname "$archive")" "$nvim_root"

echo "Downloading Neovim..."
curl --fail --location --silent --show-error \
  "https://github.com/neovim/neovim/releases/latest/download/$nvim_asset" \
  --output "$archive"

rm -rf "$nvim_root/current"
mkdir -p "$nvim_root/current"
tar -xzf "$archive" --strip-components=1 -C "$nvim_root/current"
ln -sfn "$nvim_root/current/bin/nvim" "$nvim_link"

# Mason installs the configured LSPs. Ruff is not available in every Ubuntu
# release, so install it in an isolated user-owned environment when needed.
if ! command -v ruff >/dev/null 2>&1; then
  ruff_root="$HOME/.local/share/nvim-tools"
  python3 -m venv "$ruff_root"
  "$ruff_root/bin/pip" install --quiet ruff
  ln -sfn "$ruff_root/bin/ruff" "$bin_dir/ruff"
fi

echo
echo "Installed Neovim:"
"$nvim_link" --version | head -1
echo
echo "Ensure $bin_dir is on PATH, then start nvim to let lazy.nvim and Mason finish setup."
