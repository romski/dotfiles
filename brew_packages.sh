#!/bin/bash
if ! command -v brew &> /dev/null
then
    echo "homebrew not installed, run:"
    echo '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
    exit 1
fi

brew bundle --file=- <<-EOS
  brew "fzf"
  brew "go"
  brew "htop"
  brew "jq"
  brew "neovim"
  brew "ripgrep"
  brew "skhd"
  brew "stow"
  brew "tmux"
  brew "tree-sitter"
  brew "yabai"
  brew "fd"
  brew "bat"
EOS
