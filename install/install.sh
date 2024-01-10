#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# browser
brew install --cask google-chrome
brew install --cask microsoft-edge
brew install --cask firefox

brew install --cask docker
brew install --cask raycast
brew install --cask tableplus
brew install --cask visual-studio-code
brew install --cask zoom

brew install aws-cdk
brew install gh
brew install neovim
brew install tmux

# volta
brew install volta
volta install node
volta install pnpm
volta install ncu
volta install @antfu/ni
