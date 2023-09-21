#!/bin/zsh

##################################
# Setup Helper Functions
backup_dir() {
    if [ -d "$1" ]; then
        cp -r "$1" "$2"
    fi
}

backup_file() {
    if [ -f "$1" ]; then
        cp -r "$1" "$2"
    fi
}

git_install() {
    if ! [ -d "$HOME/$1" ]; then
        git clone --depth=1 git@github.com:$2 $HOME/$1
    fi
}
##################################


##################################
# Install dependencies
if ! [ -x "$(command -v brew)" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae
brew install font-fira-code-nerd-font nvim yarn npm fx ripgrep nvm sketchybar jq fzf fff gnu-sed tree-sitter exa btop

# Brew can't seem to tell if App bundles are installed already, so we check by hand
if ! [ -d "/Applications/kitty.app" ]; then
    brew install kitty
fi

git_install ".powerlevel10k" "romkatv/powerlevel10k.git"
git_install ".base16-kitty" "kdrag0n/base16-kitty.git"
git_install ".fzf-tab" "Aloxaf/fzf-tab"
##################################


##################################
# Make backups of everything before pulling all the files down
UUID=$(uuidgen)
BACKUP_DIR="$HOME/.config-backup/$UUID"
mkdir -p BACKUP_DIR

backup_dir "$HOME/.config/kitty" "$BACKUP_DIR"
backup_dir "$HOME/.config/nvim" "$BACKUP_DIR"
backup_dir "$HOME/.config/sketchybar" "$BACKUP_DIR"
backup_dir "$HOME/.config/karabiner" "$BACKUP_DIR"
backup_file "$HOME/.vimrc" "$BACKUP_DIR"
backup_file "$HOME/.zshrc" "$BACKUP_DIR"
backup_file "$HOME/.p10k.zsh" "$BACKUP_DIR"
##################################


##################################
# Set up the `config` alias, and clone the repo!
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
if ! [ -d "$HOME/.dotfiles" ]; then
    git clone --bare git@github.com:oatmeaI/dotfiles.git $HOME/.dotfiles
    config checkout
fi
##################################

##################################
# Set up some git configs
git config --global push.autoSetupRemote true
git config --global alias.paid push
git config --global alias.co checkout
git config --global alias.mad "reset --hard HEAD"
##################################

##################################
# Start everything up!
source "$HOME/.zshrc"
brew services restart sketchybar
