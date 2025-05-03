# Created by `pipx` on 2025-01-23 14:27:48
export PATH="$PATH:/Users/paolo/.local/bin"

# Alias

() {
    local OS_TYPE=$(uname)

    if [[ "$OS_TYPE" == "Darwin" ]]; then
        # MACOS
        alias ls="ls -lhG"
        alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
    elif [[ "$OS_TYPE" == "Linux" ]]; then
        # LINUX
        alias ls="ls -lh --color=auto"
    fi

    # UNIVERSAL
    alias src="source ~/.zshrc"
    alias note="cd ~/Documents/notes && vim"
    alias notes="cd ~/Documents/notes && ls"
    alias cfg="vim ~/.zshrc"
    
    if [ -z "$TMUX" ] && [ "$TERM" = "xterm-kitty" ]; then
      tmux attach || exec tmux new-session && exit;
    fi
}

