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

### License

The MIT License (MIT)

Copyright (c) 2015 - present Wyntau wyntau@outlook.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
