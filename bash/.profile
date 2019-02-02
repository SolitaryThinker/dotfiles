[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR="vim"

export PATH=$PATH:$HOME/.scripts
export TERMINAL="urxvt"
export PATH="$PATH:/lusr/opt/pintos:/lusr/opt/bochs-2.2.6-pintos/bin"
export PATH="$HOME/opt/cross/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/.local/bin"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"

if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep i3 || startx
fi
