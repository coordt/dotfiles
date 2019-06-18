export DOTFILES="$HOME/.dotfiles"

# Path to your oh-my-zsh installation.
export ZSH="/Users/coordt/.oh-my-zsh"

fpath=(/usr/local/share/zsh-completions $fpath)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

ZSH_THEME="corey"
export DEFAULT_USER=$USER
plugins=(
    dash # Dash search on the command line
    django # Django completion
    dotenv # load dotenv when entering directory
    git # git aliases and functions
    httpie # httpie completion
    iterm2 # iTerm2 extras
    pyenv # load pyenv into shell
)
source $ZSH/oh-my-zsh.sh

# Dotfiles
source $DOTFILES/path.zsh
source $DOTFILES/aliases.zsh
