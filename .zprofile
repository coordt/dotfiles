eval "$(/opt/homebrew/bin/brew shellenv)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init - zsh)"
export HAXE_STD_PATH="$HOMEBREW_HOME/lib/haxe/std"
export JAVA_HOME="$HOMEBREW_HOME/opt/openjdk@11/"
. "$HOME/.cargo/env"
. "$HOME/.rye/env"