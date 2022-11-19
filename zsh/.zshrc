# starship
eval "$(starship init zsh)"

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# .commands
alias hello-world="sh ~/.commands/hello-world.sh"
alias open-slack-clone="sh ~/.commands/open-slack-clone.sh"
alias tmux-start="sh ~/.commands/tmux-start.sh"
