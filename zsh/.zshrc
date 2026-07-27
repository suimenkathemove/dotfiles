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
alias gitae="sh ~/.commands/git-add-empty.sh"
alias gitptb="sh ~/.commands/push-trial-branch.sh"

# herdr
sh ~/.commands/herdr-start.sh

# direnv
eval "$(direnv hook zsh)"

# local settings (not committed)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

export PATH="$HOME/.local/bin:$PATH"

herdr() {
  sh ~/.commands/herdr.sh "$@"
}
