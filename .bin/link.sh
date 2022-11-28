#!/bin/sh

DOTFILES_PATH="$(cd ../ && pwd)"

# .commands
COMMANDS_TARGET_DIR="$DOTFILES_PATH/.commands"
COMMANDS_LINK_NAME_DIR="${HOME}/.commands"

mkdir -p "$COMMANDS_LINK_NAME_DIR"
for FILE in $(cd "$COMMANDS_TARGET_DIR" && ls); do
  ln -sfnv "$COMMANDS_TARGET_DIR/$FILE" "$COMMANDS_LINK_NAME_DIR/$FILE"
done

# VSCode
VSCODE_TARGET_DIR="$DOTFILES_PATH/vscode"
VSCODE_LINK_NAME_DIR="${HOME}/Library/Application Support/Code/User"

for FILE in $(cd "$VSCODE_TARGET_DIR" && ls); do
  ln -sfnv "$VSCODE_TARGET_DIR/$FILE" "$VSCODE_LINK_NAME_DIR/$FILE"
done
