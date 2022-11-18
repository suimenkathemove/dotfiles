#!/bin/sh

ROOT_DIR="$(cd ../ && pwd)"

# VSCode
VSCODE_TARGET_DIR="$ROOT_DIR/vscode"
VSCODE_LINK_NAME_DIR="${HOME}/Library/Application Support/Code/User"

for FILE in $(cd "$VSCODE_TARGET_DIR" && ls); do
  if [ "$FILE" = "extensions" ]; then
    continue
  fi

  ln -sfv "$VSCODE_TARGET_DIR/$FILE" "$VSCODE_LINK_NAME_DIR/$FILE"
done
