# Nav-fish: Funções de Navegação e Utilitários para o Fish Shell

O Nav-fish é uma coleção de funções e aliases simples para o [Fish Shell](https://fishshell.com/) que visam agilizar a navegação no terminal e o uso de comandos comuns. Ele utiliza o `eza`, um substituto moderno para o `ls`, para listagens de diretórios aprimoradas.

## Dependências

Este conjunto de scripts requer que o `eza` esteja instalado. O script de instalação tentará instalá-lo automaticamente para você.

- [eza](https://github.com/eza-community/eza)

## Instalação

1.  **Clone o repositório:**
    ```fish
    git clone https://github.com/seu-usuario/Nav-fish.git
    cd Nav-fish
    ```

2.  **Execute o script de instalação:**
    Este script irá verificar e tentar instalar a dependência `eza`.
    ```fish
    ./install.fish
    ```

3.  **Link as funções:**
    Para tornar as funções disponíveis em seu ambiente Fish, você precisa criar links simbólicos para elas em seu diretório de configuração do Fish.
    ```fish
    for file in (pwd)/functions/*.fish
        ln -s $file ~/.config/fish/functions/(basename $file)
    end
    ```

## Funções Disponíveis

-   `cat`: Exibe o conteúdo de um arquivo com o `bat` se estiver disponível, caso contrário, usa o `cat` padrão.
-   `cls`: Limpa a tela do terminal.
-   `l`: Lista o conteúdo do diretório de forma concisa. (Alias para `eza -l`)
-   `la`: Lista todo o conteúdo, incluindo arquivos ocultos. (Alias para `eza -la`)
-   `lat`: Lista todo o conteúdo, ordenado por data de modificação.
-   `lgit`: Lista o conteúdo do diretório com informações do Git.
-   `lrg`: Lista o conteúdo de forma recursiva.
-   `ls`: Alias para `eza`.
-   `lt`: Lista o conteúdo ordenado por data de modificação.
-   `mkcd`: Cria um diretório e entra nele.

## Licença

Este projeto está licenciado sob a Licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
