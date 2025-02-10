# starship
eval "$(starship init zsh)"

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export VOLTA_FEATURE_PNPM=1

# .commands
alias hello-world="sh ~/.commands/hello-world.sh"
alias tmux-start="sh ~/.commands/tmux-start.sh"

alias gitcbn="sh ~/.commands/check-branch-name.sh"
alias gitccm="sh ~/.commands/check-commit-message.sh"

# zellij
if [[ -z "$ZELLIJ" ]]; then
  zellij
fi

# direnv
eval "$(direnv hook zsh)"
