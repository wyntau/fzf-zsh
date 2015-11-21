## get the real path of plugin
# fzf_zsh_dir="${BASH_SOURCE[0]}" in zsh is equivalent to below
fzf_zsh_dir="${(%):-%N}"
# resolve $SOURCE until the file is no longer a symlink
while [ -L "$fzf_zsh_dir" ]; do
  APP_PATH="$( cd -P "$( dirname "$fzf_zsh_dir" )" && pwd )"
  fzf_zsh_dir="$(readlink "$fzf_zsh_dir")"
  # if $fzf_zsh_dir was a relative symlink, we need to resolve it relative to the path
  # where the symlink file was located
  [[ $fzf_zsh_dir != /* ]] && fzf_zsh_dir="$APP_PATH/$fzf_zsh_dir"
done
fzf_zsh_path="$( cd -P "$( dirname "$fzf_zsh_dir" )" && pwd )"

fzf_path="$( cd "$fzf_zsh_path/../fzf/" && pwd )"

# only enable plugins when fzf and fzf-tmux are installed correctly
if [ -x $fzf_path/bin/fzf ] && [ -x $fzf_path/bin/fzf-tmux ]; then

  # export $PAHT and $MANPATH
  export PATH="$PATH:$fzf_path/bin"
  export MANPATH="$MANPATH:$fzf_path/man"

  # export FZF_DEFAULT_COMMAND='
  #   (git ls-files --cached --exclude-standard --others ||
  #    find * -name ".*" -prune -o -type f -print -o -type l -print) 2> /dev/null'
  # if type ag &> /dev/null; then
  #   export FZF_DEFAULT_COMMAND='(git ls-files --cached --exclude-standard --others ||
  #     ag -i -l --nocolor --nogroup --hidden \
  #       --ignore .git \
  #       --ignore .svn \
  #       --ignore .hg \
  #       --ignore .DS_Store \
  #       --ignore node_modules \
  #       --ignore bower_components \
  #       --ignore "**/*.pyc" \
  #       -g "") 2> /dev/null'
  # fi;
  # # To apply the command to CTRL-T as well
  # export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

  # auto completion is broken with zsh-autosuggestion plugin
  # so comment out this line
  # export FZF_COMPLETION_TRIGGER='~~'
  # source "$fzf_path/shell/completion.zsh"

  source "$fzf_path/shell/key-bindings.zsh"
fi;
