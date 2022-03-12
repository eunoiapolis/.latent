#
# ~/.bashrc
#
export HISTCONTROL=ignoreboth:erasedups
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -voahN --color=auto'
PS1='al [\W] '

export PATH=$PATH:/home/aman/.local/bin

export VISUAL=vim;
export EDITOR=vim;

export GNUPGHOME="$HOME/.config/gnupg"

RANGER_LOAD_DEFAULT_RC=FALSE

#export VIMINIT="source ~/.config/vim/vimrc"

alias c='$HOME/CP/.scripts/c.sh'
alias vidwm='sudo vim ~/.dwm/dwm/config.h'
alias vidmenu='sudo vim ~/.dwm/dmenu/config.h'
alias vist='sudo vim ~/.dwm/st/config.h'

alias cddwm='cd ~/.dwm/dwm'
alias cddmenu='cd ~/.dwm/dmenu'
alias cdst='cd ~/.dwm/st'

alias update='sudo pacman -Syu'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rs'
alias search='sudo pacman -Ss'
alias paruins='paru -S'
alias parusea='paru -Ss'

alias cdem='cd ~/.emacs.d/'
alias anav='conda activate; anaconda-navigator'
alias tlaun='java -jar ~/Games/Minecraft/TLauncher-2.83.jar && exit'
alias cdcf='cd $HOME/Projects/Code/Codeforces'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/aman/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/aman/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/aman/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/aman/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

