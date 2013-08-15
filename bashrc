PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### BEGIN CUSTOMIZATIONS ###

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# System information
OS=$(uname -s)

# Shortcuts
alias la="ls -a" # a: hidden files
alias ls="ls -hGl" # h: human-readable size; l: long; G: color files and folders`
alias :q="exit" # Vim is in
alias :qa="echo 'Are you sure? (add ! to quit)'"
alias :qa!="tmux kill-session"
alias vi="vim"
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
shopt -s autocd # Change to a directory without "cd"
alias cp="cp -R"
alias mkdir="mkdir -p"
alias reset="source $HOME/.bashrc && clear"
alias lstree="tree" # It's a shortcut to save me from googling it every time.
alias rake="bundle exec rake"
alias dotfiles="cd ~/dotfiles"
alias pbcopy="reattach-to-user-namespace pbcopy"
alias pbpaste="reattach-to-user-namespace pbpaste"
alias haste="haste | pbcopy"
alias brup="brew update; brew upgrade"
alias getkey="gpg --keyserver pgp.mit.edu --recv-key"
alias less="less -FX" # tame less

# rm moves files to trash
function rm () {
  local path
  for path in "$@"; do
    # ignore any arguments
    if [[ "$path" = -* ]]; then :
    else
      local dst=${path##*/}
      # append the time if necessary
      while [ -e ~/.Trash/"$dst" ]; do
        dst="$dst "$(date +%H-%M-%S)
      done
      mv "$path" ~/.Trash/"$dst"
    fi
  done
}

# MacVim and clipboard support
reattach_path=$(which reattach-to-user-namespace)
if [ -x "$reattach_path" ] ; then
    alias vim='reattach-to-user-namespace mvim'
    alias vimdiff='reattach-to-user-namespace mvimdiff'
    alias git='reattach-to-user-namespace git'
fi

# Admin goodness
if [ "$OS" = "Darwin" ]; then
  sudo () { ( unset LD_LIBRARY_PATH DYLD_LIBRARY_PATH; exec command sudo $* ) } # sudo DYLD workaround
fi

# Aesthetics

# Environment
bind "set completion-ignore-case on" # Case-insensitive bash completion
if [ "$OS" = "Darwin" ]; then
  export EDITOR='reattach-to-user-namespace mvim' # like a boss
  export GIT_EDITOR='reattach-to-user-namespace mvim -f'
elif [ "$OS" = "Linux" ]; then
  export EDITOR='vim' # like a boss
  export GIT_EDITOR='vim'
fi
export PATH=~/bin:/usr/local/bin:/usr/local/share/python:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/mysql/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export GOPATH=~/Projects/code/go
GIT_PS1_SHOWDIRTYSTATE=1 # Indicate changed files

# Mac/Linux PS1s that account for different hostname commands
if [ "$OS" = "Darwin" ]; then
  export PS1='\[\e[0;32m\]$(scutil --get ComputerName): $([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I") "$PWD")\[\e[0;33m\]\W\[\e[0;35m\]$(__git_ps1 " ± %s")\[\e[m\] \[\e[1;31m\]\$\[\e[m\] ' # The best prompt ever, with colors and wd's git branch
elif [ "$OS" = "Linux" ]; then
  export PS1='\[\e[0;32m\]\h: $([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I") "$PWD")\[\e[0;33m\]\W\[\e[0;35m\]$(__git_ps1 " ± %s")\[\e[m\] \[\e[1;31m\]\$\[\e[m\] ' # The best prompt ever, with colors and wd's git branch
fi

# tmux on start
if [ $TERM != "screen-256color" ] && [ $TERM != "screen" ] && [ $TERM != "dumb" ]; then
    #tmux attach || tmux new; exit
    tmux new; exit
fi
#~/.base16-monokai.dark.sh
export HISTCONTROL=ignoredups:erasedups # Keeps history concise
export HISTFILESIZE=2048 # Gives history more room

# bash completion
if [ "$OS" = "Darwin" ]; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
  fi
fi
. ~/.bashrc_p

# teamocil workspace bash completion
complete -W "$(teamocil --list)" teamocil
