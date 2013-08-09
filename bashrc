PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### BEGIN CUSTOMIZATIONS ###

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

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
alias rm="rm -rf"
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

# MacVim and clipboard support
reattach_path=$(which reattach-to-user-namespace)
if [ -x "$reattach_path" ] ; then
    alias vim='reattach-to-user-namespace mvim'
    alias vimdiff='reattach-to-user-namespace mvimdiff'
    alias git='reattach-to-user-namespace git'
fi

# Admin goodness
sudo () { ( unset LD_LIBRARY_PATH DYLD_LIBRARY_PATH; exec command sudo $* ) } # sudo DYLD workaround

# Aesthetics

# Environment
bind "set completion-ignore-case on" # Case-insensitive bash completion
export EDITOR="mvim" # like a boss
export GIT_EDITOR='mvim -f'
export PATH=~/bin:/usr/local/bin:/usr/local/share/python:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/mysql/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export GOPATH=~/Projects/code/go
GIT_PS1_SHOWDIRTYSTATE=1 # Indicate changed files

# Mac/Linux PS1s that account for different hostname commands
OS=$(uname -s)
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
