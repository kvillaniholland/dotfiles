#!/bin/zsh

# Install Oh My ZSH if we don't have it already
if ! [ -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Homebrew if we don't have it already
if ! [ -x "$(command -v brew)" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Neovim, TheFuck, Yarn, NVM and the Fira Code Nerd Font
brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font nvim thefuck yarn nvm nnn

# Brew can't seem to tell if KiTTY is installed already, so we check by hand
if ! [ -d "/Applications/kitty.app" ]; then
    brew install kitty
fi

# Create ZSH plugins directory
if ! [ -d "$HOME/.zsh" ]; then
    mkdir -p "$HOME/.zsh"
fi

# Install ZSH auto-complete plugin if needed
# https://github.com/marlonrichert/zsh-autocomplete
if ! [ -d "$HOME/.zsh/auto-complete" ]; then
    mkdir -p "$HOME/.zsh/auto-complete"
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git "$HOME/.zsh/auto-complete"
fi

# Make backups of everything before pulling all the files down
if ! [ -d "$HOME/.config-backup" ]; then
    mkdir "$HOME/.config-backup"
fi

if [ -d "$HOME/.config/kitty" ]; then
    mv "$HOME/.config/kitty" "~/.config-backup/kitty"
fi

if [ -d "$HOME/.config/nvim" ]; then
    mv "$HOME/.config/nvim" "~/.config-backup/nvim"
fi

if [ -d "$HOME/.dotfiles" ]; then
    mv "$HOME/.dotfiles" "~/.config-backup/dotfiles"
fi

if [ -f "$HOME/.vimrc" ]; then
    mv "$HOME/.vimrc" "~/.config-backup"
fi

if [ -f "$HOME/.zshrc" ]; then
    mv "$HOME/.zshrc" "~/.config-backup"
fi

# Install P10K
if ! [ -d "$HOME/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/powerlevel10k
fi

# Install base16-kitty
if ! [ -d "$HOME/base16-kitty" ]; then
    git clone --depth=1 git@github.com:kdrag0n/base16-kitty.git $HOME/base16-kitty
fi

# Set up the `config` alias, and clone the repo!
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=~'
if ! [ -d "$HOME/.dotfiles" ]; then
    git clone --bare git@github.com:oatmeaI/dotfiles.git $HOME/.dotfiles
    config checkout
fi
