# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export DOTFILES="$HOME/.dotfiles"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

fpath=(/usr/local/share/zsh-completions $fpath)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
export ZSH_CUSTOM=$HOME/.dotfiles/zsh-custom
export ZSH_THEME="corey"
export DEFAULT_USER=$USER
plugins=(
    dash # Dash search on the command line
    dotenv # load dotenv when entering directory
    git # git aliases and functions
    httpie # httpie completion
    iterm2 # iTerm2 extras
    pyenv # load pyenv into shell
)
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Dotfiles
source $DOTFILES/path.zsh
source $DOTFILES/aliases.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
