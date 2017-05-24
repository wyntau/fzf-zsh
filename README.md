## fzf-zsh

wrap fzf to use in oh-my-zsh

### Note

Because fzf is conflict with `zsh-autosuggestions`, so this plugin only enable fzf key-bindings, such as <kbd>Ctrl-T</kbd> and <kbd>Ctrl-R</kbd>.

### Usage

1. install fzf to oh-my-zsh custom plugins directory

    ```bash
    git clone https://github.com/junegunn/fzf.git ${ZSH}/custom/plugins/fzf
    ${ZSH}/custom/plugins/fzf/install --bin
    ```

2. install fzf-zsh to oh-my-zsh custom plugins directory

    ```bash
    git clone https://github.com/Treri/fzf-zsh.git ${ZSH}/custom/plugins/fzf-zsh
    ```

3. add `fzf-zsh` in your ~/.zshrc `plugins` list

    ```bash
    plugins=(... fzf-zsh ...)
    ```
