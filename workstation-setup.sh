#!/bin/sh

set -euo pipefail

# this should be able to be run repeatedly without issues.
# these commands are meant to be:
# (verify something is installed) OR (install it)

echo_green () {
  echo "\033[32m$*\033[0m"
}

echo_green "Checking for command line tools..."
which -s clang || \
  (xcode-select --install;
    echo "A dialog window should have popped up."
    echo "Go ahead with that installer, then re-run this script."
    exit 1)

echo_green "Checking for homebrew..."
which -s brew || \
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo_green "Checking for chruby..."
brew list | grep --quiet -x chruby || \
  brew install chruby
grep --quiet "chruby.sh" ~/.bash_profile || \
  echo source /usr/local/opt/chruby/share/chruby/chruby.sh >> ~/.bash_profile
grep --quiet "chruby/auto.sh" ~/.bash_profile || \
  echo source /usr/local/opt/chruby/share/chruby/auto.sh >> ~/.bash_profile

echo_green "Checking for ruby-install..."
which -s ruby-install || \
  brew install ruby-install

echo_green "Checking for ruby 2.4.1..."
[[ -d $HOME/.rubies/ruby-2.4.1 ]] || \
  ruby-install ruby-2.4.1
grep --quiet "chruby 2.4.1" ~/.bash_profile || \
  echo "chruby 2.4.1" >> ~/.bash_profile

echo_green "Updating current environment..."
source ~/.bash_profile

# install bundler and gems
echo_green "Checking for ruby gems..."
gem install bundler
bundle

echo_green "Dependencies installed. Team Edition is good to go!"