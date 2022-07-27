#!/bin/zsh

# Install Oh My ZSH if we don't have it already
if ! [ -d "~/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Homebrew if we don't have it already
if ! [ -x "$(command -v brew)" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Neovim, TheFuck, Yarn, NVM and the Fira Code Nerd Font
brew install nvim thefuck yarn nvm
brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font

# Brew can't seem to tell if KiTTY is installed already, so we check by hand
if ! [ -d "/Applications/kitty.app" ]; then
    brew install kitty
fi

# Create ZSH plugins directory
if ! [ -d "~/.zsh" ]; then
    mkdir -p "~/.zsh"
fi

# Install ZSH auto-complete plugin if needed
# https://github.com/marlonrichert/zsh-autocomplete
if ! [ -d "~/.zsh/auto-complete" ]; then
    mkdir -p "~/.zsh/auto-complete"
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git "~/.zsh/auto-complete"
fi

# Make backups of everything before pulling all the files down
if ! [ -d "~/.config-backup" ]; then
    mkdir "~/.config-backup"
fi

if [ -d "~/.config/kitty" ]; then
    mv "~/.config/kitty" "~/.config-backup/kitty"
fi

if [ -d "~/.config/nvim" ]; then
    mv "~/.config/nvim" "~/.config-backup/nvim"
fi

if [ -d "~/.dotfiles" ]; then
    mv "~/.dotfiles" "~/.config-backup/dotfiles"
fi

if [ -f "~/.vimrc" ]; then
    mv "~/.vimrc" "~/.config-backup"
fi

if [ -f "~/.zprofile" ]; then
    mv "~/.zprofile" "~/.config-backup"
fi

if [ -f "~/.zshrc" ]; then
    mv "~/.zshrc" "~/.config-backup"
fi

# Install P10K
if ! [ -d "~/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
fi

# Install base16-kitty
if ! [ -d "~/base16-kitty" ]; then
    git clone --depth=1 git@github.com:kdrag0n/base16-kitty.git ~/base16-kitty
fi

# Set up the `config` alias, and clone the repo!
alias config='/usr/bin/git --git-dir=~/.dotfiles/ --work-tree=~'
if ! [-d "~/.dotfiles"]; then
    git clone --bare git@github.com:oatmeaI/dotfiles.git ~/.dotfiles
fi
config checkout
