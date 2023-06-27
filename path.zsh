export VISUAL=nano
export EDITOR=nano
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
PATH=/usr/local/bin:/usr/local/pgsql/bin:~/.local/bin:$PATH
PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
PATH=/usr/local/opt/ruby/bin:$PATH
PATH=/usr/local/lib/ruby/gems/bin:$PATH
PATH="/usr/local/opt/icu4c/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/opt/krb5/bin:$PATH"
PATH="/usr/local/opt/krb5/sbin:$PATH"
PATH="$HOME/Library/Application Support/JetBrains/Toolbox:$PATH"

# Python pyenv and virtualenvwrapper configs
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PROJECT_HOME=~/Projects
export WORKON_HOME=$HOME/.virtualenvs
VENV="\$(virtualenv_info)"
pyenv virtualenvwrapper
