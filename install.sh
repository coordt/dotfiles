#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! "$(which brew)"; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
sudo dscl . -create /Users/$USER UserShell "$(which zsh)"

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# .profile and .zprofile
rm -rf $HOME/.profile $HOME/.zprofile
ln -s  $HOME/.dotfiles/.profile $HOME/.profile
ln -s  $HOME/.dotfiles/.zprofile $HOME/.zprofile

# Install Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp $HOME/.dotfiles/corey.zsh-theme $HOME/.oh-my-zsh/custom/themes/

# Symlink the Mackup config file to the home directory
rm -rf $HOME/.mackup.cfg
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# gitignore_global
rm -rf $HOME/.gitignore_global
ln -s $HOME/.dotfiles/.gitignore_global $HOME/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# Python setup
git clone https://github.com/momo-lab/xxenv-latest.git "$(pyenv root)"/plugins/xxenv-latest
pyenv latest install
pyenv latest global

mackup restore

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
