#!/bin/bash

PROJECT_NAME="dotfiles"

DEV_DIR="${HOME}/development/suimenkathemove"

cd "$DEV_DIR/$PROJECT_NAME"

if tmux has-session -t "$PROJECT_NAME"; then
  tmux attach-session -t "$PROJECT_NAME"
else
  tmux new-session -s "$PROJECT_NAME" -d
  tmux attach-session -t "$PROJECT_NAME"
fi
