if status is-interactive
    # ~/.config/fish/config.fish
    if set -q TMUX
        fastfetch --config ~/.config/fastfetch/config-tmux.jsonc
    else
        fastfetch --config ~/.config/fastfetch/config-marin.jsonc
    end
    # --------------------------------------------------
    # PATH
    # --------------------------------------------------
    fish_add_path ~/.local/bin
    fish_add_path ~/.npm-global/bin

    set -gx EDITOR nvim

    # --------------------------------------------------
    # Prompt / Shell Enhancements
    # --------------------------------------------------
    starship init fish | source
    zoxide init fish | source
    fzf --fish | source
    atuin init fish | source
    pyenv init - | source

    # Conda
    if test -f "$HOME/miniconda3/etc/fish/conf.d/conda.fish"
        source "$HOME/miniconda3/etc/fish/conf.d/conda.fish"
    else if test -d "$HOME/miniconda3/bin"
        fish_add_path "$HOME/miniconda3/bin"
    end

    # --------------------------------------------------
    # Yazi wrapper
    # --------------------------------------------------
    function y
        set tmp (mktemp -t yazi-cwd.XXXXXX)
        yazi $argv --cwd-file="$tmp"

        if test -f "$tmp"
            set cwd (cat "$tmp")
            if test -n "$cwd"; and test "$cwd" != "$PWD"
                cd "$cwd"
            end
            rm -f "$tmp"
        end
    end

    # --------------------------------------------------
    # Aliases
    # --------------------------------------------------

    alias ls="eza --icons --group-directories-first --color=always"
    alias ll="eza -lh --icons --group-directories-first --color=always"
    alias la="eza -lah --icons --group-directories-first --color=always"
    alias lg="eza -la --git --icons --group-directories-first --color=always"
    alias lt="eza --tree --level=2 --icons --group-directories-first --color=always"
    alias ls1="eza -1 --icons --group-directories-first --color=always"
    alias ldir="eza --icons --only-dirs --group-directories-first --color=always"

    alias ff="fastfetch"
    alias pf="pfetch"

    alias sqlxe="sqlplus system/password@localhost:1521/XEPDB1"

    alias pmax="powerprofilesctl set performance"
    alias pbal="powerprofilesctl set balanced"
    alias pmin="powerprofilesctl set power-saver"
    alias pstat="powerprofilesctl get"

    function cleanall
        sudo rm -rf /var/cache/pacman/pkg/download-*
        echo "🧹 Cleaning System Caches..."
        npm cache clean --force
        pip cache purge
        sudo pacman -Sc
        yay -Sc
        yay -Yc
        echo "✨ All systems clean!"
    end

    # --------------------------------------------------
    # Bimagic
    # --------------------------------------------------
    function run_bimagic_widget
        bimagic
        commandline -f repaint
    end

    bind \cb run_bimagic_widget

    # --------------------------------------------------
    # Vi mode
    # --------------------------------------------------
    fish_vi_key_bindings

    # Better cursor shape (optional)
    set fish_cursor_default block
    set fish_cursor_insert line
    set fish_cursor_visual block

    # --------------------------------------------------
    # Autosuggestions & Syntax Highlighting
    # --------------------------------------------------
    # Fish has both built in.
    # No plugins required.

    # Autosuggestion color
    set fish_color_autosuggestion 6e738d
end
