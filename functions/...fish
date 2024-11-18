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
