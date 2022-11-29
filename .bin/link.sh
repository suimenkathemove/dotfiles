#!/bin/sh

DOTFILES_PATH="$(pwd)"

ln_files_in_dir() {
  for FILE in $(cd "$1" && ls -A); do
    ln -sfnv "$1/$FILE" "$2/$FILE"
  done
}

# zsh
ln_files_in_dir "$DOTFILES_PATH/zsh" "$HOME"

# .commands
COMMANDS_LINK_NAME_DIR="${HOME}/.commands"

mkdir -p "$COMMANDS_LINK_NAME_DIR"
ln_files_in_dir "$COMMANDS_LINK_NAME_DIR" "${HOME}/.commands"

# nvim
ln -sfnv "$DOTFILES_PATH/nvim/init.vim" "$HOME/.config/nvim/init.vim"

# tmux
ln -sfnv "$DOTFILES_PATH/tmux/.tmux.conf" "$HOME/.tmux.conf"

# VSCode
ln_files_in_dir "$DOTFILES_PATH/vscode" "${HOME}/Library/Application Support/Code/User"
