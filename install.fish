#!/usr/bin/env fish

# Nome do programa a ser verificado/instalado
set dependency "eza"

# Verificar se o programa está instalado
if not type -q $dependency
    echo "$dependency não está instalado. Tentando instalar..."
    
    # Detecta o gerenciador de pacotes
    if type -q apt
        sudo apt update && sudo apt install -y $dependency
    else if type -q dnf
        sudo dnf install -y $dependency
    else if type -q pacman
        sudo pacman -Sy --noconfirm $dependency
    else
        echo "Gerenciador de pacotes não suportado. Instale $dependency manualmente."
        exit 1
    end
else
    echo "$dependency já está instalado!"
end
