#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/jaehojang/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

/bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install --cask \
    google-chrome \
    iterm2 \
    slack \
    visual-studio-code \
    intellij-idea

brew install \
    zsh-autosuggestions \
    zsh-fast-syntax-highlighting
    openjdk \
    maven \
    gradle \
    node

# ~/.zshrc에 아래 구문 입력
# source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $(brew --prefix)/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# 입력 후 아래 command 실행
# source ~/.zshrc