#!/bin/zsh

cd ~/.config
brew cleanup
brew update
brew upgrade
brew install font-fira-code-nerd-font nvim node python3 yarn npm fx ripgrep sketchybar jq fzf fff gnu-sed tree-sitter eza btop
source "$HOME/.zshrc"
brew services restart sketchybar
