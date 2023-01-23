export LANG=en_US.UTF-8

export XDG_CONFIG_HOME="$HOME/.config"
export PATH="/usr/local/bin:$PATH"
export PATH=$HOME/.config/rofi/scripts:$PATH

# Aliases
source ~/.config/zsh/aliases

# Auto run
pfetch 

################## Plugins ##################
# zsh syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/1_shell.omp.json)"
