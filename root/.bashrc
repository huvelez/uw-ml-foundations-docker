alias ls='ls -hFG'

alias less='less -R'
alias vi='vim'

alias python="python3"
alias pip="pip3"

# Colorize directory listing
alias ls="ls -ph --color=auto"

# Shell
export PS1="\[\033[40m\]\[\033[34m\][ \u@\H:\[\033[36m\]\w\[\033[34m\] ]$\[\033[0m\] "

export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=1;40:bd=34;40:cd=34;40:su=0;40:sg=0;40:tw=0;40:ow=0;40:"