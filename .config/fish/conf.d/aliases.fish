# --------------------------------------------------
# Abbreviations & Aliases
# --------------------------------------------------

if status is-interactive
    # Eza (modern ls replacement) abbreviations
    abbr -a ls 'eza --icons --group-directories-first --color=always'
    abbr -a ll 'eza -lh --icons --group-directories-first --color=always'
    abbr -a la 'eza -lah --icons --group-directories-first --color=always'
    abbr -a lg 'eza -la --git --icons --group-directories-first --color=always'
    abbr -a lt 'eza --tree --level=2 --icons --group-directories-first --color=always'
    abbr -a ls1 'eza -1 --icons --group-directories-first --color=always'
    abbr -a ldir 'eza --icons --only-dirs --group-directories-first --color=always'

    # System information abbreviations
    abbr -a ff 'fastfetch'
    abbr -a pf 'pfetch'

    # Database abbreviations
    abbr -a sqlxe 'sqlplus system/password@localhost:1521/XEPDB1'

    # Power profiles abbreviations
    abbr -a pmax 'powerprofilesctl set performance'
    abbr -a pbal 'powerprofilesctl set balanced'
    abbr -a pmin 'powerprofilesctl set power-saver'
    abbr -a pstat 'powerprofilesctl get'
end
