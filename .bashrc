#
# ~/.bashrc
#

# Alias bash completetion
source /usr/share/bash-completion/completions/git
__git_complete dotfiles __git_main

QT_QPA_PLATFORM=xcb

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Custom Aliases
alias clear='clear && echo; /home/daraghhollman/Main/scripts/generateFetchPrompt.sh; neofetch --config /home/daraghhollman/.config/neofetch/bashrc_conf.conf --ascii_distro arch_small'
alias todo="hx ~/todo"

# SOFTWARE
alias hx="helix"
alias matlab="/home/daraghhollman/Installations/MatLab/2023b/bin/matlab"
alias namd="/home/daraghhollman/Installations/NAMD_2.14_Linux-x86_64-multicore/namd2"
alias aurora="cd /home/daraghhollman/Installations/Aurora4x/Aurora/; FONT_NAME="FreeSerif" FONT_SIZE=9 SCALEHACKX=1 SCALEHACKY=1 MONO_IOMAP=all mono Aurora.exe"

# NAVIGATION
alias ranger=". ranger"
alias ls="exa"
alias rm="rm -i"
alias cal="cal -m"

alias mine="/home/daraghhollman/Installations/MineSweeper/mine"

alias mail="firefox -new-window -url https://mail.google.com/mail/u/0/#inbox -new-tab -url https://mail.google.com/mail/u/1/#inbox -new-tab -url https://webmail.dias.ie/?_task=mail&_mbox=INBOX & disown; sleep 2; exit"

alias ariadne="ssh dhollman@ariadne.dias.ie"
alias mimir="ssh dhollman@mimir.ap.dias.ie"
alias bnode="ssh dhollman@bnode.ap.dias.ie"

alias onefetch="onefetch --type programming --number-of-authors 5"

# Navigation
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'
alias .....='cd ..; cd ..; cd ..; cd ..;'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
eval "$(thefuck --alias)"


# PRINTOUTS
echo; /home/daraghhollman/Main/scripts/generateFetchPrompt.sh; neofetch --config /home/daraghhollman/.config/neofetch/bashrc_conf.conf --ascii_distro arch_small
cat /home/daraghhollman/todo

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/daraghhollman/Installations/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/daraghhollman/Installations/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/daraghhollman/Installations/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/daraghhollman/Installations/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH"
. "$HOME/.cargo/env"
