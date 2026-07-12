# --------------------------------------------------
# Prompt & Shell Enhancements
# --------------------------------------------------

# Pyenv (Python version manager)
# Sourced for both interactive and non-interactive environments to make shims available
if command -q pyenv
    pyenv init - | source
end

if status is-interactive
    # Starship prompt
    if command -q starship
        starship init fish | source
    end

    # Zoxide (smarter cd command)
    if command -q zoxide
        zoxide init fish | source
    end

    # Atuin (magical shell history)
    if command -q atuin
        atuin init fish | source
    end

    # FZF (fuzzy finder integration)
    if command -q fzf
        fzf --fish | source
    end
end
