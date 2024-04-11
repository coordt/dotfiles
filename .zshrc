export DOTFILES="$HOME/.dotfiles"
export DEFAULT_USER=$USER

fpath=(/usr/local/share/zsh-completions $fpath)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Paths and aliases
source $DOTFILES/path.zsh
source $DOTFILES/aliases.zsh


eval "$(starship init zsh)"

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/OORDCOR/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
