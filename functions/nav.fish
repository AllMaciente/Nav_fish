function cls
    clear
end
function ..
    # Verifica se o argumento foi fornecido
    if test (count $argv) -eq 0
        set num 1
    else
        set num $argv[1]
    end

    for i in (seq $num)
        cd ..
    end
end
function ls 
    eza $argv
end
function l
    eza --oneline $argv
end
function la 
    eza --oneline --all $argv
end
function lt 
    eza --oneline --tree $argv
end
function lat 
    eza --oneline --all --tree $argv
end
function lgit 
    eza --oneline --all --git-ignore $argv
end
function mkcd
    mkdir $argv[1]
    cd $argv[1]
end
