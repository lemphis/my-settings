#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# ohmyzsh
/bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install --cask \
    google-chrome \
    alacritty \
    slack \
    discord \
    docker \
    rectangle

brew install \
    typescript \
    kotlin \
    zsh-autosuggestions \
    zsh-fast-syntax-highlighting \
    maven \
    gradle \
    nvm \
    gh \
    httpie \
    awscli \
    wrk

mkdir ~/.nvm

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

brew upgrade
brew cleanup
omz update
rustup update

# alacritty 설정 필요 시 아래 커맨드 실행, 생성된 alacritty.yml 파일에 https://github.com/alacritty/alacritty 참고하여 설정
# mkdir -p ~/.config/alacritty
# touch ~/.config/alacritty/alacritty.yml

# ~/.zshrc에 아래 구문 입력
# source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $(brew --prefix)/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# export NVM_DIR="$HOME/.nvm"
# [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"
# [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"

# 입력 후 아래 command 실행 (shell session reload)
exec zsh

# nvm install --lts
