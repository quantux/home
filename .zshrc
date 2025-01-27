# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# oh-my-posh
eval "$(oh-my-posh init zsh --config ~/.poshthemes/powerlevel10k_lean.omp.json)"

#ZSH_THEME="robbyrussell"
#ZSH_THEME="awesomepanda"
#ZSH_THEME="cloud"
#ZSH_THEME="spaceship"
#ZSH_THEME="gentoo"

plugins=(git asdf)

source $ZSH/oh-my-zsh.sh

# PHP Composer path
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

# Android Studio
export PATH=$PATH:/usr/share/android-studio/
export PATH=$PATH:/usr/share/android-studio/bin/
export PATH=$PATH:$HOME/Android/Sdk/tools/
export PATH=$PATH:$HOME/Android/Sdk/cmdline-tools/latest/bin/
export PATH=$PATH:$HOME/Android/Sdk/build-tools/33.0.0/
#export PATH=$PATH:$HOME/Android/Sdk/cmdline-tools/latest/bin

# ANDROID_HOME PATH
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

## Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

# alias
alias upgrade="sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y && sudo flatpak update -y && cinnamon-spice-updater --update-all";
alias vim="/opt/nvim-linux64/bin/nvim"
alias vi=vim
alias nvim=vim
alias reboot="systemctl reboot -i"
alias brew="/home/linuxbrew/.linuxbrew/bin/brew"
alias testnet="while true; do ping -c 1 -W 1 8.8.8.8 > /dev/null && watch -n 1 play -n synth 0.1 sine 880 vol 0.5; sleep 5; done"

# android studio
alias studio="/usr/bin/studio"

#beep sound
alias beep="play -n synth 0.1 sine 880 vol 0.5"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tmux colors
export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'

# LineageOS Build
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export DRI_PRIME=1

# loads python env
source /home/mths/.scripts/python3-venv/bin/activate
