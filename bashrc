PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### BEGIN CUSTOMIZATIONS ###

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Shortcuts
alias la="ls -a" # a: hidden files
alias :q="exit" # Vim is in
alias :qa="echo 'Are you sure? (add ! to quit)'"
alias :qa!="tmux kill-session"
alias vi="vim"
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias rm="rm -rf"
alias cp="cp -R"
alias mkdir="mkdir -p"
alias reset="source $HOME/.bashrc && clear"
alias lstree="tree" # It's a shortcut to save me from googling it every time.

# MacVim with clipboard support
alias vim='reattach-to-user-namespace vim'
alias vimdiff='reattach-to-user-namespace vimdiff'
alias git='reattach-to-user-namespace git' # for mergetool/vimdiff

# Admin goodness
alias killall="sudo killall"
alias kill="sudo kill"
alias htop="sudo htop"

# Aesthetics
alias ls="ls -hGl" # h: human-readable size; l: long; G: color files and folders`
bind "set completion-ignore-case on" # Case-insensitive bash completion

# Environment
export EDITOR="vim" # like a boss
PATH=~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH
PS1='$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I") "$PWD")\e[0;36m\u\e[m@\e[0;34m\h\e[m:\W/\e[0;35m$(__git_ps1 "*%s")\e[m\n\$ ' # The best prompt ever, with colors and wd's git branch
# tmux on start
if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
    tmux attach || tmux new; exit
fi

# bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
