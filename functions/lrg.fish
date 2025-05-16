function lrg
    if test (count $argv) -eq 1
        eza --oneline --icons=always | rg $argv[1]
    else
        set -l last_arg $argv[-1]
        set -e argv[-1]
        eza --icons=always --oneline $argv | rg $last_arg
    end
end
