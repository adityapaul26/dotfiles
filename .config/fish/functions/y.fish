function y --description 'Yazi wrapper to change directory on exit'
    set -l tmp (mktemp -t yazi-cwd.XXXXXX)
    yazi $argv --cwd-file="$tmp"

    if test -f "$tmp"
        set -l cwd (cat "$tmp")
        if test -n "$cwd"; and test "$cwd" != "$PWD"
            cd "$cwd"
        end
        rm -f "$tmp"
    end
end
