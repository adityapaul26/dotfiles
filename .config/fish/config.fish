# --------------------------------------------------
# ~/.config/fish/config.fish
# --------------------------------------------------

if status is-interactive
    # Fastfetch startup presentation
    if set -q TMUX
        fastfetch --config ~/.config/fastfetch/config-tmux.jsonc
    else
        fastfetch --config ~/.config/fastfetch/config-marin.jsonc
    end

    # Interactive-only terminal settings
    
    # Configure cursor shapes for Vi-mode
    set fish_cursor_default block
    set fish_cursor_insert line
    set fish_cursor_visual block

    # Set custom autosuggestion color
    set fish_color_autosuggestion 6e738d
end
