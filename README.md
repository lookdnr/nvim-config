# My `neovim` config

To get started on Ubuntu, install the configuration at Neovim's standard config path:

```bash
mkdir -p ~/.config
git clone https://github.com/lookdnr/nvim-config ~/.config/nvim
cd ~/.config/nvim
./install.sh
```

The installer installs Neovim under `~/.local/opt/nvim`, creates `~/.local/bin/nvim`,
and installs the external tools used by this configuration. Add the following to
your shell profile if it is not already present, then open a new shell:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

On first launch, lazy.nvim downloads plugins and Mason installs the configured LSPs.
The installer currently supports Ubuntu on x86_64 and arm64.

Note: `./install.sh` replaces the Neovim installation managed by this repository,
but does not delete an existing configuration or other Neovim data.

## Aesthetic

For proper integration, do the following:

### Colour scheme

- `<C-,>` in window terminal to open settings
- Navigate to the Ubuntu profile
- Go to appearance > preferences > background
- Override the background colour to `#1e1e2e` to match Catpuccin

### Font/ icon rendering

- Download the ![the JetBrains Mono font](https://www.nerdfonts.com/font-downloads)
- Unzip, select all `.ttf` files, and install for all users
- `<C-,>` in window terminal to open settings
- Navigate to the Ubuntu profile
- Go to appearance > font face and select JetBrainsMono NFM
