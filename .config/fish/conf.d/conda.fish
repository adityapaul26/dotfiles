# --------------------------------------------------
# Conda Initialization
# --------------------------------------------------

# Initialize miniconda environment if available
if test -f "$HOME/miniconda3/etc/fish/conf.d/conda.fish"
    source "$HOME/miniconda3/etc/fish/conf.d/conda.fish"
else if test -d "$HOME/miniconda3/bin"
    fish_add_path "$HOME/miniconda3/bin"
end
