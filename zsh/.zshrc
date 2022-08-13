# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# iOS
export IOS=$HOME/sandbox/ios

# Android
export ANDROID=$HOME/sandbox/android
export ANDROID_HOME=/Users/$USER/Library/Android/sdk

# asanadotcom
export ASANADOTCOM=$HOME/sandbox/asanadotcom

# Path
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Lang
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Git
export GIT_COMPLETION_CHECKOUT_NO_GUESS=1

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zsh
export ZSH=$HOME/.zsh
export ZSHPLUGINS=$ZSH/plugins
export ZSHTHEMES=$ZSH/themes

# zsh plugins
source $ZSHPLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSHPLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh themes
source $ZSHTHEMES/powerlevel10k/powerlevel10k.zsh-theme

# zsh history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# Aliases
source ~/.zsh_aliases

# iTerm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
