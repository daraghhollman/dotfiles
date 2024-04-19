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

alias grep='grep --color=auto'

# Scripts
alias clear='clear && echo; /home/daraghhollman/Main/scripts/generateFetchPrompt.sh; neofetch --config /home/daraghhollman/.config/neofetch/bashrc_conf.conf'
alias paper="python ~/Main/Projects/NowADS/nowADS.py"
alias fetch="/home/daraghhollman/Main/scripts/infoDisplay.sh"
alias backup="sudo rsync -av --delete /home/daraghhollman/ /run/media/daraghhollman/Backups/Copernicus_Home/"

# Open pdfs
ReadPDF() {
    pdftotext -layout "$1" - | less
}

# SOFTWARE
alias hx="helix"
alias aurora="cd /home/daraghhollman/Installations/Aurora4x/Aurora/; FONT_NAME="FreeSerif" FONT_SIZE=9 SCALEHACKX=1 SCALEHACKY=1 MONO_IOMAP=all mono Aurora.exe"
alias eww="/home/daraghhollman/Installations/eww/target/release/eww"

# NAVIGATION
alias ranger=". ranger"
alias ls="exa"
alias ll="exa -la"
alias rm="rm -i"
alias cal="cal -m"

alias comets="cd /home/daraghhollman/Main/CometsThesis/; source ./Python/cometPy/bin/activate"

alias thesis="cd /home/daraghhollman/Main/CometsThesis/Writing/Thesis; evince main.pdf & nvim ./main.tex"

alias mail="firefox -new-window -url https://mail.google.com/mail/u/0/#inbox -new-tab -url https://mail.google.com/mail/u/1/#inbox -new-tab -url https://webmail.dias.ie/?_task=mail&_mbox=INBOX & disown; sleep 2; exit"


# FINDING CONFIGS
alias hyprconfig="nvim /home/daraghhollman/.config/hypr/hyprland.conf"


# SSH
alias ariadne="ssh dhollman@ariadne.dias.ie"
alias mimir="ssh dhollman@mimir.ap.dias.ie"
alias bnode="ssh dhollman@bnode.ap.dias.ie"

alias onefetch="onefetch --type programming --number-of-authors 5"

# Python
alias cometPy="source /home/daraghhollman/Main/CometsThesis/Python/cometPy/bin/activate"

# Navigation
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'
alias .....='cd ..; cd ..; cd ..; cd ..;'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
eval "$(thefuck --alias)"


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

export PATH="$HOME/Main/scripts:$PATH"

eval "$(zoxide init bash)"
