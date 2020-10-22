export VISUAL=nano
export EDITOR=nano
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

PATH=/usr/local/opt/sqlite/bin:$PATH
PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
PATH=/usr/local/bin:/usr/local/pgsql/bin:~/.local/bin:$PATH
PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
PATH=/usr/local/opt/ruby/bin:$PATH
PATH=/usr/local/lib/ruby/gems/bin:$PATH
PATH="/usr/local/opt/icu4c/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/opt/krb5/bin:$PATH"
PATH="/usr/local/opt/krb5/sbin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# Python pyenv and virtualenvwrapper configs
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PROJECT_HOME=~/Projects
export WORKON_HOME=$HOME/.virtualenvs
VENV="\$(virtualenv_info)"
pyenv virtualenvwrapper
