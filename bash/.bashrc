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
# Git Aliases
alias gcl='git clone'
alias ga='git add'
alias gall='git add -A'
alias gf='git fetch --all --prune --verbose'
alias gft='git fetch --all --prune --tags --verbose'
alias gus='git reset HEAD'
alias gm="git merge"
alias g='git'
alias get='git'
alias gst='git status'
alias gs='git status'
alias gss='git status -s'
alias gsu='git submodule update --init --recursive'
alias gl='git pull'
alias gpr='git pull --rebase'
alias gpp='git pull && git push'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gpo='git push origin'
alias gpu='git push --set-upstream'
alias gpom='git push origin master'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git commit -v -m'
alias gci='git commit --interactive'
alias gb='git branch'
alias gba='git branch -a'
alias gbt='git branch --track'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gct='git checkout --track'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%C(bold)%h%Creset%C(yellow)%d%Creset %s %C(yellow)%an %C(cyan)%cr%Creset' --abbrev-commit --date=relative"
alias ggs="gg --stat"
alias gsl="git shortlog -sn"
alias gw="git whatchanged"
alias gt="git tag"
alias gta="git tag -a"
alias gtd="git tag -d"
alias gtl="git tag -l"
# From http://blogs.atlassian.com/2014/10/advanced-git-aliases/
# Show commits since last pull
alias gnew="git log HEAD@{1}..HEAD@{0}"
# Add uncommitted and unstaged changes to the last commit
alias gcaa="git commit -a --amend -C HEAD"

case $OSTYPE in
  darwin*)
    alias gtls="git tag -l | gsort -V"
    ;;
  *)
    alias gtls='git tag -l | sort -V'
    ;;
esac

if [ -z "$EDITOR" ]; then
    case $OSTYPE in
      linux*)
        alias gd='git diff | vim -R -'
        ;;
      darwin*)
        alias gd='git diff | mate'
        ;;
      *)
        alias gd='git diff'
        ;;
    esac
else
    alias gd="git diff | $EDITOR"
fi
# End Git Aliases
PS1="\[\e[1;35m\]-[\[\e[1;32m\]\h\[\e[1;35m\]]- -[\[\e[1;36m\]\w\[\e[1;35m\]]-\n\[\e[1;35m\]-[\[\e[1;36m\]\@\[\e[1;35m\]]-\[\e[0m\]"

cd ~
