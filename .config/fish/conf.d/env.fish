# --------------------------------------------------
# Environment Variables & PATH Configuration
# --------------------------------------------------

# Set default editor to Neovim
set -gx EDITOR nvim

# Set AWS environment variables for floci. these are obviously fake
set -x AWS_ENDPOINT_URL http://localhost:4566
set -x AWS_DEFAULT_REGION us-east-1
set -x AWS_ACCESS_KEY_ID test
set -x AWS_SECRET_ACCESS_KEY test

# Add local and npm-global binaries to PATH
fish_add_path ~/.local/bin
fish_add_path ~/.npm-global/bin
