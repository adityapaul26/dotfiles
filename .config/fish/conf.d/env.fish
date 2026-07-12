# --------------------------------------------------
# Environment Variables & PATH Configuration
# --------------------------------------------------

# Set default editor to Neovim
set -gx EDITOR nvim

# Add local and npm-global binaries to PATH
fish_add_path ~/.local/bin
fish_add_path ~/.npm-global/bin
