#!/bin/bash
set -eoux pipefail

ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
( sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" )
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions $ZSH_CUSTOM/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search $ZSH_CUSTOM/plugins/zsh-history-substring-search
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
zsh