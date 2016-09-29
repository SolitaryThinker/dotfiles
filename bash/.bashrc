#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LANG=en_US.UTF-8
export EDITOR="vim"
export TERMINAL="urxvt"
export PATH="$PATH:/lusr/opt/pintos:/lusr/opt/bochs-2.2.6-pintos/bin"
alias sl='ls --color=auto'
alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -a'
alias cd..="cd .."
alias more='view -'
alias slime='screen -S VSlime'
PS1="\[\e[1;35m\]-[\[\e[1;32m\]\h\[\e[1;35m\]]- -[\[\e[1;36m\]\w\[\e[1;35m\]]-\n\[\e[1;35m\]-[\[\e[1;36m\]\@\[\e[1;35m\]]-\[\e[0m\]"

cd ~
