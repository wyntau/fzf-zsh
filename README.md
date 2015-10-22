## fzf-zsh

wrap fzf to use in oh-my-zsh

### Note

Because fzf is conflict with `zsh-autosuggestions`, so this plugin only enable <kbd>Ctrl-T</kbd>, <kbd>Ctrl-R</kbd> keybinding

### Usage

1. install fzf to oh-my-zsh custom plugins directory

    ```bash
    git clone https://github.com/junegunn/fzf.git oh-my-zsh/custom/plugins
    oh-my-zsh/custom/plugins/fzf/install --bin
    ```

2. install fzf-zsh to oh-my-zsh custom plugins directory

    ```bash
    git clone https://github.com/Treri/fzf-zsh.git oh-my-zsh/custom/plugins
    ```

3. add `fzf-zsh` in .zshrc `plugins` list

    ```bash
    plugins=(... fzf-zsh ...)
    ```
